#!/usr/bin/env bash
# Manually end ALL background processes started by Claude Code / Codex — every
# tab, both tools. Use this after a Ctrl-C / abort / hard quit that ran no
# cleanup hook and left a server or `codex exec` running in the background.
#
# It kills only processes carrying an agent session id in their environment
# (CLAUDE_CODE_SESSION_ID / CODEX_THREAD_ID / CODEX_COMPANION_SESSION_ID), so it
# never touches processes you started by hand. It does NOT touch the agent chat —
# only the code those agents left running. Linux only.
#
# Best run from a PLAIN terminal, not inside an agent tab, so you do not kill the
# very tab you launch it from.
exec "$(cd "$(dirname "$0")/.." && pwd)/.claude/hooks/kill-agent-procs.sh" --all
