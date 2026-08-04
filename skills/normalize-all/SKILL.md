---
name: normalize-all
description: Run normalize-problem and format-solution together on the active workspace/frontier-problem/problemNN-*/ folder, then apply one centralized math-rewrite run in place on that folder's problem.md and solution.md, then run rainier-submit to assemble the Rainier portal submission package and check every gate so the problem is ready to submit.
user-invocable: true
disable-model-invocation: false
argument-hint: optional — defaults to workspace/frontier-problem/
---

# Normalize All

## Contract

- **Task:** run the full four-phase pipeline on one active problem folder — normalize-problem, then format-solution, then one central math-rewrite, then rainier-submit — so `problem.md` and `solution.md` are normalized in place and the problem is validated ready to submit.
- **Defaults (act, do not ask):** proceed on the most reasonable reading. Resolve the active folder from context per `skills/_shared/frontier_workspace.md`; if none is unambiguous, use the most-recently-modified `workspace/frontier-problem/problemNN-*/` and state that assumption in the report. Run every phase in order without pausing for confirmation.
- **Only hard stop:** an input file (`problem.md` or `solution.md`) is missing, empty, or clearly incomplete — say to finish the generation/solve window first and stop; or `format-solution` finds a Level 2/3 black-box issue — stop before Phase 3 and send the user back to `math-solve`. Never read chat history to fill a missing file. Nothing else pauses the run.
- **Done:** both files rewritten in place through all four phases, every Phase 4 gate green, and the copy-paste-ready Rainier submission package presented in the report. Persist end-to-end in this turn; do not narrate a plan before acting.

## Phase pipeline (run in strict order)

Run these four phases linearly on the one active folder. Each phase has a pass-gate; do not begin a phase until the previous phase's gate is green. Do not interleave, reorder, or skip a phase, and do not start math-rewrite prose edits before both structural phases pass.

1. **Phase 1 — normalize-problem** (skip its Post-processing math-rewrite). Pass-gate: `problem.md` rewritten in place, taxonomy preserved/validated, Plain Portal Text Gate clean, Problem Logic Check run.
2. **Phase 2 — format-solution** (skip its Post-processing math-rewrite). Pass-gate: `solution.md` formatted with zero Level 2/3 black-box issues — a Level 2/3 finding is a hard stop.
3. **Phase 3 — math-rewrite** (one centralized run on both files). Pass-gate: prose rewritten while every math block and frozen section stays byte-for-byte, and no double hyphen remains in prose.
4. **Phase 4 — rainier-submit** (assemble package, run every gate). Pass-gate: all Rainier hard-constraint gates plus `skills/_shared/hard_gates.md` pass, and the submission package is presented.

## Step 0a — Read the Format Issue Log

Before editing either output file, read `skills/_shared/normalize_all_format_issues.md`.
Treat its prevention rules as part of this skill. When a new recurring formatting or
validation mistake is found during any phase, append one concise entry to that file
with the problem number, symptom, cause, and prevention rule. Do not log mathematical
black-box findings there; those belong in the active audit and must still stop the run
when required below.

## Step 0 — Use Frontier Workspace

Before doing anything else, read `skills/_shared/frontier_workspace.md`.

Use `workspace/frontier-problem/` as the base and resolve the active `problemNN-*` folder using `skills/_shared/frontier_workspace.md`.

Required input files:
- active problem folder's `problem.md`
- active problem folder's `solution.md`

**Hard stop:** if either file is missing, empty, or clearly incomplete, say to finish the generation/solve window first (run `/math-clone`, then `/math-solve`, as needed) and stop. Do not guess from chat context and do not enter any phase.

---

## Phase 1 — normalize-problem (skip Post-processing math-rewrite)

Execute the full **normalize-problem** skill exactly as specified in `skills/normalize-problem/SKILL.md`, with one override:

> **Skip the Post-processing step** — math-rewrite runs centrally in Phase 3, not here.

Every rule, check, taxonomy, severity table, Domain Explanation scaffold, and output format defined in `skills/normalize-problem/SKILL.md` applies without modification.

