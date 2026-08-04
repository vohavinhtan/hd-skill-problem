---
name: math-sync
description: Sync the Rotura skill framework after pulling — rebuild every provider entrypoint (Claude commands + Codex skills + AGENTS.md), print what changed in this update from skills/_shared/CHANGELOG.md, and report which files are maintained locally per repository, so a fresh pull knows what's new and what still needs to be set up by hand.
user-invocable: true
disable-model-invocation: false
argument-hint: none — run once after pulling, and again after any skills/ edit
---

# Skill Framework Sync

## Contract

- **Task:** after pulling (or editing any `skills/*/SKILL.md`), rebuild every provider entrypoint and report the files that are maintained locally per repository.
- **Defaults (act, do not ask):** run the sync and produce the report in one turn on the most reasonable reading; state any assumption.
- **Only hard stop:** `scripts/sync-provider-skills.sh` is missing or not runnable from the repo root — say so and stop.
- **Done:** the sync script has run, provider entrypoints + `AGENTS.md` are rebuilt, the Codex-restart reminder is given, and the report prints three things — what changed (top of the changelog), the locally-maintained files, and the working-flow overview. Persist end-to-end this turn; do not narrate a plan before acting.

## Step 0 — What changed (print first)

Print the top entry (or entries since the user's last pull) of `skills/_shared/CHANGELOG.md` so the
reader sees what this update did before anything else. If the file is missing, say "no changelog yet"
and continue.

## Step 1 — Auto-sync (nothing to hand-edit)

Run from the repo root:

```bash
./scripts/sync-provider-skills.sh
```

This regenerates, from `skills/` as the single source of truth: `.claude/commands/`, `.codex/skills/`,
`.codex/prompts/`, `~/.codex/{skills,prompts}`, the repo-root `AGENTS.md` (from
`skills/_shared/agents_core.md`, capped at 32 KiB), and the Codex `notify` cleanup hook. Never hand-edit
those targets — edit `skills/` and re-run this.

Then **restart Codex** — it does not hot-reload `$CODEX_HOME/skills`; a running session keeps the old
skills until restarted. Claude Code picks up the rebuilt `.claude/commands/` without a restart.

## Step 2 — Report the locally-maintained files

Some inputs are per-repository and are not carried by the pull — a fresh clone starts them empty or at a
baseline. Print this table to the user, adjusting any row that does not match the local repository:

| File / dir | In the pull? | What to do |
|---|---|---|
| `workspace/` — all of it (`frontier-problem/`, `response-archive/`, `hardening-drafts/`, `accepted-tracking.md`, `used_concept_map.md`, `mechanism_registry`) | ❌ gitignored | Local working data; it fills up as you author, solve, and analyze traces. Nothing to copy in. |
| `skills/_shared/taxonomy_slots.md` | ⚠️ snapshot | Refresh from your portal before authoring or changing a label — the shipped copy is a point-in-time snapshot. |
| `skills/_shared/breaker_playbook.md` | ⚠️ baseline | A starting baseline; grow it from your own `/evaluate-responses` (Zone 4) runs. |
| `skills/_shared/breaker-topics/*.md` | ❌ empty stubs (only `README.md`) | Populate each topic from your own model-trace analyses (`/evaluate-responses` + the harden loop). |
| `skills/_shared/mechanism_library.md` (and any `mechanism_registry`) | ❌ empty stub | Populate if you use a mechanism catalog; the harden loop falls back to `used_concept_map.md` when it is absent. |

Then remind the user, in one line each:

- `workspace/` is gitignored and stays local — grow it with `/evaluate-responses` and the harden loop.
- Everything under `skills/*/SKILL.md` and the methodology files in `skills/_shared/` (gates, Triviality
  Probe, style/format guides, loop and archive contracts) **is** in the pull and stays in sync via Step 1
  — those need no manual work.

## Step 3 — Print the working flow (for newcomers)

Author-to-submit pipeline — each step is a slash command on one problem folder:

1. `/math-clone` — generate a new frontier problem (or `/problem-init` for an empty folder).
2. `/math-solve` (or `/math-solve-codex`) — solve it with mandatory answer verification.
3. `/math-check` — audit problem + solution against every gate; fix findings.
4. `/math-harder` — only if it was solved too easily; deepens difficulty, then re-check.
5. `/normalize-all` — normalize + de-LLM rewrite + assemble the Rainier submission (runs `/rainier-submit`).

- **Feedback loop:** `/evaluate-responses` mines model traces for weaknesses and grows
  `breaker_playbook.md` + `breaker-topics/`, which `/math-clone` and `/math-harder` read next round.
- **Reshape (same difficulty):** `/math-change-answer-type`, `/math-change-problem-type`.
- **Ground rules** live in `AGENTS.md` (Codex) / `CLAUDE.md` (Claude); hard gates in
  `skills/_shared/hard_gates.md`; difficulty probe in `skills/_shared/triviality_probe.md`.

## Notes

- This skill only rebuilds entrypoints and reports; it never authors content and never writes into
  `workspace/` or the knowledge files.
- If `git pull` reported merge conflicts under `skills/`, resolve them first (keep both sides' features —
  never drop one branch's skills), then run this skill.
