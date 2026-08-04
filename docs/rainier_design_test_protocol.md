# Rainier Problem Design & Test Protocol

Read this before designing or hardening any frontier problem. Goal: measure difficulty accurately at minimum model quota, by killing weak candidates with free checks before spending a single test run.

## Companion files — read them, do not restate them

| File | Use |
|---|---|
| `skills/_shared/hard_gates.md` | Hard reject gates and the exact numeric limits (Answer Length, Answer Compaction, Solution Length, Black-Box Severity Scale) |
| `skills/_shared/triviality_probe.md` | Probes P1–P8; P4, P5, P6 are the load-bearing ones here |
| `skills/_shared/breaker_playbook.md` | Archive digest: saturated skeletons to reject on sight, hardening moves that verifiably worked or failed |
| `workspace/frontier-problem/used_concept_map.md` | Per-problem technique tally used by the P4 saturation count |
| `skills/_shared/frontier_authoring_guide.md` | Answer Type feasibility table, approved/discouraged compaction patterns |

Never copy a limit into this file. Read it from `hard_gates.md` so the two cannot drift apart.

## Core rules

1. Free checks first. No model quota is spent until Phase 0 passes.
2. Run Phases 0–4 autonomously, then stop and hand the problem to the user. **Never write `solution.md` before the user has confirmed the problem.**
3. Design, verification, and testing never share context.
4. A medium-model failure is a screening signal, not proof of submission quality.
5. The counterexample attack lives inside verification, not as a separate phase.
6. **Never pre-define the answer's symbols in the statement.** If the statement defines notation that nothing in the setup requires, that notation leaked from the answer. Compact by writing the answer piecewise, or by specifying an object through a uniqueness property — never by handing over its primitives. (`hard_gates.md` → Answer Compaction Gate, condition 4.)
7. Constrain the **shape of the answer**, never the **vocabulary of the route**.

## Autonomy and handoff

Phases 0 through 4 run **without checking in**. Do not ask which candidate to keep, whether a probe verdict is acceptable, whether to harden, or whether to spend a test run — those are decided by the gates in this file. Iterate design → verify → test → harden as many rounds as the gates require.

Stop early only for a genuine blocker: Codex unavailable or unauthenticated, an ambiguous requirement no reading of this file resolves, or an exhausted quota cap. Report the blocker and what was completed; do not substitute a different model or skip a gate to keep going.

Deliverables at the end of Phase 4:

- `problem.md` written in the problem folder (per `skills/_shared/frontier_workspace.md`);
- `solution.md` left as its placeholder — untouched;
- the handoff report of Phase 4b, presented to the user.

The user then runs their own manual test. **`solution.md` is written only in Phase 5, only after the user explicitly confirms.** A passing Phase 3 or Phase 4 is not that confirmation.

## Models and effort ladder

| Phase | Model | Effort | Cost note |
|---|---|---|---|
| 0 — Free rejects | none | — | zero quota; always first |
| 1 — Design | Claude Opus **or** GPT-5.6 | high | batch several candidates in one session |
| 2 — Verify + counterexample | same family as design, **fresh session** | medium | |
| 3 — Difficulty test | **GPT-5.5** | **medium** | one clean run per version |
| 4 — Final confirmation | GPT-5.5 | xhigh | only for a candidate that already failed Phase 3 and is otherwise ready |

Never run `xhigh` during design iteration.

### Calling GPT-5.5 medium from Claude

Requires the Codex plugin (`/codex:setup` if not authenticated). Invoke the `Agent` tool from the top-level thread — not nested inside another agent — with `subagent_type: "codex:codex-rescue"` and a prompt beginning:

```
--wait --fresh --model gpt-5.5 --effort medium
This is a research task only. Do not edit, create, or modify any files — return your answer as plain text.

<raw problem statement, nothing else>
```

`--fresh` is mandatory: it is what makes the session clean. Confirm the exact model id your Codex account exposes before the first run; other commands in this repo use `gpt-5.6-sol`.

## Phase 0 — Free rejects

The cheapest rejects in the pipeline. Run all six before any model call.

