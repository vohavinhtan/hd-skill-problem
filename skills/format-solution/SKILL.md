---
name: format-solution
description: Reformat a math solution to meet submission requirements — normalize LaTeX syntax, enforce step structure, classify problem and answer types.
user-invocable: true
disable-model-invocation: false
argument-hint: optional path — omit only when the active problem folder is explicit from context
input:
  - active workspace/frontier-problem/problemNN-*/solution.md
output:
  - active workspace/frontier-problem/problemNN-*/solution.md
---

# Solution Formatter

## Contract

- **Task:** reformat one active `solution.md` into submission shape — normalized LaTeX, `Step N:` structure, Problem/Answer Type classification, Solution Concepts, and the Black-Box Audit.
- **Defaults (act, do not ask):** proceed on the most reasonable reading. Resolve the target folder from context per `skills/_shared/frontier_workspace.md`; if no folder is unambiguous, use the most-recently-modified `workspace/frontier-problem/problemNN-*/` and state that assumption in the report.
- **Only hard stop:** the target `solution.md` is missing or empty — then say to run `/math-solve` and stop. Nothing else pauses the run.
- **Done:** `solution.md` rewritten in place, Self-Verification Checklist run, Answer Length / Solution Length / By-Hand gates clean, and the results included in the final report. Persist end-to-end in this turn; do not narrate a plan before acting.

## Global Principle

**Mathematical semantics take precedence over style, formatting, and readability.**
No rewrite, formatting pass, or normalization step may alter the precise mathematical meaning of the solution.

**Edit-scope discipline (read `skills/_shared/edit_scope_discipline.md`).** Reformat only what the formatting rules actually require; leave already-conforming text as-is. When acting on reviewer feedback, fix exactly the flagged parts and nothing else — do not overthink and re-edit adjacent, already-correct steps, notation, or prose. Over-editing settled text is a regression risk and an LLM-detection tell.

## Problem Selection

Read `skills/_shared/frontier_workspace.md` first.

- If a file path was passed as an argument to this skill, use it as the input solution file.
- Otherwise apply the folder-resolution default from the Contract above (context folder, else most-recently-modified `problemNN-*`).
- Write the formatted solution back to the same `solution.md`.

Do not read or write numbered workspace input/output subfolders in the frontier workflow.

If `solution.md` contains a `## Remark` section, read it carefully before formatting. The remark explains potentially confusing situations (e.g. notation ambiguities, edge cases, common misinterpretations) that could cause formatting errors. Use it to guide your formatting decisions, but **do not include the remark in the output**.

---

## Rules

### Zero-blackbox precondition

`format-solution` is a formatting and normalization pass, not a mathematical repair pass. Audit the solution for black-box reasoning as part of the pass (Black-Box Audit, checklist items 27–28). If any Level 2 or Level 3 black-box issue remains, the source solution is mathematically incomplete: report the exact issue instead of producing a normalized `solution.md` — do not format around the gap.

Do not append a `## Black-Box Audit` warning as a substitute for fixing the mathematics. A solution passed into `normalize-all` must be zero-blackbox: every nontrivial transition needed for the final answer is derived in the written solution, and no final value is obtained by an unshown recurrence, transfer matrix, dynamic program, sign filter, coefficient extraction, finite search, or computer algebra calculation.

### LaTeX normalization
- Fix any non-standard or shorthand commands to use only basic LaTeX syntax. Do **not** change the mathematical content or style of writing — only fix syntax.
- Do **NOT** normalize or reinterpret mathematical meaning.
- Never fixed-wrap or mechanically reflow `solution.md` at a target column width. Keep prose paragraphs, step labels, and math blocks on natural source lines; insert breaks only for semantic structure or required Markdown and LaTeX syntax.
- Formatting fixes must not alter: the quantifiers, the optimization notion, the existence conditions, or the ambient mathematical setting.
  - e.g. `\Z` → `\mathbb{Z}`, `\abs{x}` → `|x|`, `\norm{x}` → `\|x\|`, `\d` → `dx`, mismatched brackets, missing `\left`/`\right`, etc.
