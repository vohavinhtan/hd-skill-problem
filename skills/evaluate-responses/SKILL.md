---
name: evaluate-responses
description: Two jobs on model responses. (A) Paste-grading — grade one or two responses pasted from the portal UI against the active problem's ground-truth solution and report in chat. (B) Archive analysis — mine downloaded HTML model-trace exports in workspace/response-archive/html/ for per-problem, per-taxonomy, and cross-taxonomy weakness patterns, and distill durable lessons into the breaker knowledge (breaker_playbook + breaker-topics). Mode B is how the framework learns what defeats models and feeds it back to math-clone / math-harder.
user-invocable: true
disable-model-invocation: false
argument-hint: pasted model response(s) for paste-grading mode; OR a path under workspace/response-archive/html/, or the word "all", for archive-analysis mode
input:
  - paste mode: active workspace/frontier-problem/problemNN-*/problem.md and solution.md, plus pasted response(s)
  - archive mode: one or more workspace/response-archive/html/*.html files
output:
  - paste mode: chat report only
  - archive mode: files under workspace/response-archive/analysis/ (see skills/_shared/response_archive.md)
---

# Math Response Evaluator

## Contract

- **Task:** two jobs. **Mode A (Paste Grading):** grade one or two model responses pasted from the portal UI against the active problem's ground-truth `solution.md`; report in chat, write nothing. **Mode B (Archive Analysis):** mine downloaded HTML model-trace exports under `workspace/response-archive/html/` for weakness patterns (per-problem → per-taxonomy → cross-taxonomy) and distill durable lessons into the breaker knowledge — Mode B is the learning loop that grows `breaker_playbook.md` + `breaker-topics/` from real traces, which `math-clone` / `math-harder` read next round.
- **Defaults (act, do not ask):** auto-select the mode from the argument — a path under `workspace/response-archive/html/`, or the word `all`, selects Mode B; anything else (a pasted response, or no archive reference) selects Mode A. State the chosen mode and proceed; ask only if the argument is genuinely undecidable. In Mode B `all`, skip files already analyzed and note them.
- **Only hard stop:** Mode B with `workspace/response-archive/html/` missing or empty — say so and stop rather than fabricate an analysis. Nothing else pauses the run.
- **Done:** Mode A — verdict block plus detailed breakdown reported in chat. Mode B — Zones 1–4 written and the final report delivered in chat. Persist end-to-end in this turn; do not narrate a plan before acting.

## Startup Catch-up (mandatory, before mode selection)

Scan `workspace/frontier-problem/.harden-pending/` for `needs-distill` markers; if any, read the referenced topic file under `skills/_shared/breaker-topics/<topic>.md` — the same per-topic contract defined in `skills/_shared/frontier_workspace.md` — and distill the pending lessons from its `## Round-log` section before starting new work. (See `skills/_shared/frontier_workspace.md` → "Harden-pending sentinel" for the marker lifecycle and CLAUDE.md → "Lesson Backstop" for why these markers exist.) If none are found, proceed directly to mode selection.

This skill has two independent modes. Determine which one applies before doing anything else.

## Mode Selection

- If the argument is a path (or several paths) under `workspace/response-archive/html/`, or is the literal word `all`, or the user's message otherwise clearly asks to analyze/mine the response archive → **Mode B — Archive Analysis**.
- Otherwise (a pasted response in the argument or in the chat message, or no archive reference at all) → **Mode A — Paste Grading** (the original behavior of this skill).
- If the reading is unclear, default to the reasonable mode implied by the argument per the two rules above and state which one you chose; ask only if the argument is genuinely undecidable.

---

# Mode A — Paste Grading

Evaluate model responses against a ground truth solution. Process each pasted response as a separate todo. Do not create files in `workspace/frontier-problem/` or its problem folders; report results in chat only.

## Problem Selection

Before doing anything else, read `skills/_shared/frontier_workspace.md`.

Use `workspace/frontier-problem/` as the base and resolve the active `problemNN-*` folder using `skills/_shared/frontier_workspace.md`.

## Files

| File | Description |
|---|---|
| active problem folder's `problem.md` | The original math problem |
| active problem folder's `solution.md` | Ground truth answer in LaTeX |
| the passed argument or chat paste | Model response(s) to evaluate |

---

## Todo 1 — Evaluate First Response

**Read in order:**
1. active problem folder's `problem.md`
2. active problem folder's `solution.md`
3. First pasted response from the argument or chat

**Evaluate:**
- Is the final answer mathematically equivalent to `solution.md`?
- Is the reasoning correct at each step? Identify any step that is wrong, skipped, or unjustified.
- For every wrong or skipped intermediate step, is the error **answer-sensitive**? Replace it with
  the correct step (or delete it), propagate the change, and state whether the final requested
  answer changes. An error that changes only a lower-order term, polynomial prefactor,
  normalized-away scale, or discarded quantity is answer-insensitive.
- Does the response contain proofs? (Proofs are not allowed — flag if present.)
- Is the LaTeX formatting correct? Flag any use of `\(...\)` or `\[...\]` (only `$...$` and `$$...$$` are allowed).
- Does the problem have a single unique answer? Flag if the response produces multiple or ambiguous answers.

Report the result in chat using the output format below.

---

## Todo 2 — Evaluate Second Response, If Provided

If a second response is provided, read in order:
1. active problem folder's `problem.md`
2. active problem folder's `solution.md`
3. Second pasted response from the argument or chat

**Evaluate:** same criteria as Todo 1.

Report the result in chat using the output format below. If no second response is provided, skip this todo.

---

## Output format (Mode A)

Put the verdict block **first**, then the detailed breakdown.

```markdown
# Response Evaluation

## Verdict

| Field | Value |
|---|---|
| **Result** | ✅ Correct / ❌ Incorrect / ⚠️ Partially correct |
| **Answer match** | ✅ Matches ground truth / ❌ Does not match / ⚠️ Equivalent but different form |
| **Reasoning** | ✅ Valid / ❌ Contains errors / ⚠️ Gaps present |
| **Proofs** | ✅ None / ❌ Contains proof (not allowed) |
| **LaTeX formatting** | ✅ Valid / ❌ Contains \(...\) or \[...\] |

---

## Answer Comparison

**Ground truth:** {final answer from solution.md}

**Response answer:** {final answer from response}

{Explain whether they are mathematically equivalent and why.}

---

## Step-by-step Review

{For each major step in the response, write one short paragraph:
- What the step claims
- Whether it is correct
- If wrong or incomplete: explain the exact issue and whether correcting/deleting it changes the
  final answer}

---

## Issues Found

{List only actual problems. If none, write "None." Each issue should state:
- Where it occurs (e.g. "Step 3", "Final simplification")
- What is wrong
- What the correct approach should be
- Whether the issue is answer-sensitive or answer-insensitive}
```

---

# Mode B — Archive Analysis

Mine one or more downloaded HTML model-trace exports for weakness patterns, and file the results into the four-zone archive defined by `skills/_shared/response_archive.md`. This mode writes files; Mode A does not.

## Step 0 — Read Shared References

Read, in order:
1. `skills/_shared/response_archive.md` — folder layout, per-file and aggregate templates, and the large-HTML reading procedure.
2. `skills/_shared/frontier_workspace.md` — in case the HTML under analysis links to an active `workspace/frontier-problem/problemNN-*/` folder.
3. `skills/_shared/taxonomy_slots.md` — for classifying an unlinked HTML's taxonomy.
4. `skills/_shared/triviality_probe.md` and the failure-mode table + Response-Driven Weakness Audit fields in `math-harder`'s `SKILL.md` — the vocabulary this mode's diagnosis must use, so output here plugs directly into `math-harder`/`math-clone` without translation.

## Step 1 — Resolve Target File(s)

- If the argument names one or more specific files under `workspace/response-archive/html/`, use exactly those — an explicitly named file is always analyzed, even if a prior analysis exists (this is how the user requests a re-analysis, e.g. after re-downloading the export with more attempts).
- If the argument is `all`, list every file in `workspace/response-archive/html/`. For each, check whether `workspace/response-archive/analysis/by-problem/<same-stem>.md` already exists.
  - If it does not exist, queue the file for analysis.
  - If it already exists, skip it by default and note it in the report; do not re-analyze under `all`. Re-analysis happens only when the file is named explicitly (previous bullet).
- If `workspace/response-archive/html/` does not exist or is empty, tell the user and stop — do not fabricate an analysis.

Process each queued file as an independent todo; do not let one file's chunking affect another's.

## Step 2 — Read Each HTML Export

Follow the large-HTML procedure in `skills/_shared/response_archive.md`: strip tags to plain text first, then read (chunking by `Model`/`Attempt` boundaries if still too large). Read every chunk before writing anything — never analyze a truncated prefix and report as if the full export was read.

**When splitting into chunks, split only on the literal wrapper markers `## Model` / `### Attempt`, never on a generic header level.** Model answers frequently contain their own markdown headers inside the `<think>` block or final answer (e.g. `## Setting Up the Problem`, `## Reduction to a Schur Complement`) which look identical to the export's structural headers once tags are stripped. Splitting on any `##`/`###` line will cut attempts into bogus fragments; anchor the split regex to the exact following word (`Model`, `Attempt`).

