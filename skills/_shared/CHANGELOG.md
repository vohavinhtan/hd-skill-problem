# Skill Framework Changelog

Newest first. One entry per update to the shared skill framework — short bullets, what a puller needs to
know. `/math-sync` prints the top entries so a fresh pull sees what changed. **When you change the
framework, add a dated entry at the top here** (same run as the change); keep each entry to a few lines.

## 2026-08-01 — cross-platform sync + CLAUDE.md skill entries

- **`scripts/sync-provider-skills.sh` is now cross-platform.** On Windows (Git Bash / MSYS2 / Cygwin)
  it writes **copies** instead of symlinks — git checks committed symlinks out as plain text there, so
  entrypoints must be regenerated locally. Linux/macOS behavior (symlinks) is unchanged.
- **First run after a fresh clone/pull must be manual:** `./scripts/sync-provider-skills.sh`. Codex reads
  the **global** `~/.codex/skills`, which git does not update — new skills (including `/math-sync`) stay
  invisible until this runs. Restart Codex after.
- **CLAUDE.md** now lists `/rainier-submit`, `/revise-shelf`, and `/math-sync`, and documents the
  first-run bootstrap + Windows note in Provider Setup.

## 2026-08-01 — Codex-fit rollout + math-sync + changelog

- **All `skills/*/SKILL.md` moved to the Codex-fit template:** a minimal `## Contract` at the top
  (Task / Defaults / Only-hard-stop / Done), autonomous defaults (no "ask the user" — act on the
  reasonable reading and state the assumption), provider-neutral argument phrasing (no literal
  `$ARGUMENTS`), and no early-stop preamble triggers (required audits/probe blocks are final
  deliverables, not pre-write pauses).
- **`agents_core.md` / `AGENTS.md`:** the autonomy policy now leads the file, plus a global
  "do not narrate an upfront plan" rule (prevents early stops on gpt-5.x-Codex).
- **New skill `math-sync`:** rebuilds provider entrypoints, reports the files you maintain locally,
  prints the author-to-submit working flow, and prints this changelog.
- **`evaluate-responses`:** description + Contract now state the two jobs — (A) paste-grading UI
  responses vs (B) HTML archive analysis — and that Mode B is the learning loop feeding
  `breaker_playbook` + `breaker-topics`.
- **Web/originality audits** fall back to local checks when offline instead of hard-stopping.
- **Per-repo knowledge stays local:** `breaker-topics/*` and `mechanism_library` ship as empty stubs;
  `breaker_playbook` / `passed_exemplars` / `accepted_*` ship as baselines; `taxonomy_slots` is a
  snapshot to refresh from your own portal. Run `/evaluate-responses` to grow your own.
