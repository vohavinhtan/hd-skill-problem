---
name: math-clone
description: Generate original frontier math problems in the style of Project Rotura expert submissions. Selects an open Domain/Sub-domain from taxonomy_slots.md (or the one named in the arguments) and creates a problemNN-taxonomy-slug folder under workspace/frontier-problem/ and saves problem.md there. The problem is solved separately via the math-solve skill. Use when the user wants to create new model-breaking math problems modelled after the EK_Rotura_Main_ABYAN example set.
user-invocable: true
disable-model-invocation: false
argument-hint: optional domain or sub-domain name from skills/_shared/taxonomy_slots.md — if omitted, auto-selects the strongest open row
---

# Math Clone — Problem Generator

## Contract

- **Task:** generate one original frontier problem in the chosen open Domain/Sub-domain and save it to `workspace/frontier-problem/problemNN-taxonomy-slug/problem.md`, updating that problem's `used_concept_map.md` and `mechanism_registry.md` rows in the same run.
- **Defaults (act, do not ask):** auto-select the strongest honest open Domain/Sub-domain row from `skills/_shared/taxonomy_slots.md` (or use the one named in the arguments) and every internal design choice; proceed without confirmation prompts and state the choices in one line each in the report.
- **Only hard stop:** the folder number `NN` was not supplied and cannot be inferred from the arguments or context — ask which `NN` to use (parallel clones claim numbers before folders exist, so a folder scan collides; never auto-number). Nothing else pauses the run.
- **Done:** the Phase 1.5 candidate-triage, Triviality Probe P1–P8 block, and Harden Loop verdict are recorded, every `skills/_shared/hard_gates.md` gate passes, `problem.md` is written via the Problem File Template, and the index rows are updated — all in this turn. Persist end-to-end; do not narrate a plan before acting.

You are an expert mathematical problem author working on Project Rotura. Your task is to create **original** math problems that match the style, rigour, and difficulty of the EK_Rotura_Main_ABYAN expert submission set.

## Frontier Difficulty Target

Target a **model-breaking frontier benchmark**, not a standard graduate exercise. The generated problem should be designed so that a GPT-5.4-class thinking model is likely to fail unless it discovers the entire hidden structure of the problem. This is an aspirational difficulty target, not permission to make the problem ill-posed, uncheckable, or dependent on unsolved research.

**Acceptance calibration (user-confirmed through 2026-07-23 — this decides where to spend effort).** The current-flow accepted corpus (see `skills/_shared/passed_exemplars.md`) supports a broader profile than the original nine-problem batch. The stable bar is a P4-clean bespoke gateway, a serial chain of dependent nonroutine steps, a closure certificate appropriate to the task (gap/attainment, uniqueness, exhaustiveness, inverse check), and a natural exact answer under 100 characters. The answer need not be parametric or near the length cap. Rejections come from stock recognize-and-apply cores, not from a model managing to solve the problem. Build to this profile and ship; pursue an actual stump only as a bonus via the playbook's verified moves — per the **Gate > Stump Rule** (Phase 2c, delegated to `skills/_shared/harden_loop.md`): a gate-clean draft is the requirement to save, a stump is pursued but never required, and on honest-effort exhaustion of the harden loop a gate-clean acceptance-profile draft may still ship.

The problem must remain solvable by a human expert from the statement alone, with a concise ground-truth answer. Increase difficulty through structure, not obscurity:

- Prefer graduate-to-early-research-level mechanisms over undergraduate or textbook mechanisms.
- Require 5–7 dependent nonroutine reasoning nodes, with at least four latent rather than named in the statement, arranged as a serial unlock chain around one gateway discovery — not tracked in parallel (see `skills/_shared/frontier_authoring_guide.md` → *Depth over Breadth*).
- Include at least two plausible false trails that fail for structural reasons.
- Use a final answer that is short and checkable, but whose derivation requires reconstructing hidden objects such as a dual certificate, obstruction, quotient, normal form, interpolation kernel, martingale, coupling, forcing construction, ordinal/rank invariant, spectral decomposition, or extremal equality case.
- Avoid problems that a model can solve by recognizing a named theorem, running symbolic algebra, enumerating cases, or guessing the output type.
- Do not rely on unsolved conjectures, excessive computation, private facts, or intentionally ambiguous wording.

### Customer Difficulty Feedback

Problems are rejected as insufficiently hard when the solver can recognize a familiar pattern and apply a stock move. Avoid prompts whose core reduces to examples like:

- checking a simple inequality such as `area > 1/5`;
- checking a congruence such as `sum \equiv 0 \pmod 7`;
- applying a visible calculus rearrangement such as `x \leq \sqrt{1-x^3}`;
- identifying a named result such as Bernstein's inequality or Becker's integral formula and substituting parameters.

Preferred problems force the solver to discover the direction of attack and build a local tool, rather than recall a formula. Before finalizing, verify that the intended solution needs all three of:

- **discovery of direction**: the statement does not reveal the auxiliary object, invariant, certificate, game strategy, transform, or normal form;
- **tool construction**: the solver must create a problem-specific lemma, recursion, coupling, certificate, filtration, or compression;
- **idea combination**: at least two mathematical ideas interact, and neither alone solves the problem.

If the solution outline can be summarized as "recognize theorem, apply it, simplify," reject the draft even if the arithmetic is long or the constants are ugly.

## Reference Material

**Read in two tiers — do not re-read everything every run.**

*Tier 1 (ALWAYS, every run):* `skills/_shared/taxonomy_slots.md`, `workspace/frontier-problem/used_concept_map.md` (Phase 1b), `skills/_shared/breaker_playbook.md`, `skills/_shared/passed_exemplars.md` (the **Current-Flow Accepted Corpus** and its Archetype Catalog are the primary design models), `skills/_shared/hard_gates.md`, `skills/_shared/triviality_probe.md`.

*Tier 2 (ON DEMAND only):* the two PDFs (layout/format questions only — their answer sizes predate the Answer Length Gate; never copy answer sizing from them), `Problem-bonus-domain.md` (LaTeX rule lookups), `skills/_shared/frontier_authoring_guide.md` (pattern deep-dive when the archetype catalog does not settle a choice), `skills/_shared/originality_audit.md` (Phase 2b), `skills/_shared/accepted_topic_history.md` (selection prior), the two response-archive aggregates (per-taxonomy deep-dive when the playbook does not cover the row).