From the stripped text, extract:
- Every `Model N` section and its stated verdict (e.g. `SOLVED (8/8 correct)`).
- Every `Attempt N` under each model, its verdict (`CORRECT`/`INCORRECT`) and `finish_reason` (e.g. `stop` vs `length`).
- The final boxed/stated answer for each attempt.
- The reasoning trace content well enough to identify, per attempt: the first decisive recognition, the shortcut used, whether a genuine reasoning error occurred versus a non-reasoning artifact (e.g. a `length` cutoff before the model finished, which is a budget failure, not evidence the idea was wrong).
- For every attempt with the correct final answer but a wrong intermediate claim, whether that error
  is answer-sensitive: correct/delete the claim and propagate the change. If the requested answer is
  unchanged, record an **answer-insensitive successful shortcut**, not a stump.

### Fast-Triage Shortcuts (read before doing a full pass)

These cut a multi-hundred-KB export down to a handful of targeted reads instead of reading every attempt in full:

- **The verdict and stated answer sit above the reasoning trace.** In this export format, the line(s) immediately after each `### Attempt N — VERDICT (finish_reason=...)` header (before the `<think>` block) already contain the final `Answer:`. Build the entire Per-Attempt Summary table from just the header + answer line of every attempt first — this alone requires no deep reading — then decide which attempts actually need their full trace read.
- **Diff a wrong structured answer against ground truth element-by-element before reading the trace.** If the Answer Type is a matrix/vector/tuple and an attempt is `INCORRECT`, compare it entry-by-entry against `solution.md`'s answer first. If only a subset of entries differ, the error is localized to whichever sub-computation produces those entries — read only that part of the trace, not the whole thing. If every entry differs, the error is likely conceptual and the full trace is worth reading.
- **Read `solution.md`'s `## Solution Concepts` list before scanning attempts** (when linked). It gives the exact keyword vocabulary (e.g. "Schur complement", "sparse Gram matrix", "boundary support collapse") to grep for across every attempt/chunk, instead of reading full text to reverse-engineer what the decisive mechanism even is.
- **For every `finish_reason=length` attempt, grep for those same keywords instead of reading the full chunk.** A length cutoff already means the attempt cannot be scored for correctness — the only useful thing to extract is whether it was heading toward the right mechanism, which a keyword grep answers in one pass. Only read a length-cut chunk in full if the keyword grep is inconclusive (no hits at all, worth checking if it went down a materially different route).
- **Cross-check `solution.md`'s Concepts list against the Triviality Probe P4 named examples first.** If the decisive step is literally "Schur complement", "Smith normal form", or "coefficient matching" — the exact examples `skills/_shared/triviality_probe.md` names as canonical template-core red flags — that is a near-automatic P4 lead before reading a single attempt, and predicts a high raw success rate across attempts (worth confirming, not discovering from scratch).
- **Effort-allocation mismatch check.** Even when no Concepts entry matches a P4 named example, compare *where* `solution.md`'s own `## Steps` spends its proof effort (which step has the most lines / most careful first-principles argument) against *where* the attempts actually spend reasoning tokens (grep the name of the step's key object/theorem across attempts — e.g. a theorem name, a structural correspondence). If attempts invoke the step the official solution proves most carefully with zero derivation (stated and used in one line, or not even named), that step is being recalled from memory, not discovered — evidence for the **Solvable by analogy/retrieval** failure mode regardless of whether it matches a P4 example. If instead the bulk of every trace (correct or length-cut alike) is spent on a step the official solution treats as comparatively mechanical, that step — not the "intended" hard step — is the real cost driver, and is the wrong place to add hardening (Computational-volume inflation).
- **Read the shortest correct attempt(s) in full — not just the longest or the failing ones.** A correct attempt that is 3–6x shorter than its peers is a strong tell that the model found a genuine alternate route or classical-theorem shortcut, and that shortcut may use a technique **absent from `solution.md`'s own Concepts list entirely** (the list only documents the intended route, not every valid alternative). Keyword-grepping attempts against `solution.md`'s own vocabulary cannot surface this case — it requires actually reading a short attempt end to end. When found, grep the discovered technique's name across the remaining attempts to size how widespread it is before writing up the finding.