**Edit-scope discipline (read `skills/_shared/edit_scope_discipline.md`; binds this skill and every sub-skill it invokes — normalize-problem, format-solution, math-rewrite, rainier-submit).** Change only what normalization actually requires. Do **not** rewrite the `Domain Explanation` when the domain is unchanged and the existing explanation is already valid and correctly formatted — leave it byte-for-byte. When acting on reviewer feedback, fix exactly the flagged parts and nothing else; do not overthink and re-edit adjacent, already-correct text. Over-editing settled, accepted work is a regression risk and an LLM-detection tell.

### Normalize-all output invariants

- `## Domain Explanation` must be plain English in the required three-sentence scaffold. It must contain no LaTeX delimiters, formulas, variable expressions, exponent notation, or other math symbols. Describe the order or precision of an asymptotic calculation in words rather than displaying its mathematical notation.
- Never emit a double hyphen as prose punctuation, typography, or part of a prose term in any normalized output. Use a single hyphen where a compound word needs one, or rewrite the phrase with ordinary words. Markdown horizontal rules and table separator rows remain structural Markdown syntax.
- Never apply fixed-column word wrapping or automatic reflow to `problem.md` or `solution.md`. Keep prose paragraphs, headings, list items, and mathematical lines on natural human-authored lines. Insert line breaks only at semantic paragraph boundaries or where Markdown or LaTeX syntax requires them. Do not wrap text after a fixed character count, and do not preserve editor display wrapping as source line breaks.
- Minimize source line breaks in prose only. Keep each prose paragraph on one natural line unless a semantic paragraph boundary or a required Markdown boundary calls for a break. Do not split a sentence or paragraph across several source lines for visual width, and do not insert blank lines between sentences that belong to the same paragraph. When repairing inherited machine wrapping, join only prose lines; never join or alter the contents, indentation, delimiter placement, or internal line structure of a math block, step label, list item, heading, or structural separator.

### Meaning of "reduce unnecessary line breaks"

Interpret line-break reduction narrowly. Remove only decorative empty lines in prose or metadata when their removal does not merge distinct semantic paragraphs or required Markdown structures. Do not interpret it as reducing indentation, flattening content, compacting `$$...$$` blocks, moving math delimiters, joining lines inside `aligned`, `array`, `matrix`, `cases`, or similar environments, or changing the visual layout of a mathematical derivation. A multiline math block remains multiline even when it contains only one displayed equation. Preserve the author's nonempty source lines inside every math block exactly.

**Phase 1 pass-gate:** `problem.md` is rewritten in place with taxonomy preserved/validated, the Plain Portal Text Gate clean, and the Problem Logic Check run. Only then begin Phase 2.

---

## Phase 2 — format-solution (skip Post-processing math-rewrite)

Execute the full **format-solution** skill exactly as specified in `skills/format-solution/SKILL.md`, with one override:

> **Skip the Post-processing step** — math-rewrite runs centrally in Phase 3, not here.

Every rule, Self-Verification Checklist item, Black-Box Audit format, LaTeX normalization rule, and output format defined in `skills/format-solution/SKILL.md` applies without modification.

If `format-solution` detects any Level 2 or Level 3 black-box issue, stop `normalize-all` immediately. Do not run Phase 3, do not rewrite prose, and do not produce a polished file that still contains missing mathematics. Tell the user to return to `math-solve` or redesign/refine the problem until the solution is zero-blackbox.

**Phase 2 pass-gate:** `solution.md` is formatted with zero Level 2/3 black-box issues. Only then begin Phase 3.

---

## Phase 3 — math-rewrite (centralized run on both outputs)

Execute the full **math-rewrite** skill exactly as specified in `skills/math-rewrite/SKILL.md`, applied to both output files in one centralized run:

**Active problem folder's `problem.md`** — plain-English mode:
- Extract the `## Domain Explanation` section.
- Apply math-rewrite (plain-English mode — no LaTeX in this section).
- Update `## Domain Explanation` in the file with the rewritten text.

**Active problem folder's `solution.md`** — LaTeX-aware mode:
- Apply math-rewrite to the prose sentences within each solution step.
- Math blocks (`$...$`, `$$...$$`) are frozen — do not alter.
- Step labels (`Step N:`), `Final Answer: $\boxed{...}$`, `## Answer`, `## Classification`, `## Solution Concepts`, and `## Black-Box Audit` sections are frozen.
- Update the active problem folder's `solution.md` with the rewritten prose.

