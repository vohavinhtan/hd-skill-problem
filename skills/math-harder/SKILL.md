---
name: math-harder
description: Upgrade the difficulty of an explicitly selected active frontier problem under workspace/frontier-problem/problemNN-*/problem.md. Use when a problem was solved too easily, including when the user pastes an AI response or a linked response-archive analysis exists. Diagnoses why the problem was cracked, extracts the decisive shortcut from observed attempts, then applies targeted hardening techniques to deepen the dependency graph and block the successful approach. Overwrites problem.md with the hardened version.
user-invocable: true
disable-model-invocation: false
argument-hint: optional path and/or pasted model solution — omit only when the active problem folder is explicit from context
---

# Harden Problem

## Contract

- **Task:** harden one active `problem.md` by a large single-pass jump — stack at least two load-bearing techniques, deepen the dependency graph, block the observed solve route — then overwrite it in place.
- **Defaults (act, do not ask):** never pause to confirm an internal decision — decide and proceed (which solution/response to read, which weakness to attack, which techniques, whether to pivot taxonomy/direction, whether to rename the folder, which open slot to move to); detail in "Operating Mode" below. Resolve the target folder from context per `skills/_shared/frontier_workspace.md`; if none is unambiguous, use the most-recently-modified `workspace/frontier-problem/problemNN-*/` and state that assumption. If web/internet search is unavailable, fall back to the local originality checks and flag the web step as skipped — do not stop.
- **Only hard stop:** the target `problem.md` is missing or empty — then say to run `/math-clone` and stop. Nothing else pauses the run.
- **Done:** `problem.md` overwritten with the hardened version (or a replace recommendation when the Harden-or-Replace ceiling is hit), the concept-map and mechanism-registry rows updated, the folder renamed if the taxonomy changed, and the diagnosis — Response-Driven Weakness Audit, failure-mode result, and hardened-draft Triviality Probe P1–P8 block — included in the final report as deliverables, never narrated as a pre-write pause. Persist end-to-end in this turn.

## Global Principle

**Mathematical semantics take precedence over style, formatting, and readability.**
Hardening must deepen the mathematical structure — not add complexity through verbosity, more variables, or additional requested outputs.

**Edit-scope discipline (read `skills/_shared/edit_scope_discipline.md`).** Change only what hardening or the reviewer's feedback actually requires. Do **not** rewrite the `Domain Explanation` when the domain is unchanged and it is already valid, and when acting on a pasted reviewer note or model response, fix exactly what was flagged — do not overthink and re-edit adjacent, already-correct sections (steps, notation, answer, classification) the reviewer did not question. Over-editing settled text is a regression risk and an LLM-detection tell.

Target a **model-breaking frontier benchmark**: after hardening, the problem should be designed so that a GPT-5.4-class thinking model is likely to fail unless it reconstructs the full hidden structure. This is an aspirational difficulty target, not permission to make the problem ill-posed, unverifiable, or dependent on unsolved research. The final answer must remain concise and exactly checkable.

If hardening changes the Domain/Sub-domain, Problem Type, or Answer Type, read `skills/_shared/taxonomy_slots.md` first and choose only from currently open slots. Among honest fits, prefer the available slot with the smallest positive `Remaining slots`; low remaining capacity is usually more valuable and more likely to stump models. A user-provided current portal snapshot overrides this shared file for the current run.

## Operating Mode — Auto-Decide, Big Jumps, No Confirmation Prompts