## Step 3 — Determine Taxonomy and Link

- If the export's problem statement matches (or the user confirms it corresponds to) an active `workspace/frontier-problem/problemNN-*/problem.md`, record that link and read its Domain/Sub-domain/Problem Type/Answer Type and `solution.md` directly.
- Otherwise, classify the embedded problem statement's Domain/Sub-domain/Problem Type/Answer Type yourself using `skills/_shared/taxonomy_slots.md`, and mark the entry "unlinked / archived-only" — still analyze it.

## Step 4 — Diagnose Weakness (Zone 1 — Per-Problem)

For the target problem, using the extracted attempts:
- Run the Triviality Probe (`skills/_shared/triviality_probe.md`) against the problem/solution if available.
- Check every row of `math-harder`'s failure-mode table for a match.
- Fill the Response-Driven Weakness Audit fields (first decisive recognition, ansatz tried, prompt leak, whether brute force worked because the computation was short, whether a `finish_reason=length` failure was a budget artifact rather than a reasoning weakness).
- Run the answer-sensitivity audit on every wrong/skipped intermediate claim in a correct-answer
  trace. Map an answer-insensitive intended step to math-harder’s **Answer-insensitive certificate**
  failure mode: the response may still be graded “reasoning contains errors,” but the problem was
  structurally solved and the step cannot count toward its difficulty.
