# Batch Problem Hardening — Design Spec

**Status:** Approved in conversation 2026-07-16. Ready for planning.

## Problem

Hardening frontier problems one at a time via `/math-harder` is slow when several problems need it. The owner wants to point at a list of existing problem folders and have them all hardened in parallel by Codex (the stronger math engine), with Claude gating quality — but with more control than a single blind pass: Codex should propose the hardening *direction* first, Claude should approve that direction before any rewrite happens, and Claude should verify the finished result a second time. Each hardened problem also needs a preliminary solution written so that when the owner later pastes a model's answer in to evaluate it, Claude has a ground-truth sketch to check against.

## Goals

- `/math-harder-batch <problem folders...>` hardens each specified existing `problemNN-*` folder in parallel, one Codex job stream per folder.
- Two gates, not one: Claude approves Codex's hardening **direction** before execution (gate 1), and verifies the finished hardened problem (gate 2).
- Codex does the mathematical hardening (medium effort); Claude reviews/approves/verifies and writes files.
- Each hardened problem gets a fresh **preliminary** `solution.md` (intended answer + approach sketch, marked PRELIMINARY) so later answer-checking has a ground truth — this also replaces the now-stale pre-hardening solution.
- Safety: a folder's `problem.md` is overwritten **only** if it clears gate 2. A folder that fails either gate after its retries is left completely untouched and marked FAILED.

## Non-Goals

- Does not modify `skills/math-harder/SKILL.md` (the batch is a Claude-only wrapper that follows that skill's techniques by reference).
- Does not fully solve the hardened problems — the written `solution.md` is a preliminary sketch, not a verified solution. Run `/math-solve-codex` per problem afterward for a verified solution.
- Does not create problem folders (they must already exist — the user names them).
- Does not run the web originality audit (deferred, same as `math-clone-batch`).
- Does not pause for human approval mid-run — Claude auto-approves gate 1 (hands-free batch); the human's involvement is later, when pasting answers to evaluate.

## Bundled effort-policy change (owner request)

All Codex effort drops to **medium** except generation. Concretely:
- `math-clone-batch` (generation) stays **high**.
- `math-solve-codex` changes **high → medium** (both its Codex prompt blocks and its CLAUDE.md description).
- `math-harder-batch` (new) uses **medium**.

## Architecture

**New file:** `.claude/commands/math-harder-batch.md` — plain, non-symlinked Claude Code custom command, not under `skills/`, documented in `CLAUDE.md`'s Claude-Only Commands section. Uses the `Workflow` tool (opt-in scoped to this command). Same delegation mechanism proven in `math-clone-batch`: `agent(..., { agentType: 'codex:codex-rescue' })` for Codex calls (confirmed working inside a Workflow script), `--wait --effort medium`, `--fresh` first / `--resume` on retries, read-only framing (Codex returns text; a Claude agent does all file writes).

**Invocation:** `/math-harder-batch problem120 problem134 problem146` (bare folder names or full `workspace/frontier-problem/problemNN-*` paths). The command resolves each to a real folder before invoking the Workflow; a name that matches no folder is reported and skipped, not invented. If no folders are given, ask.

### Pre-pipeline (barrier, before parallel work)

Resolve and validate the folder list: each must be an existing `workspace/frontier-problem/problemNN-*` folder containing a non-empty `problem.md`. Build the validated work-list. (No folder creation, unlike `math-clone-batch`.) Also availability-check Codex (plugin installed + authenticated); if not, stop and tell the user to run `/codex:setup`.

### Pipeline (per folder, independent pace)

**Stage 1 — Codex proposes hardening direction.** One Codex job (medium): given the folder's current `problem.md` + `solution.md`, the archive row if present, and `breaker_playbook.md`, diagnose the decisive shortcut that makes the problem too easy and propose a hardening *direction* — which technique(s), what changes, what the new decisive step becomes, and the intended new answer. Not a rewrite yet — a plan.

**Stage 2 — Claude approves the direction (gate 1).** Claude reviews the proposed direction at the plan level: does it actually block the shortcut? does it introduce a statement-leak (Probe P6)? will the intended answer fit under 100 characters? does it avoid a saturated skeleton (P4)? If the direction is weak, send it back to Codex with the reason (`--resume`), max 3 attempts. Only a Claude-approved direction proceeds. Fail after 3 → FAILED (`problem.md` untouched).

**Stage 3 — Codex executes.** Codex (medium, same resumed thread) rewrites `problem.md` into the harder version following the approved direction, and returns a preliminary solution sketch (approach + intended final answer). Returns text only.

**Stage 4 — Claude verifies (gate 2).** Claude runs the full gate stack on the finished result: Triviality Probe P1–P6 (including P6 Route-Concession), `hard_gates.md` (By-Hand, Answer Length, Answer Compaction), and confirms the executed rewrite actually matches the approved direction and blocks the original shortcut. If it fails, send back to Codex with the reason, max 3 attempts. Fail after 3 → FAILED (`problem.md` untouched).

**Stage 5 — Write (only on gate-2 pass).** A Claude agent overwrites the folder's `problem.md` with the hardened version and writes `solution.md` as a preliminary sketch:

```
## Answer (PRELIMINARY)
**(intended hardened answer)**

## Approach Summary
[1 paragraph from Codex's sketch]

---
PRELIMINARY — hardened problem, not yet verified. Run /math-solve-codex on this
folder for a full verified solution. Use this sketch to check pasted answers.
```

### Final report

A table per folder: folder, status (`OK` / `FAILED at direction gate` / `FAILED at verify gate` / `SKIPPED (no such folder)`), and the preliminary hardened answer for OK rows. OK rows are reminded that `solution.md` is preliminary and `/math-solve-codex` gives a verified solution.

## Prerequisite

`codex@openai-codex` plugin installed and authenticated (already true in this environment). Not ready → hard stop, tell the user to run `/codex:setup`.

## Open Technical Risk

None new — the `agentType: 'codex:codex-rescue'`-inside-Workflow mechanism, the `args`-arrives-as-JSON-string parsing, and the write-stage path handling were all found and fixed during `math-clone-batch`'s smoke testing, and this command reuses them verbatim. The plan still includes a small smoke test (1–2 real folders) to confirm the two-gate flow and the untouched-on-FAILED safety net behave as designed.

## Out of Scope

- `math-solve-codex` / `math-clone-batch` behavior beyond the effort change.
- Any change to `skills/math-harder/SKILL.md`.
- Backing up the original `problem.md` (impossible under the two-files-per-folder rule and gitignored workspace; the "overwrite only on gate-2 pass" rule is the safety net instead).
