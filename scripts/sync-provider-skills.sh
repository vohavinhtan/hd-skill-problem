#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SKILLS_DIR="$ROOT_DIR/skills"
CLAUDE_DIR="$ROOT_DIR/.claude/commands"
CODEX_PROJECT_PROMPTS_DIR="$ROOT_DIR/.codex/prompts"
CODEX_GLOBAL_PROMPTS_DIR="${HOME}/.codex/prompts"
CODEX_PROJECT_SKILLS_DIR="$ROOT_DIR/.codex/skills"
CODEX_GLOBAL_SKILLS_DIR="${CODEX_HOME:-${HOME}/.codex}/skills"

# Windows (Git Bash / MSYS2 / Cygwin) cannot reliably create symlinks — git checks
# committed symlinks out as plain text files there, and `ln -s` needs Developer Mode.
# So on Windows we generate COPIES instead of symlinks. Run this in Git Bash.
IS_WINDOWS=0
case "$(uname -s 2>/dev/null)" in
  MINGW*|MSYS*|CYGWIN*) IS_WINDOWS=1 ;;
esac

mkdir -p "$CLAUDE_DIR" "$CODEX_PROJECT_PROMPTS_DIR" "$CODEX_GLOBAL_PROMPTS_DIR" "$CODEX_PROJECT_SKILLS_DIR" "$CODEX_GLOBAL_SKILLS_DIR"

# One <skill>.md entrypoint per skill. POSIX: relative symlink; Windows: copy.
# keep_plain=1 preserves non-generated plain .md files in the dir (the Claude-only
# batch commands committed under .claude/commands/ that have no skills/<name>/).
sync_md_dir() {
  local target_dir="$1" keep_plain="$2"

  if [ "$IS_WINDOWS" -eq 1 ]; then
    if [ "$keep_plain" -eq 0 ]; then
      find "$target_dir" -maxdepth 1 -name '*.md' -delete 2>/dev/null || true
    fi
    # keep_plain=1: don't blanket-delete; current skills are overwritten below and the
    # Claude-only plain commands are left untouched.
  else
    find "$target_dir" -maxdepth 1 -type l -name '*.md' -delete 2>/dev/null || true
  fi

  while IFS= read -r -d '' skill_file; do
    local skill_name
    skill_name="$(basename "$(dirname "$skill_file")")"
    if [ "$IS_WINDOWS" -eq 1 ]; then
      cp -f "$skill_file" "$target_dir/$skill_name.md"
    else
      ln -sfn "../../skills/$skill_name/SKILL.md" "$target_dir/$skill_name.md"
    fi
  done < <(find "$SKILLS_DIR" -mindepth 2 -maxdepth 2 -type f -name 'SKILL.md' -print0 | sort -z)
}

sync_codex_global_prompt_copies() {
  find "$CODEX_GLOBAL_PROMPTS_DIR" -maxdepth 1 -type f -name '*.md' -delete 2>/dev/null || true

  while IFS= read -r -d '' skill_file; do
    local skill_name
    skill_name="$(basename "$(dirname "$skill_file")")"
    cp -f "$skill_file" "$CODEX_GLOBAL_PROMPTS_DIR/$skill_name.md"
  done < <(find "$SKILLS_DIR" -mindepth 2 -maxdepth 2 -type f -name 'SKILL.md' -print0 | sort -z)
}

# Codex CLI (checked against codex-cli 0.142.5) does not read ~/.codex/prompts/ at
# all -- that string does not appear anywhere in the codex binary. Custom skills are
# discovered from $CODEX_HOME/skills/<skill-name>/SKILL.md (one directory per skill,
# same shape as skills/<name>/SKILL.md in this repo), confirmed by the bundled
# skill-installer skill ("Installs into $CODEX_HOME/skills/<skill-name>"). The
# prompts/ sync above is kept only for backward compatibility with older Codex
# versions or other tooling that may still read it; it is not sufficient by itself.
# POSIX: one directory symlink per skill; Windows: a recursive copy of each skill dir.
sync_codex_skill_dirs() {
  local target_dir="$1"

  if [ "$IS_WINDOWS" -eq 1 ]; then
    find "$target_dir" -mindepth 1 -maxdepth 1 \( -type d -o -type f -o -type l \) -exec rm -rf {} + 2>/dev/null || true
  else
    find "$target_dir" -mindepth 1 -maxdepth 1 -type l -delete 2>/dev/null || true
  fi

  while IFS= read -r -d '' skill_dir; do
    local skill_name
    skill_name="$(basename "$skill_dir")"
    if [ "$IS_WINDOWS" -eq 1 ]; then
      rm -rf "$target_dir/$skill_name"
      cp -rf "$skill_dir" "$target_dir/$skill_name"
    else
      ln -sfn "$skill_dir" "$target_dir/$skill_name"
    fi
  done < <(find "$SKILLS_DIR" -mindepth 1 -maxdepth 1 -type d -not -name '_shared' -print0 | sort -z)
}