- Note generalizability: would the same shortcut solve nearby parameter variants, or the whole problem family?

Write the result to `workspace/response-archive/analysis/by-problem/<stem>.md` using the template in `skills/_shared/response_archive.md`.

## Step 5 — Update Aggregates (Zones 2 and 3)

- **Zone 2** — `workspace/response-archive/analysis/by-taxonomy.md`: find or create the row for this problem's Domain/Sub-domain/Problem Type/Answer Type; append the newly observed pattern (dedupe near-duplicate wording rather than listing the same pattern twice) and increment the file count.
- **Zone 3** — `workspace/response-archive/analysis/common-failures.md`: for each failure mode identified in Step 4, find or create its row (mapped to the matching `math-harder` table row/Probe test, or `NEW: <name>` if none fits); add this taxonomy and file to its observed list and increment the count. If a `NEW` row was added, say so explicitly to the user — a new recurring pattern may warrant a new row in `math-harder`'s failure-mode table itself.

## Step 6 — Update Zone 4 (Durable Digest)

After the aggregates, distill any **durable** lesson from this analysis into `skills/_shared/breaker_playbook.md` per the Zone-4 contract in `skills/_shared/response_archive.md`: a reusable trap pattern, a newly saturated technique skeleton (with its updated workspace count), or a hardening move that verifiably moved a solve rate. Respect the hard **≤60-line cap** — if the file is full, merge or drop the least-load-bearing existing line rather than growing it. Never copy a per-problem verdict into Zone 4; those stay in Zones 1–3. If this analysis produced no durable, generalizable lesson (only a per-problem verdict), leave the playbook unchanged and say so.

