# Frontier Problem Workspace

Use this as the shared file layout for frontier problem generation, solving, hardening, checking, and normalization.

## Base Directory

All active frontier work lives in:

```text
workspace/frontier-problem/
```

Do not create or use any other base workspace folder for frontier workflows.

## Problem Folders

Each problem lives in one child folder named:

```text
workspace/frontier-problem/
  problemNN-taxonomy-slug/
    problem.md
    solution.md
```

Examples:

```text
workspace/frontier-problem/problem01-stochastic-processes/
workspace/frontier-problem/problem02-galois-theory/
```

Inside each `problemNN-taxonomy-slug/` folder, `problem.md` and `solution.md` are the only files. Do not create normalized copies, response files, check files, status files, or nested folders.

## Used-Concept Index

One additional file lives at the base directory root (not inside any problem folder):

```text
workspace/frontier-problem/used_concept_map.md
```

It holds exactly one table row per `problemNN-*` folder: `NN | slug | Domain | Sub-domain | Problem Type | Answer Type | core object | mechanism | decisive technique/skeleton | short answer or LONG`. It exists so that duplicate-avoidance (`math-clone` Phase 1b) and the P4 skeleton-saturation tally read **one file** instead of re-reading every problem folder on every run.

Maintenance contract:

- Any skill that creates, renames, retaxonomizes, re-answers, or re-solves a problem folder (`math-clone`, `problem-init`, `math-harder`, `math-change-problem-type`, `math-change-answer-type`, `math-solve`) must update that problem's single index row in the same run (append the row if missing).
- The index is a cache, not the source of truth — the folders are. When a specific row is load-bearing for a decision (e.g. a suspected duplicate), verify against that folder's actual files before rejecting a design.
- If the index file is missing or obviously stale (folder count mismatch), fall back to scanning folders for the current run and tell the user the index needs a rebuild.

## Mechanism Registry (`workspace/frontier-problem/mechanism_registry.md`)

One additional file lives at the base directory root (not inside any problem folder), alongside
`used_concept_map.md`:

```text
workspace/frontier-problem/mechanism_registry.md
```

It is a **machine-readable saturation ledger aggregated from** `used_concept_map.md`'s *Decisive
technique* column — never a second source of truth. `used_concept_map.md` remains the per-problem
cache (one row per problem folder, full technique text); this registry aggregates that same column
into **one row per distinct decisive-technique skeleton**, storing only a count and a curated status —
never per-problem statement, solution, answer, or provenance content. Columns:
`decisive_skeleton | mechanism_role | saturation_count | domains_used | status`, with `mechanism_role`
one of the `M1`–`M9` role ids from `skills/_shared/mechanism_library.md` (or `—` if unclassified) and
`status` one of `active | watch | retired | reject` (legend and definitions in the registry file
itself).

`saturation_count` is the number of `used_concept_map.md` rows whose *Decisive technique* matches that
skeleton — an exact-string match for most rows, or, for a curated family row (several near-duplicate
literal strings that clearly name the same underlying skeleton, e.g. worded variants of the same
active-set/KKT-multiplier certificate), the sum across all folded member strings. **Triviality Probe
P4's saturation sub-check reads this count, and count vs. status drive two different outcomes:**

- `saturation_count` ≥ 2 for the skeleton a candidate problem is about to reuse is a **soft-tier
  saturation WARNING** — matching `skills/_shared/triviality_probe.md`'s P4 two-tier rule (P4 is a
  SOFT-WARNING probe, not a HARD probe). It is **not an automatic block**: strongly prefer a different
  decisive skeleton, but a repeated skeleton alone does not reject a problem that otherwise matches the
  accepted profile.
