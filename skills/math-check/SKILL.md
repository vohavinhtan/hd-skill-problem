---
name: math-check
description: Audit the active frontier problem folder under workspace/frontier-problem/problemNN-*/ against all quality criteria — problem logic, solution soundness, LaTeX consistency, classification accuracy, and black-box reasoning. Reports findings grouped by severity for user review. Auto-writes two meaning-preserving fix classes into solution.md without asking — black-box step expansions it can derive and verify, and cosmetic/mechanical formatting fixes — and otherwise does not modify files (never problem.md, never any result, never a design decision).
user-invocable: true
disable-model-invocation: false
argument-hint: optional path — omit only when the active problem folder is explicit from context
---

# Math Check — Problem & Solution Auditor

## Contract

- **Task:** audit the active problem folder — `problem.md`, and `solution.md` whenever it exists — against every quality gate (problem logic, solution soundness, LaTeX, classification, black-box reasoning, Triviality Probe, hard gates, originality) and report findings grouped by severity.
- **Defaults (act, do not ask):** proceed on the most reasonable reading and state each assumption. Resolve the folder from context per `skills/_shared/frontier_workspace.md`; if none is unambiguous, use the most-recently-modified `workspace/frontier-problem/problemNN-*/`. Audit `solution.md` automatically when present; a blocked web step is flagged and skipped, never a stop.
- **Only hard stop:** the target `problem.md` is missing or empty — then say to run `/math-clone` and stop. Nothing else pauses the run.
- **Done:** one severity-grouped report delivered in full — the Triviality Probe block, Answer Falsification Audit, and findings-by-severity are part of that final deliverable, never a pre-write pause. The only file writes are the two permitted meaning-preserving fix classes into `solution.md` (black-box step expansions this skill can derive and verify, and cosmetic/mechanical formatting fixes); never `problem.md`, never any result, never a design decision.

## Global Principle

This skill is **advisory for every finding except two auto-fix classes, both confined to `solution.md`**. It audits and reports; the user decides what to act on. The two exceptions, applied automatically with no confirmation prompt:
1. **Black-box expansion (Section 4F)** — where missing reasoning can be derived and verified, this skill writes the expanded step directly into the active folder's `solution.md`; a black box it cannot correctly derive is left untouched and reported Critical, **never fabricated**.
2. **Cosmetic/mechanical fixes (Section 4I)** — meaning-preserving formatting corrections in `solution.md` (LaTeX delimiters, Unicode→command, shorthand-macro expansion, fraction reduction in step prose, redundant braces, exponent order, vague→`Step N` references, Solution Concepts formatting, section/step-number structure, portal-text emphasis removal, shorthand-alias expansion in the boxed answer). These are the portal's own "≈5-minute cosmetic, not grounds for rejection" class.

It **never modifies `problem.md`**, never changes any mathematical result, value, or the mathematical form of the boxed answer, and never resolves a design decision (a missing/ambiguous definition, a classification, a redesign trigger) on its own — those stay report-only. Every other finding, including Self-Containment / Smokescreen / Mechanical-Bookkeeping and any Critical, is report-only.

## Step 0 — Select Problem

Read `skills/_shared/frontier_workspace.md`.
Read `skills/_shared/triviality_probe.md`, `skills/_shared/taxonomy_slots.md`, `skills/_shared/passed_exemplars.md`, `skills/_shared/originality_audit.md`, and `skills/_shared/hard_gates.md` — the audit below checks against these shared contracts directly rather than a hand-copied summary of them, so re-read them each run in case they changed.
If `workspace/response-archive/analysis/` exists, also read `skills/_shared/response_archive.md` and this problem's rows in `by-taxonomy.md`/`common-failures.md`.

- If a file path was passed as an argument to this skill, use it as `$PROBLEM_FILE`.
- Otherwise resolve `$PROBLEM_FILE` from the context-selected problem folder using `skills/_shared/frontier_workspace.md`; if none is unambiguous, default to the most-recently-modified `workspace/frontier-problem/problemNN-*/` and state that assumption in the report.
- If `$PROBLEM_FILE` does not exist or is empty, stop and say to run `/math-clone` first.

