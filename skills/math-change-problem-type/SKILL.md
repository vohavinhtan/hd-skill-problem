---
name: math-change-problem-type
description: Redesign an explicitly selected active frontier problem under workspace/frontier-problem/problemNN-*/problem.md to target a better-capacity Domain/Sub-domain or Problem Type slot, while preserving as much of the original mathematical concept as possible. Works like math-clone but starts from the active problem instead of from scratch.
user-invocable: true
disable-model-invocation: false
argument-hint: optional path — omit only when the active problem folder is explicit from context
---

# Math Change Problem Type

## Contract

- **Task:** redesign one active `problem.md` to a better-capacity Domain/Sub-domain or Problem Type slot, preserving as much of the original mathematical concept as the frontier target allows; overwrite the file, rename the folder to the new slug, and update `used_concept_map.md`.
- **Defaults (act, do not ask):** proceed on the most reasonable reading and auto-select the target slot and every internal choice. Resolve the target folder from context per `skills/_shared/frontier_workspace.md`; if none is unambiguous, use the most-recently-modified `workspace/frontier-problem/problemNN-*/` and state that assumption. On unknown/tied capacity, default to the most mathematically honest open row in `skills/_shared/taxonomy_slots.md` and state the choice.
- **Only hard stop:** the target `problem.md` is missing or empty — then say to run `/math-clone` and stop. Nothing else pauses the run.
- **Done:** `problem.md` overwritten with the redesigned frontier problem, folder renamed to the new slug (both files moved), `used_concept_map.md` row updated, stale `solution.md` flagged, and the audit findings, originality note, and change summary included in the final report. Persist end-to-end in this turn; do not narrate a plan before acting.

## Global Principle

**Mathematical semantics take precedence over style, formatting, and readability.**
Preserve as much of the original mathematical concept, mechanism, and difficulty as possible. Only change what is necessary to reach a better-capacity slot.

The redesigned problem must target a **model-breaking frontier benchmark**: it should be difficult enough that a GPT-5.4-class thinking model is likely to fail unless it reconstructs the full hidden structure. Preserve the original concept only when doing so is compatible with this frontier target. A clean, exact, checkable answer remains mandatory.

## Step 0 — Select Problem

Read `skills/_shared/frontier_workspace.md`.
Read `skills/_shared/originality_audit.md`; its web-search originality audit is mandatory before overwriting the redesigned problem.
Read `skills/_shared/frontier_authoring_guide.md`; its frontier-tier authoring patterns are mandatory design input when changing the problem type.

- If a path was provided to this skill, use it as `$PROBLEM_FILE`.
- Otherwise resolve `$PROBLEM_FILE` from the context-selected problem folder using `skills/_shared/frontier_workspace.md`; if none is unambiguous, use the most-recently-modified `workspace/frontier-problem/problemNN-*/` and state that assumption in the report.
- If `$PROBLEM_FILE` does not exist or is empty, say to run `/math-clone` first and stop (only hard stop).

## Step 1 — Read the Problem

Read `$PROBLEM_FILE` in full. Extract and record:
- Problem statement
- Current Domain, Sub-domain, Problem Type, Answer Type
- Domain explanation

Record the current classification; include it in the final change summary.

## Step 2 — Show Available Slots

Read `skills/_shared/taxonomy_slots.md` before displaying or selecting any target slot. This file is the current source of truth for open Domain/Sub-domain, Problem Type, and Answer Type capacity.

Use the latest portal snapshot if the user provides one; for that run, the snapshot overrides `skills/_shared/taxonomy_slots.md`. Do not paste the full portal table unless the user asks. Display only relevant open rows, sorted by priority.

Slot priority:
- Exclude rows marked `closed`, `full`, unavailable, or with `Remaining slots` equal to `0`.
- Among honest mathematical fits, prefer the available row with the **smallest positive** `Remaining slots`; low remaining capacity is preferred because it is usually more valuable and more likely to stump models.
- If several rows tie, choose the one with stronger frontier/model-breaker potential.
- If all relevant rows have `unknown` capacity, default to the most mathematically honest open row in `skills/_shared/taxonomy_slots.md`, note that capacity was unknown, and proceed.
- Never force the original concept into a low-capacity slot if the primary mathematics would be dishonest.

Auto-select the target — do not ask. Pick the best-fitting available Domain/Sub-domain and Problem Type using the slot priority above (honest fit, then smallest positive `Remaining slots`, then frontier potential), and explain in one line why the fit is mathematically honest. Honor an explicit target if the user named one; otherwise choose, report it, and proceed.

## Step 3 — Plan the Concept Preservation

