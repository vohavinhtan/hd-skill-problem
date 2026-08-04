---
name: normalize-problem
description: Normalize a math problem into clean LaTeX while preserving any existing taxonomy labels and warning if the current taxonomy is exhausted.
user-invocable: true
disable-model-invocation: false
argument-hint: optional path — omit only when the active problem folder is explicit from context
input:
  - active workspace/frontier-problem/problemNN-*/problem.md
output:
  - active workspace/frontier-problem/problemNN-*/problem.md
---

# Math Problem Normalizer

## Contract

- **Task:** normalize one active `problem.md` — clean LaTeX, preserved/validated taxonomy, plain-English Domain Explanation — and run the Problem Logic Check.
- **Defaults (act, do not ask):** proceed on the most reasonable reading. Resolve the target folder from context per `skills/_shared/frontier_workspace.md`; if no folder is unambiguous, use the most-recently-modified `workspace/frontier-problem/problemNN-*/` and state that assumption in the report.
- **Only hard stop:** the target `problem.md` is missing or empty — then say to run `/math-clone` and stop. Nothing else pauses the run.
- **Done:** `problem.md` rewritten in place, Plain Portal Text Gate clean, and the Logic Check findings included in the final report. Persist end-to-end in this turn; do not narrate a plan before acting.

## Problem Selection

Read `skills/_shared/frontier_workspace.md` first.

- If a file path was passed as an argument to this skill, use it as the input problem file.
- Otherwise apply the folder-resolution default from the Contract above (context folder, else most-recently-modified `problemNN-*`).
- Write the normalized problem back to the same `problem.md`.

Do not read or write numbered workspace input/output subfolders in the frontier workflow.

## Task

**Edit-scope discipline (read `skills/_shared/edit_scope_discipline.md`).** Normalize only what needs normalizing. Do **not** rewrite the `Domain Explanation` when the domain is unchanged and it is already valid plain-English in the three-sentence scaffold — leave it byte-for-byte. When acting on reviewer feedback, fix exactly the flagged parts and nothing else; do not overthink and re-edit adjacent, already-correct prose, steps, or notation. Over-editing settled text is a regression risk and an LLM-detection tell.

1. **Normalize LaTeX** — rewrite the problem in clean, standard LaTeX. Use `$...$` for inline math, `$$...$$` for display equations. Replace any Unicode math symbols with proper LaTeX commands. Do **not** use `\(...\)` or `\[...\]` — these are not allowed. Escape visible braces as `\{...\}`; write empty visible braces as `\{\}`, never `{}`. Do not use `{}` as an alignment spacer before `&` in aligned environments; move `&` before the relation symbol instead. Keep the problem complete and self-contained.

**Source line integrity:** Never fixed-wrap or mechanically reflow the normalized problem at a target column width. Keep prose and math on natural source lines, with breaks only for semantic paragraphs or required Markdown and LaTeX syntax.

2. **Classify metadata** — read `skills/_shared/taxonomy_slots.md` and inspect the taxonomy already present in the active `problem.md`, if any. If the file already contains Domain, Sub-domain, Problem Type, or Answer Type values, preserve those values exactly. Do **not** auto-switch to a different taxonomy label just because another label fits better or because the current label is exhausted in the latest snapshot. Use the snapshot only to check whether an existing label is still open and to fill any taxonomy field that is missing. If the user provides a newer portal snapshot, use that snapshot for the current run. When choosing (not preserving) a Domain/Sub-domain, classify by the problem's **central subject matter** — the mathematics the problem is actually about — not by the notation it uses, the final answer format, or a technique that merely happens to appear in one solution route. A problem solved with a determinant is not therefore Linear Algebra; a problem stated with probability language whose core is a combinatorial count is Discrete Math. Picking the wrong domain on notation/technique grounds is the Rainier "Incorrect Labels" reject reason and can also land the problem in a full/closed quota.

3. **Write domain explanation** — plain English only. No LaTeX, no math symbols, no formulas, no double hyphens, no em-dashes, no colons (a single hyphen inside a genuine compound word such as "self-adjoint" or "well-ordered" is fine — only double hyphens `--` are banned, matching `normalize-all` and `hard_gates.md`). Follow this structure exactly:

   - "This problem involves [description of the key mathematical elements of the problem], which are part of [domain and sub-domain]."
   - "The problem also involves [description of the additional mathematical elements of the problem], which are part of [other domain]."
   - "However, [explanation of why they are not core to the problem or less advanced]."