## Step 1 — Read Problem

Read `$PROBLEM_FILE` in full. Record:
- Problem statement
- Domain, Sub-domain, Problem Type, Answer Type
- Domain explanation

## Step 2 — Read Solutions

Check whether `solution.md` exists in the same problem folder. If it exists, read it and run the full solution audit (Step 4) — do not ask whether to check it; auditing the solution alongside the problem is the default. If it does not exist, run the problem-only checks and note in the report that no solution file was present.

---

## Step 3 — Problem Audit

Run every check below. For each failure, record: **location**, **what is wrong**, **severity**.

### 3A — Problem Logic (from normalize-problem criteria)

- **Well-definedness**: Is the requested quantity uniquely determined? Are there loopholes, missing cases, or ambiguous conditions allowing multiple valid interpretations?
- **Symbol completeness**: Are all variables, sets, parameters, and notation defined before use?
- **Constraint feasibility**: Can the stated constraints be satisfied simultaneously? Is there a reason a solution must exist?
- **Answer existence**: If max/min is requested — can the extremum actually be attained, or is it only a sup/inf?
- **Non-triviality**: Is meaningful work required, or is the answer immediately obvious from definitions?
- **Single question, no proof**: Does the problem contain exactly one question with no sub-parts, asking for a concrete value/object rather than a proof?

### 3B — Quality Standards (from math-clone stress test)

- **Boundedness**: Can the answer accidentally become infinite due to missing normalization or compactness assumptions?
- **Insight required**: Does the solution require at least one non-obvious insight, or is it a direct theorem application?
- **Frontier-level depth**: Could a strong graduate student or frontier reasoning model solve it by one known theorem, a direct computation, or fewer than five nonroutine moves?
- **Hidden dependency graph**: Can 5–7 dependent reasoning nodes be named, with at least four not visible from the statement? Are they arranged as a serial unlock chain around one gateway discovery, or do they read as several conditions tracked in parallel (bookkeeping)? Flag as a defect when difficulty is carried by breadth — more than 2–3 simultaneously-tracked states, or nodes that fail the deletion test (removing one leaves the problem solvable but merely longer). See `skills/_shared/frontier_authoring_guide.md` → *Depth over Breadth*.
- **No black-box solve risk**: Would a solver be tempted to write "by computation", "one checks", or "standard formula gives" at a core step without justification?
- **Hand-auditable final evaluation**: If the solution uses a recurrence, transfer matrix, dynamic program, character/sign filter, finite search, or coefficient extraction, is the final numerical/vector/polynomial evaluation fully derived in the written solution rather than delegated to external computation?
- **Zero-blackbox normalize readiness**: Could this solution be sent directly to `normalize-all` with no remaining Level 2 or Level 3 black-box issue?
- **No horizontal expansion**: Is the problem asking for a bundle of loosely related outputs to inflate difficulty instead of one mathematically rich object?
- **False trails present**: Are there at least two natural approaches that look plausible but fail for structural reasons?

### 3B2 — Triviality Probe

Run the eight-test Triviality Probe from `skills/_shared/triviality_probe.md` against the problem/solution and report its Probe Results Block (P1 state-space, P2 decoration-deletion, P3 answer-triviality, P4 core-reduces-to, P5 side-channel recoverability, P6 route-concession, P7 depth-vs-breadth, P8 terminology-density). Respect the probe's two enforcement tiers. A **hard-tier** REJECT — P1 brute-forceable, P2 decoration, P3 degenerate/ill-posed answer, P5 side-channel recoverable/guessable, P7 breadth-dominant (7a/7b), or P8 terminology-density (≥4 bespoke terms, >3 held simultaneously, or any bespoke term renaming a standard taxonomy concept — the portal's "Beyond Project Scope" reject reason; ≤2 preferred below the cap) — is a **Critical** finding regardless of the "intended" solution's depth. A **soft-tier** REJECT — P4 retrievable-name or skeleton-reuse, P6 route-concession (6b/6c), or the P7 5–7-node count — is a **Moderate** warning when the problem otherwise matches the accepted profile in `passed_exemplars.md` (bespoke gateway + dependent derivation + closure certificate); it rises to **Critical** only when the named recipe is the entire decisive content with no bespoke setup discovery. Always report the finding either way; the tier only sets its severity.

