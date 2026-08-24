---
name: rainier-next
description: Navigator for the Rainier problem-authoring loop. Given a problem number/path and any Rainier feedback/JSON/trace evidence, fetch the problem files from GitHub, determine the current workflow stage, and tell the user exactly one next action. This skill is routing-only: it does not rewrite the problem or solution.
user-invocable: true
disable-model-invocation: false
argument-hint: optional problemNN or folder path, plus optional Rainier feedback/JSON/trace path
---

# Rainier Next — Workflow Navigator

## Contract

- **Task:** inspect the current Rainier state and return one concrete `YOUR NEXT ACTION`, including the exact next command when the next step is agent-side.
- **Defaults:** fetch repository files yourself. If the user says only `problem91`, `problem104`, etc., that is sufficient identification: locate the matching `problemNN-*` folder in GitHub and read its `problem.md` and `solution.md`. Never ask the user to paste those files again when they already exist in GitHub.
- **Context fallback:** if the user does not give a problem number but the immediately preceding workflow context unambiguously identifies one problem, use that problem automatically and fetch it from GitHub.
- **Minimal clarification only:** if neither a problem number/path nor unambiguous current context exists, ask only which `problemNN` to use. Do not ask for the contents of `problem.md` or `solution.md`.
- **Done:** one stage verdict, a compact reason, and exactly one primary `YOUR NEXT ACTION`. Do not modify any problem, solution, archive, or shared knowledge file.

## Authoritative workflow

Read `docs/rainier-hardening-workflow.md` first. A newer user-provided Rainier portal export overrides static calibration in that document for the current run.

Probe both repository layouts and use the one that actually contains the referenced problem:

```text
workspace/rainier-problem/
workspace/frontier-problem/
```

Do not infer a different problem number from folder ordering. If the user says `problem91`, resolve exactly problem 91.

This is a navigator, not an executor. Never silently invoke hardening, solving, formatting, or submission rewrites. Route to the correct existing skill.

## Problem resolution

Resolve the active problem in this order:

1. Explicit `problemNN`, problem folder, `problem.md`, or `solution.md` named by the user.
2. The exact problem identified by the immediately preceding workflow context.
3. A unique repository match to a Rainier export/problem statement supplied in the current request.
4. Otherwise ask only for `problemNN`.

Once resolved, fetch both `problem.md` and `solution.md` from GitHub automatically. A pasted file copy overrides GitHub only when the user explicitly says it is newer than the repository version.

## Rainier and local-difficulty evidence rules

Rainier feedback/JSON/trace evidence is different from repository problem files. The user may need to provide it if it is not already stored in the repo/chat.

- Prefer portal fields such as `is_correct`, `successes`, `failures`, `stumped`, `model_outcomes`, and `equivalence_judgement`.
- Never infer instability merely because model answer strings differ; equivalent expressions may all be correct.
- If a current export states the threshold, use it. The observed 2026-08-23/24 flow used `<=75%` success for at least one of two models.
- Treat `No Response` as inconclusive unless the portal explicitly scores it as a failure.
- Prefer full difficulty trace HTML over summary scores when diagnosing a difficulty failure.
- A local `UNMEASURED`, `LOCAL_DIFFICULTY_UNMEASURED`, missing Codex CLI, missing credentials, unavailable provider, or inability to spawn independent runs is **not a failure**. Do not route back to a CLI stump check. Continue the normal solve/normalize/submit flow and use Rainier portal as the authoritative repeated-model test.
- Never call a local heuristic/adversarial review an observed model stump rate.

## Stage detection

Choose exactly one stage.

### Stage A — Problem missing

If the requested `problemNN` does not exist in GitHub:

`YOUR NEXT ACTION`: `/math-clone <problemNN and optional domain/sub-domain>`.

### Stage B — Problem exists, solution missing/empty or stale after hardening

If `problem.md` changed after the current `solution.md`, or the solution clearly belongs to an older statement:

`YOUR NEXT ACTION`: `/math-solve <resolved problem path>`.

This includes a newly saved hardened candidate with `LOCAL_DIFFICULTY_UNMEASURED`. Do not demand a local model rerun first.

### Stage C — Solution exists but local submission shape is not clean

