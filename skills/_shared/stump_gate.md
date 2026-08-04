# Stump-Check Gate (2× gpt-5.4)

Single source of truth for the model-stump gate used by `math-clone` and `math-harder`.
Purpose: before finalizing a generated or hardened problem, confirm it actually stumps the
target model by having **two independent, blind gpt-5.4 solvers** attempt it. This gate runs
**first among the design-quality gates** (Triviality Probe, hard gates, originality) — but *after*
the P2/P8 terminology pre-pass described below. Only a problem that survives the stump gate proceeds
to the remaining design-quality gates.

**One thing runs before this gate: the P2/P8 pre-pass.** Triviality-Probe **P2** (decoration) and
**P8** (terminology-density) are statement-surface checks with an answer-preserving auto-fix (strip
decoration; condense/merge/inline excess terminology — see `triviality_probe.md`). Apply that
pre-pass to `PROBLEM_TEXT` and bring P2/P8 to PASS **before** spawning the two solvers, so the
statement fed to them is already free of contrived-terminology and decoration REJECTs. The pre-pass
edits surface language only and must not change `INTENDED_ANSWER` or the intended difficulty; do not
stump-check a draft that still fails P2 or P8.

This is a required gate for the interactive `math-clone` and `math-harder` flows (effective
2026-07-23): **running** this gate every pass is mandatory (that is what overrides the general "one
pass, then ship" waste rule for these two skills only), but the verdict it produces is not itself the
save decision. It is layered on top of — never a replacement for — the existing quality gates: a
problem must be gate-clean on all downstream gates. Where a skill's older rules say "acceptance does
not require an actual model stump," that remains true even here — under the Gate > Stump Rule
(`skills/_shared/harden_loop.md`): gate-clean is the hard constraint, and a **STUMPED** verdict is
pursued but never required to save. Every verdict this gate produces — `STUMPED`, `NOT STUMPED`, or
`ANSWER-SUSPECT` — feeds the re-harden loop defined in `skills/_shared/harden_loop.md`, which owns
what happens next.

## Inputs

- `PROBLEM_TEXT` — the final normalized problem statement (the `## LaTeX (Normalized)` body only;
  never include the solution, answer, or any hint).
- `INTENDED_ANSWER` — the designer's intended exact final answer (held in the running model's
  context: for `math-harder` it is the hardened intended answer; for `math-clone` it is the answer
  the problem was designed around). Normalize it the same way as the Answer Length Gate:
  strip `$` and all whitespace before comparing.

## The two solvers (both blind, both independent)

Run two fresh gpt-5.4 attempts. Each gets **only** `PROBLEM_TEXT` and is told to return a single
boxed final answer. Neither sees the solution, the intended answer, or the other thread.

- **Thread M (medium)** — gpt-5.4, effort **medium**. This is the primary diagnostic attempt.
- **Thread L (low)** — gpt-5.4, effort **low**. This is an independent floor attempt. An exact solve
  by either thread proves that the draft is not a stump.

A thread's mathematical result is one of:
- `SOLVED` — it returned a final answer that, normalized, equals `INTENDED_ANSWER`.
- `FAILED` — the solver process launched successfully but returned a different answer, no boxed
  answer, "cannot determine", or timed out.

An invocation/configuration failure is **not** a solver failure. Classify a process that never
reached the model because of initialization, authentication, filesystem, unsupported-flag, or
model-resolution errors as `INFRA_ERROR`. An `INFRA_ERROR` blocks the gate: it is neither
`STUMPED` nor one of the five hardening rounds.

Record each thread's boxed answer (or "no answer") and a one-line summary of the route/shortcut it
used — that route is the diagnostic feedback for the re-harden loop.

### Route-quality and answer-sensitivity audit

An exact final-answer match is `SOLVED` even when the trace contains a local algebraic, counting, or
normalization error. Do not turn a correct answer into evidence of a stump merely because its proof
is imperfect. Instead, audit every such error:

1. Replace the disputed claim by the correct one, or delete it if it was unnecessary.
2. Propagate that change through the remaining derivation.
3. Ask whether the requested final answer changes.

If the error changes only a polynomial prefactor, a lower-order term, a normalized-away scale, or
some other quantity discarded by the requested limit/equivalence class, classify the route as an
**answer-insensitive successful shortcut**. It is still `SOLVED`, and the next hardening round must
make that supposedly difficult step load-bearing or remove it from the design. Only a wrong final
answer is `FAILED`; proof quality is reported separately.

### Blind-solve prompt (send to each thread)

```
Solve this math problem. Work independently and rigorously. Do NOT search for it online or assume
it is a known problem. Return exactly one final answer on the last line as: FINAL: <answer>.
If you cannot determine a unique answer, return: FINAL: CANNOT DETERMINE.

<PROBLEM_TEXT>
```

## Verdict (an exact solve by either thread blocks)

| Thread M (medium) | Thread L (low) | Verdict | Meaning / action |
|---|---|---|---|
| `SOLVED` | any | **NOT STUMPED** | medium cracks it → re-harden (loop: see `harden_loop.md`) |
| `FAILED` | `FAILED` | **STUMPED** | genuine stump → proceed to quality gates |
| `FAILED` | `SOLVED` | **NOT STUMPED** | low cracks it despite medium failing; use the low route as the primary hardening diagnosis and loop |

**Override — ANSWER-SUSPECT (takes precedence over STUMPED):** if both threads `FAILED` but their two
answers **equal each other** and both differ from `INTENDED_ANSWER`, that is not a clean stump — two
independent blind solvers converged on the same *different* answer, so the problem's own intended
answer is likely wrong. **Stop, warn the user**, do not save/overwrite, and re-derive the intended
answer (or run `/math-solve-codex`) before anything else.

Normalization for all comparisons: strip `$` and all whitespace. Treat both-"no answer" as *not*
equal to each other (that is a clean both-failed STUMPED, not ANSWER-SUSPECT).

**§8 label per attempt.** Alongside the verdict, classify each solver attempt (Thread M and
Thread L) using the §8 weakness-pattern taxonomy defined in `skills/evaluate-responses/SKILL.md` —
do not invent or hardcode specific label tokens here; that skill owns the taxonomy. Record the
label next to each thread's boxed answer and route summary; it is what lets the re-harden loop in
`skills/_shared/harden_loop.md` distinguish a genuine conceptual break from a bookkeeping or
formatting artifact.

## After the verdict

This gate's output is a pure verdict — `STUMPED` / `NOT STUMPED` / `ANSWER-SUSPECT` — plus the §8
label for each solver attempt. What happens next (re-harden rounds, the round cap, when to stop and
hand the problem to the user) is not decided here: that procedure lives entirely in
`skills/_shared/harden_loop.md`. Do not describe rounds in this file — hand the verdict, the
per-attempt route summaries, and the §8 labels to that loop and let it drive.

This verdict does not by itself decide whether the flow may save. Under the Gate > Stump Rule
(`skills/_shared/harden_loop.md`): gate-clean is required to save; a STUMPED verdict is pursued but
never required; and a gate-clean draft that is NOT STUMPED may still ship via the loop's
acceptance-fallback exit. This file hands off the verdict — the save decision itself lives entirely
in `skills/_shared/harden_loop.md`.

## Spawn recipes (provider-specific)

The two threads must be independent gpt-5.4 runs. Use the recipe for the provider you are running under.

### Codex CLI (primary)

Run two separate `codex exec` calls, medium then low, read-only (blind, no workspace writes),
capturing each final answer and diagnostic stream. Use a writable temporary Codex home, ephemeral
sessions, ignored user config, and `/tmp` as the working root. These flags avoid failures caused by
a read-only default Codex home or repository policy.

#### Authentication preflight (mandatory)

`CODEX_HOME` selects the Codex state directory; it does not create credentials. A fresh temporary
home is therefore unauthenticated unless it is seeded. Resolve an already authenticated source
before creating the two isolated homes, in this order:

1. `CODEX_AUTH_HOME`, when it points to a home containing a readable `auth.json`;
2. the current `CODEX_HOME`, when it contains a readable `auth.json`;
3. the Codex default home (`${HOME}/.codex`), when it contains a readable `auth.json`;
4. an already-present `OPENAI_API_KEY` or `CODEX_API_KEY` in the environment.

If none is available, stop before launching either solver and report `INFRA_ERROR: no Codex
credentials available`. Do not classify this as `FAILED`, `STUMPED`, or a hardening round. Never
print an API key or the contents of `auth.json`. When an auth file is used, copy only that file
with mode `600` into each fresh temporary home; never share one home between the two threads.

Give each solver a hard maximum of **300 seconds (5 minutes)**. Do not raise this ceiling for a
harder draft: a thread that launches successfully but produces no usable `FINAL:` line within
300 seconds is `FAILED`, not an invitation to extend the budget. Note that `timeout Ns` is a
kill-ceiling, not a forced wait — `codex exec` returns the instant it finishes, so a solver that
cracks the draft in 40 s returns in 40 s; the ceiling only bites when the run would otherwise hang.

### Run the two threads in parallel (recommended) + early exit

The two threads are independent, so run them **concurrently** — wall time becomes `max(M, L)`
instead of `M + L`. The only requirement is thread isolation: give each parallel run its **own
`CODEX_HOME`** (e.g. `/tmp/codex-stump-M` and `/tmp/codex-stump-L`) so their ephemeral sessions and
locks never collide inside a shared home.

Because the verdict short-circuits on *any* single `SOLVED`, apply early exit:

1. Launch Thread M (medium) and Thread L (low) in the background, each `timeout 300s`, separate homes.
2. **Poll the two output files; the moment either produces a `FINAL:` matching `INTENDED_ANSWER`
   (normalized), the verdict is NOT STUMPED** — kill the other thread and hand off to the re-harden
   loop (`skills/_shared/harden_loop.md`). A
   weak draft is usually cracked fast, so this returns well under the full budget.
3. If neither has solved, `wait` for both to finish (or hit their 300 s ceiling), then apply the
   verdict table.

**Guard (unchanged, non-negotiable): a STUMPED verdict requires BOTH threads to actually FAIL at the
full 300 s budget.** Parallelism and early exit may only *confirm a solve sooner*; they may never
shorten the path to STUMPED. Do not shrink the 300 s cap to "decide faster" — a shorter cap turns
would-be solves into timeout-`FAILED`, i.e. a false stump (the budget-artifact trap documented across
the response archive). `timeout 300s` is a kill-ceiling: a thread that solves early already returns
early on its own.

Write the blind prompt to `$SCRATCH/blind_prompt.txt` first. Pass it on stdin; do not interpolate
the problem text into a shell command.

`$SCRATCH` is a per-run scratch directory under the repo-local scratch root **`.tmp/`** (gitignored;
never committed). Use a distinct, descriptive subdirectory per gate run, e.g. `.tmp/stump-<round>`.
The Codex homes stay under the system `/tmp` (outside the repo); only the `$SCRATCH` outputs live in
`.tmp/`.