### 3B3 — Certificate Pattern and Response Archive Cross-Check

- Check whether the solution's decisive step matches a pattern in `skills/_shared/passed_exemplars.md`. If it matches none and reads as "run the standard machine", flag it (ties to the Model-computable core / Formula-recognition problem failure modes in `math-harder`).
- If `workspace/response-archive/analysis/` exists, check this problem's Domain/Sub-domain/Problem Type/Answer Type against `by-taxonomy.md`, and check `common-failures.md` in general. Flag as a finding if this problem reproduces an already-recorded shortcut.

### 3B4 — Hard Constraints (automatic-reject gates)

Each of these is an explicit disqualifier from the frontier submission standard; any violation is **Critical**. Read `skills/_shared/hard_gates.md` and check every rule there: the By-Hand Solution Gate, the hand-solvable magnitude bounds, the no-DNE rule, the no-obscure-topic rule, the **Mechanical-Bookkeeping Reject** (decisive content carried by coefficient/trace tables, term-by-term matching, modular Frobenius/Bézout irreducibility tables, or order-by-order case tables — redesign, do not reformat), the **Smokescreen / Reverse-Engineered-Difficulty Reject** (difficulty from decoding a disguised/off-domain-dressed set-up rather than the mathematics), and the **Self-Containment Gate** (every used symbol/term defined before use over its full domain, no second defensible reading, every invoked substep's exact rule written out). This skill is a redundant safety net for these design-time gates — the primary enforcement is in `math-clone`/`math-harder`. If the By-Hand Solution Gate fails or is skipped, report **Critical** and state that the problem is unacceptable for frontier review. The Answer Length Gate is also Critical, but its mechanical character count runs in step 4B (it needs the solution's boxed answer); apply it there, not here, and skip it entirely when no solution file was read. **Answer Compaction Gate**: if the requested final output visibly compacts a rich object (e.g. "compute several quantities and report their sum", a value at one point, a single residue), check it against the four conditions in `skills/_shared/hard_gates.md`; a sum or generic combine of independently-posed sub-answers fails condition 4 and is **Critical**, while a genuine invariant or evaluation of one well-defined object passes.

### 3B5 — Originality Audit (web-optional)

Run the originality check from `skills/_shared/originality_audit.md`: build the mathematical fingerprint and cross-check the draft against `workspace/frontier-problem/used_concept_map.md` for a repository twin. If internet search is available, run its web queries and report the closest hits and a similarity decision (pass / needs redesign / non-original). If the web is unavailable, do **not** hard-stop the audit — the auditor is not the generator, so `originality_audit.md`'s hard-stop-on-no-web rule does not bind here: complete the local fingerprint and `used_concept_map.md` checks, and report the web step as **skipped — originality not web-verified** so the user knows to confirm it before submission. Any repository twin or close web hit is a finding graded by how much of the mathematical skeleton it shares.

### 3C — Classification

- **Primary taxonomy**: Is the chosen domain/sub-domain still correct if all story/flavour is stripped? Would the core machinery belong elsewhere? Is it classified by the **central subject matter**, not by the notation used, the answer format, or a technique that only appears in one solution route (a determinant-based solve does not make a problem Linear Algebra)? A mismatch here is the Rainier "Incorrect Labels" reject reason.
- **One-type rule**: Is exactly one Problem Type and exactly one Answer Type selected?
- **Answer Type honesty**: Does the final requested object itself match the claimed Answer Type — not just an intermediate object or one component of a tuple?
- **Bare scalar check (depth-gated)**: Is the answer a plain integer, rational, or algebraic constant under Problem Type `Exact computation`? A scalar answer is not itself a defect — flag it only when 3B's own depth checks (frontier-level depth, hidden dependency graph) also read weak, or when no written scalar-depth defense (`skills/_shared/frontier_authoring_guide.md`) is on file for this problem. A deep problem with a scalar answer and a defense on file is acceptable.
- **Domain explanation quality**: Is the domain explanation plain English (no LaTeX, no formulas), and does it follow the 3-sentence scaffold?

