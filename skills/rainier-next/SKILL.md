---
name: rainier-next
description: Navigator for the Rainier problem-authoring loop. Inspect the active frontier problem plus any pasted Rainier feedback/JSON/trace path, determine the current workflow stage, and tell the user exactly one next action. Use when the user does not remember what to do next after creating, solving, normalizing, submitting, or receiving Rainier feedback. This skill is routing-only: it does not rewrite the problem or solution.
user-invocable: true
disable-model-invocation: false
argument-hint: optional active problem path, Rainier feedback/JSON, or trace/archive path
---

# Rainier Next — Workflow Navigator

## Contract

- **Task:** inspect the current Rainier state and return one concrete `YOUR NEXT ACTION`, including the exact next command when the next step is agent-side.
- **Defaults (act, do not ask):** infer the active problem from context per `skills/_shared/frontier_workspace.md`; if no explicit problem is supplied, use the context-selected folder, else the most-recently-modified active frontier problem. Treat pasted Rainier feedback, JSON, trace paths, and archive paths as workflow evidence, not as problem text.
- **Only hard stop:** none. If there is not enough state to continue agent-side, the output itself must tell the user exactly what portal action or artifact is needed next.
- **Done:** one stage verdict, a compact reason, and exactly one primary `YOUR NEXT ACTION`. Do not modify any problem, solution, archive, or shared knowledge file.

## Authoritative workflow

Read `docs/rainier-hardening-workflow.md` first. A newer user-provided Rainier portal export overrides static calibration in that document for the current run.

Read `skills/_shared/frontier_workspace.md` to resolve the active problem folder. Read the active `problem.md` and `solution.md` when they exist.

This is a navigator, not an executor. Never silently invoke a hardening, solving, formatting, or submission rewrite. Route the user to the correct existing skill instead.

## Evidence rules

When Rainier evidence is present:

- Prefer explicit portal fields such as `is_correct`, `successes`, `failures`, `stumped`, `model_outcomes`, `equivalence_judgement`, and the stated difficulty threshold.
- Never infer instability merely because `textarea-model_generated_answer-*` contains different strings. Equivalent symbolic forms may all be correct.
- If a current export states the acceptance threshold, use it. The observed 2026-08-23/24 flow used `<=75%` success for at least one of two models.
- Treat `No Response`/missing completion as inconclusive unless the current portal explicitly scores it as a failure; recommend rerun when needed.
- When a full difficulty trace HTML path under `workspace/response-archive/html/` is supplied and no corresponding current analysis exists, route to `/evaluate-responses <path>` before hardening.

## Stage detection

Choose exactly one stage.

### Stage A — NO ACTIVE PROBLEM

Use when no active problem folder/problem statement exists.

`YOUR NEXT ACTION`: run `/math-clone <problem number and optional domain/sub-domain>` to create a new frontier problem. If the user explicitly wants only an empty folder first, route to `/problem-init <NN>` instead.

### Stage B — PROBLEM EXISTS, SOLUTION MISSING/EMPTY

`YOUR NEXT ACTION`: run `/math-solve <active problem path>`.

### Stage C — SOLUTION EXISTS BUT SUBMISSION SHAPE IS NOT CLEAN

Indicators include missing normalized problem sections, missing `## Steps` / `## Answer` / classification / concepts, or known format/LaTeX/black-box gaps.

- If the mathematics itself is unresolved or an unjustified core claim remains, route to `/math-solve <active problem path>`.
- Otherwise route to `/normalize-all <active problem folder>`.

Choose only one based on the earliest unresolved prerequisite.

### Stage D — LOCALLY CLEAN, NOT YET PORTAL-TESTED

Use when problem and solution are normalized/gate-clean and no current Rainier result is supplied.

`YOUR NEXT ACTION`: run `/rainier-submit <active problem folder>` if it has not just been packaged. If the current context already contains a clean Rainier submission package, the next action is portal-side instead: run Rainier Automated Checks/Difficulty Check, then bring the result back with `/rainier-next <feedback or export>`.

