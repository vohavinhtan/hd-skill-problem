# Rainier Authoring and Hardening Workflow

This is the human-facing source of truth for creating, testing, hardening, and resubmitting a Rainier problem. The user-facing workflow is intentionally simple: say the problem number and run `/rainier-next`; the orchestrator performs every safe agent-side stage automatically and stops only when the user must interact with Rainier portal or a real mathematical/design blocker exists.

## Current portal evidence

The following calibration comes from a user-provided Rainier export observed on 2026-08-23/24. Portal behavior can change; a newer portal export overrides this section.

- The observed official difficulty check ran `@openai/gpt-5.4` and `@bedrock/anthropic.claude-opus-4-8`.
- The observed run used 8 attempts per model.
- The observed acceptance rule was: at least one of the two models must have success rate `<= 75%`.
- Different answer strings are not evidence of instability by themselves; use portal correctness/equivalence fields.
- `No Response` is not reliable stump evidence unless the portal explicitly scores it that way.

Internal target: do not aim exactly at the 75% boundary. Prefer a meaningful buffer, ideally one model solving at most 4–5 of 8 attempts when failures are conceptual rather than arithmetic noise.

## One-command policy

The command to remember is:

```text
/rainier-next problemNN
```

`/rainier-next` is an orchestrator, not merely a navigator. It automatically executes the necessary agent-side chain in the same run:

```text
problem missing
  -> math-clone
  -> math-solve
  -> normalize-all
  -> Rainier package
  -> STOP: user portal test

problem hardened / solution stale
  -> math-solve
  -> normalize-all
  -> Rainier package
  -> STOP: user portal test

Rainier difficulty fail + enough trace/JSON evidence
  -> evaluate-responses when needed
  -> math-harder
  -> math-solve
  -> normalize-all
  -> Rainier package
  -> STOP: user portal test
```

The user should not have to manually relay `/math-solve`, `/normalize-all`, `/rainier-submit`, `/math-harder`, or `/evaluate-responses` between stages when the agent can execute them directly.

Important: `normalize-all` already runs `rainier-submit` as Phase 4. A successful normalization therefore already produces the submission package; there is no separate manual `/rainier-submit` step afterward.

## User boundaries

The automatic loop stops only at one of these boundaries:

1. **PORTAL READY** — package is clean; user must run Rainier Automated/Difficulty Checks.
2. **NEED PORTAL EVIDENCE** — only score summary exists but full trace/JSON must be downloaded by the user.
3. **ACCEPTED** — exact version is accepted; freeze it.
4. **REAL BLOCKER** — correctness cannot be established, a hard gate cannot be repaired safely, or redesign reaches a genuine ceiling.

Missing Codex CLI, local credentials, local model runners, or inability to spawn independent attempts are not real blockers.

## GPT-web / no-CLI policy

The project does not require Codex CLI, Codex credentials, or any local provider to save a generated or hardened candidate.

Local model difficulty checks are optional preflight evidence:

```text
independent local model evidence available -> record it
no independent harness available          -> LOCAL_DIFFICULTY_UNMEASURED
```

`LOCAL_DIFFICULTY_UNMEASURED` is not a failure and does not block save when validity, correctness, originality, solution quality, Triviality Probe, and hard gates pass.

The saved statement must then be tested on the Rainier portal. Only the portal result for the exact unchanged statement may be called `RAINIER DIFFICULTY PASS`.

Do not simulate or invent repeated independent attempts from one ChatGPT web run. In GPT web, perform adversarial structural review and clearly label it heuristic/local only.

## Roles

### Assistant / agent owns

- Problem design or targeted redesign.
- Mathematical validity and uniqueness.
- Solving and ground-truth verification.
- Heuristic local difficulty preflight and shortcut search.
- Trace-driven diagnosis after Rainier feedback.
- Hardening the earliest robust shortcut rather than increasing computation.
- Reference-solution architecture and zero-black-box quality.
- Domain/Sub-domain, Problem Type, Answer Type, concepts, formatting, and hard gates.
- Fetching current `problem.md` and `solution.md` from GitHub once `problemNN` is known.
- Automatically advancing through all agent-side workflow stages.

### User owns

- Saying which problem is active when ambiguous; `problem91`, `problem104`, etc. is enough.
- Running the actual Rainier portal check/submission.
- Bringing new portal feedback back when a problem is rejected or borderline.
- When necessary, downloading full difficulty trace HTML and/or full Rainier JSON from the portal.