```bash
SCRATCH="${SCRATCH:-.tmp/stump-$(date +%Y%m%d-%H%M%S)}"
mkdir -p "$SCRATCH"

# Resolve credentials before overriding CODEX_HOME for the isolated runs.
AUTH_SOURCE_HOME="${CODEX_AUTH_HOME:-}"
if [ -z "$AUTH_SOURCE_HOME" ] && [ -n "${CODEX_HOME:-}" ] \
   && [ -s "${CODEX_HOME}/auth.json" ]; then
  AUTH_SOURCE_HOME="$CODEX_HOME"
fi
if [ -z "$AUTH_SOURCE_HOME" ] && [ -s "${HOME:-}/.codex/auth.json" ]; then
  AUTH_SOURCE_HOME="${HOME}/.codex"
fi
if [ -n "$AUTH_SOURCE_HOME" ] && [ ! -s "$AUTH_SOURCE_HOME/auth.json" ]; then
  printf '%s\n' 'INFRA_ERROR: selected Codex auth home has no readable auth.json' >&2
  exit 2
fi
if [ -z "$AUTH_SOURCE_HOME" ] \
   && [ -z "${OPENAI_API_KEY:-}" ] \
   && [ -z "${CODEX_API_KEY:-}" ]; then
  printf '%s\n' 'INFRA_ERROR: no Codex credentials available' >&2
  exit 2
fi

MEDIUM_HOME="$(mktemp -d /tmp/codex-stump-M.XXXXXX)"
LOW_HOME="$(mktemp -d /tmp/codex-stump-L.XXXXXX)"
if [ -n "$AUTH_SOURCE_HOME" ]; then
  install -m 600 "$AUTH_SOURCE_HOME/auth.json" "$MEDIUM_HOME/auth.json"
  install -m 600 "$AUTH_SOURCE_HOME/auth.json" "$LOW_HOME/auth.json"
fi

# Thread M — medium (background, own CODEX_HOME)
timeout 300s env CODEX_HOME="$MEDIUM_HOME" codex exec \
  --ephemeral --ignore-user-config \
  -m gpt-5.4 -c model_reasoning_effort=medium \
  -C /tmp -s read-only --skip-git-repo-check \
  -o "$SCRATCH/stump_M.txt" - \
  < "$SCRATCH/blind_prompt.txt" \
  > "$SCRATCH/stump_M.stdout.log" 2> "$SCRATCH/stump_M.stderr.log" &
PID_M=$!

# Thread L — low, independent floor (background, own CODEX_HOME)
timeout 300s env CODEX_HOME="$LOW_HOME" codex exec \
  --ephemeral --ignore-user-config \
  -m gpt-5.4 -c model_reasoning_effort=low \
  -C /tmp -s read-only --skip-git-repo-check \
  -o "$SCRATCH/stump_L.txt" - \
  < "$SCRATCH/blind_prompt.txt" \
  > "$SCRATCH/stump_L.stdout.log" 2> "$SCRATCH/stump_L.stderr.log" &
PID_L=$!

# Early exit: poll for a matching FINAL; kill the loser once either solves.
# Otherwise wait for both. A STUMPED verdict still needs BOTH to FAIL at full budget.
while kill -0 "$PID_M" 2>/dev/null || kill -0 "$PID_L" 2>/dev/null; do
  for f in stump_M stump_L; do
    if grep -q "^FINAL:" "$SCRATCH/$f.txt" 2>/dev/null; then
      # normalize + compare to INTENDED_ANSWER; if it matches -> NOT STUMPED:
      #   kill "$PID_M" "$PID_L" 2>/dev/null; break out and report NOT STUMPED.
      :
    fi
  done
  sleep 5
done
wait "$PID_M"; STUMP_M_STATUS=$?
wait "$PID_L"; STUMP_L_STATUS=$?
```

Extract the `FINAL:` line from `stump_M.txt` / `stump_L.txt`, normalize (strip `$`/whitespace),
compare to `INTENDED_ANSWER`, and apply the verdict table. Any single match is **NOT STUMPED** (stop
early); **STUMPED** needs both to FAIL at the full budget. Keep the four-artifact failure discipline
below per thread (exit status, output file, stdout log, stderr log).

#### Robust background status capture

When durable per-thread statuses are needed, capture each status inside the same background subshell that runs that thread. Do not launch a parenthesized command and later recover the status from the parent shell: that status then belongs to wait or another command, and an early-exit run may leave no trustworthy artifact.