| File | Purpose |
|------|---------|
| `rotura-problem-example/EK_Rotura_Main_ABYAN_Example_Submissions.pdf` | **Primary style reference.** 10 fully worked expert problems from the broader Rotura-style set. Each entry includes the problem statement, answer, metadata (domain, sub-domain, problem form, answer type, domain explanation), and a rigorous step-by-step solution. Use these as the benchmark for difficulty, structure, and mathematical depth. |
| `rotura-problem-example/rotura_sample_problem.pdf` | **Format reference.** A single fully typeset sample problem showing the exact layout expected: problem statement box, answer box, and numbered solution steps. Match this visual and structural format. |
| `rotura-problem-example/Problem-bonus-domain.md` | **Full taxonomy and LaTeX style guide.** Lists valid domains and sub-domains, defines bonus problem/answer types, and specifies mandatory LaTeX formatting rules (allowed delimiters, fraction style, polynomial ordering, symbol commands, etc.). |
| `skills/_shared/taxonomy_slots.md` | **Current taxonomy availability source of truth.** Maintained manually by the user with open and closed rows for Domain/Sub-domain, Problem Type, and Answer Type. Read this before choosing any taxonomy label. |
| `skills/_shared/accepted_topic_history.md` | **Accepted-theme bias file.** Tracks which topic families have already succeeded. Use it to bias future drafts toward themes that have worked before, once the user populates it. |
| `skills/_shared/frontier_workspace.md` | **Workspace layout source of truth.** Defines `workspace/frontier-problem/problemNN-taxonomy-slug/` folders used by generation, solving, and normalize-all. Read this before writing any file. |
| `skills/_shared/originality_audit.md` | **Originality verification workflow.** Defines the required mathematical fingerprint and web-search audit that must pass before saving a generated problem. |
| `skills/_shared/frontier_authoring_guide.md` | **Frontier-tier authoring patterns.** Defines the preferred model-breaking design patterns: composing independent areas, on-the-spot objects, rare concrete objects, iteration, multi-phase state, false trails, and verifiable output formats. Also defines the scalar-depth defense required for any bare scalar answer. Read this before designing or hardening the problem. |
| `skills/_shared/triviality_probe.md` | **Eight-test difficulty gate.** State-space size, decoration-deletion, answer-triviality, core-reduces-to, side-channel recoverability, route-concession (statement must not hand over the decisive step), depth-vs-breadth (serial dependency, not many parallel tracked conditions), and terminology-density (P8: ≤3 bespoke defined terms, ≤2 preferred, standard taxonomy vocabulary, no contrived stacking). Run before saving any generated problem. |
| `skills/_shared/passed_exemplars.md` | **Certificate pattern taxonomy.** Generic shapes (candidate+gap, inverse-shadow reconstruction, quotient+correction, active+slack, finite audit table) plus, once the user populates it, real confirmed examples of which pattern worked for this project's own accepted problems. |
| `skills/_shared/response_archive.md` | **Weakness-mining archive contract.** Defines `workspace/response-archive/analysis/by-taxonomy.md` (shortcut patterns observed per Domain/Sub-domain/Problem Type/Answer Type) and `common-failures.md` (recurring shortcuts across taxonomies), both mined from real downloaded model-response traces by `evaluate-responses`. These two aggregates are the deep-dive source, consulted for the specific-taxonomy lookup when the `breaker_playbook.md` digest does not cover the current row; the playbook is the fast path. |
| `skills/_shared/hard_gates.md` | **Automatic-reject gates.** By-Hand Solution Gate, hand-solvable magnitude bounds, no-DNE, no-obscure-topic, and the black-box severity scale. Read before saving; every rule there is a HARD GATE. |
| `skills/_shared/breaker_playbook.md` | **Distilled archive digest (primary design input).** Durable lessons on what actually defeats models, winning patterns, saturated skeletons to avoid, and verified hardening moves — read this instead of the two large aggregate files, which are for deep-dive only. |
| `skills/_shared/breaker-topics/<slug>.md` | **Per-topic harden-loop policy — load exactly one, after Domain/Sub-domain is fixed (Phase 1).** Model priors, mechanism-class menu, independent gate pairs, natural closure certificates, saturated routes, answer-shape options, round-log, and distilled lessons for that one sub-domain; schema and slug rule in `skills/_shared/breaker-topics/README.md`. Feeds Phase 1.5 candidate-triage and is the `TOPIC_FILE` input to the Phase 2c harden loop. Do not read any other sub-domain's topic file this run. |

**How to use these references:**
- Study the 10 examples in `EK_Rotura_Main_ABYAN_Example_Submissions.pdf` to understand the range of mathematical depth, the variety of answer types, and how metadata is written.
- Use `rotura_sample_problem.pdf` as the structural template for the output file.
- Consult `Problem-bonus-domain.md` for the full taxonomy and all LaTeX rules before formatting.
- Consult `skills/_shared/passed_exemplars.md` and name which certificate pattern the intended solution is expected to expose before finalizing. If none of the patterns can be made load-bearing, reconsider the design rather than saving a problem whose only difficulty is computational volume.
- For the per-taxonomy deep-dive, consult `workspace/response-archive/analysis/by-taxonomy.md` for the target Domain/Sub-domain/Problem Type/Answer Type row, and `workspace/response-archive/analysis/common-failures.md` in general. If a shortcut is already recorded for this taxonomy or as a cross-taxonomy common failure, design the new problem to close it off from the start rather than risk reproducing it. If the archive does not exist yet, skip this check.

The remaining references (`taxonomy_slots.md`, `accepted_topic_history.md`, `frontier_workspace.md` and the `NN`-folder rule, `originality_audit.md`, `frontier_authoring_guide.md`, `triviality_probe.md`, `breaker_playbook.md`, and the per-sub-domain `breaker-topics/<slug>.md`) are consulted at the phase that uses them — see the Mandatory Workflow and Hard Rules below; the row purposes in the table above are not repeated here.

## Taxonomy and Selection Guidance

Before selecting any Domain/Sub-domain, Problem Type, or Answer Type, read `skills/_shared/taxonomy_slots.md`. Use it as the current source of truth for open slots.
Also read `skills/_shared/accepted_topic_history.md`. If it contains populated accepted-theme data, use that data as a positive prior when choosing the next problem family.

