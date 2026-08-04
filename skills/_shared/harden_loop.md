# Harden Loop Engine

Single source of truth for the staged stump/harden strategy ladder. This file describes the loop
**once**; `math-clone` and `math-harder` delegate to it by name instead of restating any part of it.
It **references** — never copies — `skills/_shared/stump_gate.md` (verdict oracle only: STUMPED /
NOT STUMPED / ANSWER-SUSPECT), `skills/_shared/hard_gates.md`, `skills/_shared/triviality_probe.md`
(Probes P1–P8), the §8 label taxonomy (canonical home: `skills/evaluate-responses/SKILL.md`), and
`math-harder`'s `### Hardening-delta gate` (`skills/math-harder/SKILL.md`).

Per topic file: `skills/_shared/breaker-topics/README.md` and `skills/_shared/frontier_workspace.md`
(`## Breaker Topic Files`) define the schema this loop reads and writes — the Mechanism-class menu,
the Round-log block format, and the harden-pending sentinel. This file never restates that schema.

## Run the Harden Loop

**Inputs:** `PROBLEM_DRAFT`, `INTENDED_ANSWER`, `TOPIC_FILE`.

**Sentinel:** at loop start, write the harden-pending sentinel for this problem/session to `pending`
per `skills/_shared/frontier_workspace.md` (`### Harden-pending sentinel`). A clean loop end (Final
phase reached with a save decision made — ideal save or acceptance fallback) clears it. The
cross-provider backstop hook that detects a stale `pending` marker and the next-run catch-up that
distills a `needs-distill` marker are wired in a later task; this loop only performs the writes.

Round count is **dynamic** — governed by how many entries remain unused in `TOPIC_FILE`'s
Mechanism-class menu plus the abandon triggers below. It is not otherwise fixed, but it is bounded
above by the **round-cap checkpoint** (below): after `ROUND_CAP = 10` hardening rounds on one problem
without an ideal save, the loop pauses and asks the user rather than continuing autonomously.

Run the phases below in order. Guided rotation, Creative pivot, and Ablation/hint may repeat across
multiple rounds; Diagnose and Final each run once (Diagnose may span 1–2 rounds internally).

## Phase 1 — Diagnose

1–2 rounds, no hardening applied. Run `stump_gate.md` on `PROBLEM_DRAFT` against `INTENDED_ANSWER`
to get the verdict and each solver's route. Label each solver attempt per the §8 label taxonomy
(canonical, authoritative token list: `skills/evaluate-responses/SKILL.md`). Extract the shortest
correct route, the recognized template (if any), the ignored constraint (if any), and whether the
answer was small-case-guessable. Read `TOPIC_FILE`'s `## Distilled lessons` and the tail of
`## Round-log` first, so this loop does not repeat a direction already known to fail on this topic.

If a solve's §8 label falls in the **artifact** category (the arithmetic / cutoff / grader /
ambiguity classes) it is **not** stump evidence. Fix the artifact (grader, normal form, or statement
wording) and re-run Diagnose; do **not** treat it as a hardening trigger. Only a genuine idea-stump
label (verdict STUMPED) or a shortcut-solve label (verdict NOT STUMPED with a real mathematical
route) advance the loop past Diagnose — a shortcut-solve routes to a mechanism-class pivot (Phase 2),
never a re-skin. See `skills/evaluate-responses/SKILL.md` for the exact token spellings and rules.

## Phase 2 — Guided rotation

Each round picks one mechanism class from `TOPIC_FILE`'s `## Mechanism-class menu` that has **not**
been used earlier in this loop, and hardens `PROBLEM_DRAFT` along that class. That menu is a
domain-specific instantiation of the shared roles in `skills/_shared/mechanism_library.md` (M1–M9);
when a topic menu is thin, draw the next round's class directly from the library instead. Re-skin
(renaming objects, relabeling variables) and pure number-change (bumping a constant without changing
the mechanism) are banned — both are non-hardening by definition and burn a round without changing
the model's route.

Continue guided rotation, one unused class per round, until the menu is exhausted or a named route
repeats across 2 rounds (either condition triggers Phase 3).

## Phase 3 — Creative pivot