---

## Step 4 — Solution Audit (run per solution file)

Skip this step if no solution files were read.

### 4A — Structural Integrity

- All four sections present in order: `## Steps`, `## Answer`, `## Classification`, `## Solution Concepts`, separated by `---`
- Every step starts with `Step N:` on its own line, numbered consecutively from `Step 1:` with no gaps
- At least 3 steps; no micro-steps or sub-steps nested inside a step
- `Final Answer: $\boxed{<answer>}$` is the **last line** of the final step, not after a blank line
- No standalone proof step

### 4B — Answer Consistency

- The string inside `\boxed{...}` in the final step is **character-for-character identical** to the expression inside `$...$` in `## Answer`
- `## Answer` does **not** use `\boxed`
- Any symbol first defined in the solution steps (not the problem prompt) is expanded directly inside the boxed answer and `## Answer`; do not rely on local shorthand names merely to shorten the final answer
- If a decimal approximation appears, the problem explicitly requested rounding
- **Single explicit answer**: the content of `\boxed{...}` and `## Answer` must be a single bare mathematical object with no surrounding prose or explanatory sentences. If the solution derives a concrete explicit final answer, that explicit answer should appear directly in the box rather than through shorthand aliases defined only in the solution.
- **Answer Length Gate (HARD GATE)**: strip `$` and all whitespace from the `## Answer` string (the content inside `\boxed{...}`, wrapper excluded — do not count the `\boxed{}` wrapper), count the remaining characters, and report the number. Must be under 100 — see `skills/_shared/hard_gates.md`. If it is 100 or more, report **Critical**. Nothing passing through this skill is grandfathered: `hard_gates.md` restricts the grandfather clause to already-finalized problems sitting untouched in the portal, so a problem being audited here is never exempt regardless of prior ACCEPTED/DELIVERED status.
- **Solution Length Gate (HARD GATE)**: count every character of `solution.md`'s `## Steps` section (as written, including LaTeX and whitespace; nothing outside the section) and report the exact number. Must be under 10,000 — see `skills/_shared/hard_gates.md`. If it is 10,000 or more, report **Critical**, and note whether honest compression looks feasible or the problem is a Self-containedness explosion needing redesign.

### 4B.1 — Solution Concepts

- `## Solution Concepts` is present as the last section, after `## Classification`
- The section contains at least 1 and at most 5 bullet items
- Each bullet is a concise concept, technique, or required knowledge label, not a sentence-length explanation or a copy of a step title
- Every listed concept is actually used in the solution; if more than five apply, only the five most important are kept

### 4C — LaTeX Compliance

- Only `$...$` and `$$...$$` delimiters — no `\(...\)` or `\[...\]`
- No Unicode math characters (`°`, `≤`, `≥`, `×`, `→`, `∞`, `∈`, `π`, etc.)
- No shorthand macros (`\Z`, `\R`, `\abs{...}`, `\norm{...}`, `\d` for `dx`, etc.)
- Fractions use `\frac{a}{b}` and are reduced to lowest terms when both parts are integers
- Polynomials in descending exponent order
- No redundant braces wrapping expressions

### 4D — Content Fidelity

- No new mathematics introduced that wasn't in the source problem
- Cross-step references may point backward only. An explicit numbered reference such as "from Step 2" is valid only when Step 2 precedes the current step. Flag every reference to a later step, including announcements such as "needed in Step 4" or "used in Step 5", and replace it with a local conclusion that does not name the future step. Also flag vague or positional pointers. These are **Minor** findings.

### 4E — Reasoning Soundness

For each step, check:
- Does every assertion follow from the problem statement, a prior step, or a named standard result?
- Are there phrases like "clearly", "obviously", "it is easy to see", "by symmetry", "routine computation", "one can show", "a direct calculation gives", "by inspection", "it follows that" hiding a non-trivial gap?
- Are final values produced by phrases like "running the recurrence gives", "the dynamic program yields", "the transfer matrix gives", "the sign filter evaluates to", "a computer calculation gives", or "expanding the coefficient extraction gives"?
- Are constants, bounds, special cases, or measure-zero exceptions stated and justified?
- Are case splits exhaustive, with each case actually handled?