## Step 7 — Report

After processing all queued files, report in chat:
- Files analyzed (and files skipped because already analyzed).
- Any new `Zone 3` failure modes discovered (flagged for possible promotion into `math-harder`'s table).
- A one-line pointer to the four files/folders written, so the user can review before the next `math-clone`/`math-harder` run picks them up.

## Hard Rules (Mode B)

- **DO NOT** fabricate a taxonomy, a failure mode, or a per-attempt verdict that isn't actually supported by the HTML content.
- **DO NOT** silently truncate a large export — chunk and read all of it, or tell the user reading is incomplete.
- **DO NOT** re-analyze an already-analyzed file under `all` mode; skip it and note it. Re-analyze only when the argument names that file explicitly.
- **DO NOT** write into `workspace/frontier-problem/` from this mode — all archive-mode output stays under `workspace/response-archive/`.
- **DO** treat a `finish_reason=length` failure as a distinct category from a genuine reasoning error in every table and summary — conflating them misattributes a budget problem as a difficulty win.
- **DO** separate proof validity from problem difficulty: a correct final answer with an
  answer-insensitive local error is not a valid proof, but it is evidence that the task was cracked.

---

# §8 — Attempt Label Taxonomy

Canonical, authoritative source for the 7 attempt-label tokens used across this repo's stump/harden
loop (Mode B's per-attempt classification, `skills/_shared/stump_gate.md`,
`skills/_shared/harden_loop.md`). Those files **reference this section by name rather than
redefining or hardcoding the token list** — if a token's spelling or meaning ever needs to change,
change it only here.

Classify every solver attempt with exactly one of the following labels:

| Label | Definition |
|---|---|
| `solved` | Attempt reaches the correct final answer via valid, complete reasoning. |
| `idea_stump` | Attempt fails because the solver never found the decisive idea/mechanism — genuine conceptual stump evidence. |
| `arithmetic_error` | Approach was sound but a computational/bookkeeping slip produced a wrong final answer — an artifact, not a stump. |
| `length_cutoff` | Attempt was truncated by a `finish_reason=length` budget limit before finishing — a budget artifact, not evidence the idea was wrong. |
| `grader_artifact` | Answer was marked wrong by a grading/equivalence-normalization mismatch, not a mathematical error — fix the grader/normal form, not the problem. |
| `ambiguity_failure` | Answer diverges from ground truth because the problem statement admits more than one valid reading — fix the statement, not the difficulty. |
| `shortcut_solve` | Attempt reaches the correct answer via a route that bypasses the intended mechanism entirely — evidence for a mechanism-class pivot, not a re-skin. |

**Evidence rule.** Only `idea_stump` is valid stump evidence. Any artifact label
(`arithmetic_error`, `length_cutoff`, `grader_artifact`, `ambiguity_failure`) triggers a **fix** —
to the grader, the normal form, or the problem statement — never a harden; re-run the gate after
the fix instead of counting it toward a stump verdict. A `shortcut_solve` triggers a **mechanism-class
pivot** (a materially different intended route), never a cosmetic re-skin of the same mechanism.

`skills/_shared/stump_gate.md` and `skills/_shared/harden_loop.md` reference this section rather
than redefining it — this is the single authoritative source for these token spellings and the
evidence rule.
