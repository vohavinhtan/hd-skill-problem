# Rainier Authoring and Hardening Workflow

This is the human-facing source of truth for what to do next when creating, testing, hardening, and resubmitting a Rainier problem. If you do not remember the workflow, run `/rainier-next` and follow the single next action it prints.

## Current portal evidence

The following calibration comes from a user-provided Rainier export observed on 2026-08-23/24. Portal behavior can change; a newer portal export overrides this section.

- The observed official difficulty check ran `@openai/gpt-5.4` and `@bedrock/anthropic.claude-opus-4-8`.
- The observed run used 8 attempts per model.
- The observed acceptance rule was: at least one of the two models must have success rate `<= 75%`.
- Different answer strings are not evidence of instability by themselves; use portal correctness/equivalence fields.
- `No Response` is not reliable stump evidence unless the portal explicitly scores it that way.

Internal target: do not aim exactly at the 75% boundary. Prefer a meaningful buffer, ideally one model solving at most 4–5 of 8 attempts when failures are conceptual rather than arithmetic noise.

## GPT-web / no-CLI policy

The project no longer requires Codex CLI, Codex credentials, or any local provider to save a generated or hardened candidate.

Local model difficulty checks are **optional preflight evidence**:

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
- Cold solving and independent verification where genuinely possible.
- Heuristic local difficulty preflight and shortcut search.
- Trace-driven diagnosis after Rainier feedback.
- Hardening the earliest robust shortcut, not merely increasing computation.
- Reference-solution architecture and zero-black-box quality.
- Domain/Sub-domain, Problem Type, Answer Type, concepts, formatting, and hard gates.
- Fetching current `problem.md` and `solution.md` from GitHub once the problem number is known.
- Deciding the next technical action.

### User owns

- Saying which problem is active when ambiguous; `problem91`, `problem104`, etc. is enough.
- Running the actual Rainier portal check/submission.
- Bringing new portal feedback back when a problem is rejected or borderline.
- When available, downloading the full difficulty trace export and/or sending the full Rainier JSON.

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
2. `CORRECTNESS PASS` — ground truth independently verified.
3. `LOCAL DIFFICULTY CANDIDATE` or `LOCAL_DIFFICULTY_UNMEASURED` — local preflight only.
4. `SOLUTION QUALITY PASS` — genuine reasoning, zero-black-box, not bookkeeping-dominated.
5. `SUBMISSION GATES PASS` — formatting/taxonomy/length/LaTeX/concepts clean.
6. `RAINIER DIFFICULTY PASS` — current portal threshold satisfied on the exact statement.
7. `RAINIER ACCEPTED` — freeze final version.

## New-problem workflow

1. Create/design with `/math-clone`.
2. Name a plausible model failure mode before relying on computation for difficulty.
3. Solve with `/math-solve` and verify.
4. Redesign locally if the main method is immediately visible or difficulty is mostly expansion/bookkeeping/search.
5. If independent local model testing is unavailable, record `LOCAL_DIFFICULTY_UNMEASURED` and continue; do not wait for Codex.
6. Run `/normalize-all`, then `/rainier-submit` when files are clean.
7. User runs Rainier automated/difficulty checks.
8. User runs `/rainier-next problemNN` with new portal feedback/export.

## Harden workflow after Rainier difficulty failure

A `100% / 100%` or other above-threshold result is a problem-design failure, not a formatting failure.

Preferred evidence order:

1. Full difficulty trace HTML.
2. Full Rainier JSON with attempt-level correctness/responses.
3. Raw model attempts.
4. Success-rate summary only.

When trace HTML is available, analyze/persist it with `/evaluate-responses <path>`, then run `/math-harder` using the current evidence.

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

A clean hardening run should report:

```text
VALIDITY: PASS
CORRECTNESS: PASS
QUALITY: PASS
HARD GATES: PASS
LOCAL DIFFICULTY: UNMEASURED
SAVE DECISION: SAVED
RAINIER DIFFICULTY: UNTESTED
```

Then `/rainier-next problemNN` routes normally:

- stale/missing solution after hardening -> `/math-solve`;
- solution exists but not normalized -> `/normalize-all`;
- locally clean -> `/rainier-submit`;
- package ready -> user runs Rainier portal.

It must **not** route back to Codex CLI or block because credentials are absent.

## What to send back after Rainier

### Difficulty FAIL or borderline

Give `/rainier-next` the problem number and new Rainier evidence. Full trace HTML/JSON is preferred. Do not resend repository problem/solution files.

### Solution-quality FAIL

Send the problem number and exact feedback. The agent fetches the solution itself.

### Format / LaTeX / concept / taxonomy FAIL

Send the problem number and relevant feedback; full JSON usually unnecessary.

### ACCEPTED

No JSON required. Optionally archive traces for learning. Freeze the accepted exact version.

## Version discipline

Never carry difficulty percentages across a changed statement.

```text
v1: GPT 8/8, Claude 8/8 -> TOO EASY
v2: saved hardening, local preflight UNMEASURED -> portal test required
v2 portal: GPT 7/8, Claude 4/8 -> DIFFICULTY PASS
v3 statement edit -> previous percentages stale
```

## The one command to remember

```text
/rainier-next problem91
```

With new feedback:

```text
/rainier-next problem91
<paste Rainier feedback or JSON>
```

If context already uniquely identifies the problem, the number may be omitted. If genuinely ambiguous, the navigator asks only for `problemNN`.
