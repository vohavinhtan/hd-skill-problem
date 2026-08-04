# Rotura Math Skills Instructions

This project contains math processing skills for Project Rotura. Each skill reads from and writes to directories under `workspace/`. Skill prompt files live under `skills/`, which is the single source of truth for every provider.

Current taxonomy/capacity lives in `skills/_shared/taxonomy_slots.md`. Update that file when portal capacity changes; taxonomy-aware skills should read it instead of relying on hardcoded slot lists.

Frontier workflows use child problem folders under `workspace/frontier-problem/`, as defined in `skills/_shared/frontier_workspace.md`. Each `problemNN-taxonomy-slug/` folder contains exactly two files: `problem.md` and `solution.md`. Generation writes them, and normalize-all updates them in place.

Downloaded model-response HTML exports are mined for weakness patterns under `workspace/response-archive/`, as defined in `skills/_shared/response_archive.md`. `evaluate-responses` (archive mode) writes the analysis and distills durable lessons into `skills/_shared/breaker_playbook.md` (Zone 4); `math-clone` and `math-harder` read the playbook as their primary design/hardening digest, and the two large aggregate files (`by-taxonomy.md`, `common-failures.md`) only for deep-dive.

Positive design models live in `skills/_shared/passed_exemplars.md`: its **Current-Flow Accepted Corpus** and Archetype Catalog are the primary generative input for `math-clone`/`math-harder`. The user-confirmed corpus through 2026-07-23 shows that the acceptance bar is a bespoke gateway, dependent derivation, task-appropriate closure certificate, and a natural exact answer under 100 characters — not a required parametric form, near-cap answer, cross-domain wrapper, or actual model stump.

## Skills

| Skill name | Slash command | Description |
|---|---|---|
| Math Problem Normalizer | `/normalize-problem` | Normalize a math problem into clean LaTeX, classify domain/sub-domain, and run a Problem Logic Check |
| Math Response Evaluator | `/evaluate-responses` | Two modes: evaluate pasted model responses against a ground truth solution; or mine `workspace/response-archive/html/` HTML exports for per-problem, per-taxonomy, and cross-taxonomy weakness patterns |
| Solution Formatter | `/format-solution` | Reformat a math solution to meet submission requirements — normalize LaTeX, enforce step structure, classify types, run Black-Box Audit |
| Normalize All | `/normalize-all` | Run normalize-problem + format-solution together, then apply one centralized math-rewrite run on both outputs |
| Math Solver | `/math-solve` | Solve math problems (geometry, number theory, combinatorics, algebra, calculus, olympiad/Putnam) with mandatory answer verification; restarts from scratch when verification fails |
| Math Clone | `/math-clone` | Generate original frontier math problems and save the active problem to `workspace/frontier-problem/problemNN-taxonomy-slug/problem.md` |
| Problem Init | `/problem-init` | Create a `workspace/frontier-problem/problemNN-taxonomy-slug/` folder with placeholder `problem.md`/`solution.md` |
| Math Rewrite | `/math-rewrite` | Rewrite text to avoid LLM detection; supports LaTeX-aware mode for mathematical content |
| Math Harder | `/math-harder` | Upgrade difficulty of a clone problem that was solved too easily — diagnoses the weakness and applies targeted hardening techniques |
| Math Change Answer Type | `/math-change-answer-type` | Reshape the requested output of an existing problem to a bonus or available Answer Type without changing difficulty or mathematical machinery |
| Math Change Problem Type | `/math-change-problem-type` | Redesign an existing problem to target a better-capacity Domain/Sub-domain or Problem Type, preserving as much of the original concept as possible |
| Math Check | `/math-check` | Audit a clone problem and its solutions against all quality criteria (including the design-time Smokescreen, Self-Containment, Mechanical-Bookkeeping, and Compressed-Rigor gates as a safety net) — reports findings by severity for user review; auto-writes two meaning-preserving fix classes into solution.md without asking (black-box step expansions it can derive and verify, and cosmetic/mechanical formatting fixes), and otherwise does not modify files (never problem.md, never any result, never a design decision) |
| Rainier Submit | `/rainier-submit` | Assemble a normalized problem folder into the Rainier portal submission fields, run every hard-constraint gate and the Final Checklist, and present a copy-paste-ready package — it only validates and maps, never authors or creates files. Usually runs automatically as the final phase of `/normalize-all`; call it directly to package-and-gate a ready problem |
| Revise Shelf | `/revise-shelf` | Park, list, inspect, or restore strong frontier problems whose taxonomy slot is closed or unavailable — preserves prompt/solution/taxonomy/provenance and frees the active problem number, without losing anything. Shelved problem data lives in gitignored `workspace/` and is never committed |
| Skill Sync | `/math-sync` | After pulling the repo, rebuild every provider entrypoint, print the framework changelog (`skills/_shared/CHANGELOG.md`), report the files each repo maintains locally, and print the author-to-submit working flow. On a fresh clone run `./scripts/sync-provider-skills.sh` manually the first time (see Provider Setup) — the skill registers only after that |