- Only `$...$` (inline) and `$$...$$` (display) are allowed. Replace any `\(...\)` with `$...$` and any `\[...\]` with `$$...$$`.
- Avoid unnecessary braces that don't render (e.g. `{\frac{3}{4}}\cdot{\frac{5}{8}}` → `\frac{3}{4}\cdot\frac{5}{8}`).
- Make sure braces are escaped when they should be visible (e.g. `\in\{1,2,3\}`). The empty visible pair must be `\{\}`, never `{}`. Do not use `{}` as an alignment spacer before `&` in aligned environments; move `&` before the relation symbol instead.
- Always arrange polynomial terms in descending order of exponents.
- Use `\frac{a}{b}` for fractions; simplify fractions whenever possible.
- Put braces around every multi-character superscript or subscript, including forms such as `\mathbb{R}^{n}` and `\mathbf{1}^{T}z`.
- Use proper mathematical symbols (e.g. `\leq` instead of `<=`, `\geq` instead of `>=`).
- Replace all Unicode math characters with proper LaTeX commands (e.g. `°` → `^\circ`, `≤` → `\leq`, `≥` → `\geq`, `×` → `\times`, `→` → `\to`, `∞` → `\infty`, `∈` → `\in`, `π` → `\pi`). No Unicode math characters are permitted inside or outside math mode.
- If decimal approximations appear in the answer, rounding instructions must be present in the problem prompt. Do not add or remove rounding.

### Steps
- Each step must make a **substantial advance** toward the final answer — do not split into trivial micro-steps
- Do not include steps within a step, substeps, or micro-trivial content
- Solutions must have at least 3 steps. If the source solution does not clearly delineate 3 or more steps, analyze the answer and break it down into at least 3 steps. If the source solution clearly describes each step of its own solution, reformat it to include that same number of steps (preserving the original step count rather than merging or splitting).
- Every step starts with `Step N: General description for the step (what this step will do)` (e.g. `Step 1: Find A`, `Step 2: convert this expression to find B`)
- Steps must be explicitly numbered in sequence
- Each step must be a separate top-level block, separated from the next step by a blank line. Use only the literal `Step N:` labels to separate steps; do not use equation numbering, `\tag{...}`, headings such as `### Step`, or a combined `## Solution` wrapper as step markers.
- Do not use `\tag{...}` anywhere in a formatted solution. If the source uses equation tags or numbered equation references, remove them and restate the needed identity locally so every step remains readable without equation-number lookup.
- Proofs are **not allowed** as a standalone step — reasoning must be integrated into solution steps
- Cross-step references may point **backward only**. A step may cite an earlier numbered step, such as "from Step 2", but it must never mention a later step or announce where its result will be used. Rewrite every forward reference as a local conclusion with no future step number. Vague or positional pointers are also forbidden: "as shown above", "computed above", "derived below", "the previous step", "the next step", and "as we will show". Rewrite a backward pointer to the exact earlier step; rewrite a forward pointer locally without naming the later step.
- The **final step** must end with: `Final Answer: $\boxed{<answer>}$`
  - `Final Answer: $\boxed{...}$` must be the **last line of the final step** — do not place it after the step block
  - The `<answer>` inside `\boxed{}` must be **character-for-character identical** to the answer written in the Answer section below

### Solution Length Gate (HARD GATE)
- After formatting, count every character of the `## Steps` section (as written — prose, LaTeX, whitespace all count; nothing outside the section counts) and report the exact number. Must be **under 10,000** (`skills/_shared/hard_gates.md`).
- If it is 10,000 or more: compress by tightening prose, merging redundant algebra, and certificate-style restatement — **never** by deleting derivations or downgrading a step into a "one checks"/"by computation" black box (the zero-blackbox precondition still applies in full). If no honest compression fits, stop and report the solution as violating the gate instead of outputting it as submit-ready.
- Step self-containedness (the no-cross-reference rule above) makes every extra step split cost duplicated inline restatement. Prefer the minimum honest number of substantial steps (typically 5–7) over many micro-steps; never split a step when the split's only effect is restated material.

### Answer field
- Wrap the final answer in `$...$`
- Do **not** use `\boxed`
- Must match exactly what appears inside `\boxed{}` in the final step
- **Exactly one final answer object**: the final answer must present exactly one mathematical object — a number, expression, set, vector, matrix, or similar — with no surrounding prose, no preamble sentences, and no restatements of the problem.
- **Self-contained directly inside the answer**: if the answer uses a symbol or named object not defined in the problem prompt, expand that symbol directly inside `\boxed{}` and `## Answer` rather than relying on shorthand defined only in the solution steps. Do not use local aliases such as `g_1,g_2`, `\mathcal P_i`, or a sentence-form `\text{where ...}` clause merely to shorten the final answer.
- **No `cases` in final answer fields**: do not put `\begin{cases}...\end{cases}` inside `Final Answer: $\boxed{...}$` or inside `## Answer`. Portal validators often parse inline `cases` row separators as malformed single backslashes. If the answer is piecewise, either define the piecewise helper object in the final step and box a compact symbol/expression, or rewrite the answer as an equivalent case-free formula using products, indicator factors, parity factors, unions, or named families. The boxed answer and `## Answer` must stay character-for-character identical after this conversion.