### 4F — Black-Box Assessment

Apply the Level 1/2/3 severity scale from `skills/_shared/hard_gates.md`, including its software-only-final-evaluation rule and the **Compressed-Rigor tell** in the citation carve-out: a one-line invocation of named advanced machinery that performs the problem's own nontrivial leap without the justification a peer needs (e.g. "by a decomposition-group argument the residue extension realizes the full splitting field", "specializing preserves the Galois group", "lift by Hensel" without naming the henselization/completion and the chosen valuation extension) is a Level 2/3 black box, not an acceptable citation — flag it, and if honest justification would explode into tabulated modular arithmetic, report it as a Mechanical-Bookkeeping redesign trigger rather than auto-expanding.

For normalize-readiness, any Level 2 or Level 3 finding is a blocking issue. Do not call the solution ready for `normalize-all` unless the black-box audit has no Level 2/3 findings.

Flag every Level 2 and Level 3 occurrence with the exact sentence, why it is nontrivial, and what reasoning appears to be missing.

#### Auto-expansion of black-box steps (writes to `solution.md`, no prompt)

When a solution file was read, this skill does not merely flag black boxes — it **fixes the ones it can, automatically and without asking**:

1. For each Level 1/2/3 black box, **derive the missing reasoning yourself**, owning the computation with intermediate equalities shown, exactly as the By-Hand Solution Gate requires. Then **verify it**: recompute every displayed equality and numeric value you intend to add.
2. **If you can derive it correctly and verify it** — rewrite that step in the active folder's `solution.md` to include the full intermediate reasoning, staying in the existing `Step N:` structure and LaTeX conventions. Change only the exposition; never the final result of the step or the boxed answer. Do this **silently** (no confirmation), and list the expanded steps in the report's **Auto-Expanded Steps** line.
3. **If you cannot derive it correctly, or the underlying claim is false, unsupported, or depends on a computation only code/CAS can do** — **do not fabricate**. Leave the step exactly as written and report it **Critical** (Unjustified/Unsupported Claim, or Wrong Answer / Step Error if the claim is actually false). A black box you cannot honestly fill is a real defect, not something to paper over with invented algebra.
4. **After expanding, re-run the Solution Length Gate (Section 4B)** on the rewritten `## Steps`. If honest expansion pushes it to 10,000+ characters, that is the Self-containedness-explosion signal: report it Critical and recommend redesign — never re-hide a derivation behind "one checks" to fit the cap.
5. Everything else this skill audits stays **report-only** — only black-box exposition inside `solution.md` is ever auto-written, and `problem.md` is never touched.

### 4F.1 — Answer Falsification Audit

Before accepting or rejecting the final answer, actively try to disprove it. Do not only check whether the written proof sounds plausible.

1. **Extract the answer object** from `Final Answer` and `## Answer` as a formal condition, formula, set, function, or tuple.
2. **Build a necessity/sufficiency ledger**:
   - Necessity: what conditions does the answer claim every valid object must satisfy?
   - Sufficiency: what objects does the answer claim are all valid?
   - Interaction points: which local conditions might interact globally?
3. **Attempt counterexamples**:
   - Test at least one object the answer includes.
   - Test at least one object the answer excludes.
   - Test one boundary object: equality case, zero/one/two threshold, odd/even parity, empty product, smallest nontrivial parameter, or degenerate component.
   - Test one mixed/interacting object where independent-looking local conditions can combine.
4. **Use domain-specific attack prompts when relevant**:
   - **Number theory / multiplicative formulas:** test prime powers, products of two bad primes, inert odd/even exponents, empty product $n=1$, and local-to-global leakage such as parity/character constraints that are not multiplicative.
   - **Finite logic / model theory / EF games:** test thresholds $0,1,2,3$ for every profile/feature; test both presence and two-copy distinguishability; write an explicit rank/round witness or a Duplicator response.
   - **Enumeration / set answers:** test a member, a non-member, a boundary vector/object, and an object satisfying every displayed condition except the suspected missing one.
   - **Optimization:** test a primal feasible object, a dual/lower-bound certificate, and perturbations of active/inactive constraints.
   - **Linear algebra / invariant factors:** test a small minor/pivot case, a boundary rank drop, and divisibility/normalization conditions.