Before redesigning, extract the original problem's mathematical core:
- **Core mechanism**: the key mathematical operation or structural insight (e.g. orbit decomposition, extremal argument, spectral bound)
- **Core object**: the primary mathematical structure the problem is built around
- **Hidden dependency graph**: the chain of non-trivial steps the solver must take
- **Model attack surface**: the routes a frontier reasoning model could plausibly use to solve the current problem too easily, such as named-theorem substitution, direct computation, symmetry guessing, relaxation, or skipping a certificate with "one checks"

Then determine how much can be preserved under the new domain/sub-domain:
- **Full preservation**: the same mechanism works natively in the new domain (just reframe the setting)
- **Partial preservation**: the core object survives but the mechanism needs a new angle
- **Minimal preservation**: only the difficulty level and problem style are kept; the content must be substantially redesigned

Record the preservation level (full/partial/minimal) for the final change summary. If preserving the original mechanism would leave a model-solvable shortcut intact, choose partial or minimal preservation.

Also identify which frontier authoring pattern(s) from `skills/_shared/frontier_authoring_guide.md` the redesign will use. If the original problem was too easy because it lived inside one standard mechanism, prefer a redesign that composes two independent areas, adds a new local object, introduces meaningful iteration/phases, or forces reconstruction of concrete data.

## Step 4 — Redesign the Problem

Apply the **full math-clone design workflow** (Phase 2 from math-clone), targeting the new domain/sub-domain and Problem Type. The constraints are the same as math-clone:

- Same Phase 1b audit applies: scan existing same-domain files to avoid duplicating sub-domain, core object, mechanism, and technique.
- Same web originality audit applies: build the mathematical fingerprint and run the search workflow in `skills/_shared/originality_audit.md` before overwriting.
- Same Core Requirements: novel, correct domain, clean answer, self-contained, not guessable, no proofs, single question.
- Same Hard Math Quality Standards: well-definedness, concrete final answer, difficulty from insight, hidden dependency graph (5–7 nodes, 4+ hidden), at least two false trails, non-trivial constraints, model-breaker audit.
- Same Pre-Submission Stress Test: boundedness, non-triviality, unique checkable answer, frontier-level depth, answer type allowed, one-type classification, primary taxonomy, no horizontal expansion, answer type honesty, hidden dependency graph, no black-box solve risk, model-breaker audit.
- Same Frontier Authoring Guide: use `skills/_shared/frontier_authoring_guide.md` to choose essential authoring pattern(s), especially composition of independent areas, on-the-spot objects, rare concrete objects, iteration, multi-phase state, and explicit verifiable output formats.

**Preservation priority**: When two designs of equal quality are available, prefer the one that retains more of the original mathematical mechanism or object. Keeping the concept is a tiebreaker, not a constraint that overrides quality.

**Bonus alignment**: Select exactly one Problem Type and exactly one Answer Type for the redesigned problem. Use `skills/_shared/taxonomy_slots.md` to prioritize low remaining capacity first, then bonus value and answer-type honesty.

**Frontier redesign rule**: The redesigned problem must make at least two plausible model attack routes fail for structural reasons. Good redesign moves include hiding the key auxiliary object, forcing a dual certificate or equality-case reconstruction, adding a second invariant, moving to a quotient/normal form, or making small-case pattern extrapolation produce a wrong candidate.

**Output-format rule**: If the current problem was criticized for an answer that is not really a closed form, is a coefficient-extraction restatement, or leaves the solver unsure when to stop, the redesign must specify the desired normal form and ask for a finite verifiable object such as a matrix, vector, finite set, rational factor, canonical form, or parameter list.

**Pattern-stacking rule**: When changing the problem type for more difficulty, prefer stacking two distinct mechanisms over enlarging one mechanism. For example, combine spectral reconstruction with a measure transform, algebraic dynamics with factorization, distributional analysis with geometry, or stochastic processes with convex duality.

## Step 5 — Existing Problem Audit

Before finalising the new design, run the Phase 1b audit from math-clone against existing `workspace/frontier-problem/problemNN-*/problem.md` files and any user-provided archive/history files. The redesigned problem must differ on all four axes (sub-domain, core object, mechanism, technique) from the prior active problem when possible.

Run this audit before overwriting; include its result and the selected slot priority (with the remaining capacity from `skills/_shared/taxonomy_slots.md` or the user-provided portal snapshot) in the final report.

## Step 5b — Web Originality Audit

Before overwriting `$PROBLEM_FILE`, run the full audit in `skills/_shared/originality_audit.md` on the redesigned draft.

If search results show a close mathematical match, redesign again and rerun the audit. The redesign must change mathematical structure, not only wording, constants, notation, or taxonomy label.

