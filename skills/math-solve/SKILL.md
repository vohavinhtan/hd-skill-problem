---
name: math-solve
description: Solve math problems (geometry, number theory, combinatorics, algebra, calculus, olympiad/Putnam) with a mandatory answer verification process. When verification fails, restart from scratch with new hypotheses — unverified answers are never accepted. Use when the user presents a problem that needs to be solved rigorously, especially competition/olympiad problems or problems whose answers are numbers or pairs of numbers.
user-invocable: true
disable-model-invocation: false
argument-hint: optional problem statement, image path, or problem folder/file path — omit only when the current problem folder is explicit from context
---

# Math Solve with Verification Loop

## Contract

- **Task:** solve one math problem rigorously and write a fully verified `solution.md` — with every hidden-step certificate and the verification log — to the active problem folder.
- **Defaults (act, do not ask):** proceed on the most reasonable reading. The current session is the solver; never ask which provider or CLI to use. Resolve the problem source from context per `skills/_shared/frontier_workspace.md`. When terminology is ambiguous, state the assumption and keep solving; pause only if the ambiguity makes the problem genuinely unsolvable.
- **Only hard stop:** the target `problem.md` is missing or empty (say to run `/math-clone` or paste a problem inline, then stop); or 3 verification iterations still fail (acknowledge you cannot solve it and list what was tried — never fabricate an answer). Nothing else pauses the run.
- **Done:** the answer is verified by at least two independent methods including the Counterexample Attack Gate, no unresolved Level 2/3 black box remains, the Answer Length and Solution Length gates pass, and `solution.md` is written in place. An unverified answer is never accepted; on any verification failure, restart from scratch rather than patch. Persist end-to-end this turn; do not narrate a plan before acting.

## Global Principle

**Mathematical semantics take precedence over style, formatting, and readability.**
No rewrite, formatting pass, or normalization step may alter the precise mathematical meaning of the solution.

You are a disciplined math solver. Core principle: **never return an answer that has not been verified**. If verification fails, iterate again — no "guessing based on symmetry" or "probably...".

## Taxonomy and Answer-Type Discipline

When solving clone problems, also verify the metadata labels. Read `skills/_shared/taxonomy_slots.md` before verifying Domain/Sub-domain, Problem Type, or Answer Type metadata — it holds the full Problem Type and Answer Type definition tables and priority order (Problem Type Slots / Answer Type Slots), and the current open Domain/Sub-domain rows. Select **exactly one** Problem Type and **exactly one** Answer Type from those tables. Use the latest portal snapshot if the user provides one; for that run, the snapshot overrides `skills/_shared/taxonomy_slots.md`. Do not paste the full portal table in the solution. Unless a newer snapshot explicitly overrides it, choose labels only from currently open rows.

**Classification rules**
- The domain/sub-domain must be the primary mathematics, not flavour text or a secondary proof technique.
- Do not choose multiple labels. If several seem plausible, choose the one that best describes the requested final object.
- Never label by an intermediate tool. A solution using a matrix may still have Answer Type `Exact symbolic expression` if the final answer is a scalar expression.
- A bare exact scalar under `Exact computation` should use Answer Type `Exact scalar`; flag it only if reviewing or formatting reveals no written scalar-depth defense (`skills/_shared/frontier_authoring_guide.md`) and no bonus Answer Type honestly fits instead.

## Input

### Step 0 — No Provider Selection

Do not ask the user to choose a provider or CLI. The active solver is the current assistant session. If the incoming request includes old provider words such as `claude`, `gemini`, or `codex`, ignore them unless they are clearly part of the mathematical problem text.

---

### Step 1 — Resolve problem source

Before resolving the problem source, read `skills/_shared/frontier_workspace.md`. Do not choose a problem folder by numeric ordering; use an explicit path or a problem folder clearly identified by the current conversation context.

**Case 1 — Inline content supplied** (the request contains text, LaTeX, or an image path outside `workspace/frontier-problem/`):
- Use that directly as the problem statement.