The user does not need to copy repository `problem.md` or `solution.md` into chat.

## Repository lookup rule

Current Rainier work may exist under either path:

```text
workspace/rainier-problem/
workspace/frontier-problem/
```

`/rainier-next problemNN` probes both and resolves exactly that problem number.

## Core status model

Do not use one generic `PASS`.

1. `VALIDITY PASS` — well-posed and unique.
2. `CORRECTNESS PASS` — ground truth verified.
3. `LOCAL DIFFICULTY CANDIDATE` or `LOCAL_DIFFICULTY_UNMEASURED` — local preflight only.
4. `SOLUTION QUALITY PASS` — genuine reasoning, zero-black-box, not bookkeeping-dominated.
5. `SUBMISSION GATES PASS` — formatting/taxonomy/length/LaTeX/concepts clean.
6. `RAINIER DIFFICULTY PASS` — current portal threshold satisfied on the exact statement.
7. `RAINIER ACCEPTED` — freeze final version.

## Harden workflow after Rainier difficulty failure

A `100% / 100%` or other above-threshold result is a problem-design failure, not a formatting failure.

Preferred evidence order:

1. Full difficulty trace HTML.
2. Full Rainier JSON with attempt-level correctness/responses.
3. Raw model attempts.
4. Success-rate summary only.

When full trace HTML exists, `/rainier-next` should automatically run the response-analysis stage before hardening. With full attempt-level JSON, it may harden directly from that evidence. With only a score summary and no detailed evidence available to the agent, the loop stops only because the user must obtain the export.

### Trace Attack Analysis

Extract:

- `COMMON ENTRY`
- `COMMON REDUCTION`
- `COMMON SCALING/REPRESENTATION`
- `FIRST DECISIVE RECOGNITION`
- `RECOVERY PATH`
- `EARLIEST ROBUST SHORTCUT`

Harden the earliest robust shortcut, not later arithmetic.

### Good hardening moves

Prefer:

- competing regimes whose dominance must be derived;
- coupled implicit conditions;
- leading-order degeneracy forcing a next-order structural argument;
- hidden representation/invariant discovery;
- a tempting standard route that fails structurally;
- a necessary lemma/certificate before a short finish;
- an asymmetric/secondary contribution that is answer-sensitive.

### Bad hardening moves

Do not use these as difficulty by themselves:

- more Taylor orders;
- larger matrices/determinants only for more arithmetic;
- more coefficients/cases/partitions;
- longer recurrences/searches;
- extra parameters without a new dependency;
- uglier constants or longer symbolic simplification.

## What happens when local preflight is unavailable

A clean hardening run may report:

```text
VALIDITY: PASS
CORRECTNESS: PASS
QUALITY: PASS
HARD GATES: PASS
LOCAL DIFFICULTY: UNMEASURED
SAVE DECISION: SAVED
RAINIER DIFFICULTY: UNTESTED
```

The orchestrator then continues automatically. If the statement changed, it solves the new version, normalizes it, packages it, and stops only when the exact package is ready for Rainier portal testing.

## What to send back after Rainier

### Difficulty FAIL or borderline

Give `/rainier-next` the problem number and new Rainier evidence. Full trace HTML/JSON is preferred. Do not resend repository problem/solution files.

### Solution-quality FAIL

Send the problem number and exact feedback. The orchestrator fetches the current files and applies the appropriate repair path automatically.

### Format / LaTeX / concept / taxonomy FAIL

Send the problem number and relevant feedback. The orchestrator applies the narrowest safe repair and rebuilds the package.

### ACCEPTED

No JSON required. Optionally archive traces for learning. Freeze the accepted exact version.

## Version discipline

Never carry difficulty percentages across a changed statement.

```text
v1: GPT 8/8, Claude 8/8 -> TOO EASY
v2: harden + solve + normalize/package automatically
v2 portal: GPT 7/8, Claude 4/8 -> DIFFICULTY PASS
v3 statement edit -> previous percentages stale
```

## Usage

```text
/rainier-next problem98
```

With new feedback:

```text
/rainier-next problem98
<paste Rainier feedback or JSON>
```

If context already uniquely identifies the problem, the number may be omitted. If genuinely ambiguous, the orchestrator asks only for `problemNN`.
