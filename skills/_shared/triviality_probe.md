# Triviality Probe

A small set of **mandatory, quantitative tests** that catch the recurring ways a frontier problem turns out to be too easy for current models. Unlike the long quality checklists, the probe is not a list of yes/no checkboxes to skim. Each test forces you to **write down a concrete number or a concrete answer** in your design/audit notes. A problem may not be saved, overwritten, or declared ready until all eight probe results are recorded and pass.

## Why this file exists

The authoring and audit skills already contain rules against shallow problems (hand-solvability, no-computation-masquerade, collapsible iteration). Those rules did not bite: every problem in a recent 15-problem batch still violated at least one of them, because the rules were skimmed as abstract checkboxes and silently marked "pass." The probe replaces "do you think it's hand-solvable?" with "**state the size of the search space**" — a question you cannot fake by ticking a box.

Run the eight probes below. Record the literal output of each in your notes (for authoring/hardening) or in the report (for auditing).

**Two enforcement tiers (calibration).** Passing every probe at REJECT-strength is the *model-stump tier* — aspirational, matching the written "stumps at least one frontier model" requirement. The *observed portal acceptance bar* is lower: a bespoke gateway, a dependent derivation, a closure certificate, and a natural compact answer (see `passed_exemplars.md`), and real accepted problems routinely carry a named-recipe core or a printed intermediate. So the probes split into two tiers:

- **HARD** — a REJECT blocks the problem (report **Critical** in `math-check`; redesign before shipping): **P1** brute-force finite search, **P2** decoration, **P3** degenerate/ill-posed answer, **P5** answer recoverable by side-channel, **P7 sub-tests 7a/7b** (breadth-dominant / too many simultaneous states), and **P8** terminology-density (≥4 bespoke terms, or >3 definitions held simultaneously, or any invented term/notation that duplicates a standard taxonomy name — with ≤2 strongly preferred below the hard cap).
- **SOFT-WARNING** — a REJECT is a strong warning, not an automatic block, on a problem that otherwise matches the accepted profile: **P4** retrievable-name and skeleton-reuse, **P6** route-concession, and the **P7 5–7-node count**. Prefer to fix, but do not force endless redesign of a design that already matches the accepted profile; for `math-check`, report a SOFT-WARNING as **Moderate**, not Critical.

If a HARD probe trips REJECT, the problem is too easy as written. If only SOFT probes trip and the accepted-profile fingerprint (`passed_exemplars.md`) holds, the problem may still ship — record the warning and move on.

**HARD probes are non-waivable.** A **P2** or **P8** REJECT (like any hard-tier REJECT) can **never** be downgraded to a WARN, and the accepted-profile fingerprint does **not** excuse it — matching `passed_exemplars.md` waives only the SOFT-tier lines. P2 (decoration) and P8 (terminology-density) must read **PASS** before a problem is saved, overwritten, hardened, checked "ready", or submitted; there is no ship-with-warning path for either. Fix the design until both pass.

**P2/P8 are statement-surface repairs — auto-fix first, as a pre-pass ahead of the Stump-Check Gate.** Unlike P1/P5/P7 (which need a difficulty redesign), a P2 or P8 REJECT is fixed by editing the *statement only*: strip the decoration (P2), or condense — merge chained bespoke objects into one custom class, inline auxiliary quantities into the question, delete narrative flavor (P8). In the `math-clone` and `math-harder` flows this runs as a **pre-pass BEFORE the Stump-Check Gate** (`stump_gate.md`): on a P2/P8 REJECT, apply the answer-preserving repair and re-run P2/P8 to PASS **before** spending any gpt-5.4 stump attempt — never stump-check (or save) a draft that still fails P2/P8. The repair must leave the intended exact answer and the intended solution's difficulty **unchanged** — it only removes or condenses surface language; re-confirm the intended answer after repairing. Escalate to a full redesign only if no answer-preserving edit can bring P2/P8 to PASS.

---

## Probe 1 — State-Space Count

**Question to answer in writing:** *If the intended solution can be carried out by simulating, enumerating, searching, or DFS-ing over a set of states/cases, how many elements does that set have? Give the literal number (or a tight bound).*

