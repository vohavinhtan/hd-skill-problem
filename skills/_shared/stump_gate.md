# Difficulty Preflight Gate — Provider-Neutral

Single source of truth for local difficulty evidence used by `math-clone` and `math-harder`.
This file deliberately does **not** require Codex CLI, API credentials, or any particular local
model runner. The final authority for Rainier difficulty is the current Rainier portal result for
the exact unchanged problem statement.

## Principle

Local model testing is a **preflight**, not a save-blocking hard gate.

A generated or hardened problem may be saved when all mathematical, solution-quality, originality,
Triviality Probe, and hard gates pass even if no independent local model harness is available. In
that case record the local difficulty status as `UNMEASURED` and require a fresh Rainier portal test
before calling the problem `RAINIER DIFFICULTY PASS`.

Never treat missing CLI tools, missing credentials, unavailable providers, model-resolution errors,
or web-session limitations as mathematical failure. They produce `UNMEASURED`, never `INFRA_ERROR`
as a blocking verdict.

## Inputs

- `PROBLEM_TEXT` — the exact statement version being evaluated; never include solution or answer.
- `INTENDED_ANSWER` — the independently verified exact answer.
- Optional external evidence: Rainier JSON, full trace HTML, pasted model attempts, or genuinely
  independent blind attempts from any available provider/harness.

Apply the P2/P8 statement-surface pre-pass from `triviality_probe.md` before difficulty evaluation.
P2/P8 failures remain real gates; lack of a model runner does not.

## Evidence priority

Use the strongest available evidence in this order:

1. **Current Rainier portal evidence for the exact statement.** This is authoritative for Rainier.
2. **Current Rainier full traces/JSON** with per-attempt correctness and reasoning routes.
3. **Independent blind model attempts** from an actually available web/provider/harness.
4. **Single-session adversarial review** of method visibility, shortcuts, and failure modes.
5. No usable model evidence → `UNMEASURED`.

Do not pretend multiple attempts are independent when they came from one reasoning run or one copied
trace. Do not fabricate model success rates.

## Local statuses

Use exactly one local status:

- `LOCAL_STUMPED` — available independent blind evidence shows the target model(s) genuinely fail on
  the answer for conceptual reasons.
- `LOCAL_NOT_STUMPED` — at least one independent blind attempt solves the exact problem correctly or
  exposes a robust shortcut.
- `ANSWER_SUSPECT` — multiple independent attempts converge on the same different answer; re-derive
  ground truth before saving.
- `UNMEASURED` — no trustworthy independent local harness/evidence is available.

A tool or authentication failure is folded into `UNMEASURED`; it is not a fifth mathematical status.

## Single-session adversarial review

When running in ChatGPT web or another environment without independent model spawning, perform a
heuristic preflight instead of blocking:

- identify the earliest visible standard reduction;
- identify the first decisive recognition that makes the remainder routine;
- search for answer-insensitive shortcuts;
- check whether difficulty is mostly computation/bookkeeping;
- state the predicted model failure mode, if any.

This review may support `LOCAL DIFFICULTY CANDIDATE`, but it must never be reported as an observed
stump rate.

## Rainier portal interpretation

For portal evidence, use the current export's own model identities and threshold. A newer export
always overrides stored calibration. From the user-confirmed 2026-08-23/24 flow, the observed check
used GPT-5.4 and Claude Opus 4.8 with 8 attempts each and accepted difficulty when at least one model
had success rate `<=75%`.

Count correctness using portal fields such as `is_correct`, `successes`, `failures`, `stumped`, and
`equivalence_judgement`; different answer strings may be mathematically equivalent.

`No Response` is inconclusive unless the current portal explicitly scores it as a failure.

## Route extraction

When traces or solved attempts exist, record only the diagnostic information needed for hardening:

```text
COMMON ENTRY:
COMMON REDUCTION:
COMMON SCALING/REPRESENTATION:
FIRST DECISIVE RECOGNITION:
RECOVERY PATH:
EARLIEST ROBUST SHORTCUT:
```

An answer-insensitive incorrect intermediate step on an otherwise correct route still counts as a
successful shortcut. Harden the earliest robust shortcut, not the later arithmetic.

## Save policy

This file does not own the save decision; `harden_loop.md` does. Its contract is:

- `ANSWER_SUSPECT` → correctness blocker; re-derive before save.
- `LOCAL_NOT_STUMPED` → useful hardening evidence, but not itself a hard-gate failure.
- `LOCAL_STUMPED` → useful positive evidence, but not sufficient if quality gates fail.
- `UNMEASURED` → **never blocks save** when all non-model gates pass; save with
  `LOCAL_DIFFICULTY_UNMEASURED` and route next to solution/normalization/submission, then Rainier.

## Provider policy

There is no mandatory Codex CLI recipe in this framework. If a provider can genuinely supply
independent blind attempts, use it. If not, continue with trace-driven design and hard gates and let
the Rainier portal perform the authoritative repeated-model difficulty measurement.