## Verification Gates

- `/math-solve` must run the Counterexample Attack Gate for frontier/clone formula, set, classification, threshold, and parameterized answers. The solution is not verified until it records concrete failed counterexample attempts and an independent re-derivation of the answer.
- `/math-check` must run the Answer Falsification Audit and Conclusion Checklist before declaring a problem correct or ready. The audit must explicitly test included, excluded, boundary, and local-to-global cases where applicable, rather than only restating the proposed proof.
- Every skill that finalizes, checks, or submits an answer (`math-solve`, `math-clone`, `math-harder`, `math-change-answer-type`, `math-change-problem-type`, `format-solution`, `math-check`, `rainier-submit`) must enforce the **Answer Length Gate** in `skills/_shared/hard_gates.md`: the boxed answer, with `$` and all whitespace stripped, must be under 100 characters (Rainier client rule, effective 2026-07-14; only already-ACCEPTED/DELIVERED/READY_TO_DELIVER problems are grandfathered, and grandfathering is voided the moment a problem is revised — nothing pasted into a skill is ever grandfathered, so every problem passing through a skill must be under 100 characters). When a design step shortens a rich final object to fit that limit, it must also pass the paired **Answer Compaction Gate** (four conditions in `skills/_shared/hard_gates.md`; named approved/discouraged patterns in `skills/_shared/frontier_authoring_guide.md`).
- Every skill that writes, reformats, checks, or submits a solution (`math-solve`, `math-solve-codex`, `format-solution`, `math-check`, `rainier-submit`, `normalize-all`, and design-time in `math-clone`/`math-harder`) must enforce the **Solution Length Gate** in `skills/_shared/hard_gates.md`: the `## Steps` section of `solution.md`, counted as written (nothing outside the section), must be under 10,000 characters (Rainier client rule, effective 2026-07-19). Compression must stay zero-blackbox — re-hiding derivations behind "one checks" to fit the cap is forbidden; if an honest write-up cannot fit, the problem design is too computational and must be redesigned.
- `math-clone` and `math-harder` design-time hardening runs the staged stump/harden loop under the **Gate > Stump Rule**: gate-clean (all hard gates and Triviality Probes P1–P8 pass) is the hard constraint on every save, and a stump verdict (via `skills/_shared/stump_gate.md`) is pursued only subject to that constraint, never in place of it. On honest-effort ladder exhaustion (mechanism classes tried, creative pivots attempted, ablation run) without reaching a gate-clean stump, a gate-clean draft matching the Current-Flow Accepted Corpus acceptance profile in `skills/_shared/passed_exemplars.md` may ship as an acceptance-fallback save. `skills/_shared/harden_loop.md` is the loop's single source of truth — calling skills delegate to it by name instead of restating any part of it.

## Claude-Only Commands (not mirrored to Codex)

These commands live only under `.claude/commands/` as plain files — they are deliberately **not** under `skills/`, so `scripts/sync-provider-skills.sh` does not touch them and Codex CLI never sees them. Do not delete them as drift on a sync; do not move their logic into `skills/*/SKILL.md`.

- **`/math-solve-codex`** — Codex (`gpt-5.6-sol`, effort medium) performs the derivation; Claude performs adversarial verification by reusing `skills/math-solve/SKILL.md`'s Phase 3b (Black-Box Detection) and Phase 4 (Verify, including the Counterexample Attack Gate), looping with Codex on real findings (max 3 iterations) before writing `solution.md`. Requires the `codex@openai-codex` plugin installed and authenticated (`/codex:setup`). Spec: `docs/superpowers/specs/2026-07-16-math-solve-codex-design.md`.
- **`/math-harder-batch <folders...>`** — hardens specified existing frontier problems in parallel via Codex (`gpt-5.6-sol`, effort medium) in a two-gate flow: Codex proposes a hardening direction (with a from-scratch derivation confirming its intended answer), Claude approves it (Probe P6 / P4 / Answer Length / answer-derivation), Codex executes the rewrite, Claude verifies (full Triviality Probe P1–P6 + hard gates), then overwrites `problem.md` and writes a PRELIMINARY `solution.md` — but only on a clean verify; a folder failing either gate after 3 attempts is left untouched. Uses the `Workflow` tool (opt-in scoped to this command). Run `/math-solve-codex` per hardened problem afterward for a verified solution. Spec: `docs/superpowers/specs/2026-07-16-math-harder-batch-design.md`.
- **`/math-clone-batch <N>`** — generates N candidate frontier problems in parallel via Codex (`gpt-5.6-sol`, effort high), one per distinct taxonomy/technique slot, gate-checked against `skills/_shared/hard_gates.md` with up to 3 regenerate attempts per slot, each written with only a preliminary (unverified) answer. Uses the `Workflow` tool (opt-in scoped to this command). Run `/math-solve-codex` per chosen candidate afterward for a verified solution. Spec: `docs/superpowers/specs/2026-07-16-math-clone-batch-design.md`.

