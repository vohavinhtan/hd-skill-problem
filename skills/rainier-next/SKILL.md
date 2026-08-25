---
name: rainier-next
description: Orchestrate the Rainier problem-authoring loop end-to-end. Given problemNN/path plus optional Rainier feedback/JSON/trace evidence, fetch the current problem files from GitHub, automatically execute all safe agent-side stages needed, and stop only at a genuine user/portal boundary or a real blocker.
user-invocable: true
disable-model-invocation: false
argument-hint: optional problemNN or folder path, plus optional Rainier feedback/JSON/trace path
---

# Rainier Next — Auto-Advance Orchestrator

## Contract

- **Task:** drive one Rainier problem forward automatically through every agent-side stage that is currently required. Do not merely tell the user which slash command to run next.
- **Defaults:** if the user says only `problem91`, `problem104`, etc., locate the matching `problemNN-*` folder in GitHub and read `problem.md` + `solution.md` yourself. If current context uniquely identifies the problem, use it automatically.
- **Auto-advance rule:** once the problem is resolved, repeatedly inspect state, execute the required existing skill contract, re-read the resulting files/state, and continue until reaching a **portal boundary**, **accepted state**, or **real blocker**.
- **Do not make the user relay internal steps.** The user should not have to manually run `/math-solve`, `/normalize-all`, `/rainier-submit`, `/format-solution`, `/math-harder`, or `/evaluate-responses` one by one when those steps can be executed in the current run.
- **Minimal clarification only:** if problem identity is genuinely ambiguous, ask only for `problemNN`. Never ask the user to paste repository `problem.md` or `solution.md` when they already exist in GitHub.
- **Done:** either (a) a copy-paste-ready Rainier package is produced and the only remaining action is the user's portal test, (b) the accepted version is frozen, or (c) a genuine blocker is reported with one concrete recovery action.

## Authoritative workflow

Read `docs/rainier-hardening-workflow.md` first. A newer user-provided Rainier export overrides stored calibration for the current run.

Probe both repository layouts and use the one that actually contains the requested problem:

```text
workspace/rainier-problem/
workspace/frontier-problem/
```

If the user says `problem91`, resolve exactly problem 91. Never infer another number from ordering.

## Delegation model

This skill is an **orchestrator**. When a stage requires an existing skill, read that skill's `SKILL.md` and execute its contract directly in the same run. Do not stop just to print the slash command.

Relevant delegates:

- `skills/math-clone/SKILL.md`
- `skills/math-solve/SKILL.md`
- `skills/math-harder/SKILL.md`
- `skills/evaluate-responses/SKILL.md`
- `skills/format-solution/SKILL.md`
- `skills/normalize-all/SKILL.md`
- `skills/math-change-answer-type/SKILL.md`
- `skills/math-change-problem-type/SKILL.md`
- `skills/rainier-submit/SKILL.md`

Important: `normalize-all` already runs `rainier-submit` as its Phase 4. Therefore after a successful `normalize-all`, do **not** ask the user to run `/rainier-submit` again. Treat the package produced by `normalize-all` as the current submission package.

## Evidence rules

- Prefer portal fields such as `is_correct`, `successes`, `failures`, `stumped`, `model_outcomes`, `equivalence_judgement`, and the current threshold.
- Different answer strings are not different outcomes when Rainier marks them mathematically equivalent.
- The observed 2026-08-23/24 portal used GPT-5.4 + Claude Opus 4.8, 8 attempts each, and accepted difficulty when at least one model had success rate `<=75%`. A newer export overrides this.
- `No Response` is inconclusive unless the portal explicitly scores it as a failure.
- Full trace HTML > full attempt-level JSON > raw attempts > score summary only.
- `UNMEASURED`, missing Codex CLI, missing credentials, unavailable providers, or inability to spawn independent model runs are **not blockers**. Continue agent-side work and leave official difficulty to Rainier.
- Never fabricate independent attempts or success rates from one GPT-web reasoning run.

## Auto-loop

After each executed stage, re-read the current problem/solution and continue from the top of this loop. Maximum internal transitions per invocation: 8. If the cap is reached without a portal boundary, report the current state and the single real blocker; do not ask the user to replay already-completed steps.

### A — Problem missing

If the requested problem does not exist:

1. Execute `math-clone` for that exact problem number using any supplied taxonomy constraints/current context.
2. If creation succeeds, continue automatically to B.
3. If the problem cannot be created because a genuinely required input is unavailable, stop with that blocker only.

### B — Solution missing, empty, or stale