Use this known-good command shape for each thread:

    (timeout 300s env CODEX_HOME="$MEDIUM_HOME" codex exec \
      --ephemeral --ignore-user-config \
      -m gpt-5.4 -c model_reasoning_effort=medium \
      -C /tmp -s read-only --skip-git-repo-check \
      -o "$SCRATCH/stump_M.txt" - \
      < "$SCRATCH/blind_prompt.txt" \
      > "$SCRATCH/medium.stdout" 2> "$SCRATCH/medium.stderr"; \
      printf '%s' "$?" > "$SCRATCH/medium.status") &

    (timeout 300s env CODEX_HOME="$LOW_HOME" codex exec \
      --ephemeral --ignore-user-config \
      -m gpt-5.4 -c model_reasoning_effort=low \
      -C /tmp -s read-only --skip-git-repo-check \
      -o "$SCRATCH/stump_L.txt" - \
      < "$SCRATCH/blind_prompt.txt" \
      > "$SCRATCH/low.stdout" 2> "$SCRATCH/low.stderr"; \
      printf '%s' "$?" > "$SCRATCH/low.status") &

    wait
    printf 'medium=%s low=%s\n' \
      "$(<"$SCRATCH/medium.status")" "$(<"$SCRATCH/low.status")"

This is the preferred non-interactive runner when the host tool can keep one shell session alive. It preserves the four required artifacts for each thread: status, final-output file, stdout, and stderr.

### Codex CLI failure discipline

Do not declare Codex CLI unavailable merely because a plain `codex exec` invocation failed in the
default home or current repository. Before reporting a blocker, run the isolated recipe above at
least once for each required effort and inspect all four artifacts: exit status, output file,
stdout log, and stderr log.

- Exit status `124` from `timeout` with no usable `FINAL:` line is a solver timeout (`FAILED`).
- A nonzero exit caused by initialization, authentication, filesystem, unsupported flags, or model
  lookup is `INFRA_ERROR`; it does not count as a model attempt or hardening round.
- On `INFRA_ERROR`, record the exact command shape, `codex --version`, exit status, and the relevant
  stderr excerpt. Report only the observed error; do not speculate that the model or CLI is
  unavailable.
- Never replace the required gpt-5.4 run with a different model or a local subagent and call the
  gate satisfied. A substitute may be reported as extra evidence, but the official verdict remains
  `GATE BLOCKED`.
- If this Codex version rejects one of the recipe flags, confirm that with `codex exec --help`,
  make only the minimum compatibility adjustment, and retain the isolation properties: writable
  temporary Codex home, ignored user config, ephemeral session, `/tmp` working root, and read-only
  sandbox.
- If `gpt-5.4` is rejected after the process successfully initializes, report `INFRA_ERROR` with
  the exact model-resolution message. Do not silently fall back to the authoring model.

### Claude Code

Spawn each thread as a `codex:codex-rescue` subagent, forwarding the model and effort flags. Run both
in one message so they execute concurrently.

```
agent(<blind-solve prompt with PROBLEM_TEXT>,
      { agentType: 'codex:codex-rescue', label: 'stump-M' })   // prepend "--model gpt-5.4 --effort medium --fresh"
agent(<blind-solve prompt with PROBLEM_TEXT>,
      { agentType: 'codex:codex-rescue', label: 'stump-L' })   // prepend "--model gpt-5.4 --effort low --fresh"
```

The rescue forwarder passes `--model` and `--effort` straight to the codex-companion `task` helper;
the prompt must state "research only, do not edit files, return only FINAL: <answer>".

## Reporting

Report this run's verdict only — a single gate invocation, not a loop history: the verdict
(`STUMPED` / `NOT STUMPED` / `ANSWER-SUSPECT`), Thread M's and Thread L's boxed answers vs
`INTENDED_ANSWER`, each thread's §8 label, the route-quality audit for any correct trace containing
a local error, and the surviving shortcut (if any). On `STUMPED`, continue to the quality gates. On
`NOT STUMPED`, hand this report to the re-harden loop in `skills/_shared/harden_loop.md`, which owns
round-counting, the round cap, and loop-exhausted handling — this gate does not track rounds across
invocations. On `ANSWER-SUSPECT`, stop and surface the traces to the user.