Use the latest portal snapshot if the user provides one; for that run, the snapshot overrides `skills/_shared/taxonomy_slots.md`. Do **not** paste or reproduce the full portal table in outputs; only report the chosen Domain/Sub-domain, Problem Type, Answer Type, and why the choice fits.

Selection rules:
- Exclude rows marked `closed`, `full`, unavailable, or explicitly marked as having no open slots.
- Among honest mathematical fits, prefer rows and problem shapes that align with populated accepted-theme data from `skills/_shared/accepted_topic_history.md`, because user-validated themes are more likely to succeed again in math-clone.
- If the accepted-theme file is empty, still scaffolded, or not informative for the current choice, choose the strongest honest fit with the best frontier potential among the open rows.
- If the preferred rows are unavailable or ambiguous, still act: pick the strongest honest open Domain/Sub-domain row (or the one named in the arguments) from `skills/_shared/taxonomy_slots.md`, state the choice in one line, and proceed — do not display the table and pause.
- Never force an accepted-like taxonomy label if the primary mathematics does not honestly belong there.

### Taxonomy rules

- Pick the **primary** domain/sub-domain: the problem should still belong there after removing cosmetic context and secondary techniques.
- If a required domain/sub-domain is too weakly represented by the current idea, redesign the problem rather than forcing the label.
- Avoid "taxonomy camouflage": a problem must genuinely use the machinery of the selected row from `skills/_shared/taxonomy_slots.md`, not merely contain surface vocabulary from that row.
- If several honest options exist, choose only from the currently open rows in `skills/_shared/taxonomy_slots.md`, preferring alignment with populated accepted-theme history.

### Intrinsic vs operational priority (filter, then rank, then tie-break)

Selection among candidate directions (e.g. Phase 1.5 candidate-triage) runs as three ordered stages — never as a single weighted score:

1. **Filter (gate > stump).** Drop any candidate that fails honest-taxonomy-fit (the "Taxonomy rules" above) or fails any hard gate / hard-tier probe (`skills/_shared/hard_gates.md`, `skills/_shared/triviality_probe.md`, the Harden Loop Gate). Gates are the filter, not one input among several — a candidate that fails a gate is removed before ranking begins, regardless of how strong its intrinsic priority looks.
2. **Rank the survivors** by intrinsic mathematical priority: unnamed gateway (the decisive step the statement does not reveal), global coupling (the answer depends on the structure as a whole, not a local sub-case), compact closure certificate, side-channel resistance (no pattern-matchable shortcut around the intended machinery), and a compact gradeable answer. These are qualities of the mathematics itself, judged holistically — **no numeric weights are hardcoded** for them anywhere in this skill.
3. **Tie-break only among candidates that are already comparably strong on stage 2.** Slot urgency (an open taxonomy row that is otherwise going unfilled) and idea-readiness (a direction already fleshed out enough to draft quickly) may only decide between survivors of roughly equal intrinsic priority. Never use slot urgency or idea-readiness to promote a weaker candidate over a stronger one, and never force a taxonomy label onto a candidate just to fill an open slot — an honest-fit failure at stage 1 removes the candidate regardless of how badly a slot needs filling.

This reconciles the priority language elsewhere in this skill (e.g. "prefer accepted-theme alignment, then smallest positive remaining capacity, then frontier potential" in Phase 1): those are stage-3 tie-break heuristics among gate-clean, comparably-strong survivors, not a replacement for stages 1–2, and never a numeric scoring rubric.

## Bonus Categories

To maximise diversity and earn bonus credit, prefer bonus types. Read the full Problem Type and Answer Type definition tables, including priority order, in `skills/_shared/taxonomy_slots.md` (Problem Type Slots / Answer Type Slots). Select **exactly one** Problem Type and **exactly one** Answer Type from those tables — do not list multiple types, and never choose a bonus label because an intermediate object has that form; the **final answer itself** must have that form. Use `Exact scalar` only with the scalar-depth defense (see Hard Rules).

**Answer Length Gate (HARD GATE, design-time)**: read `skills/_shared/hard_gates.md`. The final answer, `$` and whitespace stripped, must be under 100 characters. Before committing to a bonus type, sketch the fully written-out final object (every symbol expanded, no shorthand aliases) and estimate its length. Treat 100 as a ceiling, never a target: confirmed current-flow answers span roughly 27–101 characters (compliant answers stay ≤98; 101 is a pre-gate outlier) and include both fixed and parametric objects. Choose the shortest natural answer that remains non-degenerate, error-sensitive, and honestly classified; do not add coordinates, cases, or notation merely to consume legal characters. Prefer a few small entries (e.g. a $2\times2$–$3\times3$ matrix, a length-3–4 vector, a small finite set, a low-degree polynomial with few terms) over large or dense ones. If no honest bonus type fits, use a more compact Answer Type rather than force an oversized object. Any evaluation/invariant/entry used to shorten a larger object must pass the Answer Compaction Gate in `skills/_shared/hard_gates.md`.

### Bonus Alignment and Scope Discipline

When designing or upgrading a problem for bonus categories, do **not** add difficulty by asking for many loosely related outputs. Prefer one mathematically rich target whose final answer clearly matches exactly one Problem Type and exactly one Answer Type.

Use these guardrails:
- **One core output**: the requested final answer should usually be a single object, such as one canonical factorization, one matrix, one function, one set, one optimizer, or one parameter vector. Avoid tuples that bundle unrelated items like "polynomial, field, group, stabilizer, generators" unless the tuple itself is the natural mathematical object.
- **Difficulty should be vertical, not horizontal**: make the problem harder by hiding a structural insight, invariant, duality, stabilizer, orbit decomposition, interpolation principle, or transformation. Do not make it harder by appending extra computations or extra requested objects.
- **Classification-first design**: before finalizing the prompt, choose the intended Problem Type and Answer Type. Then ensure the requested output visibly has that shape.
- **One-type rule**: the final metadata must contain exactly one Problem Type and exactly one Answer Type. If more than one seems applicable, choose the one that best describes the requested final object, not the solution method.
- **Answer Type honesty**: classify by the final requested object, not by intermediate objects used in the solution. If the final answer is a tuple containing a polynomial plus a field plus a group, it should be `Tuple or ordered list`, not `Polynomial or rational function`. If the desired Answer Type is `Polynomial or rational function`, make the final requested object itself a polynomial, rational function, or factorization.
- **Use auxiliary structures as proof tools**: Galois groups, stabilizers, kernels, certificates, normal forms, and generating sets can be required in the derivation, but should not automatically become components of the final answer.
- **Concise prompt, deep solution**: remove long root lists, tables, or auxiliary definitions from the problem statement when they can be reconstructed naturally in the solution. State only what is needed to make the target well-defined.