## Usage

Invoke any skill via its slash command:

```
/normalize-problem
/evaluate-responses
/format-solution
/normalize-all
/math-solve
/math-clone
/problem-init
/math-rewrite
/math-harder
/math-change-answer-type
/math-change-problem-type
/math-check
```

Or load a skill's system prompt directly:

```
claude --system-prompt "$(cat skills/normalize-problem/SKILL.md)"
claude --system-prompt "$(cat skills/evaluate-responses/SKILL.md)"
claude --system-prompt "$(cat skills/format-solution/SKILL.md)"
claude --system-prompt "$(cat skills/normalize-all/SKILL.md)"
claude --system-prompt "$(cat skills/math-solve/SKILL.md)"
claude --system-prompt "$(cat skills/math-clone/SKILL.md)"
claude --system-prompt "$(cat skills/problem-init/SKILL.md)"
claude --system-prompt "$(cat skills/math-rewrite/SKILL.md)"
claude --system-prompt "$(cat skills/math-harder/SKILL.md)"
claude --system-prompt "$(cat skills/math-change-answer-type/SKILL.md)"
claude --system-prompt "$(cat skills/math-change-problem-type/SKILL.md)"
claude --system-prompt "$(cat skills/math-check/SKILL.md)"
```

## Directory Structure

```
skills/                        # One subdirectory per skill, each with SKILL.md
  _shared/                     # Shared references, including taxonomy_slots.md
    harden_loop.md              # Staged stump/harden loop engine — single source of truth for the Gate > Stump loop
    breaker-topics/             # Per-topic living files: priors, mechanism menu, saturated routes, accumulated lessons; loaded one at a time
  math-clone/SKILL.md          # Source of truth for each skill
  math-solve/SKILL.md
  ...
.claude/commands/              # Generated symlinks → skills/*/SKILL.md
.codex/prompts/                # Generated symlinks → skills/*/SKILL.md (project mirror)
scripts/sync-provider-skills.sh# Sync all provider-facing skill entrypoints from skills/
workspace/
  frontier-problem/
    used_concept_map.md        # Precomputed per-problem index (dedup + P4 skeleton tally); updated by every skill that writes a problem folder
    problem01-taxonomy-slug/
      problem.md               # Active generated or edited problem
      solution.md              # Active ground-truth solution
  response-archive/
    html/                       # Downloaded model-trace HTML exports (user-managed)
    analysis/
      by-problem/                # Zone 1: one analysis file per HTML export
      by-taxonomy.md              # Zone 2: shortcut patterns per taxonomy row
      common-failures.md          # Zone 3: shortcut patterns recurring across taxonomies
rotura-problem-example/        # Reference example submissions and sample problems
```

## Provider Setup

`skills/` is the only source of truth. After adding or editing any `skills/*/SKILL.md`, re-sync every provider entrypoint:

```bash
./scripts/sync-provider-skills.sh
```

**Run this manually the first time after a fresh `git clone` or `git pull` — before any skill will appear.** Codex discovers skills from the **global** `$CODEX_HOME/skills` (`~/.codex/skills`), which lives outside the repo and is **not** updated by git; a pull only changes `skills/`, so a new or edited skill (including `/math-sync` itself) stays invisible to Codex until this script populates the global dir. That is the chicken-and-egg: `/math-sync` re-runs this for you later, but the **first** sync after a clone must be run by hand.

**Windows:** run it in **Git Bash** (comes with Git for Windows). On Windows the script writes **copies** instead of symlinks — git checks committed symlinks out as plain text files there, so the entrypoints must be regenerated locally. Restart Codex afterward either way.

What the script does:

- Rebuilds `.claude/commands/` (symlinks on Linux/macOS, copies on Windows) to `skills/*/SKILL.md`, preserving the Claude-only batch commands
- Rebuilds `.codex/skills/<name>` and `~/.codex/skills/<name>` from `skills/<name>/` (symlinks on Linux/macOS, recursive copies on Windows). **This is the mechanism Codex CLI actually reads** — confirmed against codex-cli 0.142.5: the string `.codex/prompts` does not appear anywhere in the Codex binary, but `$CODEX_HOME/skills/<skill-name>/SKILL.md` is exactly how the bundled `skill-installer` skill documents custom skill discovery.
- Also rebuilds `.codex/prompts/` (symlinks) and `~/.codex/prompts/` (regular copies) for backward compatibility with older Codex versions or other tooling that might still read that path — but do not rely on this alone; it is not sufficient for current Codex CLI.
- **Codex does not hot-reload `$CODEX_HOME/skills`** — after running the sync script, restart Codex (new session) before a new or edited skill will show up.

Do not edit files under `.claude/commands/`, `.codex/prompts/`, `.codex/skills/`, `~/.codex/prompts/`, or `~/.codex/skills/` by hand. Edit `skills/*/SKILL.md`, then rerun the sync script and restart Codex.

## Agent Process Cleanup Hooks

`.claude/hooks/kill-agent-procs.sh` kills leftover processes an agent spawned (e.g. a `codex exec` / background command that didn't exit) at the end of each turn. It is **per-tab isolated**: it only kills processes carrying *this* session's id — Claude's `CLAUDE_CODE_SESSION_ID` or Codex's `CODEX_THREAD_ID` (from the `notify` payload's `thread-id`) — so running many tabs in parallel (e.g. several `/math-harder`) never kills another tab's work, nor anything you started by hand. Linux only (reads `/proc`).

- **Claude Code — automatic.** `.claude/settings.json` registers it as a `Stop` hook (end of each turn) and a `SessionEnd` hook (graceful exit, e.g. `/exit`). On first use of the repo, accept the project-hook trust prompt; no per-machine setup. Note: a hard `SIGKILL` of the CLI (not a graceful quit) runs no hook — leftovers from that are swept on the next completed turn.
- **Codex — one-time install per machine.** Codex reads `notify` only from the global `~/.codex/config.toml`, so it is wired up by the provider sync script (idempotent; never clobbers an existing `notify`; copies the script to `~/.claude/hooks/`). Run it once and restart Codex:

  ```bash
  ./scripts/sync-provider-skills.sh
  ```

  Codex has **no** exit/abort callback — a Ctrl-C / abort / quit runs no cleanup. Its leftovers are swept on the next completed turn, or manually (below).

**Manual sweep (all tabs, both tools).** After a Ctrl-C / abort / hard quit that left a background server or `codex exec` running, end every agent-spawned process at once — this touches only the running *code*, never the chat, and never processes you started by hand:

```bash
./scripts/kill-all-agent-procs.sh
```

Run it from a plain terminal, not inside an agent tab.

## Lesson Backstop

The harden loop (`skills/_shared/harden_loop.md`) writes a sentinel at `workspace/frontier-problem/.harden-pending/<problemNN>.<sessionid>` with body `pending` at loop start and clears it on a clean loop end (round-log flushed, lesson distilled into the topic file's `## Distilled lessons`) — see `skills/_shared/frontier_workspace.md` → "Harden-pending sentinel". If a session/tab ends mid-loop (Ctrl-C, `/exit`, crash) the marker is left stale, and its round-log evidence would otherwise go undistilled.

- **Claude Code — automatic.** `.claude/hooks/distill-lessons-backstop.sh` is wired as a second `Stop`/`SessionEnd` hook (alongside `kill-agent-procs.sh` in `.claude/settings.json`). It mirrors that script's per-tab `CLAUDE_CODE_SESSION_ID` isolation and never touches another session's markers. It does not distill anything itself — it only flips this session's stale `pending` marker to `needs-distill` so the next run picks it up. `exit 0` always; it never blocks Stop.
- **Catch-up (both providers).** `math-clone`, `math-harder`, and `evaluate-responses` each open with a startup step: scan `workspace/frontier-problem/.harden-pending/` for `needs-distill` markers, and if any are found, read the referenced topic file's `## Round-log` and distill the pending lessons before starting new work.
- **Codex asymmetry (by design).** Codex's `notify` hook is single-slot and already used by `kill-agent-procs.sh`, so there is no immediate Codex-side Stop/abort backstop here. Codex still learns fully via identical in-loop distillation (the synced `skills/_shared/harden_loop.md`) on a clean run, and recovers an aborted run via the same catch-up step above on its next invocation — the only gap is the *immediate* flip from `pending` to `needs-distill` right after an abort, which for Codex instead happens lazily whenever a Claude tab's Stop/SessionEnd hook or the manual sweep below runs.
- **Manual sweep (any tab, read-only).** List every stale `needs-distill` marker with its resolved `problemNN` folder, topic file, and the exact next action:

  ```bash
  ./scripts/distill-pending-lessons.sh
  ```