**Never pause to ask the user to confirm an internal decision.** Decide and proceed. This covers: whether to read the folder's `solution.md`, which weakness to attack, which hardening techniques to apply, whether to pivot the problem to a different direction/taxonomy, whether to rename the folder, and which open taxonomy slot to move to. Choose the best option using this skill's own rules and continue — no yes/no prompt. The ONLY permitted stop is `$PROBLEM_FILE` missing or empty (tell the user to run `/math-clone`). If web/internet search is unavailable, do **not** stop: fall back to the local originality checks (the Local Repository Originality Gate in Step 4c and `skills/_shared/originality_audit.md`'s local steps over `workspace/frontier-problem/used_concept_map.md`) and flag the web audit as skipped in your report.

**Harden by a large jump in a single pass — never incrementally.** Each `/math-harder` run must stack **at least two** independent, load-bearing hardening techniques and push the problem to the frontier ceiling (5–7 nonroutine nodes, ≥4 hidden, ≥2 blocked attack routes) in that one pass. Do not ship a single-technique, one-notch tweak. Two exceptions — in both you still harden maximally *up to* the limit, then state plainly what stopped you:
- The user explicitly asks for a small or incremental bump.
- You hit a genuine ceiling: any further hardening would break the By-Hand Solution Gate, the Answer Length Gate, or hand-solvability (`skills/_shared/hard_gates.md`), or the only remaining moves are computational-volume increases (Harden-or-Replace Gate). At that ceiling, if the problem cannot be pushed further honestly, recommend replacement per the Harden-or-Replace Gate rather than faking depth.

**Pivoting direction is allowed without asking.** If the strongest hardening genuinely shifts the primary machinery to a different Domain/Sub-domain/Problem Type, take it — then you MUST rename the problem folder to match the new taxonomy slug (Step 5).

**Acceptance-Profile Fallback (calibrated from user-confirmed current-flow outcomes through 2026-07-23).** This defines the acceptance-profile check the Harden Loop's Gate > Stump Rule (`skills/_shared/harden_loop.md`, applied at Step 4d) uses for its acceptance-fallback save — it is not a separate stop-after-one-pass rule, and the loop's own ladder (not this paragraph) decides how many rounds run. On honest-effort exhaustion of that ladder (mechanism classes rotated, creative pivots attempted, ablation run) without reaching a gate-clean stump, a gate-clean draft may still ship once ALL of: (a) the observed solve route's decisive recognition is blocked or made structurally insufficient; (b) the problem matches the Current-Flow fingerprint in `skills/_shared/passed_exemplars.md` (P4-clean bespoke gateway, dependent nonroutine chain, task-appropriate closure certificate, natural exact answer under 100 characters); (c) all hard gates and the eight-probe block pass. Do **not** force a parametric or near-cap answer to reach this profile. Gate-clean is required to save; a stump is pursued but never required. If the ladder is exhausted and the draft still cannot reach this profile, that is the Harden-or-Replace signal: recommend replacement, do not keep looping by hand.

## Step 0 — Select Problem

**Lesson catch-up (mandatory, before anything else in this step).** Scan `workspace/frontier-problem/.harden-pending/` for `needs-distill` markers; if any, read the referenced topic file under `skills/_shared/breaker-topics/<topic>.md` — the same per-topic contract defined in `skills/_shared/frontier_workspace.md` — and distill the pending lessons from its `## Round-log` section before starting new work. (See `skills/_shared/frontier_workspace.md` → "Harden-pending sentinel" for the marker lifecycle and CLAUDE.md → "Lesson Backstop" for why these markers exist.) If none are found, proceed directly to the reads below.

Read `skills/_shared/frontier_workspace.md`.
Read `skills/_shared/originality_audit.md`; its web-search originality audit is mandatory before overwriting the hardened problem.
Read `skills/_shared/frontier_authoring_guide.md`; its frontier-tier authoring patterns are mandatory design input for hardening.
Read `skills/_shared/triviality_probe.md`; its eight-test Triviality Probe is a mandatory hard gate before overwriting the hardened problem.
Read `skills/_shared/passed_exemplars.md`; its certificate-pattern taxonomy is mandatory input for choosing what the hardened solution's decisive step should look like, and its **Current-Flow Accepted Corpus** fingerprint + Archetype Catalog define the hardening target profile (see the Acceptance-Profile Fallback above).
Read `skills/_shared/breaker_playbook.md`; its distilled durable lessons (winning patterns, saturated skeletons to avoid, verified hardening moves) are the primary design input for choosing a hardening technique.
Read `skills/_shared/harden_loop.md`; Step 4d delegates the entire stump/harden round loop to this engine by name — do not restate its Diagnose / Guided-rotation / Creative-pivot / Ablation / Final phases anywhere in this file.
Read `skills/_shared/breaker-topics/README.md` for the per-topic file schema; the one topic file for this problem's sub-domain is loaded in Step 1 and is the `TOPIC_FILE` input to Step 4d's loop.
Read `skills/_shared/response_archive.md`. If `workspace/response-archive/analysis/` exists, use the matching `by-problem/probNN.md` as attempt-level evidence, then use `by-taxonomy.md` and `common-failures.md` for broader comparison. The playbook is the fast path; the archive is the evidence source.
Read `skills/_shared/hard_gates.md`; every rule there is a HARD GATE the hardened problem must still clear before overwriting.
Read `workspace/frontier-problem/used_concept_map.md`; the local repository is part of the originality surface, not merely a source of optional inspiration.

- If a file path was passed to this skill, use it as `$PROBLEM_FILE`.
- Otherwise resolve `$PROBLEM_FILE` from the context-selected problem folder using `skills/_shared/frontier_workspace.md`; if none is unambiguous, use the most-recently-modified `workspace/frontier-problem/problemNN-*/` and state that assumption in the report (per the Contract) — do not ask.
- If `$PROBLEM_FILE` does not exist or is empty, stop and tell the user to run `/math-clone` first. This is the only hard stop.

If the invocation input or the user's message includes a pasted solution, model response, reviewer note, or excerpt of how an AI solved the problem, preserve it as `$MODEL_RESPONSE`. Do not treat the pasted response as part of the problem statement unless the user explicitly says it is the new prompt.

## Step 1 — Read the Problem

Read `$PROBLEM_FILE` in full. Record the current:
- Problem statement
- Classification (Domain, Sub-domain, Problem Type, Answer Type)
- Domain explanation

Once the sub-domain is confirmed, load exactly one topic file — `skills/_shared/breaker-topics/<slug>.md` for this sub-domain's kebab-case slug (schema: `skills/_shared/breaker-topics/README.md`) — before diagnosing. Read its `## Distilled lessons` and the tail of its `## Round-log` first, so Steps 3–4 do not repeat a hardening direction already known to fail on this topic. Its `## Mechanism-class menu`, `## Saturated routes`, and `## Answer-shape options` are the topic-specific hardening catalog that, alongside the technique tables (A–P) in Step 4, feed Step 4d's Harden Loop as `TOPIC_FILE`. Do not read any other sub-domain's topic file this run. If none exists yet for this sub-domain, note the gap and proceed on the shared machinery alone (`hard_gates.md`, `triviality_probe.md`, `breaker_playbook.md`). If hardening later pivots the Domain/Sub-domain (Step 4/Step 5), reload the new sub-domain's topic file before Step 4d runs.

## Step 2 — Read Solution(s) and Model Responses

Use all available evidence about how the problem was solved, with this priority order:

1. `$MODEL_RESPONSE` or reviewer/customer feedback pasted by the user in the current request.
2. A linked-current per-problem archive report for this exact problem version.
3. The same problem folder's `solution.md`, if available.

If `$MODEL_RESPONSE` exists, read it fully and treat it as the primary diagnostic artifact. Extract the model's actual route, not the intended route. Do not ask for confirmation before using a pasted response.

### Archive-analysis handoff

Derive `probNN` from the active folder and check `workspace/response-archive/analysis/by-problem/probNN.md`. If it exists:

1. Read it in full before reading `solution.md`.
2. Accept it as `$ARCHIVE_EVIDENCE` only when it is linked to the current folder and its statement fingerprint, taxonomy, and ground-truth answer match the current files. A supersession note for the current redesign is valid evidence; an obsolete design under the same problem number is not.
3. Import the per-attempt success rate, shortest successful route, first decisive recognition, P1–P8 results, answer-sensitivity findings, and `finish_reason` distinctions. A length cutoff that already reached the correct answer internally is a successful route and never stump evidence.
4. If the report is stale or unlinked, ignore its per-problem verdict and record why; still use genuinely general lessons already distilled into `common-failures.md` or `breaker_playbook.md`.

Treat linked-current `$ARCHIVE_EVIDENCE` as model-response evidence throughout Steps 2–4. Do not fall back to diagnosing only the intended `solution.md` when the archive shows a shorter or more general route.

Read the same problem folder's `solution.md` if it exists — automatically, without asking. Record how the problem was solved: which step was the decisive one, what theorem was applied directly, and whether any core step was skipped or asserted without proof.

When response evidence and `solution.md` both exist, compare them. If they solve the problem differently, diagnose both routes and harden against the easier or more general route first.

### Model Response Extraction Checklist

For every pasted or file-based solution, record:

- **First decisive recognition**: the first non-obvious object, theorem, coordinate change, invariant, relaxation, recurrence, certificate, basis, or ansatz that made the solution easy.
- **Successful shortcut**: the shortest path from the statement to the answer, including any theorem substitution, direct computation, brute force, symbolic expansion, or equality-case guess.
- **Prompt leak**: the wording, notation, output format, constants, helper definitions, or visible structure in the problem statement that revealed the shortcut.
- **Skipped structure**: any hidden invariant, uniqueness proof, equality case, obstruction, or classification that the response did not need to reconstruct.
- **Computation profile**: whether the final answer came from hand derivation, small arithmetic, large recurrence/DP/search, computer algebra, or numerical fitting.
- **Failure of false trails**: whether the response encountered a real obstruction; if not, mark `No false trail` as a weakness.
- **Generalizability**: whether the same method would solve nearby parameter variants or the whole problem family. If yes, harden the mechanism, not just the numbers.
- **Answer-sensitivity audit**: for every wrong, skipped, or asserted intermediate claim, replace it
  by the correct claim (or delete it) and propagate the change. Record whether the requested answer
  changes. If only a lower-order term, polynomial prefactor, normalized-away scale, or discarded
  quantity changes, the response found an answer-insensitive successful shortcut even if its proof
  is locally wrong.

Summarize this extraction before redesigning in the following compact form:

```text
Observed solve route:
  Decisive recognition: ...
  Shortcut used: ...
  Prompt leak: ...
  Missing hidden work: ...
  Computation profile: ...
  Answer-sensitive errors: yes/no; perturbation result: ...
  Generalizes to variants: yes/no, because ...
```

## Step 3 — Diagnose the Weakness

Run the eight-test Triviality Probe from `skills/_shared/triviality_probe.md` against the **current** (pre-hardening) problem and its solution/response first, and record the Probe Results Block. Each REJECT pinpoints exactly why the problem is too easy and which fix to apply:

- P1 REJECT (small finite search) → make the answer a limit/asymptotic/general law over a free parameter, or hide a structural invariant — do **not** just enlarge the fixed instance.
- P2 REJECT (decoration component) → make it load-bearing or cut it and add real depth elsewhere.
- P3 REJECT (trivial/gotcha/ill-posed answer) → redesign the requested object (Technique N/O) or fix the normalization convention.
- P4 REJECT (template core / batch-repeated skeleton) → hide the doorway and force genuine discovery (Techniques A/G/H); do not reuse a technique skeleton already used elsewhere in the current workspace batch.
- P5 REJECT (side-channel recoverable) → redesign so finite instances do not determine the requested object, push to a limit a finite side-channel cannot reach, or make verification as hard as derivation. A free parameter is only a candidate repair: it fails if a few small instances interpolate, extrapolate, or pattern-match the law. Do **not** answer a P5 failure by enlarging the numbers.
- P6 REJECT (statement concedes the route) → **de-leak**: move the construction out of the statement into the required derivation. Keep only the specification / uniqueness condition that pins the object down, and make building it the solver's job (this is the repair for the "Exposed hidden step" failure-mode row below). If the leak was compaction-forced (6c), prefer an intrinsic invariant of an input-built object over a quantity extracted from a statement-constructed object, or change the requested output via `math-change-answer-type`.
- P7 REJECT (breadth-dominant) → **rebalance**: convert simultaneously-tracked conditions into a serial chain behind one gateway discovery, or replace the tracked states with a single hidden invariant that compresses them. Cut any node that fails the deletion test rather than counting it toward 5–7.
- P8 REJECT (terminology-density: ≥4 bespoke terms, >3 held simultaneously, or a bespoke term renaming a standard taxonomy concept; ≤2 preferred below the cap) → **condense** the statement (answer-preserving): merge chained bespoke objects into one custom class, inline auxiliary quantities into the question, rename to the standard taxonomy term, delete narrative flavor. This is the pre-pass repair applied at Step 4d before the stump gate; re-confirm the intended answer is unchanged.

If `workspace/response-archive/analysis/` exists, also check `by-taxonomy.md` for this problem's Domain/Sub-domain/Problem Type/Answer Type row and `common-failures.md` in general: a matching recorded pattern both confirms the failure mode faster and flags which hardening techniques are already known to have failed for this kind of problem before, so they are not worth repeating.

Then identify **why** the problem was solvable using the failure-mode table below (the table and the probe overlap; the probe is the quantitative version):

| Failure mode | Symptom |
|---|---|
| **Single-theorem shortcut** | Model applied one standard result and read off the answer |
| **Shallow dependency graph** | Solution has fewer than 4 genuinely distinct steps |
| **Guessable answer** | Model pattern-matched the answer type without deriving it |
| **No false trail** | The naive approach worked without encountering a structural obstruction |
| **Loose constraints** | Constraints did not force the intended hidden structure |
| **Shallow scalar answer** | Final answer is a plain integer or rational reachable by a single theorem substitution or short computation, with no deep machinery behind it and no written scalar-depth defense. A scalar answer is *not* a weakness by itself — a deep problem with a scalar answer and a defense on file (`skills/_shared/frontier_authoring_guide.md`) is fine. |
| **Exposed hidden step** | A key intermediate object (polynomial, invariant, certificate) was named or hinted in the problem statement |
| **Model-computable core** | The main difficulty can be bypassed by direct symbolic algebra, dynamic programming, SAT/SMT search, brute force, or numerical experimentation |
| **Relaxation leak** | A simpler relaxed problem has the same optimizer or answer, so the hard constraints never matter |
| **Shallow equality case** | The extremal value is hard-looking, but uniqueness/equality follows from a routine convexity, symmetry, or monotonicity argument |
| **Single false trail only** | One naive approach fails, but a second natural route still reaches the answer directly |
| **Single-area problem** | The problem lives entirely inside one textbook mechanism and lacks a translation layer between independent mathematical areas |
| **No custom structure** | The problem uses only standard named objects and never forces the solver to derive properties of a newly defined object or class |
| **Output-format ambiguity** | The answer can be represented in many ways, or the solver does not know when to stop |
| **Coefficient-formula answer** | The requested answer is essentially a restatement of the defining coefficients rather than a finite verifiable object |
| **Decorative multi-phase framing** | The problem has multiple phases or systems, but the phases do not share a real invariant or obstruction |
| **Exposed brute-force doorway** | The prompt names the exact substitution, moment basis, dual polynomial shape, equality support, recurrence state, or normal-form coordinates needed for computation |
| **Template-certificate leak** | A standard certificate ansatz such as one square, one product of double roots, one saddle expansion, or one Vandermonde solve fully determines the answer |
| **Arithmetic-only hardening** | The last hardening only made constants larger or expressions longer, so a human now needs code while a model can still apply the same template |
| **Software-only final evaluation** | The solution can define a recurrence, transfer matrix, dynamic program, character/sign filter, finite search, or coefficient extraction, but the final answer is only obtained by running an unshown large computation |
| **Formula-recognition problem** | The solution is essentially "recognize Bernstein/Becker/Koszul/Vandermonde/etc., substitute the data, simplify" rather than reconstructing a local tool |
| **Routine inequality or congruence shell** | The prompt reduces to a standard case split, modular check, monotonicity bound, or one-variable inequality after a familiar manipulation |
| **Solvable by analogy / retrieval** | The model found a direct precedent — a textbook chapter, a named theorem, or a near-identical problem — and pattern-matched the method; the problem lives inside one familiar area with a known analogue |
| **Hallucinable / lookup named object** | The problem uses a named object whose structure is fully classified, or asks only a generic invariant of a rare object, so the answer is a parameter lookup rather than a reconstruction from concrete data given in the statement |
| **Collapsible iteration** | The iterated process has a small finite-state description, so the model memoizes or runs finite-state DP/simulation directly, instead of finding the law that compounds over the iterations |
| **Computational-volume inflation** | The apparent difficulty comes from more moments, coefficients, recurrence terms, matrix entries, cases, or symbolic expansion, rather than a new mathematical obstruction |
| **Self-containedness explosion** | Making the hidden computation reviewer-checkable would require many tables, many coefficient identities, or repeated large simplifications — the issue is the task design, not the solution's prose |
| **Visible mechanical bookkeeping** | The decisive content is carried by a large auxiliary matrix ground through a coefficient/trace table, a printed coefficient-vector identity check, or an exhaustive finite-data certificate (edge/ribbon pairing lists, full orbit decompositions, determinant / zero-location / case tables) — shown in full, hand-feasible, yet reads as bookkeeping not reasoning (Mechanical-Bookkeeping Reject, `skills/_shared/hard_gates.md`). Fix by redesign to a compact conceptual certificate, never by hiding the table (black box) or printing it cleaner |
| **Raw-data-layered statement** | The prompt is dominated by large raw symbolic-data blocks (several big parameter-built vectors/matrices, an iterated composition like `A∘A∘A∘A∘B`, a max over several weighted quadratic forms) that merely encode a simpler object — contrived layering, not mathematics (Mechanical-Bookkeeping Reject, statement side) |
| **Re-proved standard machinery** | The solution re-derives standard textbook results at length (full compactness / min-max / spectral-convergence theory, a named inequality) inside one step, obscuring the actual novel reasoning; cite the standard result by name with a brief hypothesis check instead (By-Hand citation carve-out, `skills/_shared/hard_gates.md`) |
| **Isolated single target** | The problem asks for one quantity the model reached directly, with no dependent companion quantity or implicit definition forcing extra structure |
| **Brute-forceable constant** | The problem is stated for fixed numerical data small enough that the model enumerated, searched, or computed the answer instead of deriving a general law |
| **Parametric interpolation leak** | The answer has a free parameter but a few small instances determine the full low-degree, short-recurrence, parity-split, or piecewise law; parameterization did not close P5 |
| **Hardening regression** | A redesign removes an existing protection, such as replacing a non-enumerable law by a fixed matrix or deleting an accidental special-locus trap, so the new version has a worse probe result or lower idea-stump rate |
| **Direct-model attack** | The problem could be attacked in the same representation it is stated in — no model change, encoding shift, or operator iteration was forced before the standard machinery applied |
| **No small-case falsifier** | The problem has no cheap edge case (smallest parameter, all-ones substitution, etc.) on which a plausible-but-wrong derivation would visibly fail |
| **QA-only certificate** | The solution can verify the answer only in a separate audit/verification section; the numbered steps themselves do not contain an independent mathematical certificate |
| **Answer-insensitive certificate** | A supposedly difficult intermediate count, certificate, normalization, or reconstruction may be wrong or omitted without changing the requested answer because the error affects only a lower-order factor, normalized-away scale, discarded term, or equivalence-class representative |

State which failure mode(s) apply, together with the Probe Results Block, before proceeding to Step 4.

### Response-Driven Weakness Audit

When model evidence is available, extract the exact shortcut before redesigning. This audit is mandatory whenever `$MODEL_RESPONSE` or linked-current `$ARCHIVE_EVIDENCE` exists:

- What was the first decisive recognition? Examples: hidden coordinate, Chebyshev basis, dual majorant, moment recurrence, equality support, factorization shape.
- What ansatz did the model try? Examples: $q-p=c\prod (x-r_i)^2$, $(1-x^2)R^2$, direct Taylor coefficients, direct Gaussian moments, direct finite-state search.
- Which part of the prompt leaked the ansatz? Examples: named helper functions, too-standard basis, exposed cancellation order, polynomial degree matching, visible endpoint factors, output already shaped as coefficients.
- Did brute force work because the computation was actually short? If yes, hide the doorway or make brute force produce a plausible but wrong intermediate result until a certificate/invariant is found.
- Did a free parameter merely turn finite brute force into interpolation or extrapolation from small instances? If yes, the P5 leak remains open.
- Did hardening just make the numbers uglier? If yes, reduce arithmetic size and add a structural obstruction instead.

After answering these questions, choose hardening changes that specifically invalidate the observed route. Do not merely add unrelated constraints or change constants. The hardened problem should force at least one mathematical move that the pasted solution did not contain.

If the pasted response relied on a software-only final evaluation, do not harden by making the computation larger. Redesign so the intended answer has a hand-auditable certificate or a smaller final evaluation, while the observed computational route becomes structurally insufficient.

## Step 4 — Apply Hardening

Select one or more hardening techniques matched to the diagnosed failure mode(s). Every chosen technique must genuinely deepen the mathematical structure — not just add words or raise parameter values.

If `$MODEL_RESPONSE` was supplied, every selected hardening technique must be traceable to an observed weakness in that response. For each technique, state which line of attack it blocks and why the old solution would now fail or become incomplete.

The techniques catalogued below (A–P) are the general-purpose hardening moves. Together with the current problem's `TOPIC_FILE` (loaded in Step 1; its topic-specific `## Mechanism-class menu`), they are the catalog Step 4d's Harden Loop draws from: pick one or more here for this first pass, and the loop's Guided rotation / Creative pivot phases rotate through further unused techniques and mechanism classes on later rounds without repeating a class already tried in that loop.

**Notation Restraint while hardening (design-time budget, not a later strip).** Hardening deepens *dependency*, not vocabulary. Do not buy difficulty with new bespoke terminology: keep the hardened statement to **≤ 3 defined terms (aim ≤ 2)**, ≤ 3 held at once, standard Domain/Sub-domain vocabulary and notation (`skills/_shared/taxonomy_slots.md`) — no invented glyphs, no contrived predicate names, no narrative flavor, and never rename a concept that already has a standard name. When a technique needs a new object, fold it into an existing custom class or inline it rather than adding a fourth named term. This is the same cap Probe **P8** (terminology-density + taxonomy-vocabulary rule) enforces in the Step 4d pre-pass and the Rainier "Beyond Project Scope / contrived-terminology" reject — budget to it now so the pre-pass has nothing to strip. Because hardening tends to *add* terminology, re-count bespoke terms after every technique you apply and run Probe **P8** the moment the draft is rewritten (before the originality audit), condensing immediately on `N ≥ 4` or any standard-concept rename; do not defer it to Step 4d.

Before choosing techniques, use `skills/_shared/frontier_authoring_guide.md` to select one or more frontier authoring patterns. Strong hardening should usually do at least one of:

- compose the current mechanism with an independent mathematical area through a real translation layer;
- introduce a new on-the-spot object whose structure must be derived;
- require concrete reconstruction of an object **defined in the statement** rather than a generic invariant (do NOT use a rare named literature object — the frontier standard forbids obscure/niche topics such as Rolfsen tables, Alexander polynomials, Gromoll-Meyer spheres);
- add an iteration, limit, expectation, extremal late step, or state compression;
- add multi-phase state bookkeeping where an invariant crosses phase boundaries;
- replace an ambiguous or coefficient-extraction answer with a finite normal-form object.

### Harden-or-Replace Gate

Before picking techniques, check: are the only remaining hardening moves increases in degree, dimension, iteration count, state space, coefficient count, or arithmetic length? If so, **do not harden this problem** — the model already found its structural core, and stacking more computation on top only produces the Arithmetic-only hardening / Computational-volume inflation failure modes without adding real difficulty. Recommend replacing the problem with a new one whose difficulty comes from a hidden invariant, a genuine regime split, derived machinery, or a short certificate, and say so explicitly to the user instead of proceeding to Step 4b.

If linked-current archive evidence shows near-universal success and the winning route is a retrievable named pipeline, replacing fixed constants by a free parameter is not enough. Run the parameter-resistance check: reason through the smallest admissible instances and ask whether a model can recover the requested law by low-degree interpolation, recurrence guessing, parity splitting, rational reconstruction, or a short candidate-window search. If yes, P5 still rejects. Change the decisive-mechanism class to an unnamed discovery, or replace the problem outright.

### Hardening-delta gate

Record the current version's P1–P8 results and true idea-stump rate before redesigning. After each candidate redesign, compare them:

- no hard-tier probe may move from PASS to REJECT;
- a P5-clear law may not become a fixed small object, and a fixed-instance repair may not become a small-case-interpolable law;
- do not remove a verified special-locus, phase-alignment, or degeneracy trap unless a stronger independent obstruction replaces it;
- do not accept a lateral move from one retrievable P4 pipeline to another;
- `finish_reason=length` misses on the correct route do not count as an improved stump rate.

Any regression forces redesign or replacement before the originality and stump gates.

### Certificate Pattern Selection

Read `skills/_shared/passed_exemplars.md`. Before choosing techniques, name which certificate pattern the **hardened** solution is expected to expose — candidate + certificate gap, inverse reconstruction from shadow data, symmetry quotient + correction term, active set + slack certificate, or finite audit table (for any computation that truly cannot be avoided). If none of these can be made load-bearing for the diagnosed failure mode, that is itself a signal to replace the problem (Harden-or-Replace Gate) rather than keep adding computation.

### Length-neutral vs length-inflating (Answer Length Gate discipline)

Before selecting techniques, read `skills/_shared/frontier_authoring_guide.md` → *Difficulty–Length Orthogonality*. Difficulty and answer length are orthogonal **only when the requested object's size is intrinsically bounded** (a scalar, a small vector, a congruence/solution-set that compresses to `\pm r \pmod m`). For those objects, hardening freezes the answer byte-for-byte across levels; for size-coupled objects (generating functions, general laws, matrices, high-degree polynomials) hardening grows the answer and can overflow the Answer Length Gate. Prefer Technique A/I/J/M when stacking hardening rounds; treat Technique K as requiring a reshape check first. Re-measure the answer's character count after **every** hardening level, not only the last.

**Golden check (after every technique):** if the hardened answer grew by even one character, the technique is touching the object's structure, not the hidden graph — keep the technique but reshape the requested output to a bounded invariant (trace, determinant, one entry, a characteristic-polynomial coefficient, cardinality, an extremal member) via `math-change-answer-type`; do not drop the technique and do not ship the longer answer.

**Technique A — Add a hidden invariant** *(length-neutral)*
Introduce a conserved quantity, parity argument, or structural constraint that the direct approach misses. The invariant must rule out the naive solution and force a deeper analysis.

**Technique B — Require an explicit certificate**
Change the problem so the solver must produce a dual object, equality certificate, or extremal configuration — not just state a value. The certificate should be non-trivial to construct.

**Technique C — Deepen the dependency graph**
Add an intermediate step that must be discovered before the answer is accessible. Good additions: a quotient/stabilizer that must be identified, a generating function whose coefficients encode the answer, a normal form that must be reached before comparison is possible.

**Technique D — Introduce a false trail**
Add a condition that makes a natural approach look promising but fail for a structural reason. The false trail must be mathematically honest — not a wording trap.

**Technique E — Strengthen constraints**
Add a condition that eliminates the class of configurations the model exploited. Ensure the new constraint does not make the problem ill-defined or trivially unsolvable.

**Technique F — Deepen a shallow scalar (optionally upgrade the answer type)**
The fix for a shallow scalar problem is to deepen the underlying machinery (Techniques A–E, G), not merely to change the answer's shape. A scalar answer is acceptable once the problem is genuinely deep and a scalar-depth defense is written (`skills/_shared/frontier_authoring_guide.md`). Optionally, if a richer Answer Type (vector, canonical form, set, polynomial, etc.) honestly fits the redesigned target, you may recast the requested quantity for diversity — but never contort a naturally-scalar answer into a tuple just to avoid the scalar label, and never treat the reshape as a substitute for adding real depth or writing the defense.

**Technique G — Hide an exposed intermediate object**
If the problem statement names or hints at the key auxiliary object (polynomial, transform, stabilizer), remove it from the statement and let the solver discover it.

**Technique H — Break model-computable reductions**
Change the formulation so direct computation produces only misleading small cases, an underdetermined family, or a certificate that still has to be discovered. Do not merely increase parameter sizes.

**Technique I — Add a second structural obstruction** *(length-neutral when the answer is a max/intersection/solution-set)*
If the original hardening has only one false trail, add a second plausible but wrong route blocked by a different invariant, dual witness, rigidity condition, or quotient structure.

**Technique J — Force equality-case reconstruction** *(length-neutral)*
For optimization or extremal problems, make the final answer depend on identifying why equality is possible and unique, not only on bounding the value.

**Technique K — Compose independent areas** *(length-inflating if the new area attaches structure to the printed object — reshape first)*
Fuse the current mechanism with a second domain whose machinery is genuinely needed. The final answer must depend on the translation between the two areas, not only on one side. If the second area adds structure to the requested object (e.g. extra transfer states raising a generating function's denominator degree), it will grow the answer — apply the Golden check above and reshape to a bounded invariant before shipping.

**Technique L — Define a local object**
Introduce a self-contained custom class or admissibility condition, then force the solver to derive a hidden invariant, normal form, closure property, or obstruction from that definition.

**Technique M — Add meaningful iteration or phases** *(length-neutral)*
Add an iterative process or multi-phase state mutation only when an invariant must be preserved across steps/phases. Do not add phases that can be solved independently. Define the target as a periodic point, limit, or late step of the orbit so the added depth lives in the hidden part, not in the printed object.

**Technique N — Fix output verifiability**
If the answer is ambiguous, implicit, or a coefficient formula, redesign the target as a matrix, vector, finite set, rational factor, canonical form, constructed object, or explicitly defined normal-form component.

**Technique O — Make the final answer self-contained**
Redesign the requested object so the final answer is one bare mathematical object whose symbols are defined in the problem statement or inside the answer itself. Avoid answers that depend on solution-local notation, previous-step definitions, or an unexpanded algorithmic object.

**Technique P — Harden the solution certificate**
When the problem statement is already acceptable but the solution would be rejected for black-box reasoning ("one checks", "by computation", "running the recurrence gives"), redesign the target so the core proof has a compact, reviewer-visible certificate: a dual/gap identity, an active/slack table, an orbit/stabilizer table, a residue-vector table, a determinantal-divisor certificate, a moment/orthogonality table, an invariant table, or another explicit object from `skills/_shared/passed_exemplars.md`. Any such table must stay small enough that the full `## Steps` section fits the 10,000-character Solution Length Gate — a certificate that needs a large printed table is a redesign signal, not a fix.

## Step 4a — Practical Model-Stumping Playbook

Use these patterns when they fit the domain. They are meant to block observed model shortcuts while keeping the problem hand-solvable.

### Hide recognisable auxiliary objects

- Replace named helper functions that reveal the intended substitution with raw expressions, unless those helpers are needed for clarity.
- Avoid giving the exact invariant, equality set, normal form, or basis unless the main difficulty lies after it.
- If a model solved by changing variables, redesign so the variable is still discoverable but not advertised by repeated expressions like $U,V,W$.

### Turn brute force into a false trail

- Allow direct expansion, symbolic fitting, or moment matching to produce terms that look relevant but cancel by a hidden invariant, parity, quotient, or integration-by-parts certificate.
- Add a compact null space or zero mode so coefficient matching alone gives the wrong normal form unless the solver identifies the quotient.
- Keep the false trail mathematically honest: the computation should fail because it ignores structure, not because the statement is unclear.

### Avoid single-template certificates

- For optimization, do not rely on a single obvious certificate shape when the model has already found it. Replace one square or one double-root product by a sum of nonnegative terms, a rational positive-denominator certificate, endpoint plus interior equality cases, or a dual object in a less direct basis.
- Make equality-case reconstruction non-routine: the solver should prove which zero set is active and which zeros are inactive, then recover weights or parameters from constraints.
- Use moderate numbers and low-degree factors so a human can verify the certificate after discovering it. Difficulty should come from finding the certificate, not expanding it.
- Do not replace a model-solvable shortcut with a large recurrence, transfer matrix, dynamic program, sign filter, or finite search whose final numerical/vector/polynomial output cannot be derived in the written solution. If the final step would read "running the recurrence gives", redesign around a smaller certificate or a different final answer.

### Break formula-recognition pipelines

- If the current solution can be summarized as "identify a named formula, plug in the constants, simplify", the hardening is not frontier-level yet.
- Add a local object or constraint whose useful properties are not named in the statement and must be derived from the problem data.
- Make the named theorem, formula, or standard inequality produce only an intermediate object, not the requested answer.
- Prefer a final step that requires translating between two independently derived objects, such as a curvature block plus a bracket defect, a moment functional plus a positivity certificate, or a recurrence plus a quotient invariant.
- Avoid elementary shells where the core is only `area > c`, `sum == 0 mod p`, or `x <= f(x)` unless a hidden structure makes the routine manipulation fail.

### Keep human-solvability explicit

- After hardening, the intended solution should have a short certificate or normal form that can be checked by hand.
- Prefer small supports, low-degree factors, short matrices, and concise recurrences with non-obvious derivation.
- If the only way to verify the answer is code or long arithmetic, redesign with smaller numbers and a deeper structural obstruction.
- The final evaluation must be self-contained: code, pseudocode, checkpoint tables, or external computations are not acceptable substitutes for a hand-auditable derivation of the submitted answer.

After selecting techniques, redesign the problem. The hardened problem must:
1. Still belong to the same Domain/Sub-domain (unless the redesign genuinely shifts the primary machinery).
2. Have a dependency graph with 5–7 nonroutine nodes, at least four hidden from the statement.
3. Pass all Pre-Submission Stress Test checks from math-clone (boundedness, non-triviality, unique answer, frontier-level depth, answer type, one-type classification, no horizontal expansion).
4. Have a clean, exact, well-defined answer.
5. Pass a model-breaker audit: identify at least two plausible attack routes a frontier reasoning model would try, then ensure both fail without the intended hidden structure.
6. Pass the authoring-pattern audit from `skills/_shared/frontier_authoring_guide.md`: identify which pattern(s) are essential and why they are not merely decorative.

## Step 4b — Frontier Hardening Checklist

Before overwriting the file, verify the hardened draft. The shared gates are not re-explained here — run them against the draft and read their detail once, at the source.

- [ ] Needs 5–7 dependent nonroutine nodes, at least four latent (not named in the statement), with at least two model attack routes blocked by genuine structure; the output format is explicit enough that a solver knows when to stop.
- [ ] **Depth over Breadth (HARD)**: the hardening added a longer serial unlock chain around one gateway discovery, not more simultaneous conditions (≤ 2–3 states tracked at once). Every added node passes both deletion tests (removing it collapses the problem, not merely shortens it; perturbing its output changes the requested answer, not a discarded prefactor) and the one-sentence test ("recognize/construct/prove forced," not "track/enumerate/sweep"). This is Probe P7 plus `skills/_shared/frontier_authoring_guide.md` → *Depth over Breadth*.
- [ ] **Hardening-delta gate** (criteria defined in the `### Hardening-delta gate` block above): no hard-tier probe regressed, no verified trap was deleted without replacement, and the redesign changed the decisive-mechanism class rather than re-skinning a named pipeline.
- [ ] **Parameter-resistance check**: if the answer has a free parameter, a few smallest instances do not determine the full law by interpolation, extrapolation, recurrence guessing, parity splitting, rational reconstruction, or short candidate-window search.
- [ ] If a model response was supplied, the draft blocks the decisive recognition, shortcut, ansatz, theorem pipeline, or computation route it used; a brute-force/recurrence/transfer-matrix/coefficient-extraction/search/CAS route is not merely enlarged but made structurally insufficient by a new certificate or hand-auditable derivation.
- [ ] The intended solution's decisive certificate is a named pattern from `skills/_shared/passed_exemplars.md` (candidate-gap, inverse-shadow reconstruction, quotient-correction, active-slack, finite-audit-table), lives inside the numbered steps (not a separate QA/audit section), and is specified concretely — not a vague "exact arithmetic"/"Smith minors"/"resultant" label. If the answer is scalar, a scalar-depth defense is written (`skills/_shared/frontier_authoring_guide.md`); if a structured Answer Type fits naturally instead, use it.
- [ ] Uses at least one frontier authoring pattern from `skills/_shared/frontier_authoring_guide.md` (two when the user asks for "much harder"/"frontier"); the problem is still solvable by a human expert from the statement alone and needs no unsolved result.
- [ ] Every HARD GATE in `skills/_shared/hard_gates.md` clears on both the statement and the honest solution route — Answer Length, Answer Compaction, Solution Length, By-Hand (hand-auditable final evaluation, no "one checks"), Self-Containment, Smokescreen, Mechanical-Bookkeeping. Length discipline is the Golden check: if the answer grew by even one character, prefer length-neutral techniques (A, I, J, M) and reshape via `math-change-answer-type` rather than shipping a longer answer (`skills/_shared/frontier_authoring_guide.md` → *Difficulty–Length Orthogonality*).
- [ ] The eight-test Triviality Probe (`skills/_shared/triviality_probe.md`) has been re-run on the hardened draft with the Probe Results Block recorded and all hard-tier lines (P1, P2, P3, P5, P7 7a/7b, P8) PASS; soft-tier lines (P4, P6, P7 node-count) may WARN only if the draft matches the accepted profile (`skills/_shared/passed_exemplars.md`). A pass that only enlarged constants or iteration count will fail P1 or P5 again.
- [ ] The draft clears the web originality audit and the Local Repository Originality Gate (Step 4c) — or, if web search is unavailable, the local-only fallback (Contract / Step 4c).

If any item fails, continue hardening before Step 5.

## Step 4c — Web Originality Audit

### Local Repository Originality Gate (run first)

Before the web audit, compare the draft against the **entire current frontier repository**. This gate is mandatory even when the draft has new wording or a different story.

1. Stage the draft in a temporary Markdown file under the repo-local scratch root **`.tmp/`**
   (gitignored; never committed) — e.g. `.tmp/<problem-slug>_hardened_draft.md` — and run:

   ```text
   python3 skills/math-harder/scripts/repo_similarity.py --candidate .tmp/<draft>.md --exclude <active problem.md>
   ```

2. Read `workspace/frontier-problem/used_concept_map.md` and shortlist every row sharing the draft's Domain/Sub-domain, core object family, mechanism/certificate family, or answer shell. The similarity script is triage only; it cannot clear the gate by itself.
3. Open the actual `problem.md` for at least the five highest-ranked script matches and every concept-map match that is load-bearing. Compare four axes:
   - **outer frame** — latent-variable/event-conditioning, extremal, reconstruction, iteration, etc.;
   - **core object** — the mathematical object actually manipulated;
   - **mechanism/certificate** — the decisive unlock and verification pattern;
   - **target shell** — what is requested and how the final object is shaped.
4. Reject and redesign the draft when it shares both mechanism and target with an existing problem, or when it substantially shares any three of the four axes. Renaming variables, changing constants, changing narrative, or composing two already-used repo skeletons does not clear the gate. A common primitive such as Bayes' rule, a determinant, or a Markov chain is acceptable only when the other three axes are genuinely distinct.
5. **Core-technique family saturation (family-level, not just pairwise).** Passing the pairwise four-axis check is necessary but not sufficient: a hardened draft can differ from every single existing problem yet still pile onto an over-mined *core-technique family*. Group the whole `used_concept_map.md` decisive-technique/mechanism columns into families — quadratic-character / Paley / character-sum; spanning-tree / rooted-forest / matrix-tree kernel; resultant / elimination; spectral-of-combinatorially-defined-matrix; planted-identity completion; degeneracy-locus case-folding. If your hardening reaches for a family among the **2–3 most frequent** in the map — especially a character sum on a graph/tree over $\mathbb F_p$, now saturated — do not harden into it just because it stumps reliably. Prefer an unlock from an under-used family, accepting slightly less brutality to avoid producing another sibling of the dominant cluster. (This is the harden-side mirror of the cross-domain texture dedup in `math-clone` Phase 1b.)
6. Record a compact block before overwriting:

   ```text
   Local Repository Originality:
     Nearest problems: NN (...), NN (...), ...
     Shared axes: ...
     Core-technique family: ... (map frequency: N; saturated? yes/no)
     Distinguishing load-bearing structure: ...
     Decision: PASS / REDESIGN
   ```

Run this gate again after every substantial redesign. A `REDESIGN` decision forbids proceeding to the web audit or overwriting `$PROBLEM_FILE`.

Before overwriting `$PROBLEM_FILE`, run the full audit in `skills/_shared/originality_audit.md` on the hardened draft.

The audit must search for both:
- the original problem's mathematical fingerprint, because hardening may still leave a recognizable source skeleton; and
- the hardened draft's new fingerprint, including any new invariant, certificate, operator, extremal condition, or final answer target.

If a close online hit is found, harden or redesign again until the problem differs in core object, mechanism, constraints, and answer target. Changing only numbers, labels, or wording is not enough. Rerun the originality audit after every substantial hardening pass.

If internet search is unavailable, do **not** stop: rely on the Local Repository Originality Gate above plus the local steps in `skills/_shared/originality_audit.md`, flag the web audit as skipped in your report, and proceed to overwrite once the local checks and all other gates pass.

## Step 4d — Harden Loop Gate (MANDATORY, runs before Step 5)

**Pre-pass (before the loop): P2/P8 auto-fix.** First run Triviality-Probe **P2** (decoration)
and **P8** (terminology-density) from `skills/_shared/triviality_probe.md` against the hardened
draft. On a REJECT, apply the answer-preserving repair — strip decoration (P2); merge chained
bespoke objects into one custom class, inline auxiliary quantities, delete narrative flavor (P8) —
and re-run until both read PASS. Hardening tends to *add* bespoke terminology, so this pre-pass
matters most here. It edits surface language only and must not change the intended hardened answer or
the intended difficulty (re-confirm the answer after repairing). Do not enter the harden loop on a
draft that still fails P2 or P8.

Then **Run the Harden Loop** (`skills/_shared/harden_loop.md`) on the (P2/P8-clean) hardened draft,
before overwriting `$PROBLEM_FILE`, with inputs:
- `PROBLEM_DRAFT` — the hardened candidate problem statement produced by Step 4.
- `INTENDED_ANSWER` — the exact intended hardened answer, normalized the same way as
  `stump_gate.md` (strip `$` and all whitespace).
- `TOPIC_FILE` — the one topic file loaded in Step 1 (`skills/_shared/breaker-topics/<slug>.md`).

The loop owns Diagnose, Guided rotation, Creative pivot, Ablation/hint, and Final; the per-round
`hard_gates.md`/Probe P1–P8 check plus the `### Hardening-delta gate` anti-regression check above
(the loop applies that gate by name — its criteria stay defined only here, not duplicated in
`harden_loop.md`); the round-log append and lesson distillation into `TOPIC_FILE`; and the
harden-pending sentinel. Do not restate or re-derive any of that here — run the loop by name and use
its output. The technique tables in Step 4 (A–P) and `TOPIC_FILE`'s `## Mechanism-class menu` are the
catalog the loop's Guided rotation and Creative pivot phases pull from each round.

**Save decision (Gate > Stump Rule, `skills/_shared/harden_loop.md`):** the loop's Phase 5 (Final)
produces one of:
- **Ideal save** — gate-clean and stumped: proceed to the rest of the Triviality Probe / hard gates
  (Step 4b), then Step 5.
- **Acceptance fallback** — the ladder is exhausted without reaching a gate-clean stump, but the
  current draft is gate-clean and matches the Acceptance-Profile Fallback above: proceed to the rest
  of the Triviality Probe / hard gates (Step 4b), then Step 5.
- **Replace** — the ladder is exhausted and the draft does not match the acceptance profile: **do
  not overwrite**. Stop and hand the user the round-log trail plus a recommendation to redesign or
  replace (Harden-or-Replace Gate above).
- **ANSWER-SUSPECT** (surfaced during the loop's Diagnose phase): **stop, do not overwrite**, warn
  the user — your intended hardened answer is probably wrong; re-derive it (or run
  `/math-solve-codex`) before continuing.

## Step 5 — Overwrite the Problem File

Write the hardened problem back to `$PROBLEM_FILE` using the same Problem File Template format as math-clone:

```markdown
# Normalized Math Problem

## LaTeX (Normalized)

[Hardened problem statement]

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | {domain} |
| **Sub-domain** | {sub-domain} |
| **Problem Type** | {exactly one problem type} |
| **Answer Type** | {exactly one answer type} |

---

## Domain Explanation

{2–3 sentences explaining why the domain/sub-domain is primary.}
```

The generated `problem.md` must also satisfy the Plain Portal Text Gate in `skills/_shared/hard_gates.md`: no Markdown emphasis or blockquotes in the problem content; lists are allowed only in compact form with no empty lines between consecutive items.

### Rename the folder when the direction changed (MANDATORY, no prompt)

The folder is named `problemNN-taxonomy-slug/`. If hardening changed the Domain/Sub-domain (or otherwise moved the problem to a different taxonomy slug), the folder name is now wrong — rename it, do not ask first:

1. Derive the new `taxonomy-slug` from the new sub-domain (or primary domain) exactly as `math-clone` would.
2. Keep the same `NN` number. Rename `problemNN-old-slug/` → `problemNN-new-slug/`, moving both `problem.md` and `solution.md` with it. Prefer `git mv` when the folder is git-tracked so history is preserved; otherwise move the directory.
3. From here on, `$PROBLEM_FILE` refers to the file at the new path.

If the Domain/Sub-domain and slug did not change, keep the folder name as-is.

**Index update (same run, mandatory)**: update this problem's row in `workspace/frontier-problem/used_concept_map.md` — new slug/taxonomy if renamed, new core object/mechanism/decisive-technique from the hardened design, answer column reset to `unsolved` (contract in `skills/_shared/frontier_workspace.md`). **In the same run**, also increment/add the matching row in `workspace/frontier-problem/mechanism_registry.md` for the hardened problem's (possibly new) decisive skeleton (registry contract in `skills/_shared/frontier_workspace.md` → "Mechanism Registry") — union-merge with the `used_concept_map.md` update, do not skip it.

If the active folder's `solution.md` exists, note to the user that it is now stale and should be deleted or re-solved before running normalize-all.

## Step 6 — Report and Set the Verify Contract

Report a compact summary: the diagnosed weakness, which techniques were stacked, old→new taxonomy (and old→new folder path when renamed), and that `solution.md` is now stale.

**Verify contract (applies to your NEXT turn, no prompt needed):** after this run, if the user's next message is a candidate answer, value, tuple, set, or a pasted model solution for this hardened problem — with no other instruction — treat it as a request to verify that answer against the hardened `problem.md`. Do not ask what they want or which mode to use, and do not re-run hardening. Run the `skills/math-solve/SKILL.md` verification directly: its Phase 4 Counterexample Attack Gate plus an independent from-scratch re-derivation of the true answer, then report whether the pasted answer matches. If verification needs a ground-truth solution and none exists yet, derive it yourself first, then compare.

## Hard Rules

- **DO** auto-decide every internal choice and proceed without yes/no confirmation prompts (which solution to read, which technique, whether to pivot direction, whether to rename the folder, which slot to move to). The only permitted stop is a missing/empty `$PROBLEM_FILE`; a blocked web audit falls back to the local originality checks (Step 4c) and does not stop the run.
- **DO** harden by a large single-pass jump — stack **at least two** load-bearing techniques and reach the frontier ceiling in one run. Never ship an incremental one-notch tweak unless the user explicitly asks for a small bump or you have hit the By-Hand / Answer-Length / computational-volume ceiling (then harden up to the limit and say so, or recommend replacement per the Harden-or-Replace Gate).
- **DO** run the **Harden Loop Gate** (`skills/_shared/harden_loop.md`, Step 4d) before saving — it runs first among the gpt-5.4/design-quality gates, after the P2/P8 terminology pre-pass (which cleans the statement first), and ahead of the rest of the Triviality Probe and hard gates. Gate-clean is required to overwrite `$PROBLEM_FILE`; a stump is pursued but never required — on honest-effort ladder exhaustion, a gate-clean acceptance-profile draft may ship (Gate > Stump Rule, Acceptance-Profile Fallback above); a gate-clean draft that is off-profile is not saved (replace instead).
- **DO** use the isolated Codex CLI recipe in `stump_gate.md` (invoked by the harden loop's Diagnose and Final phases) before claiming the CLI cannot run. Capture exit status, output, stdout, and stderr. Initialization/auth/filesystem/model-resolution failures are `INFRA_ERROR`, not solver failures, do not consume a harden-loop round, and leave the official gate blocked. Never substitute another model and label the required gpt-5.4 gate complete.
- **DO** treat the Acceptance-Profile Fallback above purely as the loop's acceptance-fallback exit condition (Gate > Stump Rule) — never as a reason to stop hardening before Step 4d's ladder has run, and never to ship a draft that is still solved by either blind gpt-5.4 thread while the ladder has not been exhausted. On ANSWER-SUSPECT, stop and surface to the user instead of looping.
- **DO** update this problem's row in `workspace/frontier-problem/used_concept_map.md` in the same run (Step 5).
- **DO** increment/add the matching row in `workspace/frontier-problem/mechanism_registry.md` for this problem's (possibly new) decisive skeleton in the same run (Step 5; contract in `skills/_shared/frontier_workspace.md`) — this keeps the P4 saturation tally accurate for the next run.
- **DO** rename the `problemNN-taxonomy-slug/` folder to the new slug (same `NN`, move both files, prefer `git mv`) whenever hardening changed the Domain/Sub-domain — never leave a stale slug.
- **DO** honor the Step 6 verify contract: if the user's next message is a bare candidate answer or pasted solution, verify it against the hardened problem without asking, instead of re-hardening.
- **DO NOT** harden by raising parameters, adding parts, or increasing the number of requested outputs — difficulty must come from deeper structure.
- **DO NOT** change the domain/sub-domain unless the hardening genuinely shifts the primary mathematical machinery.
- **DO NOT** choose a new taxonomy label from hardcoded memory; read `skills/_shared/taxonomy_slots.md` or the user's latest portal snapshot if the label changes.
- **DO NOT** introduce a false trail through ambiguous wording — the problem must remain mathematically honest.
- **DO NOT** harden in a way that makes the answer ill-defined or the problem unsolvable.
- **DO NOT** create fake difficulty by requiring obscure external facts, long computations, or private context.
- **STRICT RULE — HARD GATES**: before editing, confirm the hardened problem still clears every HARD GATE in `skills/_shared/hard_gates.md` on both the statement and the honest solution route. If any fails or is skipped, the problem is not acceptable for frontier submission — replace or redesign. In particular, hardening that balloons the honest Steps write-up past the Solution Length cap is a Self-containedness explosion.
- **DO NOT** harden into a proof prompt or an answer that uses notation not introduced in the prompt — these are automatic rejects alongside the gates in `skills/_shared/hard_gates.md`.
- **DO NOT** harden by pushing the final answer behind a software-only calculation. A fully specified recurrence or finite sum is still unacceptable if the written solution cannot derive the final vector, polynomial, or number without external computation.
- **DO NOT** ignore a pasted model solution or reviewer note. If the user supplies one, treat it as the primary evidence for why the problem failed and harden against that exact route.
- **DO NOT** count an intended dependency node as load-bearing until it passes the
  **answer-sensitivity deletion test**: correct, perturb, or remove that node and propagate the
  change. If the requested answer is unchanged, redesign the target/order/normalization so the node
  affects the answer, or remove it from the claimed depth. A correct final answer reached through
  such a local error is a successful shortcut, not a stump.
- **DO NOT** apply generic hardening when a specific shortcut is known. Every major change must block, complicate, or make structurally insufficient the observed solve route.
- **DO NOT** skip the web originality audit before overwriting `problem.md`.
- **DO NOT** skip the Local Repository Originality Gate or treat a low text-similarity score as proof of originality; semantic skeleton overlap takes precedence over wording.
- **DO NOT** accept hardening that merely disguises a known online problem by changing constants or notation.
- **DO NOT** harden into an over-mined core-technique family (Step 4c item 5) — a draft that passes the pairwise originality axes but reaches for the saturated character-sum / Paley / rooted-forest family is still a texture twin; prefer an under-used family, accepting slightly less brutality, to broaden repo coverage.
- **DO NOT** overwrite until the hardened draft passes the Triviality Probe per Step 4b (all hard-tier lines PASS; `skills/_shared/triviality_probe.md` owns the tier detail). P2 and P8 are non-waivable — the accepted-profile match never excuses them.
- **DO NOT** answer a P5 failure (or a small-input/small-answer flag) by enlarging the numbers — bigger fixed data leaves the side-channel open and only adds human arithmetic; generalize to a free parameter, take a limit, or make verification as hard as derivation. A free parameter is not an automatic P5 pass — reject it when small cases interpolate, extrapolate, or pattern-match the full law.
- **DO NOT** ignore a linked-current `analysis/by-problem/probNN.md`; its observed shortest successful route outranks the intended route in `solution.md`.
- **DO NOT** ship a hardening regression: compare pre/post probe results and true idea-stump evidence, counting length cutoffs on the correct route as solves rather than stumps.
- **DO NOT** leave the intended solution's certificate as a vague label ("exact arithmetic", "exact finite DFS", "Smith minors", "resultant elimination") without specifying the compact audit data that will actually be shown.
- **DO NOT** treat a fully expanded, self-contained-but-table-heavy solution as acceptable merely because it is self-contained; if the tables themselves carry the apparent difficulty, redesign (Self-containedness explosion).
- **Coupled target vs horizontal expansion test**: a tuple of requested quantities is allowed only when the components are *mutually dependent* — each must be derived before the next, or they jointly express one natural object. A tuple of loosely related, independently computable outputs bundled only to inflate the answer is horizontal expansion and is forbidden. Test: if removing one component leaves the others solvable by the same work, the tuple is horizontal — cut it back to the single core object.
- **Frontier framing must be load-bearing, not decorative**: when composing areas, iterating, or adding multi-phase structure, the composition/iteration/multi-phase structure must genuinely add difficulty — the parts must have no joint analogue or shortcut, and at least one invariant must cross the boundary. If the parts decouple or the bridge is removable without changing the answer, the framing is decorative and forbidden.
- **Indirection must be necessary, not cosmetic** (Technique H): the model change must be provably required because the direct attack stalls or misleads. Renaming or re-skinning a problem that still yields to the same machinery is not hardening.
- **DO** replace the problem outright when the model already found the structural core and every remaining hardening option only adds computational volume (Harden-or-Replace Gate).
- **DO** verify the hardened problem passes all Pre-Submission Stress Test checks before overwriting.
- **DO** target the frontier benchmark standard: 5–7 nonroutine dependency nodes, at least four hidden moves, at least two blocked model attack routes.
- **DO** prioritize honest low-remaining-capacity slots when a taxonomy change is necessary.
- **DO** delete or flag stale solution files after hardening.
- **DO** rerun originality searches after every substantial hardening pass.