- If the answer is "the intended solution does not reduce to enumerating any finite set" — state **why** (e.g. the answer is a limit / asymptotic / closed-form law, or a symbolic object over an unbounded parameter `n`). Then Probe 1 passes.
- **REJECT** if a correct answer is obtainable by enumerating/simulating a set that a program can exhaust — as a rule of thumb, fewer than about `10^7` states, **and** the states are mechanically generated from the statement (companion-matrix orbits, bounded tuples, finite trees, walks of bounded length, principal minors, etc.).

This is the single most important probe. Frontier dressing (ordinals, dynamical systems, well-founded trees, orbit enumerators) routinely hides a finite search that a model just codes up.

**Do not "fix" a P1 failure by enlarging the finite instance.** Pushing a fixed index to a few thousand, or to `F_3^8`, or to a degree-13 expansion, does not make the problem harder for a machine — it just moves the problem from "small enumeration" to "large enumeration / heavy exact arithmetic," both of which a machine does comfortably while the human now needs code. That is a *more computational* problem, i.e. **easier for models and harder for humans — the exact inversion we are trying to avoid.** The only legitimate ways past P1 are: take a genuine limit/asymptotic, ask for the general law over a free parameter `n`, or hide a structural invariant so the finite instance is solved by a few lines of reasoning rather than by exhausting it. A large fixed state space that still must be traversed is a P1 REJECT, not a pass.

*Anti-pattern examples actually observed:*
- A dynamical-systems orbit enumerator over `F_3^8 × F_3`: the solution literally tabulated all **41 base cycles** of a `19683`-state space and counted. State-space count ≈ `59049` — trivially exhaustible. REJECT.
- A "computability / mind-change" problem phrased with `ω^3, ω^2, …` whose answer was the vector **(3, 6, 4)**; the solution found it by "exact finite DFS" over `67`, `463`, `470` cached states. REJECT.
- A "set theory / ordinal rank" problem whose rank reduced to the **length of the longest descending chain**, computed by "a finite dynamic-programming sweep." The `ω·n + d` notation was decoration over a small DP. REJECT.

---

## Probe 2 — Decoration-Deletion Test

**Question to answer in writing:** *List every distinct structural component of the statement: each family of objects, each defining clause, each constraint, each non-trivial coefficient or exponent block. For each one, answer: if I delete or trivialize this component, does the final answer change? Write the component and Yes/No.*

- Every component must be **Yes** (deleting it changes the answer). A component marked **No** is decoration: it inflates apparent difficulty without contributing to the answer.
- **REJECT / strip** any component marked **No**. Either remove it (if it was pure dressing) or redesign so it becomes load-bearing.

*Anti-pattern examples actually observed:*
- A point-set-topology problem defined elaborate two-branch families `D^ε, E^ε, F^ε` with exponents like `2^{-(5a+2b+2c+d+e+ε)}`. The solution admitted: *"the two-branch D/E/F construction changes the first three derivative layers but does not create any extra fourth-layer points"* — i.e. the entire intricate construction was **No** for the requested `X^(4) \ X^(5)`. REJECT.
- An ODE problem wrapped a degree-9 right-hand side and a nested differential operator around what the solution solved by *"comparing coefficients gives a linear system in a_0..a_5."* The scary ODE machinery was decoration over a 6-unknown linear solve. REJECT.

---

## Probe 3 — Answer-Triviality Test

**Question to answer in writing:** *State the intended final answer literally. Is it one of: `0`, the zero object, an identity matrix, an all-ones / all-equal tuple like `(1,1,…,1)`, an empty set, "does not exist," or "not well-defined"?*

- **REJECT** if the answer is a degenerate or "gotcha" value of this kind. These reward no genuine machinery: a careful model reaches them immediately, and they read as a trick rather than depth. (A genuinely deep problem can have a small scalar answer — see the Scalar Answers policy in `frontier_authoring_guide` and the skills — but a *degenerate* answer is different from a *small* one.)
- Also **REJECT** any problem whose own intended solution concludes the statement is **ill-posed / not well-defined**: that is a broken problem, not a hard one.

*Anti-pattern examples actually observed:*
- A module-theory problem with an intimidating `6×6` polynomial presentation matrix over `F_3` whose answer was **(1,1,1,1,1,1)** because the quotient module `N` was actually `0`. The big matrix was a bluff. REJECT.
- A bifurcation-theory problem whose own solution returned **"not well-defined"** (the 4th iterate had identity linear part, so the normal form was non-unique). Ill-posed, not hard. REJECT — and see Probe 4's normal-form note.

