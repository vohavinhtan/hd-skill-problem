# Frontier Authoring Guide

Use this guide when creating, hardening, or changing the type of frontier-tier university math problems. The goal is to produce natural mathematics problems that are hard for current models because they require real structural reconstruction, not because they are obscure, ambiguous, overlong, or computationally tedious.

## Frontier-Tier Goal

A frontier-tier problem should plausibly defeat the strongest calibration model unless it reconstructs the full hidden mechanism. The problem should remain self-contained, solvable by a human expert, and have one short, exact, reliably verifiable final answer.

Reject designs whose solution is essentially:

1. recognize a named theorem,
2. substitute the data,
3. simplify algebra.

Reject designs whose difficulty comes mainly from large constants, long tables, many outputs, or tedious arithmetic.

## Recommended Authoring Patterns

Use one or more of the following patterns. Strong problems often stack two or three of them.

### 1. Compose two independent mathematical areas

Build a problem whose solution requires translating between two mathematical machines that do not usually appear in the same textbook chapter. Each component may be familiar, but the bridge should not be a standard exercise.

Good compositions include:

- distribution theory plus differential geometry,
- abstract algebra plus discrete dynamics,
- spectral theory plus rank-one perturbation plus orthogonal polynomial transforms,
- probability plus convex duality,
- combinatorics plus algebraic number theory,
- geometric data plus Markov or random-walk reasoning.

Why this works: models search by analogy. When neither component area alone contains the full template, they often solve one half and miss the interface.

Authoring checks:

- The second area must be mathematically essential, not decorative terminology.
- The final answer should depend on the translation layer, not only on one side of the composition.
- Avoid naming the exact bridge theorem in the problem statement unless the challenge is to apply it in a nonstandard way.

### 2. Define a new object on the spot

Introduce a custom class such as `admissible`, `closed`, `device-resistance`, `1-GCD`, or another local definition, then ask a natural counting, extremal, construction, or parameter-identification question about it.

Why this works: there is no canonical theorem to quote. The solver must derive closure properties, invariants, obstructions, and normal forms from the definition.

Authoring checks:

- The custom class must be rich enough that finite brute force is not the intended solution.
- The definition must be self-contained and unambiguous.
- If a small example is needed to remove ambiguity, include at most one short example and make sure it does not reveal the solution pattern.
- Do not merely rename a classical object. Add constraints that force new reasoning rather than known-classification lookup.
- **Contrived-terminology / stacked-definition guard (Rainier reject reason).** The portal rejects statements that are "overly complex (many stacked definitions, especially highly contrived ones)" or that carry "irrelevant or unused detail or notation." A bespoke definition earns its place only if it is *load-bearing* — deleting it changes the answer or destroys the certificate. Prefer **one** custom class with a natural question over three chained bespoke objects; every symbol introduced must be used by the intended solution. If a definition, phase, or piece of notation can be removed without changing the answer, it reads as contrived dressing (triviality-probe P2) and is a rejection risk, not depth. Depth comes from the dependency chain among *few* well-motivated objects, never from the count of definitions. Even when every term is load-bearing, keeping **four or more** bespoke definitions — forcing the reader to hold more than three at once, or renaming a concept that already has a standard taxonomy name — trips the terminology-density gate (triviality-probe **P8**, the portal's "Beyond Project Scope" reject reason): condense to ≤ 3 (aim for ≤ 2) and use standard Domain/Sub-domain vocabulary.

### 3. Use a rare named object whose concrete data must be reconstructed

It is acceptable to use a rare object from the literature if the problem requires reconstructing concrete data from first principles, such as coordinates, subgroup incidence, face structure, character data, or a specialized lattice.

Why this works: models may recognize the name and hallucinate the concrete data. Human-solvable difficulty comes from rebuilding the object carefully.

Authoring checks:

- The question must require concrete data, not a generic invariant that can be looked up.
- Do not use objects whose structure is completely elementary or fully classified in a way that trivializes the task.
- Include enough defining information that the problem is self-contained, or make the reconstruction possible from standard definitions included in the statement.

### 4. Iterate a process and ask about a limit, expectation, extremum, or late step

Use repeated operations, stopping rules, Markov dynamics, recurrences, or long-range constraints to compress depth into a compact statement.

Why this works: models often solve the one-step transition but lose an invariant or edge correction that compounds.

Authoring checks:

- The state space should not be small enough for easy memoization or brute-force enumeration.
- Push the question to a large index, a limit, an expected value, or an extremal late term when appropriate.
- The hard part should be finding the invariant/state compression, not manually simulating many steps.

### 5. Use multi-phase state bookkeeping

Design two or more phases, systems, commands, layers, or players that mutate a shared state. The solver must carry an invariant across phases.

Why this works: models track recent rules better than long-range cross-phase conditions.

Authoring checks:

- Each phase must interact with the others through a real invariant or obstruction.
- If the phases can be solved independently and then concatenated, the framing is decorative and too weak.
- The final answer should depend on correctly preserving a condition across phase boundaries.

## Frontier Design Requirements

Before finalizing a problem, build a hidden dependency graph with 5 to 7 nonroutine nodes. At least four nodes should be latent rather than stated directly. This remains a design target rather than an acceptance statistic: the expanded current-flow corpus confirms several different certificate shapes, while the Solution Length Gate still limits how many nodes can be written honestly under 10,000 characters.

Good hidden nodes include:

- discovering the right auxiliary object,
- passing to a quotient, dual, transform, generating function, stabilizer, interpolation space, or normal form,
- finding an invariant that rules out a naive approach,
- identifying the correct orbit, kernel, certificate, obstruction, or equality case,
- converting a global condition into local constraints, or local constraints into a global object,
- proving that an apparent degree of freedom is forced.

Reject the problem if the dependency graph is mostly "compute, substitute, simplify."

### Depth over Breadth (how to arrange the 5–7 nodes)

The node *count* is not the axis that decides whether a problem reads as frontier-hard or as bookkeeping-heavy. The *arrangement* is. The same 5–7 nodes can produce either outcome:

- **Serial (depth) — good.** Node B only opens *after* node A is solved; the longest dependency chain is 3–4 links deep, arranged around a single **gateway discovery** the problem cannot start without. The solver progresses by sequential "aha" steps.
- **Parallel (breadth) — reads as bookkeeping.** Several conditions that must all be tracked *simultaneously* throughout the problem. The solver's difficulty is "don't forget any of them" — a state table updated in parallel — not "reason your way to the next unlock."

**Difficulty should come from the DEPTH of the graph (a long serial unlock chain), not from its BREADTH (many simultaneous states).** Concretely, when arranging the 5–7 nodes:

- Include **exactly one gateway node**: a discovery (candidate/transform/symmetry/invariant) without which nothing else is reachable. Delete it and the problem has no entry point.
- Chain **1–3 deep nodes serially behind the gateway**, each latent until the previous is solved. This is where depth lives.
- Include the **≥2 structural false trails** (see below) as *reasoning traps*, not notational clutter.
- Add **1–2 verification nodes** (equality-case reconstruction, forced uniqueness) as the closing lock.
- Keep the number of states that must be tracked **at the same time** to **≤ 2–3**. If it exceeds that, you are adding breadth, not depth.

**Three tests that separate a real node from bookkeeping** (apply to each node before keeping it):

1. **One-sentence test.** State the decisive step in one plain sentence. If it reads "track / update / enumerate / sweep over many cases," it is bookkeeping. If it reads "recognize / construct / prove forced," it is a real node.
2. **Deletion test.** Remove the node. If the problem is *still solvable but longer*, the node is bookkeeping — cut it, it does not count toward 5–7. If the problem *collapses*, the node is load-bearing — keep it.
3. **Independence test.** If a node's condition can be solved separately from the others and concatenated, it is a parallel sub-problem, not overlapping difficulty — the framing is decorative.

Reject or rebalance a draft whose difficulty is carried by breadth: convert simultaneous conditions into a serial unlock chain, or replace the tracked states with a single hidden invariant that compresses them. This is enforced by Probe P7 (Depth-vs-Breadth Test) in `skills/_shared/triviality_probe.md`. Design *toward* passing it, do not discover the failure at save time.

## False Trails

A frontier problem should include at least two plausible attack routes that fail for structural reasons.

Good false trails:

- direct factorization works partly but hides the required orbit or stabilizer,
- brute-force moment matching gives data but misses orthogonality or positivity,
- small cases suggest a false recurrence,
- relaxation gives the right-looking bound but no equality certificate,
- a named theorem applies to an intermediate object but not to the requested output.

Bad false trails:

- ambiguous wording,
- missing definitions,
- arithmetic traps,
- intentionally misleading notation,
- adding irrelevant variables or phases.

## Output Format and Verifiability

The final requested output must be a single concrete object with an exact comparison target: a matrix, vector, finite set, rational function, canonical form, constructed object, or exact expression.

Avoid asking for an "ordinary generating function" or "closed form" unless the desired representation is explicitly specified. If an implicit or coefficient-extraction form is acceptable, define that normal form in the prompt and ask for a finite component such as a rational factor, matrix, vector, or finite parameter list.

Checklist:

- The model should know when to stop.
- The answer should be reliably comparable by a grader.
- All notation used in the final answer should be defined in the prompt.
- Do not make the final answer a verbose sentence.
- Do not ask for multiple unrelated outputs.

## Computational Load

Some computation is acceptable, especially exact small-dimensional algebra, but it must not be the main difficulty.

Allowed:

- a short Euclidean table after discovering the right Weyl function,
- a small matrix or polynomial certificate,
- a finite recurrence derived from a hidden invariant,
- a few exact coefficient comparisons used as verification.

Not allowed:

- long arithmetic tables,
- large case enumerations,
- brute-force search disguised as theory,
- parameter inflation as the primary hardening method.

## Hand-Auditable Final Evaluation

Do not create a problem whose intended solution reaches a correct recurrence, transfer matrix, dynamic program, character sum, sign filter, coefficient extraction, or finite search and then obtains the final answer only by running an unshown computation. A recurrence or formula is not enough when the requested answer is the numerical/vector/polynomial output of a large evaluation.

Before finalizing a problem, verify that the final evaluation is self-contained and hand-auditable. At least one of the following must be true:

- the remaining calculation is genuinely small enough to show completely in the written solution;
- the computation collapses to a short closed-form factorization, orbit decomposition, quotient, determinant, certificate, or normal form whose entries can be verified by hand;
- the final answer itself is a certificate that can be checked directly by a few exact substitutions, matrix products, identities, or inequalities.

Reject or redesign the draft if the solution would need phrases such as "running the recurrence gives", "a computer evaluation gives", "expanding the finite sum gives", "by dynamic programming", or "by exhaustive search" to produce the final answer. Checkpoint tables, pseudocode, or executable code may be useful for verification, but they do not make a frontier submission self-contained when the core answer depends on a large hidden evaluation.

## Scalar-Depth Defense

A bare scalar final answer (a single exact integer, rational, or algebraic constant, typically under Problem Type `Exact computation`) is **not** a weakness by itself. It only indicates a shallow problem when the scalar is reachable by a single theorem substitution, a short direct computation, or a brute-force/numeric side-channel — in that case the fix is to deepen the underlying machinery, not merely to change the answer's shape.

Before accepting a scalar answer (in `math-clone`, `math-harder`, `math-solve`, or `math-check`), write a **scalar-depth defense**: a short, concrete note stating why this particular scalar cannot be reached except through the intended hidden structure. A valid defense typically shows at least one of:

- the scalar is the final compressed output of a chain of 5–7 nonroutine dependency-graph nodes (per this guide's Frontier Design Requirements), not a one-step evaluation;
- no direct theorem substitution or standard formula produces it;
- no brute-force enumeration, numeric search, or symbolic-fitting side-channel recovers it without the intended derivation (see the P5 test in `skills/_shared/triviality_probe.md`);
- the Triviality Probe in `skills/_shared/triviality_probe.md` passes all eight tests against the scalar-answer draft.

If a richer Answer Type (vector, canonical form, set, polynomial, etc.) honestly fits the same requested object, prefer it for diversity — but never contort a naturally scalar answer into a tuple just to avoid the scalar label, and never treat a reshape as a substitute for writing the defense or adding real depth. This preference is now bounded by the Answer Length Gate in `skills/_shared/hard_gates.md`: the richer object, written out in full with no shorthand aliases, must still fit under 100 characters (`$` and whitespace excluded). A structurally rich but oversized object (a dense 5x5+ matrix, a 6+ component vector, a high-degree polynomial with many nonzero terms) is no longer an acceptable substitute for a scalar-depth defense — keep it small/parametrized, or write the defense and stay with the scalar.

If no defense can be written — the scalar really is a one-step read-off — redesign so the answer is a symbolic expression, vector, ordered pair, function, or another non-scalar form, or deepen the machinery until a defense can honestly be written.

## Answer Length Feasibility (pick a type that fits, before you compact)

The Answer Length Gate lives in `skills/_shared/hard_gates.md`; this section is the design-time companion: how to judge, *before writing the object out*, whether an Answer Type will fit under 100 characters, so length is caught when the type is chosen (`math-clone`, `math-harder`, `math-change-answer-type`), not as a surprise failure at `rainier-submit`. Only reach for the Answer Compaction Patterns below once you have confirmed the honest object genuinely will not fit.

**The budget is not a score.** User-confirmed current-flow answers span roughly 27–101 stripped characters (compliant answers stay ≤98; a rare pre-gate outlier reached 101 — see `passed_exemplars.md` → Extracted corpus facts). A short exact scalar or map is acceptable when the derivation is deep, the target is non-degenerate, and P5 is independently blocked; a longer answer is not stronger merely because it approaches 100 characters. Never pad the requested object to imitate an earlier accepted answer.

**The gate constrains how *big* the requested object is, not what *kind* it is.** LaTeX control words and structural markup all count toward the 100 (`\frac`, `\sqrt`, `\begin{pmatrix}`, `\left`, `\right`, `{`, `}`, `&`, `\\`, …), but most bonus Answer Types still sit comfortably under the limit in their honest short form. So there is **no length excuse for retreating to a bare scalar** — a vector, tuple, interval, congruence, or closed-form function almost never risks the gate.

Worked counts (strip every `$` and whitespace, then count what remains — `\boxed` wrapper not counted):

- `$\frac{\sqrt{5}-1}{2}$` → `\frac{\sqrt{5}-1}{2}` → **20 chars → PASS**.
- A `4\times4` rational matrix as `\begin{pmatrix}…\end{pmatrix}`: the `\begin{pmatrix}`/`\end{pmatrix}` wrappers alone are ~30 chars, so any nontrivial entries push it over → **likely FAIL**.

Typical short forms by Answer Type — eyeball this before committing to a type:

| Answer Type | Typical short form | Approx. chars | Under limit? |
|---|---|---:|---|
| Vector (small) | `(3,-1,2)` or `(a,b,c)` | ~8–15 | Yes, easily |
| Tuple or ordered list (≤3) | `(\tfrac12,\,7,\,-3)` | ~15–20 | Yes, easily |
| Interval or region | `[0,\tfrac12)\cup(1,2]` | ~15–20 | Yes, easily |
| Equation / inequality / congruence | `x^2\equiv3\pmod{11}` | ~15–20 | Yes, easily |
| Function or mapping (closed form) | `f(x)=x^2\bmod 7` | ~15–20 | Yes, easily |
| Set or multiset (few members) | `\{2,3,5,7\}` | ~10 | Yes, easily |
| Polynomial (low degree) | `x^3-2x+1` | ~10 | Yes, easily |
| Canonical form (small) | `\operatorname{diag}(1,1,-1)` | ~25 | Usually yes |
| Matrix (≤2×2 simple) | `\begin{pmatrix}0&1\\1&0\end{pmatrix}` | ~35 | Often, if small |

**Length-risky Answer Types — sanity-check the character count *before choosing* them:**

- **Matrix / Canonical form** — the `\begin{pmatrix}` wrappers plus more than a few nontrivial entries usually exceed 100; anything ≥ `3\times3` with multi-term rational entries almost never fits.
- **Polynomial or rational function** — high degree or many nonzero terms (each `x^{k}` costs characters) exceeds fast.
- **Sequence or series representation / Set or multiset / Tuple** — more than a handful of nontrivial members exceeds fast.

If the honest final object is one of these and cannot be stated under 100 characters, do **not** shrink it by inflating difficulty elsewhere or by shipping a violating answer — first try a compaction pattern below, and if none passes the Answer Compaction Gate, redesign the *requested output* via `math-change-answer-type`. Never enlarge the requested object to add difficulty; deepen the hidden dependency graph instead.

## Answer Compaction Patterns

When the natural final object would exceed the Answer Length Gate (under 100 characters, `$`/whitespace excluded, `\boxed` wrapper not counted), compact it — but only via a pattern that passes the Answer Compaction Gate in `skills/_shared/hard_gates.md`.

**Approved** (pass the gate):

| Pattern | Why it passes the gate | Caveat |
|---|---|---|
| Evaluate the object at one fixed point or parameter | The full derivation is still required to produce one correct value; matches existing accepted precedent | The point must be non-degenerate — it must not zero out or trivialize most of the derivation; still needs a written scalar-depth defense |
| Rigid intrinsic invariant of one object (trace, determinant, norm, product of entries, alternating sum) | Error-sensitive by construction — a wrong entry almost never leaves the invariant unchanged | Must be an operation on the one object the problem already produces, never a combination of separately-posed sub-answers |
| One coefficient, entry, or residue of a larger object | Same logic as evaluation — a single well-defined slot | Only if reaching that slot honestly has no shortcut that bypasses deriving the rest |
| Closed-form symbolic expression with inline-defined shorthand | Already the project's default fallback Answer Type; naturally short | Standard `Exact symbolic expression` rules still apply |

**Discouraged** (needs explicit written justification, and may still fail the gate):

| Pattern | Risk |
|---|---|
| Sum or generic combine of independently-solved sub-answers (e.g. "compute 4 variables, report their sum") | Compensating errors across components can still hit the right total; a reviewer cannot verify each piece from the single number; often cheapens brute-force or numeric-fit search, raising P5 risk |
| Count, parity, or existence-flag replacing the full object | Silently downgrades the Problem Type to something shallower; contradicts the project's rich, non-degenerate-answer standard (`skills/_shared/passed_exemplars.md`) |
| Small-modulus residue (mod 2, mod 3, last digit) | Same parity-shortcut risk as above — a generic or large modulus is safer than a tiny one |

**The distinguishing tell**: if the "N variables" being combined are N *independent* sub-problems bundled only because the answer needed to shrink, that is the discouraged sum-of-parts pattern. If they are the components of one single intrinsic object (a matrix's diagonal, a vector's entries) and the requested operation is a standard invariant of *that* object, it is the approved trace/norm pattern — same arithmetic shape on the page, different design history and risk profile. The deciding question is gate condition 4: was there one object first, or did the answer get assembled after the fact just to fit the character limit? A second, equally important question comes from condition 4's wording: did compacting force the *statement* to construct that object? An invariant of an object the solver builds is fine; an invariant of an object the statement had to spell out a recipe for has leaked the route (Probe P6).

## Specify, Do Not Construct

The statement must **specify** the requested object — say what it is, or give a condition that pins it down uniquely — without **constructing** it, i.e. without spelling out the recipe that produces it when that recipe is an early step of the intended solution. Writing the construction into the statement hands the solver the route; the object should be something the solver must build. (Defining a genuinely new custom class the solver then reasons about is fine — that defines the playing field, not the winning move. The line is: does the definition double as the solution's first computational step?)

This is enforced by Probe P6 (Route-Concession Test) in `skills/_shared/triviality_probe.md`. Design *toward* passing it, do not discover the failure at save time.

**Compaction preference order.** When the honest final object exceeds the 100-character Answer Length Gate, do not shrink it by defining machinery in the statement. Prefer, in order:
1. A naturally short **direct** answer — the requested object is itself small (a low-degree polynomial, a length-3 vector, a small finite set) so no compaction is needed and nothing extra is defined.
2. An **intrinsic invariant of an object the solver builds from the input** (trace, determinant, norm, product of entries) — error-sensitive and short, and crucially it does **not** drag the object's construction into the statement, because the object comes from the input data.
3. Only last, a quantity extracted from an object that must be defined — and only if it clears P6 sub-test 6c and the Answer Compaction Gate (`skills/_shared/hard_gates.md`, condition 4). If it cannot, change the requested output via `math-change-answer-type` rather than leaking the construction.

## Difficulty–Length Orthogonality (how to stay hard under the gate)

The Answer Length Gate does not cap difficulty; it caps the *size of the printed answer object*. These are two orthogonal axes **whenever the requested object has an intrinsically bounded size.** A single integer, a primitive ray, or a solution set that compresses to `\pm r \pmod m` cannot enlarge no matter how many obstructions you intersect to isolate it — harder isolation of the same object does not enlarge that object. An object whose size is *coupled* to the mathematics (a generating function's denominator degree tracks its transfer-state count; a general law `a(n)=…` gains markup per obstruction) does grow with every added obstruction.

**Core principle:** choose an output object whose size is intrinsically bounded, then pour all difficulty into the hidden dependency graph — never into the printed object.

**Length-neutral hardening moves — safe to stack indefinitely** (each pours difficulty into *why* the value is forced, not into the object's structure): a hidden invariant that changes why the value is forced, not the value itself; a second independent obstruction on a `max`/intersection/solution-set answer (adds a non-dominance proof, not a term); equality-case reconstruction that hides the modulus/target/extremizer while leaving the printed object unchanged; global-to-local forcing; and meaningful iteration or phases where the target is defined as a periodic point or late orbit step, so the added depth lives in the hidden part, not the printed object.

**Length-inflating moves — avoid, or reshape first:** composing a second area *when the new area attaches structure to the object itself* (extra transfer states → higher denominator degree); roots-of-unity/parity filters not engineered to collapse (generically double a generating function's denominator degree); and any deliberate enlargement of the requested object to "look harder."

**Golden check (apply after every hardening move):** if adding an obstruction lengthens the answer by even one character, that obstruction is touching the *object's structure*, not the hidden graph. Keep the technique but **reshape the requested output** to a bounded invariant of the object (trace, determinant, one designated entry, a characteristic-polynomial coefficient, cardinality, an extremal member) via `math-change-answer-type` — do **not** drop the technique and do **not** ship the longer answer.

See `skills/math-harder/SKILL.md` Techniques A–O for which specific techniques are length-neutral vs length-inflating.

## Model-Breaker Audit

Before saving or overwriting a problem, explicitly identify:

- the intended 5 to 7 hidden reasoning nodes,
- at least two plausible model attack routes,
- why each attack route fails without the intended structure,
- why the final answer is unique and checkable,
- why the problem is not a parameter variant of an existing source.

If the audit reveals a direct named-theorem shortcut, an obvious symbolic-computation route, or an output-format ambiguity, redesign before saving.