1. **P4 saturation.** Name the decisive step. Check it against the "Saturated skeletons — do NOT reuse" list in `skills/_shared/breaker_playbook.md`, then count it in the technique column of `used_concept_map.md`. Saturation ≥ 2 → REJECT, no test.
2. **P6 route concession — the most common crack in the whole archive.** The statement must not print the intended derivation's output: no pre-factored transport / Gram / cocycle matrix, no sufficient-statistic parameters, no signposted conjugating coordinate, no "for compactness" aggregate constant that equals a quantity the solver was supposed to derive.
3. **Reverse-engineered target.** Solve the statement's own defining conditions symbolically for each unknown. If any falls out by inspection, the gateway is conceded. Watch in particular for printing a discrete derivative of the requested object — "here is ∂(unknown), find the unknown" is never a discovery, and it survives de-leaking the setup because it sits in the requested value.
4. **Unmotivated notation.** For every symbol the statement defines, name what in the setup requires it. If nothing does, it leaked from the answer.
5. **Answer Type gradeability — pin this before any test.** "Polynomial or rational function" and "Equation or inequality" have no unique normal form; archived graders marked algebraically identical answers both CORRECT and INCORRECT. Either fix the presentation (monic / lowest degree / expanded vs factored / fixed index set) or switch type, and require every auxiliary symbol to be defined inside the box. A difficulty measurement on an ungradeable answer is noise.
6. **Hard gates.** Answer under its limit, Steps projected under theirs, not primarily bookkeeping, self-contained — per `hard_gates.md`.

## Phase 1 — Batch design

Design several candidates in one session so domain context is reused.

Prefer difficulty from a structural obstruction, a hidden compatibility condition, an exceptional case, or the interaction of two theories. Avoid difficulty built from long tables, many local factors, large expansions, or arbitrary constants — that is breadth, and it converts into budget-difficulty rather than idea-difficulty.

For each candidate: compute a provisional answer internally, keep the prompt focused, confirm the eventual answer can fit its limit, and do not expose the intended method or taxonomy.

A free parameter `n` is not protection when the substantive sub-solve runs over fixed `n`-independent data, nor when the resulting law is eventually periodic — models recover both from two or three small cases. The invariant itself must vary with `n`. A bounded-degree rational function of one free parameter is likewise recoverable by sampling and rational reconstruction; P5 closes only when a single evaluation is as hard as the general derivation, or the target is a limit or asymptotic.

## Phase 2 — Independent verification and counterexample gate

Fresh session. The verifier receives the raw statement only — no intended answer, no design notes, no taxonomy, no previous attempts.

The verifier must:

1. Re-derive the answer from the beginning.
2. Check that every object the assumptions require can exist.
3. Test boundary cases and degenerate parameter values.
4. Search for a plausible shortcut that yields a different answer.
5. Produce one explicit counterexample for each invalid shortcut found.
6. State the shortest valid route and count its nontrivial mathematical moves.

The report ends with:

```text
Independent answer:
Counterexample attack:
Shortest valid route:
Nontrivial moves:
Hidden assumptions:
Verdict: PASS / REVISE / REJECT
```

### Short-route gate — the main quota saver

Harden immediately, **without spending a test run**, when the shortest valid route is at most two standard reductions plus one routine calculation. A one-line invocation of a deep theorem counts as a nontrivial move. Count semantic moves, not prose steps.

REJECT rather than harden when the answer depends on an unstated existence assumption; two reasonable readings give different answers; the proposed answer fails a small or boundary case; or the only source of difficulty is mechanical bookkeeping.

## Phase 3 — Clean test (GPT-5.5, medium)

New session, no carried context. The input is the raw problem statement and nothing else: no expected answer, no hints, no taxonomy, no mention of the intended theorem, no design or verification history, no previous model responses.

**Do not cap the response length.** A word or token cap manufactures truncation, and the archive measured that truncation as fake stumps — problems scoring 0/8 purely on `finish_reason=length` while their traces were on the correct route, and a 1/8 verdict that re-ran to 5/8. Let the answer run to completion.

### Validity check — run before classifying

A run is **VOID** (does not count; re-run once) when:

- the output is truncated or hits a length/budget limit mid-derivation;
- no final answer was boxed or clearly stated;
- the session was not clean.

A run is **VALID** when the model produced a complete final answer.