## Input

Accept the domain from one of these sources (priority order):
1. a Domain/Sub-domain named in the invocation arguments — used directly
2. Otherwise auto-select the strongest honest open Domain/Sub-domain row from `skills/_shared/taxonomy_slots.md` yourself — do not ask (see Phase 1).

If the user requests **multiple problems**, collect all domain choices first (one per line), then generate them one by one in the order given.

## Mandatory Workflow

### Phase 0 — Lesson Catch-up (mandatory, before any new work)

Scan `workspace/frontier-problem/.harden-pending/` for `needs-distill` markers; if any, read the referenced topic file's `## Round-log` and distill the pending lessons before starting new work. (See `skills/_shared/frontier_workspace.md` → "Harden-pending sentinel" for the marker lifecycle and CLAUDE.md → "Lesson Backstop" for why these markers exist.) If none are found, proceed directly to Phase 1.

### Phase 1 — Select Domain (auto-decide, no prompt)

- If a domain was named in the invocation arguments, map it to a row in the taxonomy table and use it.
- If no domain was supplied, **do not ask** — auto-select the strongest honest open Domain/Sub-domain row yourself using the selection rules above (prefer accepted-theme alignment, then smallest positive remaining capacity, then frontier potential; skip rows already covered by existing same-domain problems per the Phase 1b audit). Report the chosen row in one line and proceed. Only when no honest open fit exists at all, list the open rows and ask.
- Identify a specific sub-domain, exactly one Problem Type, and exactly one Answer Type that align with accepted-theme history when useful, while remaining honest and frontier-worthy.
- Once the sub-domain is fixed, load exactly one topic file — `skills/_shared/breaker-topics/<slug>.md` for this sub-domain's kebab-case slug (schema: `skills/_shared/breaker-topics/README.md`) — for use by Phase 1.5 (candidate-triage) and Phase 2c (the harden loop's `TOPIC_FILE` input). Do not read any other sub-domain's topic file. If none exists yet for this sub-domain, note the gap and proceed on the shared machinery alone (`hard_gates.md`, `triviality_probe.md`, `breaker_playbook.md`) for this run.

### Phase 1b — Existing Problem Audit (MANDATORY before designing)

The used-concept map is **precomputed**: read `workspace/frontier-problem/used_concept_map.md` (one row per problem: sub-domain, core object, mechanism, decisive technique/skeleton, answer shape — contract in `skills/_shared/frontier_workspace.md`). Do **not** re-scan every `problemNN-*/problem.md` folder; that scan is what the index replaces.

From the index:
1. Filter to same-domain rows and record their (sub-domain, core object, mechanism, technique) tuples.
2. Read the full `problem.md` **only** for same-sub-domain rows (usually 0–3 folders) — these are the live duplicate risks and the only ones needing statement-level comparison.
3. For the P4 skeleton-saturation tally, count the planned decisive skeleton against the index's technique column instead of grepping every `solution.md`.
4. If the index file is missing or its row count clearly mismatches the folder count, fall back to the legacy full scan for this run and tell the user the index needs a rebuild.

After the audit, you hold the **used-concept map** — the list of (sub-domain, core object, mechanism, technique) tuples already covered.

**On save (Phase 3), append/update the new problem's own row in `used_concept_map.md` in the same run** — that is what keeps this audit cheap for every later run.

The new problem **must differ** from every existing same-domain problem on **all four axes simultaneously**:
- Different sub-domain: choose another open row from `skills/_shared/taxonomy_slots.md` when the current row is already represented.
- Different core object: use a genuinely different mathematical structure, not a renamed version of the same object.
- Different problem mechanism: ask for a structurally different operation or target, not the same task with new parameters.
- Different solution technique: require a different main theorem, invariant, certificate, or construction strategy.

Changing only parameters or input data (different groups, different counts, same method) is **not sufficient** — this constitutes a duplicate and must be rejected.

**Creativity escalation rule**: the more same-domain problems already exist, the more creative and structurally distinct the new problem must be. If $k$ same-domain problems already exist:
- $k = 0$: standard difficulty and structure are acceptable
- $k = 1$: must use a different sub-domain and mechanism than the existing problem
- $k = 2$: must use a different sub-domain, mechanism, and solution technique than both existing problems; cross-domain techniques are strongly preferred
- $k \geq 3$: the new problem must feel conceptually unrelated to all prior problems — different mathematical world, different style of insight, different answer type

**Cross-domain texture dedup (not just same-domain).** The four-axis check above compares only same-domain rows, but sameness leaks *across* domains through a shared **core-technique family** and **archetype** — a Bayesian, measure-theory, or design-theory wrapper over the same character-sum-on-trees core is a texture duplicate even though the domain label differs. So before designing, also scan the **entire** `used_concept_map.md` decisive-technique/mechanism columns (all domains) and group rows into core-technique families by shared machinery, e.g.:
- quadratic-character / Paley / character-sum cores (currently the most over-represented family in the repo — problems 16, 30, 37, 69, 70, 118, 147, 150);
- spanning-tree / rooted-forest / matrix-tree kernel cancellation (e.g. 88, 150);
- resultant / elimination, spectral-of-combinatorially-defined-matrix, planted-identity completion, degeneracy-locus case-folding.

If the family you plan to use is among the **2–3 most frequent** in the whole map, pick a different family. Do not ship another wrapper-core problem whose hidden core is a character sum on a graph/tree over $\mathbb F_p$ — that specific core is now saturated. Rotate the Archetype Catalog entry too: do not reuse the archetype of the last few problems.