4. **Problem Logic Check** — after normalizing, audit the problem statement for logical soundness. For each issue found, classify its severity and act accordingly.

   **Checks to run:**
   - **Well-definedness**: Is the requested quantity uniquely determined? Are there loopholes, missing cases, or ambiguous conditions that allow multiple valid interpretations?
   - **Symbol completeness**: Are all variables, sets, parameters, and notation defined before they are used?
   - **Constraint feasibility**: Can the stated constraints be satisfied simultaneously? Sketch why a solution must exist (or flag if it may not).
   - **Answer existence**: If the problem requests a maximum, minimum, or supremum — can the extremum actually be attained? Flag if it might only be a sup/inf.
   - **Non-triviality**: Is there meaningful work required, or is the answer immediately obvious from definitions?
   - **Single question, no proof**: Does the problem contain exactly one question with no sub-parts, and does it ask for a concrete value/object rather than a proof?

   **Severity and action:**
   | Level | Description | Action |
   |---|---|---|
   | 1 — Minor | Notation ambiguity, missing quantifier, imprecise phrasing that has an obvious intended meaning | Fix inline; note the change |
   | 2 — Moderate | Ambiguous condition with multiple valid interpretations, missing definition that could affect the answer | Flag to user with a suggested fix; do not alter mathematical meaning |
   | 3 — Critical | Ill-defined quantity, contradictory constraints, trivially answerable, or extremum does not exist | Flag prominently; do not silently fix |

   Run the check, then write the normalized `problem.md`, then include the findings in your final report — do not stop after listing findings. If no issues are found, report "Problem Logic Check: no issues found." A Level 3 (Critical) finding is the exception: surface it prominently and do not silently rewrite around it.

## Taxonomy

Use `skills/_shared/taxonomy_slots.md` as the source of truth for label names and current capacity, with these rules:

- If the active `problem.md` already contains a Domain/Sub-domain, Problem Type, or Answer Type, treat that existing value as authoritative for this normalization pass.
- Do **not** replace an existing taxonomy label merely because the latest snapshot marks it `closed`, `full`, unavailable, or with `Remaining slots` equal to `0`.
- If an existing label is exhausted or unavailable in the latest snapshot, warn the user in your report, but keep the label unchanged in the file.
- Only choose a new taxonomy label when the corresponding field is missing, blank, or absent from the file.
- When filling a missing field, exclude rows marked `closed`, `full`, unavailable, or with `Remaining slots` equal to `0`. Among honest fits, prefer the open row with the smallest positive `Remaining slots`; if all relevant rows are `unknown`, choose the most mathematically honest open row and note that capacity was unknown.

## Output format (active problem folder's `problem.md`)

```markdown
# Normalized Math Problem

## LaTeX (Normalized)

{latex}

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | {domain} |
| **Sub-domain** | {subdomain} |
| **Problem Type** | {exactly one problem type} |
| **Answer Type** | {exactly one answer type} |

---

## Domain Explanation

{explanation}
```

Apply the Plain Portal Text Gate from `skills/_shared/hard_gates.md`. Remove Markdown emphasis and blockquotes from the problem content. Preserve useful numbered or bulleted lists, but remove every empty line between consecutive list items and all other decorative spacing.

## Post-processing

After writing the active problem folder's `problem.md`, automatically apply **math-rewrite** to the Domain Explanation:
- Extract the `## Domain Explanation` text from the output file.
- Apply math-rewrite in plain-English mode (no LaTeX in this section).
- Load the shared references required by math-rewrite: `skills/_shared/blocked_words.md` and `skills/_shared/style_guide.md`.
- Run the dual-pass audit required by math-rewrite before accepting the rewritten prose.
- Update the `## Domain Explanation` section in the active problem folder's `problem.md` with the rewritten text.

> **Note for normalize-all**: skip this Post-processing step — normalize-all runs math-rewrite centrally after both skills complete.