If `problem.md` is newer/different and the current solution belongs to an older statement, or no valid solution exists:

1. Execute `math-solve` on the current problem.
2. Re-read both files.
3. If solving verifies successfully, continue automatically to C.
4. If correctness cannot be established, stop as a real blocker; do not normalize an unverified solution.

### C — Solve is current; normalization/package pending

If the current solution matches the current statement but the folder is not yet normalized/package-ready:

1. Execute `normalize-all` on the resolved folder.
2. This runs normalize-problem -> format-solution -> math-rewrite -> rainier-submit in one pipeline.
3. If all gates pass, capture the submission package and stop at **PORTAL READY**.
4. If `normalize-all` finds a Level 2/3 black-box mathematical gap, automatically execute `math-solve` to repair it, then retry `normalize-all` once.
5. If normalization reveals a problem-design/answer-length/mechanical-computation failure requiring redesign, execute the appropriate redesign skill (`math-harder` or `math-change-answer-type`), then continue through B again.

### D — Locally clean/package-ready, no current portal result

This is a user boundary. Do not invent a portal result and do not continue hardening without evidence.

Stop with:

```text
RAINIER LOOP: PORTAL READY
YOUR ACTION: test this exact package in Rainier Automated/Difficulty Checks
BRING BACK: problemNN + full trace HTML or full JSON if available; otherwise the exact portal feedback/score summary
```

Do not print another agent-side slash command.

### E — Rainier difficulty FAIL or borderline

Examples: both model success rates exceed the current threshold, including `100% / 100%`, or the result is borderline.

- If a full trace HTML is available and has not been analyzed, execute `evaluate-responses` first, then continue.
- If full attempt-level JSON/raw responses are supplied, use them directly; do not force a format-only round trip.
- If only a score summary exists and the portal exposes trace/JSON, this is a genuine user boundary because only the user can obtain that artifact. Stop and request the strongest available export.
- Once sufficient evidence exists, execute `math-harder` against the earliest robust shortcut, not later arithmetic.
- After hardening saves a changed statement, previous difficulty evidence becomes stale. Continue automatically through B -> C -> D.

### F — Solution quality FAIL

Classify and repair automatically:

- mechanical/bookkeeping/too-computational -> execute `math-harder`, then B -> C;
- black-box/unjustified mathematical claim -> execute `math-solve`, then C;
- formatting/LaTeX/concept wording only -> execute `format-solution` or `normalize-all`, choosing the narrower safe repair; if a package needs rebuilding, finish with `normalize-all`.

Stop only if the repair skill reports a genuine correctness/design blocker.

### G — Difficulty PASS, another portal gate fails

Repair automatically based on the failing evaluator:

- concept conciseness/format -> `format-solution` / `normalize-all`;
- classification/domain mismatch -> appropriate normalization/classification repair;
- answer-length design failure -> `math-change-answer-type` when applicable;
- prompt/problem structural failure -> `math-harder`;
- solution correctness/consistency failure -> `math-solve`.

If the statement changes, invalidate the prior difficulty result and continue through B -> C -> D for a fresh portal run. If only solution formatting changes and the exact statement remains byte-for-byte unchanged, preserve the portal difficulty evidence unless the portal says otherwise.

### H — Accepted

Stop. Freeze the exact accepted statement and solution. Do not harden or normalize further.

## Hardening handoff

When entering `math-harder`, provide the strongest current diagnosis available:

```text
COMMON ENTRY:
COMMON REDUCTION:
COMMON SCALING/REPRESENTATION:
FIRST DECISIVE RECOGNITION:
RECOVERY PATH:
EARLIEST ROBUST SHORTCUT:
```

The hardener should block the earliest robust shortcut and prefer structural moves: hidden representation/invariant, coupled conditions, competing regimes, leading-order degeneracy, a structurally failing standard route, or a necessary certificate. Do not manufacture difficulty through longer expansions, larger determinants, more coefficient tables, brute force, or cosmetic constants.

## Output format

Do not narrate every internal transition. At the end, report only the compact loop result:

```text
RAINIER LOOP: <PORTAL READY | ACCEPTED | BLOCKED>
PROBLEM: problemNN
AUTO-RAN: <ordered list of stages actually executed, or `none`>
STATUS: <one-line result>

YOUR ACTION:
<only the real remaining user action, if any>

BRING BACK:
<only when the user must return portal evidence>
```

If blocked, replace `YOUR ACTION` with one concrete recovery action. Do not tell the user to manually replay internal agent-side commands already covered by this orchestrator.
