---
name: math-change-answer-type
description: Change the Answer Type of an explicitly selected active frontier problem under workspace/frontier-problem/problemNN-*/problem.md to a bonus or available type without altering difficulty. The problem's mathematical depth is already sufficient — this skill only reshapes what kind of final object is requested so the answer qualifies for a bonus or open Answer Type slot.
user-invocable: true
disable-model-invocation: false
argument-hint: optional path — omit only when the active problem folder is explicit from context
---

# Math Change Answer Type

## Contract

- **Task:** reshape the requested output of one active `problem.md` to a bonus or open Answer Type — no change to machinery or difficulty — then update its `used_concept_map.md` row.
- **Defaults (act, do not ask):** proceed on the most reasonable reading. Resolve the target folder from context per `skills/_shared/frontier_workspace.md`; if none is unambiguous, use the most-recently-modified `workspace/frontier-problem/problemNN-*/`. When several Answer Types honestly fit, target the highest-priority open bonus type; state the folder and target-type assumptions in the report.
- **Only hard stop:** the target `problem.md` is missing or empty — then say to run `/math-clone` and stop. Nothing else pauses the run.
- **Done:** `problem.md` rewritten in place with the new Answer Type, the `used_concept_map.md` row updated, every Step 4 gate clean, and any now-stale `solution.md` flagged — all in the final report. Persist end-to-end in this turn; do not narrate a plan before acting.

## Global Principle

**Mathematical semantics take precedence over style, formatting, and readability.**
The goal is to reshape the requested output — not to change the mathematical machinery or difficulty of the problem.

## Step 0 — Select Problem

Read `skills/_shared/frontier_workspace.md`.

- If a file path was provided to this skill, use it as `$PROBLEM_FILE`.
- Otherwise apply the folder-resolution default from the Contract above: the context-selected problem folder per `skills/_shared/frontier_workspace.md`, else the most-recently-modified `workspace/frontier-problem/problemNN-*/`. State the assumption in the report.
- If `$PROBLEM_FILE` does not exist or is empty, say to run `/math-clone` first and stop.

## Step 1 — Read Problem and Solutions

Read `$PROBLEM_FILE` in full. Record the current Answer Type for the final report.

Then check for `solution.md` in the same problem folder. If it exists, read it. The solution reveals what the final mathematical object actually is — this determines which Answer Types are honestly available.

## Step 2 — Identify Candidate Answer Types

From the problem's mathematical content and (if available) the solution, identify which bonus Answer Types the final object could honestly take.

Read `skills/_shared/taxonomy_slots.md` and choose only from currently open Answer Type rows. Prefer bonus Answer Types when the final requested object honestly fits. Use `Exact scalar` for a single exact number and `Exact symbolic expression` only when no bonus type describes the whole final object.

If the current problem has no attained extremum, is unbounded, or requires an extended-real value, flag that as a framework issue. Do not invent an Answer Type outside `skills/_shared/taxonomy_slots.md`.

Discard types that would require fabricating new mathematics not present in the problem. Only types that the existing mathematical content can honestly support are candidates.

Target the highest-priority open bonus type that honestly fits the whole final object; fall back to `Exact scalar` / `Exact symbolic expression` only when no bonus type does. In the final report, list the candidates you considered with a one-line rationale each and state which one you targeted and why.

## Step 3 — Redesign the Requested Output

Once a target Answer Type is chosen, minimally modify the problem statement so the requested final object matches the new type. The changes must:

1. **Keep all mathematical machinery intact** — the core equations, constraints, and structure stay the same.
2. **Change only what is asked for**, and the new requested object must be **uniquely determined** — e.g., instead of "find the maximum value", ask "find the polynomial whose coefficients are the extremal configuration" (a specific, pinned polynomial); instead of "compute the integer", ask for a canonical object the conditions fix uniquely (its Smith normal form, its reduced row-echelon form, the companion matrix of a determined characteristic polynomial). Never request an under-determined object such as "a matrix whose determinant equals the answer" — infinitely many matrices share a determinant, so that answer is not unique and no reviewer can check it (contradicts condition 5 below). If the reshape *extracts* a scalar/coefficient/value from a richer object to shorten it, it is a compaction and must clear the Answer Compaction Gate + Probe P6 (see Step 4).
3. **Keep the problem self-contained** — add any definitions needed for the new requested object.
4. **Keep exactly one question** — no sub-parts.
5. **Keep the answer exact and well-defined** — the new answer object must be uniquely determined, or else explicitly requested as a complete finite family such as `Set or multiset of objects`.

If no minimal modification is possible (the mathematical content genuinely cannot produce the target type without fabricating new structure), state this and return to Step 2 to choose a different candidate.

## Step 4 — Verify

Check that the modified problem passes:
- [ ] The final requested object honestly has the new Answer Type form — not just a component of it.
- [ ] The answer is still exact, well-defined, and uniquely checkable, or exhaustive when the Answer Type is `Set or multiset of objects`.
- [ ] No new mathematical content was introduced that is not derivable from the original problem.
- [ ] The problem still belongs to the same Domain/Sub-domain.
- [ ] The Problem Type is still accurate (update it if the modification changed the nature of the task).
- [ ] **Answer Length Gate (HARD GATE)**: the new answer, `$` and whitespace stripped, is under 100 characters (`skills/_shared/hard_gates.md`) — reshaping toward a richer bonus type must not push the written-out object over this limit; if it does, pick a more compact honest Answer Type instead.
- [ ] **Answer Compaction Gate + Probe P6 (only when the reshape extracts a value from a larger object to shorten it)**: if the new requested output is one coefficient / evaluation / entry / invariant of a richer derived object, it must pass all four Answer Compaction Gate conditions in `hard_gates.md` and Probe P6 (Route-Concession) in `triviality_probe.md` — the compacted value must be unreachable without deriving the full object, and the reshape must not force the statement to define machinery a direct question would not need. A length-only pass is not sufficient for a compaction reshape.

## Step 5 — Overwrite the Problem File

Write the updated problem back to `$PROBLEM_FILE`. Also update this problem's row in `workspace/frontier-problem/used_concept_map.md` (new Answer Type and answer shape; contract in `skills/_shared/frontier_workspace.md`):

```markdown
# Normalized Math Problem

## LaTeX (Normalized)

[Updated problem statement]

---

## Domain Classification

| Field | Value |
|---|---|
| Domain | {domain} |
| Sub-domain | {sub-domain} |
| Problem Type | {problem type — update if needed} |
| Answer Type | {new answer type} |

## Domain Explanation

{2–3 sentences. Update if the requested object changed significantly.}
```

If existing solution files are now stale (they computed a different object), flag them to the user.

## Hard Rules

- **DO NOT** change the core mathematical machinery, constraints, or difficulty.
- **DO NOT** assign a bonus Answer Type that does not honestly describe the final requested object.
- **DO NOT** fabricate new mathematical content — only reshape what is asked for.
- **DO NOT** create sub-parts or multiple questions.
- **DO** flag stale solution files after updating.
