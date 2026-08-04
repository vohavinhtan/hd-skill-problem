# Batch Frontier Problem Generation — Design Spec

**Status:** Approved in conversation 2026-07-16. Ready for planning.

## Problem

Generating frontier problems one at a time via `/math-clone` is slow when the user wants to screen several candidates at once. Many generated candidates will end up needing `/math-harder` anyway, so investing in a full rigorous solve at generation time is wasted work on candidates that will be reshaped or discarded. The user wants: generate N candidates in parallel, each in a genuinely distinct taxonomy/technique slot (no near-duplicates), cheaply gated for basic compliance, with only a **preliminary** answer — full rigorous solving happens later, per-candidate, as a deliberate separate step.

## Goals

- `/math-clone-batch <N>` generates N candidate problems in parallel, each via its own Codex job (`gpt-5.6-sol`, effort high).
- No two of the N candidates collide on taxonomy/technique — enforced by assigning distinct slots **before** any generation starts, not by generating freely and deduping after the fact.
- Each candidate is gated against the project's existing hard constraints (`skills/_shared/hard_gates.md`, taxonomy one-Problem-Type/one-Answer-Type rules) before being accepted; a failing candidate is regenerated in place (same slot, with the specific failure reason) up to 3 times.
- Each candidate lands in its own real `problemNN-taxonomy-slug/` folder immediately (not staged), with a `problem.md` and a lightweight, explicitly-marked-preliminary `solution.md`.
- No full solve/verify pipeline runs during batch generation — that is `/math-solve-codex`'s job, invoked later, by hand, per chosen candidate.

## Non-Goals

- Does not modify `skills/math-clone/SKILL.md`.
- Does not run `skills/math-clone/SKILL.md` Phase 1c/2b (the web originality audit) during batch generation — those searches are slow and this step is explicitly a cheap screening pass; the web audit is deferred to whenever the user takes a candidate forward (e.g. as part of `normalize-all` before submission).
- Does not solve the generated problems. The `solution.md` each slot gets is a preliminary-answer stub, not a verified solution.
- Does not use `/math-solve-codex` as a sub-routine (this was considered and explicitly rejected — see "Rejected Alternative" below).

## Rejected Alternative

Original design had each slot's Codex-generated problem immediately solved (either by Claude, or later by reusing the full `/math-solve-codex` flow). Both were rejected: Claude-solves-alone conflicts with "Codex is the stronger math engine"; running full `/math-solve-codex` per slot up front is wasted cost on candidates likely to be reshaped by `/math-harder` before they're worth fully verifying. Instead, the preliminary answer already comes for free — the generation task asks Codex for an intended-solution **sketch** (approach + key technique + intended final answer) alongside the problem statement, and that sketch's answer is what gets recorded as PRELIMINARY.

## Architecture

**New file:** `.claude/commands/math-clone-batch.md` — plain, non-symlinked Claude Code custom slash command, not under `skills/`, not touching `skills/math-clone/SKILL.md`. Same documented exception in `CLAUDE.md` as `math-solve-codex`.

**Invocation:** `/math-clone-batch <N>`. If `N` is omitted, ask the user — never silently default, since every slot costs a high-effort Codex call.

**Orchestration:** the `Workflow` tool. Explicit user opt-in was given in conversation, scoped to this command specifically — the command file should not re-ask for opt-in on every invocation, but should also not be read as blanket approval for `Workflow` use elsewhere in this repo.

### Pre-pipeline (barrier, sequential, before any parallel work)

1. Read `skills/_shared/taxonomy_slots.md` (open Domain/Sub-domain, Problem Type, Answer Type rows) and `skills/_shared/accepted_topic_history.md` (bias toward previously-successful themes, same as `math-clone`'s own Phase 1 guidance).
2. Also read every existing `workspace/frontier-problem/problemNN-*/problem.md` and build the same "used-concept map" (sub-domain, core object, mechanism, technique) that `skills/math-clone/SKILL.md` Phase 1b already defines.
3. Choose N distinct (domain, sub-domain, technique) combinations: distinct from each other (the batch's own internal dedup — this is the new requirement this spec adds) **and** distinct from the used-concept map (Phase 1b's existing cross-corpus dedup rule), prioritizing rows with open capacity.
4. Pre-create N folders **sequentially** (not in parallel — avoids numbering collisions) using the same "next available `problemNN-{slug}`" logic `problem-init`/`math-clone` already use, resolved via `skills/_shared/frontier_workspace.md`.

This produces a fixed work-list of N `(slot, folder)` pairs fed into the pipeline.

### Pipeline (per item, independent pace — `pipeline()`, not `parallel()`)

**Stage 1 — generate.** One Codex job per slot: same delegation mechanism as `/math-solve-codex` (`Agent` tool, `subagent_type: "codex:codex-rescue"`, `--wait`, `--effort high`, `--fresh` on first attempt / `--resume` on regenerate attempts, explicit read-only/no-file-edits framing). Task text asks Codex to design one original problem for the assigned slot, following `skills/math-clone/SKILL.md`'s Phase 2 Core Requirements, Hard Math Quality Standards, and Phase 1b distinctness rule (told explicitly which other slots' technique/object to stay distinct from). Output: the problem statement in `math-clone`'s exact Problem File Template shape, plus a short intended-solution sketch (approach, key technique, intended final answer) — explicitly not a full derivation.

**Stage 2 — gate check (Claude, no Codex).** Check the candidate against `skills/_shared/hard_gates.md` (By-Hand Solution Gate, Answer Length Gate on the sketch's intended answer, Answer Compaction Gate if the answer looks compacted) and the taxonomy one-Problem-Type/one-Answer-Type rule from `skills/_shared/taxonomy_slots.md`.
- Pass → Stage 3.
- Fail → back to Stage 1 for the *same slot*, with the specific failure reason appended to the task text, `--resume` (same Codex thread). Cap: 3 attempts. Exceeding the cap marks the slot `FAILED` and skips Stage 3 for it.

**Stage 3 — write.** Write `problem.md` (Problem File Template) into the slot's pre-created folder. Write a lightweight `solution.md`:

```
## Answer (PRELIMINARY)
**(Codex's intended answer)**

## Approach Summary
[1 paragraph, from Codex's sketch]

---
PRELIMINARY — not yet verified. Run /math-solve-codex on this folder after
selecting/hardening, before treating this answer as final.
```

### Final report

After the pipeline resolves (plain synthesis, not an agent call): a table with one row per slot — folder name, taxonomy, gate status (`OK` / `FAILED after 3 attempts`), preliminary answer.

## Prerequisite

Same as `math-solve-codex`: `codex@openai-codex` plugin installed and authenticated. Not ready → hard stop before starting the pipeline, tell the user to run `/codex:setup`.

## Open Technical Risk (not a blocker, validate during implementation)

Same as `math-solve-codex`: whether `agent()` calls inside a `Workflow` script can reach `subagent_type: "codex:codex-rescue"`. If not, the fallback is to have each `agent()` call run the equivalent `Bash` command directly (`node "${CLAUDE_PLUGIN_ROOT}/scripts/codex-companion.mjs" task ...`) instead of going through the subagent wrapper. Validate empirically once the plugin is installed; the plan includes a small-N (2-slot) smoke test before declaring this done.

## Out of Scope

- `math-solve-codex` (separate spec: `2026-07-16-math-solve-codex-design.md`).
- Web originality audit automation for batch-generated candidates.
- Any change to `skills/math-clone/SKILL.md` or `skills/problem-init/SKILL.md`.