5. **Record the result**:
   - If a counterexample is found, report it as **Critical** with the direct verification.
   - If none is found, state exactly which attempts were made. Do not write "no counterexample" without listing the tested objects or cases.

### 4G — Framework & Extremum Integrity

- Is the final answer stated in the same mathematical framework as the problem ($\mathbb{R}$, $\mathbb{Z}$, finite field, etc.)?
- Was max silently replaced by sup, or min by inf?
- Were extended reals used without explicit declaration?
- Is every defined quantity in the problem actually well-defined?

### 4H — Classification Match

- Does the solution's `## Classification` match the problem file's classification (Domain, Sub-domain, Problem Type, Answer Type)?
- If they disagree, which is more accurate?

### 4I — Auto-fix of cosmetic/mechanical issues (writes to `solution.md`, no prompt)

When a solution file was read, this skill also **fixes cosmetic/mechanical issues it finds, automatically and without asking** — the same "≈5-minute cosmetic, not grounds for rejection" class the portal treats as Minor. The governing invariant: **apply an edit only if it provably preserves the rendered mathematical meaning and the value of every expression.** If an edit could change what the math says, it is not cosmetic — leave it and report it.

Auto-fix (all inside `solution.md` only):
- **4C LaTeX compliance**: `\(...\)`/`\[...\]` → `$...$`/`$$...$$`; Unicode math (`≤`, `×`, `π`, `→`, …) → the LaTeX command; shorthand macros (`\Z`, `\R`, `\abs{...}`, …) → their explicit form; reduce an integer fraction to lowest terms **in step prose**; remove redundant braces; reorder polynomial terms to descending exponent.
- **4D**: rewrite a vague backward cross-reference to the exact earlier `Step N` when the referent is unambiguous; rewrite every forward reference as a local conclusion with no future step number.
- **4A structure**: reorder the four sections into the required order; renumber `Step N` labels to be consecutive with no gaps; move a `Final Answer:` onto the last line of the final step. Do this only when it is a pure reordering/relabeling — never merge, split, or rewrite step content.
- **4B.1**: trim a Solution Concepts bullet that is a sentence/step-title down to a concept label; drop to the five most important if more than five.
- **Plain Portal Text Gate**: strip Markdown emphasis (`**…**`, `*…*`, `__…__`) and label blockquotes from the Steps prose.
- **4B boxed answer**: expand a shorthand alias that was defined only in the steps so the boxed answer and `## Answer` are self-contained — **the mathematical form and value stay identical; never reduce, refactor, or otherwise restyle the answer object itself**, since the grader compares the answer string.

Do **not** auto-fix (report-only): anything in `problem.md`; a missing or ambiguous definition (Self-Containment — choosing one reading is a design decision); a Smokescreen or Mechanical-Bookkeeping redesign trigger; a classification change; any change to a mathematical result, a value, or the mathematical form of the boxed answer; any Critical finding whose fix is not purely cosmetic.

After auto-fixing, **re-run the Answer Length Gate and Solution Length Gate (Section 4B)** on the edited file (a reduction or expansion can shift the count), and list every fix in the report's **Auto-Fixed (cosmetic)** line. If uncertain whether an edit is meaning-preserving, do not make it — report it instead.

---

## Step 5 — Report

Present all findings grouped as follows. By this point the black-box auto-expansion of Section 4F and the cosmetic auto-fixes of Section 4I have already been written into `solution.md`; report which steps were expanded, which cosmetic fixes were applied, and which findings were left for the user. Make **no other** file change (never `problem.md`, never any result, never a design decision).