**Topic breadth over marginal stump-ease.** The accepted-corpus archetypes are easier to stump, but leaning on them repeatedly is exactly what makes new problems read like near-twins. Prefer sub-domains and mathematical worlds that are **under-represented** in the map over the familiar cluster, even at some cost to stump-difficulty — it is better to ship a slightly-less-brutal problem in a fresh area (e.g. a genuinely different domain, a different style of required insight, a different answer object) than another sibling of the dominant character-sum family. Spread coverage across the taxonomy rather than re-mining a few comfortable topics.

Carry the used-concept-map summary into the final report as a recorded artifact (not a pre-write pause — do not stop for confirmation):
> "Found [k] existing [Domain] problem(s): [brief description of each]. The new problem will use [chosen sub-domain / mechanism / technique], core-technique family [family], which is [not among / away from] the over-represented families in the map — chosen to broaden coverage, not re-mine the dominant character-sum cluster."

If no same-domain files exist, note that and proceed directly to Phase 2.

### Phase 1c — Web Originality Audit Setup

Read `skills/_shared/originality_audit.md` before drafting. The final problem must pass both:
- the local workspace duplicate audit from Phase 1b; and
- the web originality audit from `skills/_shared/originality_audit.md`.

While designing, maintain a mathematical fingerprint of the draft: core object, exact constraints, mechanism, answer target, distinctive formulas/constants, and hidden solution technique. This fingerprint will drive web searches before saving.

### Phase 1.5 — Candidate Triage (MANDATORY before drafting)

Before writing the full problem statement, emit **3 candidate directions** grounded in the loaded
topic file's `## Mechanism-class menu` and the Phase 1b used-concept map (do not repeat an
over-represented core-technique family). For each candidate, report exactly these fields — the
candidate-triage output contract:

- **Mechanism class** — which topic-file `## Mechanism-class menu` entry (or a genuinely new class)
  drives this candidate.
- **Domain-native object** — the core object, expressed in the chosen sub-domain's standard
  vocabulary.
- **Decisive unnamed gateway** — the hidden step the statement does not reveal.
- **Independent 2nd gate** — the second load-bearing check from the topic file's `## Independent gate
  pairs` that a correct answer must clear separately from the first.
- **Likely shortcut** — the shortcut a model is most likely to try first.
- **Why it fails** — why that shortcut does not reach the intended answer for this candidate.
- **Closure cert** — which certificate from the topic file's `## Natural closure certificates` the
  intended solution will exhibit.
- **P5 risk** — side-channel recoverability risk (Triviality Probe P5) and what controls it.
- **P6 risk** — route-concession risk (Triviality Probe P6) and why the statement does not hand over
  the decisive step.
- **Expected Problem Type + Answer Type** — the taxonomy pair this candidate is expected to classify
  as.
- **Expected answer length** — rough character estimate of the fully written-out final object
  (Answer Length Gate budget, `skills/_shared/hard_gates.md`).
- **Expected solution length** — rough character estimate of the `## Steps` section (Solution Length
  Gate budget, `skills/_shared/hard_gates.md`).
- **Hard-gate risks** — any `skills/_shared/hard_gates.md` rule this candidate risks tripping
  (By-Hand Solution Gate, Smokescreen, Self-Containment, Mechanical-Bookkeeping, Solution Length) and
  how the candidate controls it.
- **Early-abandon condition** — the concrete sign that would make this candidate not worth drafting
  (e.g. the gateway collapses to a named theorem, the second gate is redundant with the first).

Screen all 3 candidates against Probe P4 (core-reduces-to), Probe P5, and Probe P6
(`skills/_shared/triviality_probe.md`), the full `skills/_shared/hard_gates.md` suite, and the topic
file's `## Saturated routes` — reject any candidate whose decisive step already appears there. Also
reject any candidate whose mechanism/core-technique family duplicates the Phase 1b cross-domain
texture dedup. Discard candidates that fail a probe/gate on inspection; pick the strongest survivor
and carry it into Phase 2 as the design brief. Do not draft a full problem statement for the other
two. If fewer than 3 candidates survive honest triage (e.g. the topic file's menu is nearly
exhausted, or no topic file exists yet for this sub-domain), draft with the strongest 1–2 and record
why a third honest candidate was not available.

### Phase 2 — Design the Problem

Create an original problem satisfying **all** of the following requirements.

Before drafting, read `skills/_shared/frontier_authoring_guide.md` and choose the design pattern(s) that will drive the problem. Prefer patterns that create structural depth rather than long computation:

- compose two independent mathematical areas through a real translation layer;
- define a new local object and force the solver to derive its structure;
- use a rare named object only when its concrete data must be reconstructed;
- iterate a process and ask about a limit, expectation, extremum, or late term;
- use multi-phase state bookkeeping with invariants crossing phase boundaries.

Record the selected pattern(s) in the design notes and make sure they are mathematically essential, not decorative framing.

Apply the **Specify, Do Not Construct** rule from `skills/_shared/frontier_authoring_guide.md`: the statement may say what the requested object is or pin it down uniquely, but must not spell out the recipe that produces it when that recipe is the solution's first move. If the answer must be compacted to fit the 100-character limit, follow that section's compaction preference order (direct short answer → intrinsic invariant of an input-built object → extracted quantity only if it clears Probe P6). This is checked by P6 (Route-Concession Test) before saving.

Apply the **Depth over Breadth** rule from the same guide: arrange the nodes as a serial chain behind one gateway discovery, keep simultaneously-tracked states to ≤ 2–3, and cut any node that fails the deletion test. This is checked by Probe P7 (Depth-vs-Breadth Test) before saving.

Apply the **Notation Restraint** rule *while drafting* (design-time budget, not a later cleanup): keep the statement to **≤ 3 bespoke defined terms** (custom classes, named predicates, invented auxiliary quantities/notation — aim for ≤ 2, treat 3 as a justified ceiling) and ≤ 3 held in mind at once, and use the **standard vocabulary and notation of the chosen Domain/Sub-domain** (`skills/_shared/taxonomy_slots.md`) — no invented glyphs, no contrived symbol names, no narrative flavor terms, and never coin a new name for a concept that already has a standard one. Budget these before you write, so the draft is born P8-clean instead of being condensed to fit afterward. Reach for one custom class with a natural question over several chained bespoke objects. This is the same cap Probe **P8** (terminology-density + the taxonomy-vocabulary rule) enforces downstream, and the Rainier "Beyond Project Scope / contrived-terminology" reject reason — designing to it upfront avoids the late strip. See the contrived-terminology guard in `skills/_shared/frontier_authoring_guide.md`.

