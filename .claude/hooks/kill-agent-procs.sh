#!/usr/bin/env bash
# Kill leftover processes spawned by an AI agent (Claude Code / Codex).
#
# Two modes:
#   (default)  per-tab: kill only THIS tab's leftovers, identified by the session
#              id the agent injects into every command + child (daemonized ones
#              too, while env survives): Claude CLAUDE_CODE_SESSION_ID (Stop /
#              SessionEnd hooks) or Codex CODEX_THREAD_ID (notify payload
#              "thread-id"). Never touches another tab or hand-started processes.
#   --all      sweep EVERY agent-spawned process across ALL tabs (both tools).
#              Manual "nuke" for after a Ctrl-C/abort that ran no hook. Run it
#              from a plain terminal (not inside an agent) to avoid killing the
#              tab you launch it from.
#
# Invoked by: Claude Stop/SessionEnd hook (JSON on stdin, "session_id") and
#             Codex notify (JSON as $1, "thread-id"). Linux only (reads /proc).
set -u

ALL=0
case "${1:-}" in --all|--sweep) ALL=1; shift || true ;; esac

# ---- 1. Resolve which env (KEY) / id (VAL) identifies the target scope --------
KEY=""; VAL=""
if [ "$ALL" = 0 ]; then
  payload="${1:-}"
  [ -z "$payload" ] && [ ! -t 0 ] && payload="$(cat 2>/dev/null)"
  # (a) Codex notify: "thread-id" in payload; children carry CODEX_THREAD_ID.
  tid="$(printf '%s' "$payload" | grep -oE '"thread[_-]id"[[:space:]]*:[[:space:]]*"[0-9a-fA-F-]+"' | grep -oE '[0-9a-fA-F-]{8,}' | head -1)"
  [ -n "$tid" ] && { KEY=CODEX_THREAD_ID; VAL="$tid"; }
  # (b) Claude Stop/SessionEnd: injected session-id env var.
  [ -z "$KEY" ] && [ -n "${CLAUDE_CODE_SESSION_ID:-}" ] && { KEY=CLAUDE_CODE_SESSION_ID; VAL="$CLAUDE_CODE_SESSION_ID"; }
  # (c) Defensive: this process carries a Codex/companion id.
  [ -z "$KEY" ] && [ -n "${CODEX_THREAD_ID:-}" ] && { KEY=CODEX_THREAD_ID; VAL="$CODEX_THREAD_ID"; }
  [ -z "$KEY" ] && [ -n "${CODEX_COMPANION_SESSION_ID:-}" ] && { KEY=CODEX_COMPANION_SESSION_ID; VAL="$CODEX_COMPANION_SESSION_ID"; }
  # (d) Last resort: a session/conversation id parsed from the payload.
  if [ -z "$KEY" ]; then
    sid="$(printf '%s' "$payload" | grep -oE '"(session[_-]id|conversation[_-]id)"[[:space:]]*:[[:space:]]*"[0-9a-fA-F-]+"' | grep -oE '[0-9a-fA-F-]{8,}' | head -1)"
    [ -n "$sid" ] && { KEY=ANY; VAL="$sid"; }
  fi
fi

# ---- 2. Compute the environ match pattern ------------------------------------
AGENT_KEYS='CLAUDE_CODE_SESSION_ID|CODEX_THREAD_ID|CODEX_COMPANION_SESSION_ID'
pat=""; mode=""
if [ "$ALL" = 1 ]; then
  pat="^(${AGENT_KEYS})="          # any agent id, any value -> all tabs
  mode="ALL-agent-procs"
elif [ "$KEY" = ANY ]; then
  pat="^(${AGENT_KEYS})=${VAL}$"
  mode="any=$VAL"
elif [ -n "$KEY" ]; then
  pat="^${KEY}=${VAL}$"
  mode="$KEY=$VAL"
fi

# ---- 3. Protected ancestor chain of THIS script (script->hook->CLI->shell) ----
protect=" "; pid=$$
while [ "${pid:-0}" -gt 1 ] 2>/dev/null; do
  protect="$protect $pid "
  pid=$(awk '/^PPid:/{print $2}' /proc/"$pid"/status 2>/dev/null); [ -z "$pid" ] && break
done

# ---- 4. Build candidate set --------------------------------------------------
candidates=""
if [ -n "$pat" ]; then
  for envf in /proc/[0-9]*/environ; do
    p=${envf#/proc/}; p=${p%/environ}
    case "$protect" in *" $p "*) continue ;; esac
    if tr '\0' '\n' 2>/dev/null < "$envf" | grep -qE "$pat"; then
      candidates="$candidates $p"
    fi
  done 2>/dev/null
else
  # No id resolvable and not --all: descendants of this tab's codex/claude CLI.
  anchor=""; pid=$$
  while [ "${pid:-0}" -gt 1 ] 2>/dev/null; do
    nm=$(awk -F'\t' '/^Name:/{print $2}' /proc/"$pid"/status 2>/dev/null)
    case "$nm" in codex*|claude*) anchor="$pid" ;; esac
    pid=$(awk '/^PPid:/{print $2}' /proc/"$pid"/status 2>/dev/null); [ -z "$pid" ] && break
  done
  [ -z "$anchor" ] && { echo '{"systemMessage":"kill-agent-procs: no session id and no CLI anchor; nothing done"}'; exit 0; }
  frontier="$anchor"; subtree=" "
  while [ -n "$frontier" ]; do
    next=""
    for parent in $frontier; do
      for stf in /proc/[0-9]*/status; do
        cp=${stf#/proc/}; cp=${cp%/status}
        pp=$(awk '/^PPid:/{print $2}' "$stf" 2>/dev/null)
        [ "$pp" = "$parent" ] || continue
        case "$subtree" in *" $cp "*) continue ;; esac
        subtree="$subtree $cp "; next="$next $cp"
      done
    done
    frontier="$next"
  done 2>/dev/null
  for p in $subtree; do
    case "$protect" in *" $p "*) continue ;; esac
    candidates="$candidates $p"
  done
  mode="descendants-of-$anchor"
fi

# ---- 5. Kill: TERM, grace, KILL survivors ------------------------------------
killed=""
for p in $candidates; do
  kill -TERM "$p" 2>/dev/null && killed="$killed $p"
done
if [ -n "$killed" ]; then
  sleep 2
  for p in $killed; do
    kill -0 "$p" 2>/dev/null && kill -KILL "$p" 2>/dev/null
  done
fi

n=$(printf '%s' "$killed" | wc -w | tr -d ' ')
[ "$n" -gt 0 ] && printf '{"systemMessage":"kill-agent-procs [%s]: killed %s process(es):%s"}\n' "$mode" "$n" "$killed"
[ "$ALL" = 1 ] && printf 'Swept %s agent process(es).%s\n' "$n" "$killed"
exit 0