---

## Probe 4 — Core-Reduces-To Test

**Question to answer in writing:** *In one sentence, name the decisive step of the intended solution — the step that, once taken, makes the rest mechanical.*

- **WARNING (soft tier — see the two-tier note above)** if that decisive step has any *retrievable name* — a theorem, transform, algorithm, normal form, or standard certificate a competent model would recognize on sight and cite, then crank. Ask literally: "could a solver name this step in a few words that another mathematician would look up?" A yes correlates strongly with a high model solve rate, so it is a real signal to prefer a nameless discovery — but the portal accepts named-recipe problems when a genuine bespoke gateway (a discovery that must be made *before* the named step becomes usable) surrounds it, so a bare name-match is a warning, not an automatic block. **Escalate to hard-REJECT only** when the named recipe is the *entire* decisive content with no bespoke setup discovery — pure recognize-the-machine-and-crank, nothing to discover first. This is an **open test, not a checklist** — the following are only examples of the kind of thing it catches, not the full set:
  - "match coefficients and solve a linear system,"
  - "compute a Schur complement / project out a nuisance block,"
  - "test positive-semidefiniteness via principal minors,"
  - "build a trace/pairing matrix, take adjugate, read off Smith / determinantal divisors,"
  - "enumerate the cases / cycles / states and count,"
  - "run the exact recurrence (CG steps, transfer matrix, DP) and read the coefficients,"
  - "recognize [Orthogonal Procrustes / oddtown / von Neumann projection / a Möbius/Christoffel–Darboux/Kalman–DARE/Hahn-polynomial identity / any named theorem] and substitute the data,"
  - "carry out exact arithmetic carefully without making a slip."
- The real-response archive records that on-sight named-recipe recognition is the single most common way models crack this project's problems — and the specific names above appeared hundreds of times across model traces while sitting *outside* the original seven-item list, which is exactly why the criterion must be the open question, not the list. These are **template cores**: the decisive step is recognizing which standard machine to crank, after which the difficulty is bookkeeping or arithmetic precision — exactly where models beat humans. A frontier problem's decisive step must be a *discovery* (a hidden invariant, the right quotient/transform, an obstruction, an equality case) with no retrievable name, without which the computation does not even start. Target the **decisive** step only (the one that makes the rest mechanical), not every named tool used somewhere along the way.

### Template-overlap sub-check (workspace-wide)

When authoring or hardening, also record the **technique skeleton** of the decisive step (e.g. `Schur-complement-projection`, `principal-minor-PSD`, `trace→adjugate→Smith`, `transfer-matrix→rational-GF`, `finite-cycle-enumeration`). Then actually **count** it: prefer reading the planned decisive skeleton's `saturation_count` from `workspace/frontier-problem/mechanism_registry.md` (match against its `decisive_skeleton` column), falling back to counting the decisive-technique column of `workspace/frontier-problem/used_concept_map.md` (the precomputed per-problem index — one file, no folder sweep; fall back further to `grep -rli "<skeleton keyword>" workspace/frontier-problem/*/solution.md` only if the index is missing or stale) only if the registry is missing or stale. Write the count into the P4 line of the Probe Results Block (`workspace reuse=<count>`). If the same skeleton already appears **two or more times** across the workspace (regardless of domain), that is a **WARNING (soft tier)**: strongly prefer a different decisive mechanism, because a repeated skeleton lets a model pattern-match the line of attack across the whole batch. It is not an automatic block — accepted problems reuse whole certificate families (dual/slack, active-set/KKT) and still pass review — but recording the count is mandatory, not optional: the dual/slack-certificate skeleton reached 7 workspace-wide instances and the active-set/KKT skeleton 13+ precisely because it was never enforced.

*Anti-pattern examples actually observed:* the Schur-complement-projection skeleton appeared in three separate problems (a limit-theorems residual covariance, a statistical-inference Fisher-information block, and a boundary-value Dirichlet-to-Neumann compression). Across the batch this becomes a recognizable house style.

### Normal-form well-posedness note

