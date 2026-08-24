# Rainier Authoring and Hardening Workflow

This is the human-facing source of truth for what to do next when creating, testing, hardening, and resubmitting a Rainier problem. If you do not remember the workflow, run `/rainier-next` and follow the single next action it prints.

## Current portal evidence

The following calibration comes from a user-provided Rainier export observed on 2026-08-23/24. Portal behavior can change; a newer portal export overrides this section.

- The observed official difficulty check ran two frontier models: `@openai/gpt-5.4` and `@bedrock/anthropic.claude-opus-4-8`.
- The observed run used 8 attempts per model.
- The observed acceptance rule was: at least one of the two models must have success rate `<= 75%`.
- Different answer strings are not evidence of model instability by themselves. Rainier performs mathematical equivalence judging; use `is_correct`, `successes`, `failures`, `stumped`, and `equivalence_judgement` rather than raw answer-string counts.
- `No Response` is not reliable stump evidence. Re-run it when the portal allows.

Internal target: do not aim exactly at the 75% boundary. Prefer a meaningful buffer, ideally one model solving at most 4-5 of 8 attempts when the failures are conceptual rather than arithmetic noise.

## Roles

### Assistant / agent owns

- Problem design or targeted redesign.
- Mathematical validity and uniqueness.
- Cold solving and independent verification.
- Difficulty preflight and shortcut search.
- Trace-driven diagnosis after Rainier feedback.
- Hardening the earliest robust shortcut, not merely increasing computation.
- Reference-solution architecture and zero-black-box quality.
- Domain/Sub-domain, Problem Type, Answer Type, concepts, formatting, and hard gates.
- Deciding whether the next technical action is `math-clone`, `math-solve`, `math-harder`, `evaluate-responses`, `normalize-all`, `format-solution`, or `rainier-submit`.

### User owns

- Running the actual Rainier portal check/submission.
- Bringing portal feedback back into the repo/chat when a problem is rejected or borderline.
- When available, downloading the full difficulty trace export and/or sending the full submission JSON.
- Making product-level choices only when desired, e.g. "keep this domain" or "replace the whole problem".

The user should not need to remember the routing rules. Run `/rainier-next` after every meaningful stage or portal response.

## Core status model

Do not use a single generic `PASS`.

1. `VALIDITY PASS` — well-posed, unique requested object, no hidden ambiguity.
2. `CORRECTNESS PASS` — reference answer independently verified.
3. `LOCAL DIFFICULTY CANDIDATE` — no obvious shortcut in local adversarial review; not an official Rainier pass.
4. `SOLUTION QUALITY PASS` — genuine reasoning, zero-black-box, not dominated by bookkeeping.
5. `SUBMISSION GATES PASS` — formatting, taxonomy, answer length, solution length, LaTeX, concepts, and portal fields are clean.
6. `RAINIER DIFFICULTY PASS` — portal reports at least one model success rate `<= 75%` under the current official check.
7. `RAINIER ACCEPTED` — final accepted state; freeze the accepted version.

A problem is never called Rainier-ready solely because local formatting or math checks pass.

## New-problem workflow

1. Create/design the problem with `/math-clone` (or initialize the requested problem number first if necessary).
2. The design must name a plausible model failure mode before relying on computation for difficulty.
3. Solve with `/math-solve` and verify independently.
4. Reject or redesign locally if the main method is immediately visible or if difficulty is mostly long expansion, coefficient tracking, case enumeration, determinant bookkeeping, repeated recurrence, brute force, or symbolic volume.
5. Run `/normalize-all` and then `/rainier-submit` when the files are clean.
6. User runs Rainier automated difficulty/quality checks.
7. User runs `/rainier-next` with the portal result or export.

## Harden workflow after a Rainier difficulty failure

A `100% / 100%` or other above-threshold result is a problem-design failure, not a formatting failure.

Preferred evidence order:

1. Full difficulty trace HTML export, if the portal provides it.
2. Full Rainier submission/evaluation JSON containing `model_results`, `attempts_summary`, `is_correct`, `model_response`, `correctness_metadata`, and trace identifiers.
3. Raw model responses/attempts.
4. Success-rate summary only, if nothing else is available.

When trace HTML is available, place it under `workspace/response-archive/html/` and run `/evaluate-responses <path>` so the attempt-level lessons are persisted into the response archive and breaker knowledge.

Then harden with `/math-harder` using the current trace/archive evidence.

### Trace Attack Analysis

For every difficulty failure, extract:

- `COMMON ENTRY` — how successful models first enter the problem.
- `COMMON REDUCTION` — the standard object they reduce it to.
- `COMMON SCALING/REPRESENTATION` — any scaling, basis, invariant, or coordinate choice found reliably.
- `FIRST DECISIVE RECOGNITION` — earliest insight that makes the rest routine.
- `RECOVERY PATH` — how models recover from local mistakes.
- `EARLIEST ROBUST SHORTCUT` — the first reusable shortcut that must be blocked.

Harden the earliest robust shortcut. Do not merely add more arithmetic after it.

### Good hardening moves

Prefer conceptual obstruction such as:

- competing regimes whose dominance is not visible from the statement;
- coupled implicit conditions;
- leading-order degeneracy that forces a next-order structural argument;
- a hidden representation or invariant that must be discovered;
- a tempting standard route that fails for a mathematical reason;
- a necessary lemma/certificate that unlocks a short finish;
- an asymmetric or secondary contribution that changes the requested answer only after the main structure is understood.

### Bad hardening moves

Do not treat these as genuine hardening by themselves:

- more Taylor orders;
- larger matrices solely to enlarge determinant work;
- more coefficients/cases/partitions;
- longer recurrences or finite searches;
- extra parameters with no new structural dependency;
- uglier constants or longer symbolic simplification.

Long model reasoning is not evidence of sufficient difficulty. A model can spend tens of thousands of reasoning tokens and still count as a clean success.

## What to send back after Rainier

### Difficulty FAIL or borderline

Preferred: full trace HTML plus full JSON. If only one is easy to obtain, send that one. The critical fields are model success/failure counts, per-attempt correctness, model responses/reasoning traces, and equivalence judgments.

### Solution-quality FAIL

Send the exact quality feedback plus the current solution. Full JSON is helpful but not mandatory.

- Mechanical/bookkeeping criticism usually means redesign the solve architecture, and often the problem architecture, rather than merely shortening prose.
- Black-box/unjustified-claim criticism means re-solve or expand the missing derivation before formatting.

### Format / LaTeX / concept / taxonomy FAIL

Only the relevant feedback is normally needed. Full JSON is unnecessary unless the result is ambiguous.

### ACCEPTED

No JSON is required. Optionally archive the trace/result because accepted examples improve future calibration. Freeze the accepted version; do not inherit stump statistics from earlier versions.

## Version history discipline

Track each redesign as a new empirical round even if the problem number is unchanged. Never carry difficulty numbers across a changed statement.

Example:

```text
v1: GPT 8/8, Claude 8/8 -> TOO EASY
    shortcut: both reduce immediately to X
v2: GPT 7/8, Claude 5/8 -> DIFFICULTY PASS candidate
    failure mode: Claude misses regime selection
v3: accepted -> FREEZE
```

The important history is not only the score but the failure mode and the shortcut that was blocked.

## The one command to remember

Run:

```text
/rainier-next
```

Optionally pass the active problem path, pasted Rainier feedback, pasted JSON, or a trace/archive path:

```text
/rainier-next workspace/frontier-problem/problem107-...
/rainier-next <paste Rainier feedback or JSON>
/rainier-next workspace/response-archive/html/<trace>.html
```

The command must print exactly one `YOUR NEXT ACTION` as the primary instruction, plus the command to run next when the next step is agent-side. If the next step is portal-side, it must tell the user exactly what to click/run and what evidence to bring back.