**Design-time P8 gate: check terminology as soon as the draft exists.** The moment you have a draft statement — before the originality audit and the stump gate — count the bespoke terms and run Probe **P8** (and **P2** decoration). If `N ≥ 4`, > 3 must be held at once, or any bespoke term renames a standard taxonomy concept, condense the design *now* (merge chained objects into one class, inline auxiliary quantities, rename to the standard term, delete flavor) and re-confirm the intended answer is unchanged. Do not carry a P8-failing draft into Phase 2b/2c and rely on the pre-pass to rescue it.

#### Core Requirements

1. **Novel**: not a known textbook exercise or competition problem — invent new parameters, objects, or settings.
2. **Correct domain assignment**: the core mathematical machinery must genuinely belong to the chosen domain.
3. **Appropriate difficulty**: graduate-to-early-research level, requiring a deep chain of structural reasoning rather than reciting memorised facts or theorems.
4. **Clean answer**: the answer must be exact, expressible in closed form, and correspond to a unique solution (though equivalent valid forms are acceptable). The final answer must be a well-defined mathematical object that can be compared against a ground truth. It must also be **short and directly checkable** — a single expression, value, set, or similar object, stated without surrounding prose. Difficulty-check systems compare model outputs against this value; a verbose or sentence-form answer makes that comparison unreliable.
5. **Self-contained, minimally-notated**: all necessary definitions, notation, tables, and reference material required to answer the problem are included in the problem statement — no external context assumed. Every symbol, operator, and custom term used anywhere (including inside the requested answer) must be defined before first use and over the full domain it is later applied to, and no custom term may admit a second defensible reading (Self-Containment Gate, `skills/_shared/hard_gates.md`). Keep bespoke notation to a minimum: **≤ 3 defined terms (aim ≤ 2)**, standard Domain/Sub-domain vocabulary and symbols, no invented glyphs or contrived predicate names, no renaming of standard concepts (Notation Restraint rule / Probe P8). Every symbol introduced must be used by the intended solution.
6. **Not guessable**: the problem must not be answerable by guessing or pattern-matching, and must not be multiple-choice, true/false, or any other format where the answer can be selected rather than derived.
7. **No hints or shortcuts**: the problem statement must not contain hints, worked examples, or phrasing that makes the solution trivial.
8. **No proofs**: the problem must not ask the solver to prove a statement — it must ask for a concrete mathematical object, value, or expression.
9. **Balanced complexity**: the problem must not be excessively computational (requiring tedious arithmetic). Advanced theory is allowed only when the statement defines enough context for a human expert to work from first principles; elegance and insight should drive the solution.
10. **Hand-auditable final evaluation**: the intended solution must derive the final answer in a self-contained way. Do not create a problem where the solver can describe a recurrence, transfer matrix, dynamic program, character sum, sign filter, coefficient extraction, or finite search, but the final vector/polynomial/number is obtainable only by running external software or an unshown large computation.
11. **LaTeX-formatted**: use `$...$` for inline math and `$$...$$` for display math throughout.
12. **Single question**: the problem must contain exactly one question — no parts (a), (b), (c), sub-questions, or multi-part structure of any kind.

13. **Explicit output format**: if the requested object could have several legitimate representations, specify the desired normal form in the prompt. Avoid vague requests such as "find a closed form" or "find the ordinary generating function" unless the acceptable representation is made precise. Prefer asking for a finite, directly checkable component such as a matrix, vector, rational factor, canonical form, finite set, or parameter list.

#### Hard Math Quality Standards

Use `skills/_shared/frontier_authoring_guide.md` as the detailed source for frontier difficulty. Do not duplicate its rules here; apply its design requirements, false-trail rules, output-format requirements, computational-load limits, and model-breaker audit.

The draft must still pass these local gates before saving:

- **Well-definedness**: assumptions are unambiguous, constraints are feasible, extrema are attained when requested, and the target quantity is unique.
- **Concrete final answer**: the requested output is a single exact object matching one Answer Type. Avoid yes/no answers and pure proof prompts. A bare scalar `Exact computation` answer is allowed only with a written scalar-depth defense (Hard Rules); otherwise prefer a bonus Answer Type.
- **Frontier depth**: intended solution has 5–7 dependent nonroutine nodes, at least four hidden from the statement, arranged for depth not breadth (Probe P7), and at least two honest false trails blocked by structure.
- **No formula-recognition shortcut**: the solution is not "recognize theorem, substitute data, simplify." Any named theorem must lead only to an intermediate object.
- **No computation masquerade**: large constants, long tables, coefficient grinding, brute force, or direct symbolic search must not be the main difficulty.
- **No hidden final computation**: the final answer must not depend on an unshown large recurrence evaluation, transfer-matrix multiplication, dynamic program, sign-filter sum, coefficient extraction, SAT/search output, or computer algebra expansion. If the intended solution would need "running the recurrence gives" or equivalent language, redesign the problem.
- **Model-breaker audit**: identify at least two plausible model attacks and redesign if either reaches the answer without the hidden dependency graph.

#### Submission Hard Constraints (automatic-reject gates)

Check every rule in `skills/_shared/hard_gates.md` before saving (the gate list is front-loaded in the core rules). If the By-Hand Solution Gate fails or is skipped, the problem is not acceptable for frontier review.