If the requested object is a normal form, canonical form, or the result of "eliminating all non-resonant terms / reducing to standard form," you must state the **unique** normalization convention that pins it down. If any residual freedom remains (e.g. a resonant linear part where every monomial is resonant, so the normal form is not unique), the problem is ill-posed — fix the convention or **REJECT** (this is the failure mode of the bifurcation problem in Probe 3).

---

## Probe 5 — Reverse-Engineering / Answer-Recoverability Test

**Question to answer in writing:** *Forget the intended solution. Can a model recover the literal final answer by a brute-force / numerical / search side-channel that bypasses the intended insight entirely — even if the "solution" it then writes is hand-waving? Because graders compare the final answer, recovering the answer by any route is a win for the model.*

This probe is distinct from P1. P1 asks whether the **intended** path is an enumeration. P5 asks whether **any parallel shortcut** lands on the same answer object, regardless of the intended path. A problem can have a genuinely deep intended solution (P1 PASS) and still fail here, because a second, illegitimate route reaches the number first. As a domain expert put it: *with small inputs, models just run brute-force code to get the answer, then reason backwards.* Graders see only the answer, so the model scores without any insight.

Check each side-channel against the problem's actual data:

- **Direct enumeration of the answer**: are the input parameters small/finite enough that a program can compute the requested object directly (iterate the map, sum the series to convergence, solve the finite linear system, factor the integer, diagonalize the small matrix, run the recurrence to the requested index)? If the answer is a fixed object over fixed small data, assume the model can brute-force it.
- **Numerical-then-recognize**: can the answer be obtained numerically and then snapped to a closed form (PSLQ / inverse-symbolic / rational reconstruction / `lindep`)? Constants, rationals with modest denominators, and algebraic numbers are especially exposed.
- **Search over the answer space**: is the answer drawn from a small or enumerable space (a small finite set, a low-degree polynomial with bounded coefficients, a permutation, a partition) that a model can search and verify against the conditions?
- **Guess-and-check**: can a plausible answer be verified cheaply against the problem's own conditions, so the model guesses then confirms without deriving?

- **REJECT** if any side-channel recovers the answer using only the stated data and ordinary compute. The fix is **not** bigger numbers (that often makes brute force *easier* relative to a human and never removes the numerical/recognition channel). The fix is to make the answer **not a fixed object over fixed data**: ask for a general law over a free parameter `n`, a limit/asymptotic a finite computation cannot reach, an object whose verification is itself as hard as the derivation, or a result that depends on a structural characterization rather than a computable instance.

*Anti-pattern examples actually observed:* the dynamical-systems orbit enumerator, the ordinal-rank `(3,6,4)` problem, and the small-tuple ordinal problem all have answers a model recovers by running the finite system directly over the given small data — the ordinal notation is irrelevant to the side-channel. Each is a P5 REJECT even before considering the intended path.

### Small-input / small-answer calibration flag

Independently of the side-channel analysis, record the **magnitude of the inputs and of the answer**. Small fixed integer inputs (single-digit tuples, tiny fields like `F_3`, low dimensions) and small literal answers (single-digit integers, low-denominator rationals, short integer vectors) correlate strongly with a problem being **rated easy** by graders *and* with the brute-force side-channel being available — the two reinforce each other. This is not an automatic REJECT, but it is a **warning flag**: a small-data, small-answer problem must clear P5 convincingly and must carry its difficulty in a structural insight that survives even when the answer is trivially checkable. When in doubt, generalize the input to a free parameter and ask for the law, which removes both the side-channel and the "looks easy" signal at once.

---

## Probe 6 — Route-Concession Test

The statement is allowed to **specify** the requested object (say what it is, pin it down uniquely). It is not allowed to **construct** it (spell out the recipe that produces it) when that recipe is an early step of the intended solution — that hands the solver the route. This probe exists because compacting the answer to fit the 100-character Answer Length Gate pushes designers to define a rich object in the statement so a short quantity can be extracted from it, and that definition leaks the method. P6 complements P4: P4 asks whether the decisive step has a retrievable *name*; P6 asks whether the statement itself already *performs* the decisive step.

**Questions to answer in writing (all three sub-tests):**