### Solution Concepts
- Add a mandatory `## Solution Concepts` section after `## Classification`.
- List at least 1 and at most 5 items.
- Each item must be a concise concept, technique, or required piece of knowledge, not a sentence-length explanation.
- Each item must be plain text only: no LaTeX math delimiters, no backslash commands, no formula fragments, and no symbolic notation that requires math mode.
- Prefer lowercase noun phrases such as `poisson equation for markov chains`, `schur complement for conditional covariance`, or `martingale central limit theorem`.
- Name the technique generically, not the instance: `modular arithmetic`, not `modular arithmetic modulo 11`; `quadratic residues`, not `quadratic residues mod p`. No problem-specific moduli, parameters, dimensions, or numeric values baked into a concept label (Rainier rejects the instance-specific form).
- If more than five concepts apply, keep the five most important to the actual solve path.

### Exhaustive set answers under the Answer Length Gate

If the problem asks for a complete finite set, classification, or exhaustive family, the boxed final answer must state the actual requested object — **and it must still clear the Answer Length Gate** (`skills/_shared/hard_gates.md`: under 100 characters, `$`/whitespace stripped). There is no "genuine long object" exception: the in-app validator rejects at 100 characters regardless of how honest the long object is.

Rules:
1. Temporary labels may appear in the solution steps for convenience.
2. If the explicit object fits under 100 stripped characters, write it out fully — no proxy, no cardinality-only substitute, no decomposition summary.
3. If the explicit object cannot fit, formatting must **not** invent a shortened proxy on its own — that is an Answer-Type design failure. Report it and route the problem to `math-change-answer-type` (Answer Compaction Gate patterns in `skills/_shared/frontier_authoring_guide.md`) instead of shipping either a 100+-char box or an ad hoc abbreviation.

### Final Answer Explicitness Pass

Before finalizing, check whether the boxed answer uses symbols defined only in the solution steps rather than in the problem prompt.

If yes, replace those symbols inside `\boxed{}` and `## Answer` with the actual expanded final answer object, unless the prompt itself introduced the notation. Prompt-defined shorthand is always legal and is the preferred way to keep a rich answer short (accepted precedent: a rich answer kept short via statement-defined shorthand).

After expanding, re-run the Answer Length Gate count: if the expansion pushes the stripped count to 100 or more, do not ship the long box — report the conflict as an Answer-Type design failure (route to `math-change-answer-type`) rather than silently keeping the solution-local shorthand.

### Problem Type and Answer Type — pick exactly one each

Read the full Problem Type and Answer Type definition tables, including priority order, in `skills/_shared/taxonomy_slots.md` (Problem Type Slots / Answer Type Slots). Each type must describe the requested final task/object, not a technique used in the solution. If the problem has no attained extremum, is unbounded, or needs an extended-real answer, flag it as a framework issue instead of inventing an Answer Type.

### Classification Guardrails

Classify the **final requested answer object**, not every mathematical object that appears in the derivation.

- If the final answer is a tuple or bundle containing different kinds of objects, do not label it as a specific bonus Answer Type merely because one component has that form. For example, a tuple `(polynomial, field, group)` is not simply `Polynomial or rational function`.
- Use `Tuple or ordered list` when the final requested object is genuinely an ordered bundle of outputs.
- Use `Polynomial or rational function` only when the final requested object is itself a polynomial, rational function, factorization, or closely related algebraic expression. If a problem is intended to receive this answer type, the problem statement should request that object directly.
- Use `Equation or inequality` only when the final requested object is itself an equation, system, or inequality description.
- Use `Interval or region description` only when the final requested object is a subset described by bounds, inequalities, or a region statement.
- Use `Vector` or `Matrix` only when the final requested object is a vector or matrix, not when vectors or matrices appear as intermediate tools.
- Use `Function or mapping` only when the final requested object is itself a function, operator, or mapping rule. Per the Rainier guidelines, an answer that is a **function evaluated to a single value** (e.g. `f(3)`, a norm, a determinant, a trace — anything that resolves to one number) is an `Exact scalar`, not `Function or mapping`; classify by what the final value *is*, not by the machinery that produces it.
- Prefer bonus Problem Types such as `Transformation between representations` or `Canonicalization or normalization` when the task asks for a standard/reduced/canonical representation of an object, especially a factorization or normal form.
- Avoid broad answer bundles in final answers. If the solution naturally uses auxiliary structures such as splitting fields, Galois groups, stabilizers, certificates, kernels, or generators, include them in the reasoning as needed, but do not treat them as requested answer components unless the problem explicitly asks for them and the resulting Answer Type still honestly describes the whole output.
- When revising a problem to target a bonus Answer Type, narrow the requested final answer to a single core object rather than adding more components.