```
# Math Check Report — Frontier Problem: [Domain]

## Summary
- Problem file: active problem folder/problem.md
- Solutions checked: [list or "none"]
- Auto-Expanded Steps: [Step numbers rewritten in solution.md to remove a black box, or "none"] | Left as Critical (could not derive honestly): [Step numbers, or "none"]
- Auto-Fixed (cosmetic): [list the meaning-preserving solution.md fixes applied per Section 4I, or "none"]
- Total issues: [n Critical / n Moderate / n Minor]

---

## Problem Issues

### Critical
- [Location]: [What is wrong] | [Why it matters]
- ...

### Moderate
- [Location]: [What is wrong] | [Suggestion]
- ...

### Minor
- [Location]: [What is wrong] | [Suggestion]
- ...

(Write "None" under any severity level with no findings.)

---

## Solution Issues — [CLI name]

### Critical
- [Step N / Section]: [What is wrong] | [Why it matters]
- ...

### Moderate
- ...

### Minor
- ...

---

## Black-Box Findings — [CLI name]
- Step N — Level [2/3]: [exact sentence] | [why nontrivial] | [what is missing]
- (omit if no Level 2 or Level 3 found)

---

## Classification Consistency
- Problem file says: [Problem Type] / [Answer Type]
- Solution says: [Problem Type] / [Answer Type]
- Verdict: [Match / Mismatch — explain which is more accurate]

---

## Overall Verdict
[One short paragraph: is this problem+solution ready to submit as-is, needs minor fixes, or has structural issues that require rethinking?]
```

## Severity Guide

| Level | Meaning |
|---|---|
| **Critical** | Would likely cause rejection or is mathematically wrong — must fix before submission |
| **Moderate** | Likely needs fixing — affects correctness, clarity, or classification |
| **Minor** | Low priority — notation, style, or cosmetic issue that does not affect mathematical meaning |

### Portal reject-category mapping

When a finding matches one of the Rainier reviewer's own **Error Categories**, name it in the finding so the report speaks the portal's language and the user can anticipate exactly how a reviewer would tag it. The categories, grouped by where they attach:

- **Prompt** — Not Self-Contained; Non-Unique Answer; Too Computational (see `hard_gates.md` → Reasoning-vs-Computation Ratio); Multi-Part Question; Guessable; Problem Ambiguous; Proof ("show that / prove / verify"); Domain Beyond Project Scope (the portal also tags *contrived-terminology / stacked-definition* violations "Beyond Project Scope" — for those see the Contrived-terminology guard in `frontier_authoring_guide.md` and Triviality-Probe **P8** terminology-density, not the domain-quota check).
- **Answer & Solution Steps** — Wrong Answer; Unjustified or Unsupported Claims (black-box steps); Step Error (individual step wrong, final answer still right); Answer Not Self-Contained or Undefined Notation.
- **All** — Major LaTeX or Formatting Issues; Problem/Answer Mismatch; Incorrect Labels (wrong Answer/Problem Type or Domain); Plagiarism; Major Grammar or Language Issues.

Severity still governs the report grouping (Critical / Moderate / Minor); the Error Category is an added label, not a replacement. Per the portal, *cosmetic* LaTeX/grammar fixes and *trivially-fixable label typos* (~5-minute review-time fixes) are, by themselves, not grounds for rejection — tag those Minor. But a substantive mislabel — an Answer Type the answer does not actually qualify for, or a Domain/Sub-domain into a closed or full quota — can cause rejection and stays **Moderate** (Critical when it makes the answer ill-typed or the submission outright rejectable). Do not blanket-downgrade all Incorrect-Labels findings to Minor.

## Hard Rules

- **DO** auto-expand black-box solution steps you can derive and verify (Section 4F), and auto-fix meaning-preserving cosmetic/mechanical issues (Section 4I), writing both into `solution.md` without asking — these are the only writes this skill makes
- **DO NOT** modify `problem.md`, change any mathematical result, value, or the mathematical form of the boxed answer, resolve a missing/ambiguous definition or a redesign/classification decision, or fabricate reasoning for a black box you cannot correctly derive — leave it untouched and report it
- **DO NOT** apply a cosmetic fix you are not certain preserves the rendered mathematical meaning — report it instead
- **DO NOT** modify any file for any other finding — every finding outside Sections 4F and 4I is report-only
- **DO NOT** suggest fixes that change mathematical meaning
- **DO NOT** declare the problem "ready" if any Critical issue is present
- **DO** report every finding, even if it seems minor — the user decides what to act on