### Stage E — DIFFICULTY FAIL / BORDERLINE

Examples: both model success rates exceed the current acceptance threshold, including `100% / 100%`, or the result is too close to the threshold to be robust.

Evidence priority:
1. full difficulty trace HTML;
2. full Rainier JSON;
3. raw model attempts;
4. score summary only.

Routing:

- If a trace HTML is available but not analyzed, `YOUR NEXT ACTION` is `/evaluate-responses <trace path>`.
- If only a score summary is present and the portal offers full traces/JSON, `YOUR NEXT ACTION` is user-side: download/export the full difficulty trace (preferred) or full JSON, then call `/rainier-next` with it. State that hardening can proceed without it only as a weaker fallback.
- If current trace/archive analysis already exists, `YOUR NEXT ACTION` is `/math-harder <active problem path>` and state that the hardener must attack the earliest robust shortcut found in the trace, not increase mechanical volume.
- If a full JSON with attempt-level model responses is pasted but no archive HTML exists, route directly to `/math-harder <active problem path>` using the pasted evidence in the same conversation, unless the user can trivially download the full trace HTML; do not force an unnecessary extra round trip.

### Stage F — SOLUTION QUALITY FAIL

Classify the feedback before routing.

- **Mechanical/bookkeeping/too-computational** (long expansions, coefficient tables, determinant/partition/case bookkeeping): `YOUR NEXT ACTION` is `/math-harder <active problem path>` because the architecture must change; do not merely shorten prose.
- **Black-box/unjustified claim/result out of thin air**: `YOUR NEXT ACTION` is `/math-solve <active problem path>` with the reviewer feedback in context, then normalization later.
- **Formatting/LaTeX/concept wording only**: `YOUR NEXT ACTION` is `/format-solution <active solution path>` or `/normalize-all <active problem folder>`; choose the narrower appropriate fix.

### Stage G — DIFFICULTY PASS, OTHER PORTAL GATE FAIL

Route by the named failing evaluator:

- concept conciseness/format -> `/format-solution`;
- classification/domain mismatch -> the appropriate classification/normalization skill;
- answer-length design failure -> `/math-change-answer-type` when applicable;
- prompt/problem structural failure -> `/math-harder`;
- solution correctness/consistency failure -> `/math-solve`.

Preserve the passed difficulty result only for the exact unchanged statement. Any statement redesign invalidates it and requires a fresh portal difficulty run.

### Stage H — ACCEPTED

`YOUR NEXT ACTION`: freeze the accepted version and stop changing its statement/solution. Optionally archive the accepted traces later for learning, but do not harden an accepted version.

## Difficulty interpretation

When attempt counts are available, compute success rate from portal correctness labels, not answer-string identity.

Report compactly, for example:

```text
GPT-5.4: 8/8 correct = 100%
Claude Opus 4.8: 5/8 correct = 62.5%
Threshold: <=75% for at least one model
Difficulty: PASS
```

If a current portal export names different models or a different threshold, use the current export and note that it overrides the stored calibration.

## Trace-driven hardening reminder

When routing to `/math-harder`, include at most these six diagnostic labels if the evidence supports them:

```text
COMMON ENTRY:
COMMON REDUCTION:
COMMON SCALING/REPRESENTATION:
FIRST DECISIVE RECOGNITION:
RECOVERY PATH:
EARLIEST ROBUST SHORTCUT:
```

Do not perform a full hardening design in this navigator. The purpose is to ensure the hardener receives the right evidence and target.

## Output format

Keep the output short enough to act on immediately:

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

- There must be exactly one primary `YOUR NEXT ACTION`.
- Do not dump the entire workflow unless the user asks.
- Do not ask the user to remember thresholds or routing rules.
- Do not call a locally clean problem `RAINIER PASS` before a current portal difficulty result exists.
- A changed problem statement always resets portal difficulty status.
- Difficulty failures are redesigned from trace evidence; formatting passes never substitute for difficulty passes.