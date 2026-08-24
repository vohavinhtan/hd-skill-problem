# Harden Loop Engine

Single source of truth for the staged hardening strategy used by `math-clone` and `math-harder`.
The loop is **trace-driven and provider-neutral**. It references `skills/_shared/stump_gate.md` for
optional/local difficulty evidence, `skills/_shared/hard_gates.md`, `skills/_shared/triviality_probe.md`,
`skills/evaluate-responses/SKILL.md`, and `math-harder`'s `### Hardening-delta gate`.

The Rainier portal, not a local CLI, is the final difficulty authority.

## Inputs

- `PROBLEM_DRAFT`
- `INTENDED_ANSWER`
- `TOPIC_FILE`
- optional current Rainier feedback / JSON / full traces / archived response analysis

## Phase 1 — Diagnose

Use the strongest current evidence available.

If current Rainier traces exist, extract the actual successful route rather than the intended route:

```text
COMMON ENTRY:
COMMON REDUCTION:
COMMON SCALING/REPRESENTATION:
FIRST DECISIVE RECOGNITION:
RECOVERY PATH:
EARLIEST ROBUST SHORTCUT:
```

Also record prompt leaks, ignored constraints, answer-insensitive errors, and whether the method
generalizes to nearby variants.

If no Rainier/model traces exist, run the provider-neutral preflight in `stump_gate.md`. When no
independent harness is available, accept `UNMEASURED` and continue with an adversarial structural
review. Do not stop because Codex CLI, credentials, or another provider is unavailable.

Read `TOPIC_FILE`'s distilled lessons and recent round log before choosing a hardening direction.

## Phase 2 — Structural hardening

Harden the earliest robust shortcut. Prefer one or more genuinely load-bearing moves such as:

- hide the decisive representation/invariant;
- introduce coupled implicit conditions;
- create competing regimes whose dominance must be derived;
- introduce leading-order degeneracy that forces a structural next-order argument;
- make a tempting standard route fail for a mathematical reason;
- require a non-obvious lemma/certificate before a short finish;
- make a secondary/asymmetric contribution answer-sensitive.

A hardening pass should deepen the dependency graph, not merely enlarge algebraic volume.

Do **not** count these as meaningful hardening by themselves:

- more Taylor orders;
- larger determinants/matrices solely for more arithmetic;
- longer coefficient/case/partition tables;
- longer recurrences or brute-force searches;
- extra parameters with no new dependency;
- uglier constants or more symbolic simplification.

If all clean hardening directions reduce to mechanical volume, trigger Harden-or-Replace rather than
manufacturing difficulty.

## Phase 3 — Non-model gates

Every candidate that may be saved must pass all of these regardless of local model availability:

1. mathematical validity and uniqueness;
2. independently verified intended answer;
3. `skills/_shared/hard_gates.md`;
4. Triviality Probe P1–P8;
5. `math-harder` Hardening-delta anti-regression gate when applicable;
6. originality audit;
7. solution-quality architecture: genuine reasoning, zero black box, not dominated by bookkeeping.

Any failure here blocks save until repaired or causes a replace recommendation.

## Phase 4 — Optional local difficulty preflight

Apply `skills/_shared/stump_gate.md` to the exact candidate version.

Possible statuses:

- `LOCAL_STUMPED`
- `LOCAL_NOT_STUMPED`
- `ANSWER_SUSPECT`
- `UNMEASURED`

`ANSWER_SUSPECT` is a correctness blocker and requires re-derivation.

`LOCAL_NOT_STUMPED` is evidence for another structural hardening round when a clean next direction is
available. It is not a hard-gate failure by itself.

`UNMEASURED` means the environment cannot provide trustworthy independent blind attempts. It is
**not** an infrastructure blocker. Do not wait for Codex CLI, do not request credentials, and do not
leave a clean candidate unsaved solely for this reason.

## Phase 5 — Final save decision

### Gate > Stump Rule

**Gate-clean is mandatory; local stump evidence is optional.**

- Non-model gate failure → do not save; repair/revert/replace.
- `ANSWER_SUSPECT` → do not save; re-derive ground truth.
- Gate-clean + `LOCAL_STUMPED` → save as `LOCAL_DIFFICULTY_MEASURED`, then require a fresh Rainier
  portal run for official difficulty.
- Gate-clean + `LOCAL_NOT_STUMPED` → harden again if a clean structural move remains; otherwise use
  Harden-or-Replace/acceptance-profile judgment. Never add mechanical volume merely to chase a local
  stump.
- Gate-clean + `UNMEASURED` → **save** as `LOCAL_DIFFICULTY_UNMEASURED`; next workflow stage is
  solution verification/normalization/submission as needed, followed by the Rainier portal test.

No local status may be called `RAINIER DIFFICULTY PASS`.

### Rainier-feedback loop

After the user runs the portal on the exact saved statement:

- portal difficulty PASS → preserve the exact statement; continue other portal gates;
- portal difficulty FAIL/borderline → download/send full traces or JSON when available, analyze with
  `evaluate-responses`, then call `math-harder` again against the earliest robust shortcut;
- statement changes → all previous difficulty percentages become stale and must not be carried over.

## Iteration policy

Hardening may iterate, but the loop must not busy-spin in one local session just because independent
model measurement is unavailable.

Use another hardening round only when there is concrete evidence of a shortcut or a clearly distinct,
clean structural move. Stop and save a gate-clean `UNMEASURED` candidate for portal testing rather
than attempting endless speculative mutations.

If three consecutive redesign attempts cannot remain gate-clean, trigger Harden-or-Replace.

## Ablation / hint diagnostic

When model traces are available, an optional ablation may reveal whether difficulty is placed in the
right location:

- solver succeeds after one gateway hint → gateway is a genuine conceptual bottleneck;
- solver remains stuck only on large computation after the hint → difficulty is misplaced in
  bookkeeping; redesign or replace.

Do not require this diagnostic when no independent model harness is available.

## Per-round logging

When the topic round-log machinery is active, continue using the schema from
`skills/_shared/frontier_workspace.md`. For an unmeasured local preflight, record the evidence state
explicitly, e.g. `label=UNMEASURED`, and log the structural lesson without pretending an observed
stump/solve occurred.

On a clean loop end, distill durable lessons into the topic file. Cross-topic lessons may also be
added to `breaker_playbook.md` under its existing rules.

## Final report requirements

A saved/generated/hardened candidate should report:

```text
VALIDITY: PASS
CORRECTNESS: PASS
QUALITY: PASS
HARD GATES: PASS
LOCAL DIFFICULTY: LOCAL_STUMPED | LOCAL_NOT_STUMPED | UNMEASURED
RAINIER DIFFICULTY: UNTESTED | PASS | FAIL | BORDERLINE
SAVE DECISION: SAVED | NOT SAVED | REPLACE
```

When local difficulty is `UNMEASURED`, explicitly say that this is expected in GPT-web/no-CLI mode
and that it does not invalidate the saved candidate.