Every rule, blocked word list, 14 rewrite rules, burstiness requirements, banned patterns, self-verification checklist, and LaTeX-aware mode defined in `skills/math-rewrite/SKILL.md` applies without modification.
This includes the required shared references in `skills/_shared/blocked_words.md` and `skills/_shared/style_guide.md`, plus the dual-pass audit inside math-rewrite.

**Phase 3 pass-gate:** prose is rewritten while every math block and frozen section stays byte-for-byte and no double hyphen remains in prose. Only then begin Phase 4.

---

## Phase 4 — rainier-submit (assemble submission package and check gates)

Only reach this phase when Phases 1–2 passed with **zero Level 2/3 black-box issues** — if `normalize-all` already stopped at Phase 2, Phase 4 does not run. After the centralized rewrite, execute the full **rainier-submit** skill exactly as specified in `skills/rainier-submit/SKILL.md`, on the same active problem folder. This makes the problem ready to submit:

- Map the folder content to the Rainier portal fields (Math Problem, Domain/Sub-domain, Domain Explanation, Worked Solution, Answer, Problem Type, Answer Type, Solution Concepts).
- Run the Rainier hard-constraint gates (hand-solvable bounds, no DNE, no obscure topic, no proofs, not guessable, self-contained answer notation, single question, LaTeX rules).
- Run the gates in `skills/_shared/hard_gates.md`, inherited from `format-solution` and `rainier-submit`. If the By-Hand Solution Gate fails or is skipped, the problem is not acceptable for Rainier review. If the Answer Length Gate fails (boxed answer, `$`/whitespace stripped, 100+ characters), the problem is likewise not acceptable. Nothing running through this skill is grandfathered: `hard_gates.md` limits the grandfather clause to already-finalized problems sitting untouched in the portal, and normalizing a problem is exactly the kind of pass that voids it.
- Run the Final Checklist and present the copy-paste-ready submission package in chat.

rainier-submit **does not create files** and **does not author content** — it only validates and maps. The problem folder still contains exactly `problem.md` and `solution.md`. If any gate fails, report it and stop short of declaring the problem submission-ready.

On acceptance, apply the Acceptance-freeze rule in `skills/_shared/frontier_workspace.md` (`### Acceptance freeze`): freeze evaluation and never inherit an earlier version's stump/solve numbers.

---

## Hard Rules

- **DO NOT** run math-rewrite inside Phase 1 or Phase 2 — it must run only as the centralized Phase 3 pass.
- **DO NOT** alter LaTeX math content during Phase 3 rewriting.
- **DO NOT** put LaTeX, formulas, variable or exponent notation, or math symbols into `## Domain Explanation`.
- **DO NOT** emit double hyphens in prose or headings during any phase of `normalize-all`; run a final scan and rewrite every prose occurrence before Phase 4.
- **DO NOT** use fixed-column word wrap or mechanically reflow source text. Treat automatic line wrapping as a validation failure and repair it before Phase 4. Structural Markdown separators and syntax-required LaTeX line breaks are exempt.
- **DO NOT** add decorative line breaks or blank lines. Use the minimum empty lines needed for semantic prose paragraphs, display mathematics, separate top-level steps, required section structure, and genuine lists. This rule concerns empty lines around content, not indentation or nonempty lines inside math blocks.
- **DO NOT** flatten, reindent, or compact a math block while reducing prose blank lines. Preserve every nonempty math source line and its delimiter placement.
- **DO** consult `skills/_shared/normalize_all_format_issues.md` before each run and append newly discovered recurring format gotchas after the relevant phase or in the final audit.
- **DO NOT** let Phase 4 (rainier-submit) author, rewrite, or create files — it is validation and field-mapping only; the folder keeps exactly `problem.md` and `solution.md`.
- **DO NOT** silently fix Level 2 or Level 3 black-box steps or logic issues — always stop and flag them to the user before Phase 3.
- **DO NOT** complete all phases when the solution is not zero-blackbox. Missing reasoning must be fixed before normalize-all, not after.
- **DO NOT** read from chat history to fill missing source files — `problem.md` and `solution.md` are the handoff boundary between the generation and normalization windows.
- **DO** run Phase 4 only after Phases 1–3 pass with a zero-blackbox solution; **DO** complete all four phases only when problem normalization and solution formatting pass without unresolved mathematical issues, and never declare the problem submission-ready if any Phase 4 gate fails.
