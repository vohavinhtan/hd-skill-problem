# Codex-Primary Math Solve — Design Spec

**Status:** Approved in conversation 2026-07-16. Ready for planning.

## Problem

`/math-solve` today has Claude do the full derivation (Phase 1–3), then verify itself (Phase 3b Black-Box Detection, Phase 4 A–F including the Counterexample Attack Gate). The user's assessment: Claude is not the strongest engine for original derivation; Codex (their `gpt-5.6-sol` default) is. Claude's actual comparative advantage in this project is disciplined adversarial review — every `*-check`/gate skill in this repo already leans on that strength. The roles in `/math-solve` should match: **Codex derives, Claude attacks/audits.**

## Goals

- Codex performs the primary mathematical derivation for a problem.
- Claude performs 100% of the adversarial verification: Black-Box Detection and the Counterexample Attack Gate, exactly as already specified in `skills/math-solve/SKILL.md`.
- On a real finding (a survived black-box Level 2/3, or a counterexample that breaks the claimed answer), Claude sends the specific failure back to Codex and asks it to rebuild — never patches the math itself, and never silently accepts Codex's word.
- Reuse `skills/math-solve/SKILL.md`'s existing Phase 3b, Phase 4, Loop Iteration, and Output Template **by reference**, not by duplicating their text. That file already contains a mandatory Black-Box Detection phase (line 114), a mandatory Counterexample Attack Gate (E3, line 205), and a 3-iteration retry policy (Loop Iteration, line 255) — this design does not need to reinvent any of them, only redirect who produces the draft that those phases review.

## Non-Goals

- Does **not** modify `skills/math-solve/SKILL.md`. That file is mirrored verbatim to Codex CLI via `.codex/skills/`; if Codex ever runs its own copy of `/math-solve` standalone, it must keep working exactly as it does today (Claude solves solo, no self-reference to a Claude Code plugin).
- Does **not** replace `/math-solve`. Both commands coexist.
- Does not change `/math-check` — it is already a pure-audit skill (Claude reviewing an existing solution), so no role reversal is needed there.

## Architecture

**New file:** `.claude/commands/math-solve-codex.md` — a plain, non-symlinked Claude Code custom slash command. It does **not** live under `skills/`, so it is invisible to `scripts/sync-provider-skills.sh` and to Codex CLI's own skill mirror. This is a deliberate, documented exception to "don't hand-edit `.claude/commands/`" — recorded in `CLAUDE.md` so nobody deletes it as drift on a future sync.

**Command shape:**

1. **Input resolution** — same rules as `skills/math-solve/SKILL.md` Step 0/1 (no provider-selection prompts; resolve inline text/image/`problemNN-*` folder path via `skills/_shared/frontier_workspace.md`).
2. **Delegate the derivation to Codex.** Invoke the `Agent` tool directly with `subagent_type: "codex:codex-rescue"` (the plugin's thin-forwarder subagent — confirmed by reading `agents/codex-rescue.md` in the installed marketplace: it does one `Bash` call to `node "${CLAUDE_PLUGIN_ROOT}/scripts/codex-companion.mjs" task ...`). This call must happen directly from the command's own top-level execution, not from inside a forked subagent — the plugin's own `rescue.md` documents that forked general-purpose subagents don't expose the `Agent` tool.
   - Prompt text includes the routing tokens the subagent itself parses out: `--wait` (force foreground; Claude cannot review nothing), `--effort high`, and `--fresh` on the first call / `--resume` on retry calls within the same command run (so Codex keeps its own thread's context across iterations instead of Claude re-pasting everything).
   - Model is left unset — inherits the user's `~/.codex/config.toml` default (`gpt-5.6-sol`).
   - The task text explicitly frames this as **research/diagnosis only, no file edits** — overriding the subagent's default write-capable behavior (documented in `agents/codex-rescue.md`: it adds `--write` unless the caller asks for read-only/review/diagnosis). Codex returns text; Claude owns every file write.
   - The task text asks Codex to produce a full derivation in the shape `skills/math-solve/SKILL.md`'s Phase 1–3 already expect (state the answer, then the full step-by-step solution) — Codex is doing Phase 1–3's job, not a different job.
3. **Run the existing review phases on Codex's draft, unmodified:** `skills/math-solve/SKILL.md` Phase 3b (Black-Box Detection) then Phase 4 (Verify A–F, including E3 Counterexample Attack Gate) — full context (Claude sees Codex's entire derivation, not just the final answer, since it is auditing an argument, not blindly re-deriving).
4. **On failure** (a real Level 2/3 black-box finding, or a real counterexample): follow `skills/math-solve/SKILL.md`'s own **Loop Iteration** section verbatim — diagnose which phase the flaw traces to, then instead of "restart from that phase" (which in the original skill means Claude redoing it), send the concrete failure back to Codex on the same resumed thread (`--resume`) and ask it to rebuild from that phase. Same cap: **max 3 iterations total**. After 3 failed iterations, stop — "cannot solve this," per the skill's existing Hard Rule — do not create `solution.md`.
5. **On success:** write `solution.md` using `skills/math-solve/SKILL.md`'s exact existing Output Template (unmodified), with one added line so the provenance is auditable later — e.g. under `## Confidence`: "Solved by Codex (`gpt-5.6-sol`/high); verified by Claude (Phase 3b + Phase 4, N iteration(s))."

## Prerequisite

`codex@openai-codex` plugin must be installed and Codex CLI authenticated. **Not installed as of this spec** — only the marketplace (`openai-codex`) has been added (`/plugin marketplace add openai/codex-plugin-cc`). Needs: `/plugin install codex@openai-codex` → `/reload-plugins` → `/codex:setup`. `codex-cli 0.144.4` is already on `PATH`; `~/.codex/config.toml` already sets `model = "gpt-5.6-sol"`, `model_reasoning_effort = "medium"` (this command overrides effort to `high` per-call, not the global config); this repo is already a trusted Codex project.

If the plugin/CLI is not ready when the command runs: hard stop, tell the user to run `/codex:setup`. No silent fallback to Claude-solves-alone — the whole point of this command is that Codex is the primary solver.

## Open Technical Risk (not a blocker, validate during implementation)

Whether the `Agent` tool, invoked from inside a custom (non-plugin) `.claude/commands/*.md` file, can successfully reach `subagent_type: "codex:codex-rescue"` the same way the plugin's own `/codex:rescue` command does. Both are top-level command executions, so it should work identically, but this has not been empirically confirmed — the plan includes a smoke-test task specifically to validate it once the plugin is installed.

## Out of Scope

- `math-clone-batch` (separate spec: `2026-07-16-math-clone-batch-design.md`).
- Any change to `math-check`.
- Any change to `skills/math-solve/SKILL.md` itself.