---

## Output format (active problem folder's `solution.md`)

```markdown
## Steps

Step 1: {step 1 general description}
{first major step}

Step 2: {step 2 general description}
{second major step}

...

Step N: {step N general description}
{final step}

Final Answer: $\boxed{<answer>}$

---

## Answer

$<answer — identical to what is inside \boxed{} above>$

---

## Classification

**Problem Type:** {exactly one type}

**Answer Type:** {exactly one type}

---

## Solution Concepts

- <concept 1>
- <concept 2>
```

---

## Self-Verification Checklist

After writing the active problem folder's `solution.md`, run through this checklist BEFORE finishing. Fix any failures silently.

### Structural integrity
1. **Section headers present**: output contains exactly `## Steps`, `## Answer`, `## Classification`, and `## Solution Concepts` in that order, separated by `---`.
2. **Step labels**: every step starts with `Step N:` on its own line, numbered consecutively from `Step 1:` with no gaps or duplicates.
3. **Step count**: at least 3 steps. If the source solution had clearly delineated steps, the output must preserve that same count — do not merge or split steps. If the source had no clear step structure, the output must have at least 3 steps derived by analysis. No micro-steps, sub-steps, or nested numbering inside a step.
3a. **Step separation**: steps are separate top-level blocks with blank-line separation; no `\tag{...}`, equation numbering, `### Step` headings, or combined `## Solution` wrapper is used to mark or merge steps.
4. **No standalone proof step**: no step is titled or framed as a proof — reasoning must be folded into solution steps.
5. **Final Answer line**: `Final Answer: $\boxed{<answer>}$` is the **last line** of the final step (not after a blank line, not in its own block).

### Answer consistency
6. **Boxed vs Answer match**: the string inside `\boxed{...}` in the final step is **character-for-character identical** to the expression inside `$...$` in the `## Answer` section.
7. **Answer field format**: the `## Answer` section wraps the answer in `$...$` and does **not** use `\boxed`.
8. **Self-contained answer**: scan the content inside `\boxed{...}` and `## Answer` for any symbol or named object first defined in the solution steps rather than the problem prompt. Replace each such shorthand with the actual expanded final answer object inside both places, then re-run the Answer Length Gate count — an expansion that lands at 100+ stripped characters is a FAIL to report (Answer-Type design failure), not something to ship. Do not append a `\text{where }` clause merely to keep a shortened boxed answer.
9. **Exactly one final answer object**: the content of `\boxed{...}` and `## Answer` must be the actual final mathematical object with no surrounding prose. If the solution derives a concrete explicit answer, write that answer directly.
9a. **Exhaustive set explicitness**: if the problem asks for a complete set, classification, or exhaustive family, verify the boxed answer presents the actual requested final set or family — not a solution-local shorthand proxy, not just a cardinality, not a decomposition summary — **and** that it still clears the Answer Length Gate. If both cannot hold at once, report the Answer-Type design failure (route to `math-change-answer-type`).
9b. **Cardinality-only check**: if the problem asks for the complete set or classified family (not just "how many"), verify that the boxed answer includes the actual set or family itself — not only a bare number — subject to the same Answer Length Gate condition as 9a.
9c. **No long-box exception**: `\boxed{}` content must clear the Answer Length Gate (under 100 stripped characters) even when the long set, factorization, matrix, or vector is the genuine requested answer — the in-app validator rejects it regardless. Never ship the long box, and never invent an ad hoc shortening; report the design failure instead.
9d. **No `cases` in answer fields**: verify that the content inside `\boxed{...}` and the `## Answer` math contains no `\begin{cases}` or `\end{cases}`. If a piecewise answer is needed, define the piecewise function or local factor immediately before the final line and box only the compact symbol/expression, or convert the piecewise answer to a case-free equivalent such as an indicator, parity factor, product over residue classes, or union of named families. Keep `Final Answer` and `## Answer` identical after the change.
10. **Rounding fidelity**: if a decimal approximation appears in the answer, the original problem prompt explicitly requested rounding. Do not add or remove rounding on your own.