**6a — Specify vs Construct.** List every object the statement defines. For each, mark `SPECIFY` (states what it is, or a uniqueness condition that pins it down) or `CONSTRUCT` (gives the step-by-step recipe that produces it). A `CONSTRUCT` is a leak suspect: a recipe is executable, so the solver runs it instead of discovering it. Distinguish the legitimate case — defining a **custom class or object the solver must then reason about** (authoring pattern 2 in `skills/_shared/frontier_authoring_guide.md`) is fine, because the recipe defines the playing field, not the winning move — from the REJECT case, where the recipe *is* an early step of the intended derivation.

**6b — Longest-step diff (mechanical).** Take `solution.md`'s longest or most-bespoke step (most lines, or the most careful first-principles argument). Does the statement already define the object that step derives? **WARNING (soft tier)** if yes: the problem's hardest step is conceded in the statement, so no solver is forced to take it — a strong reason to redesign so the solver must take it, but the portal accepts problems that print an intermediate when the genuine gateway discovery lives elsewhere, so this is a warning, not an automatic block. (This is the archive's proven "diff statement definitions against the longest solution step" test.)

**6c — Compaction-forced definition.** If the answer is a quantity *extracted* from an object (a rank, a value at a point, a set of parameters where a condition holds, one coefficient): does that object arise naturally from the input data, or was it constructed in the statement **only** so the quantity could be posed? **WARNING (soft tier)** if constructed-only. Prefer the fix — change the requested output (via `math-change-answer-type`) or ask for a naturally short direct object rather than keep the construction in the statement — but it is a warning, not a hard block when the accepted profile otherwise holds. Cross-check the reworded condition 4 of the Answer Compaction Gate in `skills/_shared/hard_gates.md`.

**Worked calibration (real problems in `docs/passed-examples/`):**
- **problem01-stochastic-processes — PASS.** The statement gives input matrices A, B, P and the objective I(K), then asks for the matrix K minimizing it. 6a: all SPECIFY (K is the unique minimizer, never constructed). 6b: the solution's longest step derives the exponential-tilt minimizer form, an object the statement does not define. 6c: the answer *is* K — no extraction, no compaction.
- **problem04-spectral-theory — PASS (borderline).** The statement does spell out the two "shadow" transforms, but the decisive derivation (moment→Jacobi reconstruction) is not in the statement, and the answer is the matrix K itself with no compaction-forced extraction. 6b passes because the longest step derives the un-conceded reconstruction.
- **A Sinkhorn-iteration-written-out statement asking "the set of t where rank(limit) = n+1" — REJECT on 6b and 6c.** The statement writes out the row/column normalization iteration (the solution's first move → 6b conceded), and the limiting matrix exists in the statement only so its rank can be asked about (→ 6c constructed-only). Fix: ask for an intrinsic invariant of an object built from the input, or change the requested output.

---

## Probe 7 — Depth-vs-Breadth Test

**Question to answer in writing:** *Are the problem's hidden nodes arranged as a serial unlock chain around one gateway discovery, or as several conditions the solver must track simultaneously?*

**7a — Arrangement.** Classify the node graph as serial (node B only opens after node A is solved; longest chain 3–4 links deep around one gateway discovery) or parallel (multiple conditions tracked at once, no single discovery unlocks the rest). **REJECT** if parallel/breadth-dominant.

**7b — Simultaneous-state count.** State the number of distinct states/conditions the solver must hold in mind at the same time at any point in the intended solution. **REJECT** if this exceeds 2–3.

**7c — Node-quality tests.** Apply to every node claimed toward the 5–7 count:
- *One-sentence test*: state the node's decisive step in one plain sentence. "Track / update / enumerate / sweep over many cases" → bookkeeping, not a real node. "Recognize / construct / prove forced" → real node.
- *Deletion test*: remove the node. If the problem is still solvable but merely longer, the node is bookkeeping — it does not count toward 5–7. If the problem collapses, it is load-bearing.
- *Independence test*: if the node's condition can be solved separately from the others and concatenated, it is a parallel sub-problem dressed as depth, not overlapping difficulty.

**REJECT (hard tier)** if 7a/7b indicate breadth-dominant difficulty — a parallel arrangement, or more than 2–3 states held simultaneously. The node-count itself is a **target, not a hard floor**: 5–7 genuine serial nodes is the aim, but a shorter honest serial chain (3–4 real load-bearing nodes around one gateway discovery) that passes 7a/7b is acceptable — do not pad with bookkeeping nodes to reach 5–7. A node that fails the deletion test is a **WARNING (soft tier)** to remove or merge it, not an automatic reject.

*This is distinct from Probe P4 (does the decisive step have a retrievable name?) and Probe P6 (does the statement concede a step?) — a problem can pass both cleanly and still fail P7 by spreading its genuine difficulty across many simultaneous conditions instead of one deep chain.*

---

## Probe 8 — Terminology-Density Test

**Question to answer in writing:** *Count every bespoke defined term the statement introduces — each custom class, each named predicate (e.g. "coherent", "3-tight", "deck-compatible"), each auxiliary quantity or notation (e.g. `\Delta_h`, `\mathcal{C}_h`, a "corrected span score"). Give the literal count `N`. Separately, state the maximum number of these definitions a reader must hold in mind at once to parse the requested question. Then, for each bespoke term, name the standard taxonomy/textbook term for the same concept if one exists.*

- **PASS** if `N ≤ 3` well-motivated objects, the question stands on at most 3 simultaneous definitions, **and** no bespoke term duplicates a concept that already has a standard name in the problem's Domain/Sub-domain. **≤ 2 is strongly preferred**: treat 3 as a soft ceiling to justify, not a target — fewer bespoke terms is always better, and a draft that needs all 3 should be re-examined for a merge.
- **REJECT** if `N ≥ 4`, **or** the reader must juggle more than 3 definitions at once, **or** any invented term/notation renames a concept that already has a standard taxonomy name. The portal rejects statements that are "overly complex (many stacked definitions, especially highly contrived ones)" — this is the reviewer's **"Beyond Project Scope" / contrived-terminology** reject reason. Condense: merge chained bespoke objects into **one** custom class, inline auxiliary quantities into the question itself, and delete narrative flavor until the question stands on ≤ 3 definitions (aim for ≤ 2).

**Taxonomy-vocabulary rule (a bespoke term must earn its existence).** Prefer the standard vocabulary and notation of the problem's Domain/Sub-domain (`skills/_shared/taxonomy_slots.md`) and the standard mathematical notation of that field. A bespoke term or invented glyph is allowed **only when no standard name exists** for the concept; if a competent reader would recognize the object under an established name, use that name instead of coining a new one. Test each invented term: "does this concept already have a standard name?" — if yes, REJECT and rename. This directly serves the Smokescreen / Reverse-Engineered-Difficulty and Self-Containment gates in `skills/_shared/hard_gates.md`: invented notation is the raw material of a disguise and multiplies the definitions that can go missing or ambiguous.

**Notation minimization (do not invent several styles).** Use **one** notation, following the field's convention, per kind of object; do not introduce several parallel invented styles for the same kind of thing (e.g. simultaneously `\Delta_h`, `\mathcal{C}_h`, and a prose "corrected span score" for related auxiliary quantities). Do not attach narrative predicate names ("coherent", "3-tight") to a condition that a standard mathematical statement expresses directly — write the condition.

**Distinct from Probe P2.** P2 strips a term only when deleting it leaves the answer unchanged (decoration). P8 fires **even when every term is load-bearing** — it caps the *count and simultaneity* of definitions, and forbids renaming standard concepts, on clarity grounds — the dimension P2 cannot see. A prompt can pass P2 (every label affects the answer) and still fail P8 (too many labels stacked, or a standard concept renamed).

**REJECT (hard tier)** if `N ≥ 4`, more than 3 definitions are held simultaneously, or any bespoke term renames a standard taxonomy concept (≤ 2 preferred below the cap).

*Anti-pattern example actually observed:* a "paired order system" problem stacking `resolution`, `coherent`, `3-tight`, `deck-compatible`, the auxiliary quantities `\Delta_h` and `\mathcal{C}_h`, and a "corrected span score" — seven bespoke terms. Rejected **"Beyond Project Scope"** for terminology volume even though each term was used by the intended solution. REJECT.

---

## Probe Results Block (record this verbatim)

Authoring/hardening notes and audit reports must include:

```
Triviality Probe
  P1 State-space count: <number or "no finite enumeration; why"> → PASS / REJECT
  P2 Decoration-deletion: <each component → Yes/No> → PASS / REJECT
  P3 Answer-triviality: <literal answer; degenerate? Y/N> → PASS / REJECT
  P4 Core-reduces-to: "<one sentence>"; skeleton=<tag>; workspace reuse=<count> → PASS / REJECT
  P5 Answer-recoverability: <which side-channels checked; any recover the answer?> → PASS / REJECT
     small-input/small-answer flag: <inputs … ; answer … ; FLAG / clear>
  P6 Route-Concession: 6a <objects marked CONSTRUCT?>; 6b <longest step conceded? Y/N>; 6c <compaction-forced definition? Y/N> → PASS / REJECT
  P7 Depth-vs-Breadth: 7a <serial/parallel>; 7b <simultaneous-state count>; 7c <any node fail deletion test?> → PASS / REJECT
  P8 Terminology-density: N=<count of bespoke terms>; max simultaneous=<count>; standard-name-available for any bespoke term? <Y/N + which> → PASS / REJECT
```

A problem clears the **hard tier** when P1, P2, P3, P5, P7 (7a/7b), and P8 read PASS. The **soft-tier** lines — P4 (retrievable name / skeleton reuse), P6 (route-concession), and the P7 5–7-node count — may read WARN on a problem that otherwise matches the accepted profile (`passed_exemplars.md`) without blocking it; see the two-tier note near the top. Record every WARN, prefer to fix, but do not force redesign of a design that already matches the accepted profile. The small-input/small-answer flag is likewise a warning, not a hard gate: if FLAG is set, P5 must pass convincingly and the difficulty must live in a structural insight that survives a trivially checkable answer — otherwise prefer generalizing the input to a free parameter.

## The direction these probes enforce: less computation, more insight

Every probe pushes the same way. The recurring feedback "not hard enough for AI models" almost never means "make it more computational" — it means the opposite. Current models are *stronger* than humans at exactly the things that make a problem computational: exhaustive enumeration (P1), large exact-arithmetic grinds, long coefficient expansions, and cranking a recognized standard machine (P4). So adding computation makes a problem **easier for the model and harder for the human grader/author** — the wrong direction on both axes.

A frontier problem must invert that: the human solves it in a short, insightful argument once the hidden structure is found, while the model fails because it never finds the structure and cannot enumerate or grind its way around it. If at any point the honest answer to "is the difficulty here mostly *computation*?" is yes, the problem is mis-calibrated — redesign toward a hidden invariant, a limit/asymptotic, a quotient/transform, or an equality case, not toward more arithmetic. Bigger numbers, larger fixed state spaces, and longer expansions are never the fix.

---

## Weakness → Probe map (recurring failure modes)

| # | Failure mode | Caught by | One-line tell |
|---|---|---|---|
| 1 | Brute-forceable: intended path = finite search/DP/simulation | **P1** | solution tabulates cases, "exact finite DFS," "DP sweep," small state space |
| 2 | Decoration: intricate construction that doesn't affect the answer | **P2** | solution says "does not change," "does not create," elaborate families behind a simple answer |
| 3 | Trivial / gotcha answer (`0`, `(1,…,1)`, "not well-defined") | **P3** | big machinery, degenerate output |
| 4 | Template core (Schur, minors, Smith, coefficient-match, exact recurrence) | **P4** | decisive step is "recognize the standard machine and crank it" |
| 5 | Heavy-arithmetic difficulty (where machines beat humans) | **P4** + hand-solvability | "the difficulty is not making an arithmetic slip"; giant exact fractions |
| 6 | Ill-posed normal form / template reuse across the batch | **P4** (note + sub-check) | non-unique normalization; same skeleton repeated workspace-wide |
| 7 | Reverse-engineering: a parallel brute-force/numeric/search route recovers the answer, bypassing the intended insight (grader sees only the answer) | **P5** | small fixed inputs; answer is a computable instance, numerically recognizable constant, or searchable small object |
| 8 | Small-input/small-answer "looks easy" bias: tiny tuples / `F_3` / single-digit answers rated easy and brute-forceable | **P5** flag | single-digit integer answer, low-denominator rational, tiny field, fixed small data |
| 9 | Route concession: the statement performs the decisive step — spells out the object's construction, or defines a rich object only so a compacted quantity can be extracted from it | **P6** | the solution's longest step derives an object the statement already defines; an iteration / normal-form / construction recipe written out in the statement |