- A **hard REJECT** applies only when the skeleton's curated `status` is `retired` or `reject` — the
  breaker_playbook-do-not-reuse tier — regardless of what the live `saturation_count` happens to read
  (a `retired` skeleton stays banned even at `saturation_count` 0 or 1). `status` is a curated
  annotation layered on top of the raw count (see the registry's status legend), not derived from the
  count alone.

Maintenance contract:

- Any skill that writes a `used_concept_map.md` row for a decisive technique (`math-clone`,
  `math-harder`, `math-change-answer-type`, `math-change-problem-type`) must, in the same run,
  increment the matching registry row's `saturation_count` (and append its `domains_used` entry if new),
  or add a new `active` row if the skeleton does not already appear in the registry.
- `math-check` may reconcile the registry against `used_concept_map.md`'s current column when auditing
  a problem (e.g. if a row's count has drifted from what the live column shows), but reconciliation is
  optional housekeeping, not a required step of every `math-check` run.
- Like `used_concept_map.md`, this file is a cache: if it is missing, obviously stale, or a specific
  row's count is load-bearing for a P4 reject/accept decision, recompute that row from
  `used_concept_map.md`'s current *Decisive technique* column rather than trusting a stale number.

## Breaker Topic Files (`skills/_shared/breaker-topics/`)

Per-topic living files hold the harden-loop's design policy and accumulated lessons, one file per open sub-domain:

```text
skills/_shared/breaker-topics/
  <sub-domain-slug>.md
```

`<sub-domain-slug>` is the kebab-case slug of the sub-domain name exactly as it appears in `skills/_shared/taxonomy_slots.md` (e.g. "Error analysis and stability" → `error-analysis-and-stability.md`). Each file carries exactly these 8 headings, in order:

```text
## Model priors
## Mechanism-class menu
## Independent gate pairs
## Natural closure certificates
## Saturated routes
## Answer-shape options
## Round-log
## Distilled lessons
```

See `skills/_shared/breaker-topics/README.md` for the full schema and authoring rules. A topic file **references** `hard_gates.md`, `harden_loop.md`, and `triviality_probe.md` — it never copies their text.

Loading contract: when a run selects a topic (sub-domain), load only that one topic file plus the shared machinery (`harden_loop.md`, `stump_gate.md`, `hard_gates.md`, `triviality_probe.md`, `breaker_playbook.md`). Do not read any other topic's file in the same run — that is the point of the split (less noise, fewer tokens).

Like `used_concept_map.md`, a topic file is **runtime-mutated**: every harden-loop round appends a Round-log block, and a clean loop end distills a durable, topic-scoped lesson into that file's `## Distilled lessons` section (and, only if the lesson is cross-topic-universal, into `breaker_playbook.md` as well).

### Round-log block format

One fenced line per round, appended to the topic file's `## Round-log` section:

```text
round=<n> phase=<diagnose|guided|creative|ablation|final> class=<name> direction=<short> label=<§8 label> gate=<pass|fail:GATE> lesson=<one line>
```

### Distilled lesson entry format

Every entry appended to a topic file's `## Distilled lessons` section (and, when cross-topic-universal, the mirrored entry in `breaker_playbook.md`) records four fields before its text — `version` + `model` + `harness` + `date` — not a free-form note:

```text
version=<problemNN version tag, e.g. v3> model=<model id evaluated> harness=<math-solve|math-solve-codex|evaluate-responses|...> date=<YYYY-MM-DD> lesson=<one line>
```

`version` identifies which revision of the problem the evaluation evidence (`gate=pass/fail`, stump/solve behavior) was actually observed against. This is what `### Acceptance freeze` below reads to decide whether older evidence may still be cited after the problem changes again.

### Acceptance freeze

Acceptance ends evaluation. Once a problem version is accepted, no further harden-loop round or evaluation evidence accrues against it under the pretense of still measuring difficulty.

- If the accepted version is the same version that was last evaluated (round-log/distilled-lesson `version` field matches), the existing stump/solve evidence carries over unchanged.
- If the accepted version **differs** from the last evaluated version (e.g. a post-evaluation edit, a normalize-all rewrite, or a hardening round applied after the last recorded round-log), do **not** carry the old stump/solve numbers forward to the accepted version. Record `same_version_as_accepted: false` next to the acceptance note, and treat the accepted version's difficulty as **unmeasured** — it inherits no prior model-breaking evidence.

Label the evidence state at acceptance (or rejection) time using exactly one of these labels, verbatim:

- `accepted_untested_final` — accepted, but the accepted version itself was never run through evaluation (`same_version_as_accepted: false`, or no evaluation was ever performed).
- `accepted_no_stump_observed` — accepted, the accepted version was evaluated, and no run observed a stump (models solved it every time evidence exists).
- `accepted_with_stump_evidence` — accepted, the accepted version was evaluated, and evaluation observed a genuine stump consistent with the acceptance.
- `accepted_with_mixed_evidence` — accepted, the accepted version was evaluated, and evidence is mixed (some stumps, some clean solves) across runs/models.
- `accepted_artifact_dominated` — accepted, but the observed stump behavior is suspected or confirmed to be driven by a formatting/harness artifact rather than genuine mathematical difficulty.
- `rejected_with_promising_mechanism` — rejected (not accepted), but the underlying mechanism showed a promising direction worth revisiting in a future version.

### Harden-pending sentinel

At harden-loop start, the running skill writes a sentinel marker — never inside a problem folder — at:

```text
workspace/frontier-problem/.harden-pending/<problemNN>.<sessionid>
```

Lifecycle:

- **Loop start** → write body `pending`.
- **Each round** → the harden loop itself appends that round's round-log block in-loop; the sentinel body is untouched.
- **Clean loop end** (round-log fully appended, lesson distilled in-loop) → delete the marker, regardless of its current body.
- **Stale marker found by the cross-provider backstop hook** (session/thread ended without a clean loop end) → the hook only rewrites the marker body to `needs-distill` (the round-log was already appended per-round in-loop, up to wherever the session stopped); the hook does not read, flush, or distill the round-log itself — a shell script has no model context to distill with.
- **Catch-up** → the next `math-clone` / `math-harder` / `evaluate-responses` run scans for `needs-distill` markers at startup and has the live model distill them before proceeding.

## Revise Shelf

Strong problems that cannot currently be submitted because their taxonomy slot is closed may be copied to:

```text
workspace/revise-shelf/
  index.json
  problemNN-taxonomy-slug--YYYYMMDDTHHMMSSZ/
    manifest.json
    problem.md
    solution.md
```

This shelf is archival and is managed only through `skills/revise-shelf/`. Shelved problems are not active frontier problems: do not include them in active-folder resolution, used-concept-map folder counts, taxonomy consumption, normalization, solving, hardening, or submission scans. Parking never reserves a portal slot. Restore a snapshot to `workspace/frontier-problem/problemNN-taxonomy-slug/` before resuming a revise task, then re-check the current taxonomy and update `used_concept_map.md`.

## Active Problem Resolution

- If the user passes a path to a `problemNN-*` folder, use that folder.
- If the user passes a path to `problem.md` or `solution.md`, use the containing `problemNN-*` folder.
- If no path is passed, use only a problem folder that is explicitly identified by the current user request or by the immediately preceding workflow context, such as a problem folder just created in the same conversation. Do not infer the active folder from numeric ordering.
- If no explicit or context-selected problem folder is available, stop and ask the user for the `problemNN-*` folder or file path.
- `problem-init` may create an empty placeholder folder if explicitly requested.
- **The problem number `NN` comes from the user, never from a folder scan.** Multiple clones run in parallel (across windows/sessions), so a number can already be claimed while its folder does not exist yet. Do **not** infer "the next available number" by counting existing `problemNN-*/` folders — that undercounts in-flight clones and collides. If the user gave a number (explicit number, folder name, or path), use **exactly** that number and never bump to the next one, even if a folder with that number seems to exist (surface the conflict to the user instead). If the user gave no number, ask which `NN` to use — do not guess.
- Derive `{taxonomy-slug}` from the selected sub-domain when possible; otherwise use the primary domain slug.

## Workflow Contract

- `math-clone` creates a new `problemNN-taxonomy-slug/` folder and writes `problem.md`; it may create an empty `solution.md` placeholder.
- `math-harder`, `math-change-answer-type`, and `math-change-problem-type` read/write the active folder's `problem.md`.
- `math-harder` and `math-change-problem-type` additionally **rename** the `problemNN-taxonomy-slug/` folder to a new slug (keeping the same `NN`, moving both `problem.md` and `solution.md`, preferring `git mv`) whenever the redesign changes the Domain/Sub-domain. The folder number is preserved; only the slug changes.
- `math-solve` reads the active folder's `problem.md` and writes that same folder's `solution.md`.
- `normalize-problem` reads and updates the active folder's `problem.md` in place.
- `format-solution` reads and updates the active folder's `solution.md` in place.
- `normalize-all` reads and updates the active folder's `problem.md` and `solution.md` in place.
- `math-check` reads the active folder's `problem.md` and `solution.md`, and may write **expanded black-box steps** back into that `solution.md` (Section 4F — auto-expansion, no prompt); it never modifies `problem.md` and never changes any result.
- Optional response evaluation (pasted responses graded against a solution) must use pasted responses in chat and report results in chat. It must not create files in `workspace/frontier-problem/` or inside problem folders. This does not apply to `evaluate-responses`'s separate archive-analysis mode, which writes into `workspace/response-archive/` — see `skills/_shared/response_archive.md`.

## Parallel Window Discipline

This layout is designed for two independent windows:

- Generation window: create, harden, change type, solve. It owns the active problem folder's `problem.md` and `solution.md`.
- Normalization window: run `normalize-all` on the same active problem folder. It reads and updates `problem.md` and `solution.md` in place.

To avoid file races, the generation window should finish writing both files before the normalization window starts. If either source file is missing or appears incomplete, `normalize-all` must stop and ask the user to finish the generation/solve step first.