### Solution Concepts
10a. **Section present**: `## Solution Concepts` appears after `## Classification`.
10b. **Count bound**: the section contains 1 to 5 Markdown bullet items.
10c. **Concept-only phrasing**: each bullet item is a short concept or technique label, not a full explanatory sentence, proof fragment, or step description.
10c1. **Plain-text only**: each `## Solution Concepts` bullet contains no `$`, `$$`, backslash-led LaTeX commands, or symbolic notation requiring math mode.
10d. **Relevance**: every listed concept is genuinely used by the solution, and if more than five are plausible, only the five most important are kept.

### LaTeX normalization
11. **Delimiters**: only `$...$` and `$$...$$` appear. No `\(...\)`, no `\[...\]`, no bare `\begin{equation}` blocks outside math mode.
12. **No Unicode math**: scan output for `°`, `≤`, `≥`, `×`, `→`, `⇒`, `∞`, `∈`, `π`, `≠`, `≈`, `±`, `·`, `√`, `∑`, `∫`, `∂`, Greek letters, etc. Any hit must be replaced with the proper LaTeX command (e.g. `\pi`, `\leq`, `\to`).
13. **Shorthand commands fixed**: no `\Z`, `\R`, `\N`, `\Q`, `\C`, `\abs{...}`, `\norm{...}`, `\d` for `dx`, or other non-standard macros. Replaced with `\mathbb{Z}`, `|x|`, `\|x\|`, `dx`, etc.
14. **Bracket balance**: every `{` has a matching `}`; every `\left` has a matching `\right`; every `$` and `$$` is closed.
14a. **Exponent and subscript grouping**: every multi-character exponent or subscript is braced, including transposes and dimensions such as `\mathbf{1}^{T}z` and `\mathbb{R}^{n}`.
15. **Visible braces escaped**: set notation uses `\{...\}` (not bare `{...}`) so braces actually render.
16. **No redundant braces**: no `{\frac{a}{b}}` or `{x}` wrapping that doesn't change rendering.
17. **Fractions**: written with `\frac{a}{b}` and reduced to lowest terms when both numerator and denominator are integers.
18. **Polynomial ordering**: any polynomial is written in descending order of exponents (e.g. `x^2 + x + 1`, not `1 + x + x^2`).
19. **Comparison symbols**: `\leq` and `\geq` (not `<=`, `>=`, `≤`, `≥`).
19d. **Compact lists only**: do not use `\item[]`. Markdown bullets and numbered lists are allowed, but consecutive items must be adjacent with no empty lines between them. Remove decorative list spacing.
19e. **No Markdown emphasis or blockquotes in portal text**: never use `**...**`, `__...__`, `*...*`, or blockquotes in the worked-solution Steps. Step labels and mathematical labels are plain text.
19h. **No equation tags**: `\tag{...}` is forbidden in formatted solutions. Equation tags must not be used to create, separate, or label steps; remove them, and where an equation was referred to by its tag, replace that reference with an explicit "Step N" pointer or restate the identity inline.
19f. **No KaTeX-only commands**: use the standard LaTeX command, never a KaTeX-only alias — e.g. write `\langle` and `\rangle`, never `\lang`/`\rang`. Any command that renders only under KaTeX must be replaced with its standard LaTeX equivalent.
19g. **Cases row separators**: if a `cases` environment remains anywhere outside the final answer fields, put it in display math, not inline math, and ensure every non-final row ends with exactly `\\` in the source. Never compress a `cases` environment onto one inline `$...$` line. If a validator reports "Single backslash row separator in cases environment," replace the environment with display math and correct `\\`, or remove the `cases` environment entirely when a case-free formula is available.

### Classification
20. **Problem Type**: exactly one value from the current open rows in `skills/_shared/taxonomy_slots.md`, not selected merely because it appears as an intermediate technique.
21. **Answer Type**: exactly one value from the current open rows in `skills/_shared/taxonomy_slots.md`, describing the final requested object.
21a. **STRICT RULE — Answer Length Gate (HARD GATE)**: read `skills/_shared/hard_gates.md` for the full rule. Strip `$` and all whitespace from the boxed answer and count what remains; it must be under 100 characters. If it is not, do not mark the solution submission-ready — flag it and hand it back for redesign (`math-harder` or `math-change-answer-type`) toward a more compact honest Answer Type rather than trimming or abbreviating the object.