# Install the agent process-cleanup hook for Codex. Claude Code picks up the
# cleanup script automatically via .claude/settings.json (Stop/SessionEnd), but
# Codex reads `notify` only from the global ~/.codex/config.toml, so wire it here.
# Idempotent; never clobbers an existing `notify`. (The hook is a bash script, so it
# is effective on Linux/macOS/WSL; on native Windows it is installed but only runs
# where a bash interpreter is available to Codex.)
install_agent_cleanup_hook() {
  local src="$ROOT_DIR/.claude/hooks/kill-agent-procs.sh"
  local dest_dir="${HOME}/.claude/hooks"
  local dest="$dest_dir/kill-agent-procs.sh"
  local codex_cfg="${CODEX_HOME:-${HOME}/.codex}/config.toml"

  [ -f "$src" ] || { printf '  ! %s missing; skipped Codex hook install\n' "$src"; return 0; }
  mkdir -p "$dest_dir"; cp -f "$src" "$dest"; chmod +x "$dest" 2>/dev/null || true

  mkdir -p "$(dirname "$codex_cfg")"; touch "$codex_cfg"
  if grep -qE '^[[:space:]]*notify[[:space:]]*=' "$codex_cfg"; then
    if grep -E '^[[:space:]]*notify[[:space:]]*=' "$codex_cfg" | grep -qF 'kill-agent-procs.sh'; then
      printf '  - Codex notify already installed\n'
    else
      printf '  ! Codex config already has a different notify; left untouched\n'
    fi
    return 0
  fi
  if command -v python3 >/dev/null 2>&1; then
    DEST="$dest" CODEX_CFG="$codex_cfg" python3 - <<'PY'
import os
cfg=os.environ["CODEX_CFG"]; dest=os.environ["DEST"]
lines=open(cfg).read().splitlines()
ins=len(lines)
for i,l in enumerate(lines):
    if l.lstrip().startswith("["):
        ins=i; break
out=lines[:ins]+[f'notify = ["{dest}"]',""]+lines[ins:]
open(cfg,"w").write("\n".join(out).rstrip("\n")+"\n")
PY
    printf '  - Codex notify added to %s\n' "$codex_cfg"
  else
    printf '  ! python3 not found; add to the TOP of %s:\n      notify = ["%s"]\n' "$codex_cfg" "$dest"
  fi
}

# Generate the repo-root AGENTS.md (Codex loads it every session) from the lean
# canonical rule file. Codex never reads CLAUDE.md, so without this the project's
# hard gates + gate>stump priority are invisible to Codex. Kept a copy, not a
# symlink, because AGENTS.md is a version-controlled project artifact; regenerated
# from skills/_shared/agents_core.md so it never drifts from the source of truth.
sync_agents_md() {
  local src="$SKILLS_DIR/_shared/agents_core.md"
  local dest="$ROOT_DIR/AGENTS.md"
  [ -f "$src" ] || { printf '  ! %s missing; skipped AGENTS.md\n' "$src"; return 0; }
  {
    printf '<!-- GENERATED from skills/_shared/agents_core.md by scripts/sync-provider-skills.sh. Do not edit by hand; edit the source. -->\n\n'
    cat "$src"
  } > "$dest"
  # Codex enforces a 32 KiB AGENTS.md cap; warn if the lean file outgrows it.
  local bytes; bytes="$(wc -c < "$dest")"
  if [ "$bytes" -gt 32768 ]; then
    printf '  ! AGENTS.md is %s bytes (>32 KiB Codex cap) — trim skills/_shared/agents_core.md\n' "$bytes"
  fi
}

sync_md_dir "$CLAUDE_DIR" 1
sync_md_dir "$CODEX_PROJECT_PROMPTS_DIR" 0
sync_codex_global_prompt_copies
sync_codex_skill_dirs "$CODEX_PROJECT_SKILLS_DIR"
sync_codex_skill_dirs "$CODEX_GLOBAL_SKILLS_DIR"
sync_agents_md
install_agent_cleanup_hook

MODE="symlinks"; [ "$IS_WINDOWS" -eq 1 ] && MODE="copies (Windows)"
printf 'Synced %s (%s) to:\n' "$SKILLS_DIR" "$MODE"
printf '  - %s (generated from skills/_shared/agents_core.md; Codex durable rules)\n' "$ROOT_DIR/AGENTS.md"
printf '  - %s\n' "$CLAUDE_DIR"
printf '  - %s (legacy/likely unused by current Codex)\n' "$CODEX_PROJECT_PROMPTS_DIR"
printf '  - %s (regular copies, legacy/likely unused by current Codex)\n' "$CODEX_GLOBAL_PROMPTS_DIR"
printf '  - %s (skill dirs)\n' "$CODEX_PROJECT_SKILLS_DIR"
printf '  - %s (skill dirs)\n' "$CODEX_GLOBAL_SKILLS_DIR"
printf '\nRestart Codex to pick up new/changed skills -- it does not hot-reload $CODEX_HOME/skills.\n'