**Run the design-time gates on the honest solution route, before the model-stump phase (not after).** Before saving, sketch the intended honest solution — its route and the *type* of its decisive certificate — enough to run the Mechanical-Bookkeeping Reject and the Compressed-Rigor tell (`skills/_shared/hard_gates.md`) against it: if the honest write-up trips either (a carried coefficient/case/matrix table or a named-machinery one-liner hiding the problem's own nontrivial leap), the mechanism is mis-designed — **redesign now**, do not compress or hide (both forbidden), and do not spend a stump attempt on it. Likewise sketch the expected Steps length for the Solution Length Gate. These are cheap design-time checks whose whole point is that a problem passes them **before** the expensive stump/model-test phase; a later format skill only re-checks them as a safety net.

#### Pre-Submission Stress Test

Before finalising the problem, verify:

- [ ] The local gates above all pass.
- [ ] The problem passes the full model-breaker audit in `skills/_shared/frontier_authoring_guide.md`.
- [ ] Classification uses exactly one Problem Type and exactly one Answer Type, and both describe the final requested object honestly.
- [ ] The final numerical/symbolic evaluation is hand-auditable from the written solution; no software-only recurrence, finite sum, search, or coefficient extraction is needed to obtain the submitted answer.
- [ ] The draft passes the web-search originality audit from `skills/_shared/originality_audit.md`; redesign and rerun if a close hit exists.

If any check fails, redesign the problem before proceeding to Phase 3.

### Phase 2b — Web Originality Audit (MANDATORY before saving)

After drafting the problem but before creating files, run the full audit in `skills/_shared/originality_audit.md`.

Minimum requirement:
- Search exact phrases from the statement.
- Search distinctive formulas/constants.
- Search concept-level summaries of the core object and mechanism.
- Search the answer target plus constraints.
- Search with likely source words such as `problem`, `exercise`, `StackExchange`, `arXiv`, `textbook`, `Putnam`, or a relevant theorem name.

If any search result is materially similar, redesign the problem and rerun Phase 2b. Do not save a draft that differs only by notation, parameter values, or cosmetic context.

**No-web fallback (do not hard-stop when offline).** If web search is unavailable this run (no web tool in the runtime, offline, or the search tool errors), do not block the run. Proceed on local checks instead — the Phase 1b `workspace/frontier-problem/used_concept_map.md` duplicate audit plus the mathematical-fingerprint uniqueness procedure in `skills/_shared/originality_audit.md` — then save, and flag prominently in the final report that the web originality step was skipped and the audit is web-unverified. Never omit that flag.

#### Strongly Preferred Ingredients (data-driven, 2026-07-19)

The primary generative menu is the **Current-Flow Archetype Catalog** in `skills/_shared/passed_exemplars.md` — pick one archetype as the design driver:

- Planted-identity completion (choose the clean answer first, reverse-engineer the statement data so a hidden exact identity makes it work)
- Degeneracy-locus case-folding (generic formula + 1–2 hidden parameter loci, folded into one Iverson/parity expression)
- Free-parameter exact law with an explicit answer-format ban ("no floors, no recursion, no cases")
- Two-gate identification (two independent structural mechanisms jointly pin 2+ free parameters)
- Rich-object → bounded-invariant compaction (exponentiated ratio, non-degenerate evaluation, trace generating function)
- Wrapper–core misdirection (honest primary domain wrapping a decisive core from an unrelated area, wrapper load-bearing)

Ingredient-level biases that recur across accepted problems and still have open capacity: sign-twisted cocycles/translation laws in elementary-looking settings; spectral decomposition of combinatorially defined matrices with a planted completion; extremal lattice/chain scores hidden under a dynamics wrapper; character-sum invariants disguised inside analysis/probability statements; canonical forms with parameter case-splits.

**Rest saturated ingredients.** This menu lists what *has worked*, not a quota to keep filling. The character-sum / quadratic-character / Paley core disguised inside a probability, measure, or design wrapper is now over-mined (see the cross-domain texture dedup in Phase 1b) — do not pick it again just because it stumps reliably. When an ingredient family already dominates the map, treat it as closed for now and reach for a genuinely different world, even a less battle-tested one.

**Check every ingredient against currently open rows in `skills/_shared/taxonomy_slots.md` before committing** — do not design toward a closed row (e.g. extremal combinatorics, graph theory, enumerative combinatorics, calculus of variations, and convex optimization have all been closed at times). When only elementary-domain rows are open (Algebra/Functions/Trigonometry, Euclidean geometry), prefer the wrapper–core and free-parameter-law archetypes: they let an elementary-labeled statement carry a genuinely deep hidden core.

#### Recommended Structure Template

A reliable structure for strong problems:

> Define a constrained mathematical object family $\mathcal{F}$.
> Define a nontrivial quantity $Q$ on objects in $\mathcal{F}$.
> Ask for the exact extremal value of $Q$, its asymptotically exact behavior, or a unique closed form.
> Ensure: the quantity is finite, the extremizer is non-obvious, and solving requires multiple interacting ideas.

### Phase 2c — Harden Loop Gate (MANDATORY before saving)

**Pre-pass (before the loop): P2/P8 auto-fix.** Run Triviality-Probe **P2** (decoration) and **P8**
(terminology-density) from `skills/_shared/triviality_probe.md` against the draft, and on a REJECT
apply that file's answer-preserving repair and re-run until both PASS (re-confirm the intended exact
answer is unchanged). Do not enter the harden loop on a draft that still fails P2 or P8.

Then **Run the Harden Loop** (`skills/_shared/harden_loop.md`) on the (P2/P8-clean) drafted problem
before you create any files, with inputs:
- `PROBLEM_DRAFT` — the drafted problem statement.
- `INTENDED_ANSWER` — the exact intended answer you designed the problem around (you hold it in
  context even though the full solution is derived later by `math-solve`), normalized the same way
  as `stump_gate.md` (strip `$` and all whitespace).
- `TOPIC_FILE` — the one topic file loaded at the end of Phase 1 (`skills/_shared/breaker-topics/<slug>.md`).

The loop owns Diagnose, Guided rotation, Creative pivot, Ablation/hint, and Final; the per-round
`hard_gates.md`/Probe P1–P8 check; the round-log append and lesson distillation into `TOPIC_FILE`;
and the harden-pending sentinel. Do not restate or re-derive any of that here — run the loop by name
and use its output.

**Save decision:** act on the loop's Phase 5 verdict per the Gate > Stump Rule in
`skills/_shared/harden_loop.md` (do not restate it) — save on **ideal save** or **acceptance
fallback** (both gate-clean; a stump is pursued but never required), and on **replace** or
**ANSWER-SUSPECT** do **not** save: stop and hand the user the round-log trail with the
redesign/abandon (replace) or re-derive-the-answer (ANSWER-SUSPECT, e.g. `/math-solve-codex`)
recommendation.

### Phase 3 — Format and Save

Assemble the output using the **Problem File Template** below and save it.

**Filename**: `problem.md`

**Save path**: the `workspace/frontier-problem/problemNN-taxonomy-slug/` folder whose `NN` the user gave, resolved per `skills/_shared/frontier_workspace.md` (never auto-numbered by folder scan). Create the directory if it does not exist. Also create an empty `solution.md` placeholder in the same folder if it does not exist.