Triggered when the guided-rotation classes are exhausted, or when the solvers repeat the same named
route across 2 rounds. Divergence increases with round number: invert the model's prior, remove a
leaked intermediate, replace a local tie-break with a global invariant, or move to a mechanism class
outside `TOPIC_FILE`'s existing menu entirely (and add it to the menu if it proves durable). Each
creative-pivot round must be a genuinely distinct direction from every prior round of this loop, not
a variation on the last one.

## Phase 4 — Ablation / hint

The decisive stop diagnostic. Give the model exactly one hint about the gateway (the decisive
unnamed step) and re-run the stump check.

- Solves cleanly with the hint → the gateway is the real bottleneck (good; the difficulty is
  correctly placed). Continue the loop (more rotation/pivot rounds) or proceed to Final if the
  budget is otherwise exhausted.
- Still stuck on computation even with the hint → the difficulty is misplaced in bookkeeping, not
  insight. This is an abandon trigger (below): stop rotating and redesign or abandon the problem
  rather than continuing to harden a computational floor.

## Phase 5 — Final

Clean evaluation of the exact version to be submitted: run `stump_gate.md` once more on the final
`PROBLEM_DRAFT`, confirm the verdict, then apply the Gate > Stump Rule below to decide save /
acceptance-fallback / replace. This is the only phase that produces a save decision.

## Gate > Stump Rule

Every round — Diagnose excluded, since Diagnose applies no hardening — runs the **full**
`skills/_shared/hard_gates.md` suite and Probes P1–P8 (`skills/_shared/triviality_probe.md`) on the
round's hardened draft, in addition to the `stump_gate.md` verdict. Gate-clean is the hard
constraint; a stump achieved by failing a gate is worthless.

- **Any gate or probe fails** → reject the round's hardening: revert to the pre-round draft, log
  `gate=fail:GATE` in the round-log block (below), and the round does **not** count as stump
  progress. The next round must respect the failed gate (do not re-attempt the same direction
  unchanged).
- **Anti-regression check (reuse, do not re-author):** in addition to the fresh gate/probe run, every
  round is also checked against `math-harder`'s `### Hardening-delta gate`
  (`skills/math-harder/SKILL.md`) as the authoritative per-round anti-regression check — apply all of
  its criteria; a round failing any of them is rejected the same as a gate/probe failure.
- **Only gate-clean drafts are stump-eligible.** A draft that fails gates/probes/anti-regression is
  never submitted to `stump_gate.md` for a verdict in that round.
- **Ideal save:** gate-clean **and** stumped (Phase 5 STUMPED verdict on a gate-clean draft).
- **Acceptance fallback:** when the ladder is exhausted (mechanism classes tried, creative pivots
  attempted, ablation run) without reaching a gate-clean stump, and the current draft is gate-clean
  and matches the acceptance-profile (`skills/_shared/passed_exemplars.md` Current-Flow Accepted
  Corpus) → ship it as an acceptance-fallback save. If the exhausted draft does not match the
  acceptance-profile → recommend **replace** (Harden-or-Replace, per `math-harder`'s
  `### Harden-or-Replace Gate`) instead of shipping a weak draft.
- Gate-clean is required to save; a stump is pursued but never required for it — this is the
  resolution of the stump-required-vs-bonus contradiction the loop replaces.

### Abandon triggers (never spin unboundedly)

**A NOT STUMPED verdict alone never ends the loop or returns the problem to the user.** A gate-clean
draft that simply did not stump is a *continue* signal: harden again — advance to the next unused
Mechanism-class (Phase 2), then Creative pivots (Phase 3). Do **not** go to Phase 5 / hand the problem
back just because a round (or several rounds) came back NOT STUMPED. The loop ends **only** when one
of the abandon triggers below holds — genuine ladder exhaustion, computation-misplaced difficulty, or
repeated inability to stay gate-clean.

Stop the loop — do not run another rotation/pivot round — the moment any one of these holds:

1. Phase 4 (Ablation/hint) shows the difficulty is computation-misplaced, not gateway-misplaced.
2. `K` consecutive rounds cannot produce a **gate-clean** draft — each such round fails a gate, a
   probe, or the anti-regression check (`math-harder`'s `### Hardening-delta gate`). Treat `K = 3` as
   the default unless the calling skill sets a different bound. **A gate-clean round that did not stump
   does NOT count toward this trigger** — it is a normal continue signal (harden the next class), not a
   failure. Only rounds that cannot stay gate-clean count here.
3. `TOPIC_FILE`'s Mechanism-class menu is exhausted **and** Phase 3 creative pivots have also been
   tried without a gate-clean stump. This is the normal "tried every hardening direction" exit — the
   full ladder, not a few NOT STUMPED rounds.

On any abandon trigger, report the full round-log traces to the caller so it is visible the ladder was
exhausted (not bailed early), then go directly to Phase 5 (Final) and apply the Gate > Stump Rule's
save / acceptance-fallback / replace decision to whatever the last gate-clean draft was.

### Round-cap checkpoint — pause and ask the user at 10 rounds

Harden until stumped, but do not harden one problem forever. This checkpoint is a **deliberate, single
exception** to the "never spin unboundedly / never a fixed number of rounds" autonomy above and to the
"never pause to confirm" contract of the calling `math-harder` / `math-clone` skills. Below the cap the
loop stays fully autonomous; the cap is the one point at which it hands control back to the user.

- **Counter.** Count the **hardening rounds** applied to this one problem — Guided rotation (Phase 2),
  Creative pivot (Phase 3), and Ablation/hint (Phase 4) rounds. Diagnose (Phase 1) applies no hardening
  and is **not** counted. This is the same set of rounds the round-log numbers with `round=<n>` for a
  hardening phase.
- **`ROUND_CAP = 10`** hardening rounds by default; a calling skill may set a different bound the same
  way it may override `K` for abandon trigger 2.
- **Trigger.** The moment the 10th hardening round completes **without an ideal save** (a gate-clean
  Phase-5 STUMPED verdict) **and** no abandon trigger above has already ended the loop, **stop before
  starting the 11th round and PAUSE**. Do **not** autonomously continue, and do **not** silently fall
  through to an acceptance-fallback / replace decision — that decision is the user's to make here.
- **What to present when pausing.** Report to the user: the full round-log so far (so ladder progress
  is visible), the current best **gate-clean** draft and its latest `stump_gate.md` verdict, and which
  mechanism classes / creative pivots have and have not been tried. Then ask how to proceed, offering at
  least: (a) continue for a stated number of further rounds, (b) accept the current gate-clean draft as
  an acceptance-fallback save (only if it is gate-clean and matches the acceptance-profile,
  `skills/_shared/passed_exemplars.md`), (c) replace the candidate / pivot the topic, or (d) stop and
  leave the problem unsaved.
- **Ordering vs abandon triggers.** An abandon trigger that fires **at or before** round 10 takes
  precedence: the loop ends normally via Phase 5 (autonomous save / acceptance-fallback / replace) and
  this checkpoint does not fire — a genuinely exhausted ladder still resolves without a prompt. The
  checkpoint fires only when the loop would otherwise keep hardening past 10 rounds.
- **Resuming.** On the user's answer, resume from the current draft: (a) run the requested additional
  rounds — the counter keeps accumulating, so the next pause is at the next `ROUND_CAP` boundary unless
  the user sets a new bound; (b)/(c)/(d) route to the matching Phase-5 save, replace, or stop outcome.
  The harden-pending sentinel stays `pending` across the pause and is cleared only on the eventual clean
  loop end.

## Per-Round Logging and Lesson Distillation

After every round's verdict + gate/probe/anti-regression check (Diagnose rounds included), append
exactly one round-log block to `TOPIC_FILE`'s `## Round-log` section, in the block format defined in
`skills/_shared/frontier_workspace.md` (`### Round-log block format`):

```text
round=<n> phase=<diagnose|guided|creative|ablation|final> class=<name> direction=<short> label=<§8 label> gate=<pass|fail:GATE> lesson=<one line>
```

`class=` and `direction=` are `n/a` for Diagnose rounds (no hardening applied). `label=` is the §8
label of the decisive solver attempt that round.

On a **clean loop end** (Phase 5 reached and a save/acceptance-fallback/replace decision recorded —
not merely "loop exhausted with no decision"), distill one abstracted lesson from this loop's
round-log into `TOPIC_FILE`'s `## Distilled lessons` section. The lesson must be a mechanism
(what direction worked or dead-ended and why), never a copied recipe, number, or the problem's own
content. If — and only if — the lesson is cross-topic-universal (it would apply to hardening any
topic, not just this one, e.g. a general failure mode like over-hardening backfire), also append it
to `skills/_shared/breaker_playbook.md` in its cross-topic section; a topic-specific lesson stays in
`TOPIC_FILE` only.