Include the concise originality note required by `skills/_shared/originality_audit.md` in the final report. If web search is unavailable, do not stop: fall back to the local checks — compare the draft's fingerprint against the guidance in `skills/_shared/originality_audit.md` and the existing rows in `workspace/frontier-problem/used_concept_map.md` — then overwrite, and flag in the report that the web originality audit was skipped (offline).

## Step 6 — Overwrite the Problem File and Rename the Folder

Overwrite `$PROBLEM_FILE` with the redesigned problem.

**Rename the folder to match the new taxonomy (MANDATORY, no prompt).** Changing the problem type changes the taxonomy slug, so the `problemNN-taxonomy-slug/` folder name is now wrong. Derive the new `taxonomy-slug` from the new sub-domain (or primary domain) exactly as `math-clone` would, keep the same `NN`, and rename `problemNN-old-slug/` → `problemNN-new-slug/`, moving both `problem.md` and `solution.md`. Prefer `git mv` when the folder is git-tracked; otherwise move the directory. After the rename, `$PROBLEM_FILE` refers to the new path. If the redesign somehow left the Domain/Sub-domain and slug unchanged, keep the folder name.

If the same folder's `solution.md` exists, flag it as stale because the problem changed.

Update this problem's row in `workspace/frontier-problem/used_concept_map.md` in the same run (new slug/taxonomy/core object/mechanism/technique; answer column `unsolved` — contract in `skills/_shared/frontier_workspace.md`).

Use the Problem File Template:

```markdown
# Normalized Math Problem

## LaTeX (Normalized)

[Redesigned problem statement]

---

## Domain Classification

| Field | Value |
|---|---|
| Domain | {new domain} |
| Sub-domain | {new sub-domain} |
| Problem Type | {exactly one problem type} |
| Answer Type | {exactly one answer type} |

## Domain Explanation

{2–3 sentences explaining why the new domain/sub-domain is primary.}
```

Include this change summary in the final report:
```
Redesigned active problem folder's problem.md:
  Folder:        {old path} → {new path}   (unchanged if slug did not change)
  Domain:        {old} → {new}
  Sub-domain:    {old} → {new}
  Problem Type:  {old} → {new}
  Answer Type:   {old} → {new}
  Concept preserved: full / partial / minimal
  Frontier pattern(s): {selected patterns}
  Solution flagged stale: yes / no
```

## Hard Rules

- **DO NOT** target a closed or saturated segment.
- **DO NOT** choose taxonomy from hardcoded memory; read `skills/_shared/taxonomy_slots.md` or the user's latest portal snapshot.
- **DO NOT** skip the Phase 1b audit for the target domain.
- **DO NOT** skip the web originality audit before overwriting `problem.md` — unless web search is unavailable, in which case use the local fallback in Step 5b and flag it.
- **DO NOT** accept a redesigned problem that is only a parameter or notation variant of an online source.
- **DO NOT** force the original concept into the new domain if the fit is dishonest — redesign instead.
- **DO NOT** preserve the original concept if it preserves a model-solvable shortcut.
- **DO NOT** reduce difficulty during the redesign; the hardened dependency graph must meet the same 5–7 node frontier standard with at least four hidden moves.
- **DO NOT** select more than one Problem Type or more than one Answer Type.
- **DO NOT** redesign toward an Answer Type whose fully written-out final object (`$`/whitespace stripped) would be 100 characters or more — read the Answer Length Gate in `skills/_shared/hard_gates.md` and check the target answer's length before overwriting.
- **DO NOT** create fake difficulty through obscure external facts, long computations, large parameters, or ambiguous wording.
- **DO NOT** leave the output format ambiguous; a solver and grader must know exactly what object is requested.
- **DO NOT** use coefficient-extraction or implicit expressions as the final answer unless the prompt defines a finite normal-form component as the requested output.
- **DO** auto-select the target slot and every internal choice, and proceed without yes/no confirmation prompts.
- **DO** keep the active frontier filename as `problem.md`, and rename the enclosing `problemNN-taxonomy-slug/` folder to the new taxonomy slug (same `NN`, move both files, prefer `git mv`) whenever the redesign changed the Domain/Sub-domain — never leave a stale slug.
- **DO** flag the same folder's `solution.md` as stale when the problem statement changes substantially.
- **DO** target at least two blocked model attack routes in the redesigned problem.
- **DO** use at least one frontier authoring pattern from `skills/_shared/frontier_authoring_guide.md`, and prefer stacking two patterns for harder redesigns.
- **DO** prioritize honest low-remaining-capacity slots because they are usually more valuable and more likely to stump models.
- **DO** rerun originality searches after every substantial redesign.