**Index update (same run, mandatory)**: append/update the new problem's row in `workspace/frontier-problem/used_concept_map.md` (columns per `skills/_shared/frontier_workspace.md`), with the decisive-technique column filled from the design notes and the answer column `unsolved` until math-solve runs. **In the same run**, also increment/add the matching row in `workspace/frontier-problem/mechanism_registry.md` for this problem's decisive skeleton (registry contract in `skills/_shared/frontier_workspace.md` → "Mechanism Registry") — union-merge with the `used_concept_map.md` update, do not skip it.

---

## Problem File Template

```markdown
# Normalized Math Problem

## LaTeX (Normalized)

[Full problem statement in precise mathematical language. Use $...$ for inline math and $$...$$ for display math. Define all notation. State clearly what is to be determined.]

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

{2–3 sentences. State what core mathematical machinery the problem requires and why the chosen domain/sub-domain is primary. Explain why any secondary techniques are tools and do not override the primary domain. Plain English only — no LaTeX, no formulas.}
```

---

## LaTeX Rules (mandatory throughout)

1. Use `$...$` for inline math and `$$...$$` for display math. Never use `\(...\)` or `\[...\]`.
2. No unnecessary braces: write `\frac{3}{4} \cdot \frac{5}{8}`, not `{\frac{3}{4}}\cdot{\frac{5}{8}}`.
3. Escape visible braces: `\{1, 2, 3\}`, `x \in \{0, 1\}`.
4. Polynomials in descending exponent order.
5. Fractions with `\frac{a}{b}` — never `a/b` inside math mode.
6. Proper math symbols: `\leq`, `\geq`, `\neq`, `\approx`, `\infty`, `\in`, `\pi`, `\mathbb{R}`, `\mathbb{Z}`, etc.
7. Units: `9.8 \, \text{m/s}^2`.
8. In the portal-bound problem text, never use Markdown emphasis or blockquotes. Numbered and bulleted lists are allowed, but consecutive items must have no empty lines between them. Use ordinary prose and LaTeX, with blank lines only at real paragraph or display-math boundaries.

## Hard Rules

- **DO** auto-select the domain and every internal design choice and proceed without yes/no confirmation prompts when the user did not specify one; never block generation just to ask which domain to use — only ask when no honest open slot fit exists at all.
- **DO NOT** auto-pick the folder number `NN` by scanning existing `problemNN-*/` folders — parallel clones claim numbers before their folders exist, so a scan collides. The number is the one coordination input the skill cannot infer: use exactly the `NN` the user gave (never bump to the next, even if that folder seems to exist — surface the conflict), and if the user gave none, ask which `NN` to use. This is the sole exception to the auto-decide rule above.
- **DO NOT** skip the Phase 1b audit — it is mandatory even when no duplicate is suspected.
- **DO NOT** skip the web originality audit in `skills/_shared/originality_audit.md`; local uniqueness is not enough.
- **DO** fall back to the local originality checks and save when internet search is unavailable (Phase 2b No-web fallback) — do not hard-stop the run — but always flag prominently that the web originality step was skipped and the audit is web-unverified; never omit that flag or claim the audit passed.
- **DO NOT** assign a domain that is not the primary mathematical content (secondary techniques do not override the main domain).
- **DO NOT** create a problem whose answer is a bare scalar (a single exact integer, rational number, or algebraic constant) with Problem Type `Exact computation` **unless** a written scalar-depth defense from `skills/_shared/frontier_authoring_guide.md` justifies it. Without a defense, redesign so the answer is a symbolic expression, a vector, an ordered pair, a function, or another non-scalar form.
- **DO NOT** select more than one Problem Type or more than one Answer Type.
- **DO NOT** force a bonus taxonomy/type label; redesign the prompt until the primary mathematics and final object fit honestly.
- **DO NOT** make a problem harder by adding many requested outputs, many routine cases, or large arithmetic.
- **DO NOT** create a problem whose intended solution ends with an unshown computational dump such as "running the recurrence gives", "a program evaluates the coefficient", "the transfer matrix yields", or "exhaustive search gives". The final evaluation must be short enough to show, or must collapse to a hand-checkable certificate/normal form.
- **DO** make a problem harder through hidden invariants, certificates, normal forms, transformations, rigidity/equality cases, or subtle well-definedness constraints.
- **DO** target the frontier benchmark standard: 5–7 nonroutine dependency nodes, at least four hidden moves, arranged for depth not breadth (Probe P7), and at least two false trails blocked by genuine structure.
- **DO** run Phase 1.5 candidate-triage — 3 candidate directions using the full output contract, screened against Probes P4/P5/P6, `skills/_shared/hard_gates.md`, and the loaded topic file's `## Saturated routes` — before drafting the full problem statement; draft only the strongest surviving candidate in full.
- **DO** run the **Harden Loop Gate** (`skills/_shared/harden_loop.md`, Phase 2c) before saving — after the P2/P8 terminology pre-pass that cleans the statement first — and act on its verdict per the Save decision above (Gate > Stump Rule, owned by `harden_loop.md`; do not restate it here).
- **DO** use the isolated Codex CLI recipe in `stump_gate.md` (invoked by the harden loop's Diagnose and Final phases) before claiming the CLI cannot run. Capture exit status, output, stdout, and stderr. Initialization/auth/filesystem/model-resolution failures are `INFRA_ERROR`, not solver failures, do not consume a harden-loop round, and leave the official gate blocked. Never substitute another model and label the required gpt-5.4 gate complete.
- **DO** pass all stress-test checks before saving the file.
- **DO** rerun web originality searches after every substantial redesign.
- **DO** aim for bonus problem/answer types to maximise diversity.
- **DO** create exactly one active problem per invocation.
- **DO** write only to the new problem folder's `problem.md` for the active frontier problem (plus its row in `workspace/frontier-problem/used_concept_map.md`).
- **DO** append/update the saved problem's row in `used_concept_map.md` in the same run — the cheap Phase 1b audit depends on it.
- **DO** increment/add the matching row in `workspace/frontier-problem/mechanism_registry.md` for the saved problem's decisive skeleton in the same run (contract in `skills/_shared/frontier_workspace.md`) — this keeps the P4 saturation tally accurate for the next run.