### Content fidelity
22. **No new mathematics**: the rewrite only fixes formatting and step structure — no new claims, no skipped steps from the source, no added derivations.
23. **Cross-step references — backward only**: a step may explicitly cite an earlier step ("from Step 2", "the result of Step 3"), but it may not cite any later step or announce where the current result will be used. Scan for every `Step N` reference and compare `N` with the current step number. Rewrite a forward reference as a local conclusion without the future step number. Rewrite vague backward pointers to the exact earlier step, and rewrite vague forward pointers locally without naming a later step.

### Reasoning soundness
24. **Unsupported claims sweep — double-pass per step**: for each step in the solution, run **two independent verification passes** (so a 3-step solution = 6 checks, a 5-step solution = 10 checks, etc.). On each pass, ask:
    - Does every assertion in this step follow from the problem statement, a prior step, or a standard result that is named?
    - Are there any phrases like "clearly", "obviously", "it is easy to see", "by symmetry", "without loss of generality", "it follows that", "one can show", or "it can be verified" that hide a non-trivial gap?
    - Are constants, bounds, special cases, or measure-zero exceptions stated and justified (not just asserted)?
    - Are case splits exhaustive, and is each case actually handled?

    If pass 1 flags an unsupported claim, fix it (add the missing justification, cite the prior step, or expand the case) and **re-run pass 2 from scratch** on the revised step — fixes can introduce new gaps. Both passes must come back clean before the step is accepted. Track the count: `2 × (number of steps)` checks total, no skipping.

### Well-definedness and framework integrity
25. **Well-definedness and extremum audit**
    - If the problem defines a quantity using max/min, verify that the extremum actually exists.
    - If the set is only unbounded or non-attained, do NOT silently replace: max by sup, min by inf, finite quantities by extended-real quantities.
    - If the maximum/minimum does not exist, state this explicitly in the solution and ensure the final answer reflects it.
    - If extended reals are used, the convention must be explicitly declared in the solution.

26. **Framework consistency**
    - Verify that the final answer is stated in the same mathematical framework as the original problem.
    - Do not implicitly move from: real numbers to extended reals, finite objects to generalized objects, exact equality to asymptotic equivalence, existence to attainability.

### Black-box audit
27. **STRICT RULE — By-Hand Solution Gate (HARD GATE)**: read `skills/_shared/hard_gates.md` for the full rule; the formatted solution is not acceptable unless it passes.

    If it fails, treat it as a Level 3 black-box issue unless the missing work can be expanded immediately from the source solution. Do not write `## Black-Box Audit — no issues found`, do not mark the solution submission-ready, and state that skipping this hard gate makes the problem unacceptable for frontier review.

28. **Black-box scan — run after all other checklist items pass**: scan every step for reasoning transitions whose correctness is asserted without sufficient justification, using the indicator list and Level 1/2/3 severity scale in `skills/_shared/hard_gates.md`.

    **Action by severity:**
    - Level 1: acceptable compression, but expand it if it is easy and improves readability.
    - Level 2: stop formatting and report the missing reasoning. Do not write a normalized solution until the gap is fixed by `math-solve` or manual mathematical revision.
    - Level 3: stop formatting and report the exact sentence causing concern, why it is nontrivial, and what derivation appears to be missing. A Level 3 black box means the source solution is incomplete.

    The formatted output must not contain a `## Black-Box Audit` section listing unresolved Level 2 or Level 3 issues. If no Level 2 or Level 3 issues are found, write: `## Black-Box Audit — no issues found`.

---

## Post-processing

After writing the active problem folder's `solution.md`, automatically apply **math-rewrite** to the prose portions of the solution steps:
- Apply math-rewrite in LaTeX-aware mode (math blocks are left untouched; only prose sentences between and around math are rewritten).
- Load the shared references required by math-rewrite: `skills/_shared/blocked_words.md` and `skills/_shared/style_guide.md`.
- Run the dual-pass audit required by math-rewrite before accepting the rewritten prose.
- Update the active problem folder's `solution.md` with the rewritten text.

> **Note for normalize-all**: skip this Post-processing step — normalize-all runs math-rewrite centrally after both skills complete.