Indicators: missing normalized problem sections; missing `## Steps`, `## Answer`, classification, or concepts; known LaTeX/black-box gaps.

- If mathematics is unresolved or a core justification is missing, route to `/math-solve <resolved problem path>`.
- Otherwise route to `/normalize-all <resolved problem folder>`.

Choose the earliest unresolved prerequisite only.

### Stage D — Locally clean, not yet portal-tested

Use this stage even when local model preflight is `UNMEASURED`.

- If a submission package has not yet been produced: `/rainier-submit <resolved problem folder>`.
- If a clean package was just produced: user-side action is to run Rainier Automated/Difficulty Checks and bring back the result.

`UNMEASURED` means "portal test required", not "hardening blocked".

### Stage E — Difficulty fail or borderline

Examples: both model success rates exceed the current threshold, including `100% / 100%`, or the result is too close to the boundary to be robust.

Evidence priority:

1. full difficulty trace HTML;
2. full Rainier JSON;
3. raw model attempts;
4. score summary only.

Routing:

- Trace HTML available but not analyzed -> `/evaluate-responses <trace path>`.
- Only score summary available and portal offers export -> user-side action: download/export full trace HTML (preferred) or full JSON, then call `/rainier-next problemNN` with that evidence.
- Current trace/archive analysis already exists -> `/math-harder <resolved problem path>`.
- Full attempt-level JSON is pasted and sufficient -> `/math-harder <resolved problem path>` using that evidence; do not force another round trip merely for format preference.

When routing to harden, attack the earliest robust shortcut found in traces, not mechanical volume.

### Stage F — Solution quality fail

- Mechanical/bookkeeping/too-computational -> `/math-harder <resolved problem path>`.
- Black-box/unjustified claim/result out of thin air -> `/math-solve <resolved problem path>` with the feedback in context.
- Formatting/LaTeX/concept wording only -> `/format-solution <resolved solution path>` or `/normalize-all <resolved problem folder>`, choosing the narrower fix.

### Stage G — Difficulty pass, another portal gate fails

Route by the named failing evaluator:

- concept conciseness/format -> `/format-solution`;
- classification/domain mismatch -> appropriate classification/normalization skill;
- answer-length design failure -> `/math-change-answer-type` when applicable;
- prompt/problem structural failure -> `/math-harder`;
- solution correctness/consistency failure -> `/math-solve`.

A statement redesign invalidates any previous difficulty result and requires a fresh portal run.

### Stage H — Accepted

`YOUR NEXT ACTION`: freeze the accepted version and stop changing its statement/solution.

## Difficulty interpretation

When attempt counts are available, compute success rate from portal correctness labels, not answer-string identity.

```text
GPT-5.4: 8/8 correct = 100%
Claude Opus 4.8: 5/8 correct = 62.5%
Threshold: <=75% for at least one model
Difficulty: PASS
```

If a newer portal export names different models or threshold, it overrides stored calibration.

## Trace-driven hardening handoff

When routing to `/math-harder`, include these labels only when evidence supports them:

```text
COMMON ENTRY:
COMMON REDUCTION:
COMMON SCALING/REPRESENTATION:
FIRST DECISIVE RECOGNITION:
RECOVERY PATH:
EARLIEST ROBUST SHORTCUT:
```

Do not design the full hardening inside this navigator.

## Output format

```text
RAINIER STAGE: <A-H + name>
STATUS: <one-line verdict>
WHY: <1-3 bullets>

YOUR NEXT ACTION:
<exactly one action>

NEXT COMMAND:
<exact slash command, only when agent-side>

BRING BACK:
<only when the next step is portal-side; exact feedback/export requested>
```

Rules:

- Exactly one primary `YOUR NEXT ACTION`.
- If the user supplies `problemNN`, never ask them to paste `problem.md` or `solution.md`; fetch them from GitHub.
- Ask only for `problemNN` when problem identity is genuinely ambiguous.
- Do not ask the user to remember thresholds or routing rules.
- Do not call a locally clean problem `RAINIER PASS` before a current portal difficulty result exists.
- `LOCAL_DIFFICULTY_UNMEASURED` never blocks save or submission preparation.
- Difficulty failures are redesigned from trace evidence; formatting passes never substitute for difficulty passes.