### Grading a valid run

Grade **by value, not by presentation.** Measured from the archive: two of three "STUMPED" verdicts were pure artifacts — a "0/8" was really 6/8 (identical up to factoring, sympy-confirmed), a "3/8" was really 7/8 (differing by `+(2−r)` vs `−(r−2)`), and three further attempts lost only because a symbol was defined one line outside the `\boxed{}`. Normalize both answers — expand, factor, substitute — before judging.

**Solved** — correct final answer via a materially valid route. An unsupported lucky guess is not a full solve, but it still triggers manual review: a guessable answer is a P3/P5 failure.

**Failed** — in a run that completed: wrong final answer, a missed case that changes the result, an invalid theorem or compatibility claim, or mutually inconsistent formulas.

Solved → harden (below), return to Phase 2. Failed → the candidate may be hard; this is not a certificate. Also perturb every allegedly difficult intermediate certificate: if correcting or deleting it changes only a lower-order prefactor or a normalized-away term, a correct final answer is evidence of a shortcut, not of depth.

## Phase 4 — Final xhigh confirmation

Run only when independent verification passed, the short-route gate passed, at least one **valid** Phase-3 failure was observed, and the problem is otherwise ready to submit. One run, fresh session, raw problem only. It must check both correctness and whether a substantially shorter route exists.

- Correct solution found quickly → harden again.
- Correct solution found only after substantial reasoning → the candidate may proceed.
- Wrong or incomplete (valid run) → retain the problem, but this alone is not proof of quality.
- Ambiguity or counterexample surfaced → reject or repair, then restart at Phase 2.

## Hardening

Apply exactly one deliberate change per round, then **re-verify the answer internally before re-testing**. Testing an unverified rewrite wastes the run.

**Change the mechanism CLASS, not its name.** Measured: re-skinning inside the same P4 class moves nothing — one problem was 16/16 as a Jacobsthal lookup and 16/16 after being rewritten as a Möbius-orbit problem; two other slots were redesigned three times each and stayed at zero idea-stump throughout. Swapping one named crank for another named crank is cosmetic.

**Diagnose before hardening anything that already stumps.** Hardening can delete the accidental trap that was doing the work. Two measured backfires: generalizing `C_3 → C_{p^k}` removed the sole discriminator, because the ramified-prime conductor gluing existed only where `C_3` mixes two primes; and replacing a convex tie-break with a double-well quartic destroyed a period-10 phase alignment that was genuinely stumping half the attempts, taking the problem to 8/8. Generalize only when the invariant itself varies with the parameter.

**Preserve a degenerating identification.** The highest-yield false trail is a natural equivariant identification that degenerates on a special locus: the wrong answers agree with the truth except in that case, so small-case checking never catches them. When diagnosis finds one, harden by removing the gateway around it — never by removing it.

Do **not**:

- add an anti-shortcut clause enumerating forbidden tools ("no matrix power, no eigenvalue") — it is a compressed table of contents for your own derivation, delivered before the model commits to an approach; both archived cases confirmed the route instead of blocking it;
- stack a hard layer onto an already long reconstruction — it converts idea-difficulty into unmeasurable budget-difficulty;
- expand a set or enumeration answer into a full explicit bijection — breadth, not depth, plus output-format ambiguity;
- rely on a coordinate change being hidden — Möbius-to-additive, Frobenius linearization, completed-square centering and QRT/Somos substitution are all recognized on sight, and a suggestive update polynomial (a perfect power, a completed square) advertises its own linearizing coordinate;
- add a per-block or per-orbit-independent tie-break — it bites only when its equality case is coupled across the structure by a global invariant.

### Cosmetic check before shipping a fix

Name the specific prior doorway — a formula, a denominator, a named object — now unavailable to a solver trying the same first move. If the answer is "they would rediscover it under another name," the edit was cosmetic and the rate will not move.

### Effort-allocation check

Diff the statement's definitions against the longest step of the intended solution. If the longest step derives an object the statement already defines, the problem has conceded its hardest step.

## Phase 4b — Handoff to the user (STOP)

When the design/verify/test/harden loop terminates cleanly, write `problem.md`, leave `solution.md` at its placeholder, and present the report below. Then **stop and wait**. Do not continue to Phase 5 on your own initiative.