**Case 2 — Arguments point to a `workspace/frontier-problem/problemNN-*` folder, its `problem.md`, `workspace/frontier-problem/`, or are empty**:
- Resolve the active problem folder by `skills/_shared/frontier_workspace.md`, then read its `problem.md`.
- If the file does not exist or is empty, stop and ask the user to run `/math-clone` first or paste a problem inline.
- Use its `## LaTeX (Normalized)` section as the input when present; otherwise use the legacy `## Problem Statement` section when present; otherwise use the full file content.

**Case 3 — No arguments at all**:
- If the current conversation context explicitly identifies a problem folder, fall through to Case 2 using that folder.
- Otherwise prompt: "Please paste the problem as text/LaTeX, attach an image, or provide the `workspace/frontier-problem/problemNN-*` folder or file path to solve."

Once the problem source is resolved, restate it in one sentence and continue straight into Phase 1 in the same turn — do not wait for confirmation.

## Mandatory Workflow (5 phases)

### Phase 1 — Understand the Problem (Restate)

- Restate the problem in precise mathematical language
- List: what is given, what is sought, constraints, definition of each term
- If the problem contains ambiguous terminology ("illuminated", "directly above", "at least", "inside"), **write a formal definition**
- Draw/describe the figure if it is a geometry problem

**Formalism Audit (perform before any computation):**
- Determine the ambient mathematical universe: $\mathbb{R}$, $\mathbb{Z}$, extended reals, finite fields, ordinals, etc.
- Distinguish carefully between: maximum vs supremum, minimum vs infimum, existence vs attainability, finite quantities vs extended-real quantities.
- If a quantity is defined via max/min, explicitly verify that the extremum exists (compactness, finiteness, or explicit argument).
- If existence fails: state that the quantity is undefined or the maximum/minimum does not exist. **Do NOT silently replace max/min by sup/inf.**
- If using nonstandard conventions (extended reals, compactifications, distributions, generalized functions, etc.), **explicitly declare this before using them.**

**Meaning check:** Is there anything in the problem whose meaning is unclear? If so, adopt the most reasonable interpretation, state that assumption explicitly, and keep solving — do not pause to ask, unless the ambiguity makes the problem genuinely unsolvable.

### Phase 2 — Structural Analysis

- Identify the problem type: optimization, counting, geometric visibility, inequality, ...
- List **symmetries** and invariants
- List **cases** to consider, draw boundaries between cases
- Form a preliminary heuristic guess about the answer (for orientation only — **must not be used as the final answer**)
- For hard generated/clone problems, build a **hidden mechanism map** before solving:
  1. Identify the apparent direct attack.
  2. Explain why the direct attack is insufficient or too brute-force.
  3. Name the hidden structures likely needed: invariant, transformation, orbit/stabilizer, interpolation, kernel, certificate, duality, normal form, extremal obstruction, generating function, quotient, or moment condition.
  4. State the expected chain of dependencies. This chain is a plan, not a proof; every node must still be justified in Phase 3.

### Phase 3 — Solve

- Prove each step. Every step must have a justification (theorem, computation, or specific geometric argument)
- **Forbidden**: "by symmetry...", "clearly...", "it can be seen..." without accompanying proof
- **Forbidden**: invoking "this is a famous Putnam/IMO problem so the answer is X" — must solve independently
- For optimization problems (min/max): prove both the **upper bound** and **lower bound**, state the attaining configuration explicitly
- For existence problems: give an explicit construction
- For counting problems: verify with small cases first

### Phase 3a — Certificate Requirements for Hidden Steps

Any core hidden step must be unpacked into a verifiable certificate. Do not leave it as a named theorem or computation unless the assumptions and output are checked in the text.

Use the matching certificate type:

| Hidden step type | Required certificate |
|---|---|
| Exact polynomial/factorization | Show the elimination, interpolation, orbit product, or coefficient comparison that produces it; do not just state "expanding gives" for a core result |
| Matrix inverse/kernel | Derive via equations, residues, interpolation, or block identities, and verify multiplication or defining identities |
| Galois orbit/stabilizer | Give generators/actions, compute stabilizer, list orbit blocks, and connect orbit blocks to irreducible factors |
| Counting/classification | Define the counted objects, prove the cases are exhaustive and disjoint, and justify any group action or Burnside count |
| Recurrence/generating function | Derive the recurrence or generating function from first principles and check initial conditions |
| Asymptotic/limit | State uniformity or error control, not only the leading term |
| Optimization/extremal bound | Prove both feasibility and impossibility; identify equality cases or why none are needed |
| Numerical/symbolic computation | For reviewer-facing clone solutions, derive the final values by hand-auditable algebra, factorization, orbit decomposition, determinant/certificate, or a fully displayed small calculation. Code output summaries may be used only as independent verification, not as the derivation of the submitted answer. |

If a step cannot be certified compactly, restructure the argument around a **smaller certificate** until every nontrivial transition has a visible reason — do not simply split into more steps: each extra step duplicates inline restatements (format-solution's self-contained-step rule) and eats the 10,000-character Steps budget (Solution Length Gate).

Before finalizing, check the drafted certificate against `skills/_shared/passed_exemplars.md`: name which pattern (candidate+gap, inverse-shadow reconstruction, quotient+correction, active+slack, finite audit table) the solution's decisive step follows. If it follows none of them and still reads as "run the standard machine", restructure until it does.

### Phase 3b — Black-Box Detection (MANDATORY, run after drafting the solution)

Scan every step of the draft solution for **black-box reasoning**: any nontrivial logical transition, computation, classification, enumeration, or theorem application whose correctness is asserted without sufficient justification or reconstructible reasoning.

Read `skills/_shared/hard_gates.md` for the full black-box indicator list and the Level 1/2/3 severity scale (including the software-only-final-evaluation rule) — apply it here.

**For every detected black-box step, record:**
1. The exact sentence or transition causing concern
2. Why the step is nontrivial
3. What mathematical machinery or derivation appears to be missing
4. The severity level (1, 2, or 3)
5. What additional justification would make the reasoning rigorous

**Action by severity:**
- Level 1: acceptable — no change required
- Level 2: expand the step with the missing reasoning before proceeding
- Level 3: treat as a verification failure — go back to Phase 2 or 3 and reconstruct the argument from scratch

A solution is only considered fully rigorous if a mathematically trained reader could reconstruct every nontrivial step directly from the presented reasoning, without needing to blindly trust hidden computations or unstated theorems.

For generated clone problems, the black-box audit must explicitly cover every hidden dependency node identified in the Phase 2 hidden mechanism map. If any node is missing a certificate, the solution is not acceptable.

### Zero-Blackbox Submission Gate

For generated clone/frontier problems, do not save or present a submit-ready solution with any unresolved Level 2 or Level 3 black-box finding. The final `solution.md` must either have no Level 2/3 findings, or the solve attempt must be treated as failed and restarted from the earliest phase where the missing reasoning can be reconstructed.

This gate exists before `normalize-all`: normalization must never be used as a refinement pass for missing mathematics. If a step cannot be expanded into a self-contained derivation, do not paper over it with a `## Black-Box Audit` warning; redesign the problem, find a smaller certificate, or report that the solution is not complete.

### Phase 3c — No-Blackbox Expansion Standard

#### STRICT RULE — By-Hand Solution Gate

This is a **HARD GATE** — read `skills/_shared/hard_gates.md` for the full rule. If it fails, stop and expand the solution or rebuild the argument before proceeding. Do not mark the answer verified until the missing by-hand certificate is present. If this gate is skipped, the problem is not acceptable for frontier review.

#### Bookkeeping Burden Design Risk

After expanding hidden computations, check whether the fully self-contained solution is still a reasonable handwritten solution. If the official solution is dominated by many coefficient tables, many matrix-entry calculations, repeated rational reductions, long recurrence sheets, exhaustive case tables, or row-by-row arithmetic, flag a design risk even when every entry is correct.

Classify this separately from black-box reasoning:
- Hidden computation means the solution omitted necessary work; expand or certify it.
- Bookkeeping burden means the necessary work itself is too large; the problem likely needs redesign.

For clone/frontier problems, do not present such a solution as submission-ready. In the `## Black-Box Audit` or `## Verification` section, state that the problem is solvable but not reviewer-safe because the by-hand audit trail overwhelms the conceptual mechanism.

When in doubt, prefer the **smallest sufficient certificate** over bulk expansion. Reviewer-facing clone solutions must contain enough detail that no core step requires trust, while the whole `## Steps` section stays under the 10,000-character Solution Length Gate — both constraints bind simultaneously. Expansion that would bust the budget is a signal to find a tighter certificate or report the design as too computational, never a license to re-hide the step.

Always expand these phrases if they occur in a nontrivial step:
- "checking gives"
- "direct multiplication gives"
- "expanding and collecting gives"
- "one obtains"
- "by computation"
- "standard"
- "it follows"
- "clearly"
- "by symmetry"

Replace them with explicit work:
- Show the decisive data compactly: coefficient comparisons, residues, orbit representatives, or a small table — the smallest display that lets a reviewer reconstruct the step, not bulk row-by-row printing.
- For finite searches, state the bound that makes the search finite and list the cases — if the complete case list cannot fit the Steps budget, the problem fails the Self-containedness explosion test and needs redesign, not a bigger table.
- Do not use pseudocode, checkpoint tables, or executable code as the only bridge from a large recurrence/search/coefficient extraction to the final answer in clone submissions. If the full evaluation cannot be shown compactly, the solution is not self-contained; redesign the problem or find a smaller certificate.
- For periods/orders, compute the powers and explain why proper divisors do not work.
- For uniform asymptotics, state why the remainder constants are uniform over the claimed parameter set.
- For optimality, give both a primal feasible object and a dual/lower-bound certificate, then explain equality conditions.
- For taxonomy-sensitive answers, ensure the final object is exactly the requested type, not an auxiliary scalar plus commentary.

### Phase 4 — Verify (MANDATORY)

This is the most important phase. Apply **at least 2 independent verification methods**:

**A. Arithmetic/geometric sanity checks**
- Plug the answer back into the problem conditions and check every constraint
- For a pair $(N, d)$: check that $N$ lamps in a specific configuration can cover the floor, that $d$ is achievable, and that $d$ cannot be increased or $N$ decreased

**B. Boundary / small-case tests**
- Substitute smaller parameter values, solve again, and check whether the result matches the formula
- Test edge cases: parameter = 0, = 1, special symmetric configurations

**C. Inversion / contradiction**
- Assume the answer is wrong (e.g., $N-1$ lamps suffice): does this lead to a contradiction?
- Assume $d$ is larger: does it violate any constraint?

**D. Compare against a looser / tighter bound**
- For optimization problems: try dropping one constraint — is the new answer ≥ the old answer?

**E. Numerical check** (if applicable)
- Use `python3` via Bash tool to verify numerically:
  - Random sampling of points/configurations
  - Brute force on a grid
  - Symbolic check with sympy

**E3. Counterexample Attack Gate (mandatory for frontier/clone answers)**
- Treat the proposed answer as a target to falsify, not as a result to defend.
- Build a necessity/sufficiency ledger:
  - **Necessity attack:** choose objects the answer says must be excluded; try to construct one that still satisfies the original problem.
  - **Sufficiency attack:** choose objects the answer says are included; verify directly that they satisfy the original problem.
  - **Boundary attack:** test equality cases, zero/one/two thresholds, odd/even parities, empty products, degenerate components, and smallest nontrivial parameters.
- Run domain-specific attacks when relevant:
  - **Number theory / multiplicative formulas:** test prime powers, products of two "bad" primes, inert odd/even exponents, empty product $n=1$, and whether a local condition secretly needs a global parity/character constraint.
  - **Finite logic / model theory / EF games:** test thresholds $0,1,2,3$ for each distinguishable feature; try both presence and "two-copy" sentences; construct a small Spoiler/Duplicator witness for any claimed equivalence.
  - **Enumeration / set answers:** test at least one member, one non-member, one boundary vector/object, and one object satisfying all displayed constraints except the suspected missing condition.
  - **Optimization:** test both a primal feasible candidate and a dual/lower-bound obstruction; try perturbing active and inactive constraints.
- Record the strongest attempted counterexample in `## Verification`, even if it fails. The log must say either `Counterexample found: ...` or `Counterexample attack: no counterexample found after ...`.
- If any counterexample succeeds, this is a verification failure: return to Phase 2 or Phase 3 and rebuild the answer. Do not patch the formula locally.

**F. Answer-type and formulation verification**
- Verify the final answer matches exactly what the problem asks for: exact value vs asymptotic, maximum/minimum vs supremum/infimum, existence statement vs explicit construction, finite value vs extended-real value.
- Check that no hidden assumptions or framework changes were introduced.
- Check that every defined object is actually well-defined in the stated framework.
- **Single explicit answer**: the final answer (inside `\boxed{}` and in the `## Answer` section) must be a single bare mathematical object — a number, expression, set, vector, matrix, or similar — with no surrounding prose or explanatory text. If the solution derives a concrete explicit final answer, write that explicit answer directly in the box rather than replacing it with shorthand notation introduced only in the solution steps.

**G0. Answer Length Gate (HARD GATE)** — read `skills/_shared/hard_gates.md` for the full rule. Strip `$` and all whitespace from the `## Answer` string (the content inside `\boxed{...}`, wrapper excluded) and count the remaining characters; it must be under 100. First confirm the length is not caused by a solving artifact — an unsimplified fraction, an unreduced expression, or shorthand left unexpanded that a correct simplification would shrink; if so, that is a solving error to fix in Phase 3. But if the *correctly simplified* answer the problem genuinely demands is still 100 or more characters, the length is a property of the problem's design, not of this derivation: re-solving cannot shorten it. Do not truncate, abbreviate, or drop part of the answer to fit. Instead stop and report that the problem fails the Answer Length Gate and needs redesign via `math-harder` or `math-change-answer-type` (for a clone we own) — this is a design-level failure the solver cannot resolve by re-deriving.

**G. Taxonomy and label verification**
- Verify Domain/Sub-domain is the primary mathematical content.
- Verify exactly one Problem Type and exactly one Answer Type are selected.
- Verify the Answer Type describes the final requested object, not an intermediate object.
- If the final answer is a mixed tuple/bundle, do not label it as a specific bonus type unless the entire tuple is naturally that object type.
- If the final answer is a bare exact scalar, it is acceptable when a written scalar-depth defense (`skills/_shared/frontier_authoring_guide.md`) is on file for the problem; otherwise flag it so the problem can either get a defense written or be redesigned toward a non-scalar Answer Type.

**Reviewer Sanity Check (before finalizing):**
- Could a reviewer object to hidden assumptions or implicit conventions?
- Did I silently change the mathematical framework?
- Did I replace max by sup, or minimum by infimum, without justification?
- Did I implicitly move from $\mathbb{R}$ to the extended reals?
- Is the final answer stated in the same mathematical setting as the original problem?
- Are there any remaining Level 2 or Level 3 black-box steps that were not resolved in Phase 3b?
- Are the selected taxonomy, Problem Type, and Answer Type honest and singular?

**Stop check:** If **any** verification fails → **GO BACK to Phase 2 or 3**. Do not patch the answer. Do not say "probably correct".

### Phase 5 — Present

Output the answer first in plain LaTeX, followed by the solution, a semicolon-separated Solution Concepts line, the verification log, the classification, and the confidence statement. Do not use Markdown emphasis or blockquotes in the portal-bound Problem or Steps. Lists are allowed, but never place an empty line between consecutive items.

## Loop Iteration (when verification fails)

If Phase 4 verification fails:

1. **State clearly which check failed and how** (do not skip this)
2. **Diagnose**: was the error in Phase 1 (misread the problem), Phase 2 (missed a case), or Phase 3 (flawed argument)?
3. **Restart from the corresponding phase** — do not patch
4. After a maximum of **3 iterations** still failing → acknowledge "I cannot solve this", list the approaches tried and why they failed. **Do not fabricate an answer**.

## Hard Rules

- **DO NOT** leave any Level 2 or Level 3 black-box step unresolved — expand or reconstruct before finalizing
- **DO NOT** create `solution.md` as submit-ready if the Black-Box Audit contains any Level 2 or Level 3 finding. A final solution handed to `normalize-all` must be zero-blackbox: no hidden nontrivial step, no critical black box, and no software-only final evaluation.
- **DO NOT** save a `solution.md` whose `## Steps` section is 10,000 characters or more (**Solution Length Gate**, `skills/_shared/hard_gates.md` — count everything in the Steps section as written, nothing outside it; report the exact count). Compress by tightening prose and using certificate-style arguments — never by re-hiding steps behind black boxes (both gates must hold). If an honest zero-blackbox write-up cannot fit, report the problem as too computational for the format (Self-containedness explosion) instead of shipping a violating or black-boxed solution.
- **DO NOT** open with "This is a Putnam problem, the answer is..." — must solve from scratch
- **DO NOT** use "by symmetry and experience" to conclude the answer
- **DO NOT** accept an "approximately correct" answer — mathematics demands exactness
- **DO NOT** adjust the answer to match the user's hint without re-solving from scratch — if the user says "the actual answer is X", verify X through Phase 4 before accepting it; if X verifies, also understand **why** the previous approach was wrong
- **DO NOT** silently change the mathematical framework or conventions
- **DO NOT** replace max/min by sup/inf unless explicitly justified
- **DO NOT** use extended reals unless the problem statement allows it or the convention is explicitly declared
- **DO NOT** strengthen the hypotheses or weaken the conclusion implicitly
- **DO NOT** replace undefined quantities by analogous generalized notions without explicit justification
- **DO** verify that every defined quantity in the problem is actually well-defined before giving a final answer
- **DO** use Bash/python for numerical computation when needed — especially for verification
- **DO** acknowledge inability to solve after 3 failed iterations

## Output Template

```
## Answer
$(result)$

## Solution Concepts
[concept 1]; [concept 2]

## Solution
[steps]

## Black-Box Audit
Step N: Level [1/2/3], [description of detected black-box, or "none detected"]

## Verification
Check 1 (sanity): [pass/fail + details]
Check 2 (lower bound): [pass/fail + details]
Check 3 (numerical): [pass/fail + details]

## Classification
**Domain/Sub-domain:** {primary domain} / {primary sub-domain, if known}

**Problem Type:** {exactly one label}

**Answer Type:** {exactly one label}

## Confidence
[high/medium/low] because [reason]
```

## Final Step — Create File `solution.md`

### Determine the output file

Read `skills/_shared/frontier_workspace.md`. Save the active solution to the same problem folder's `solution.md`.

Create the file using the Output Template above, with the full solution ensuring compliance with the workflow and rules. Format all LaTeX using `$...$` for inline math and `$$...$$` for display math.

`## Solution Concepts` is mandatory in every generated `solution.md`. Put 1 to 5 concise concept names on one plain-text line separated by semicolons. Do not use Markdown emphasis or decorative blank lines.

Save to the resolved active problem folder's `solution.md`.

Before saving, run the **Solution Length Gate** (`skills/_shared/hard_gates.md`): count every character of the `## Steps` section (as written, including LaTeX and whitespace; nothing outside the section) and report the exact number. Must be under 10,000. If over: compress prose and certificate the arguments without introducing any Level 2/3 black box; if that is impossible, stop and report the problem design as too computational rather than saving a violating file.

After saving, update this problem's row in `workspace/frontier-problem/used_concept_map.md` (contract in `skills/_shared/frontier_workspace.md`): fill the decisive-technique column from the verified solution's gateway step and set the answer column to the final answer if it is ≤25 characters stripped, else `LONG(~N chars)`.