Split the report into two blocks, so the user can paste the first into a fresh model without leaking anything:

```text
=== TEST INPUT (paste this alone into a clean session) ===
<the raw problem statement, exactly as it appears in problem.md>

=== REVIEWER ONLY — do not paste into the test ===
Folder:
Domain / sub-domain / Problem Type / Answer Type:
Verified answer:
Shortest valid route (nontrivial move count):
Hardening rounds applied, and what each changed:
Phase 3 result (model, effort, VALID/VOID, solved/failed):
Phase 4 result, if run:
Phase 0 verdicts: P4 saturation / P6 / reverse-engineered target / unmotivated notation / Answer Type
Gate counts: answer characters, projected Steps characters
Known residual risk:
```

Do not disclose the intended route or the verified answer inside the test-input block; keep both in the reviewer block only.

If the user's manual test **solves** the problem, treat their response as a Phase 3 "Solved": diagnose the shortcut they hit, harden by changing the mechanism class, re-verify the answer internally, and re-enter the loop. Still no `solution.md`.

## Phase 5 — Write and audit the solution (requires explicit user confirmation)

**Gate:** run this phase only after the user has explicitly confirmed the problem. Do not infer confirmation from silence, from a passing Phase 4, or from the user forwarding a model response — those are test data, not approval.

Then:

1. Write `solution.md`.
2. Make every load-bearing computation reproducible — no Level 2/3 black boxes.
3. `Final Answer: $\boxed{...}$` must match the `## Answer` field exactly.
4. Answer and Steps must satisfy the limits in `hard_gates.md`, verified by exact count rather than estimate.
5. Include `## Concepts (1-5)`, classification, verification, and black-box audit sections as the repository requires.
6. Run LaTeX and formatting checks.

Never fix an answer-length failure by introducing undefined abbreviations, and never by moving the answer's primitives into the statement (Core rule 6). If an explicit answer cannot be both self-contained and short, redesign the problem. Compression must never re-hide a derivation behind "one checks".

## Quota scheduling

- Batch high-effort designs into one quota window; run tests in a later one.
- Phase 0 and the short-route gate exist to kill candidates before any test run — use them.
- Stop testing a candidate the moment it is clearly easy.
- One test per version. Re-run only a VOID run.
- Reserve `xhigh` for a single final candidate, never per revision.
- Never begin a design plus test loop against a nearly exhausted cap.

## Breaker archive

After each rejected or hardened problem, append a compact entry:

```text
Domain:
Candidate pattern:
Why the model succeeded:
Shortest shortcut:
Failure mode:
Effective hardening move:
Reusable warning:
```

Abstract patterns only — never full prompts, full solutions, or final answers; those leak into later design sessions and reduce originality. Durable, generalizable lessons are distilled into `skills/_shared/breaker_playbook.md` under its Zone-4 contract.

## Per-problem checklist

```text
[ ] P4 saturation checked against used_concept_map.md and the saturated-skeleton list
[ ] P6 route-concession check passed
[ ] Reverse-engineered-target test passed
[ ] Every symbol the statement defines is required by the setup
[ ] Answer Type is gradeable and its presentation is pinned
[ ] Answer fits its limit without pre-defining its symbols in the statement
[ ] Candidate is not primarily bookkeeping
[ ] Verifier received no design context
[ ] Verifier re-derived the answer independently
[ ] Counterexample attack included inside verification
[ ] Shortest valid route reported; short-route gate passed
[ ] Test session clean, with no response-length cap
[ ] Test run VALID (completed, answer boxed), graded by value
[ ] At least one valid failure observed
[ ] Answer re-verified internally after every hardening round
[ ] Hardening changed the mechanism class
[ ] xhigh confirmation run at most once
[ ] Phases 0-4 completed without mid-run check-ins
[ ] problem.md written; solution.md still a placeholder at handoff
[ ] Handoff report split into test-input and reviewer-only blocks
[ ] User confirmation received before Phase 5
[ ] solution.md written only after the difficulty gates and that confirmation
[ ] Final Answer and ## Answer match exactly
[ ] hard_gates.md limits verified by exact count
```
