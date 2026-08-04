# Breaker Topic Files

One file per open sub-domain (per `skills/_shared/taxonomy_slots.md`), holding that topic's harden-loop
design policy plus its accumulated lessons. See `skills/_shared/frontier_workspace.md` (`## Breaker
Topic Files`) for the directory layout, filename-slug rule, loading contract, round-log block format,
and harden-pending sentinel — this file is the schema and authoring reference, not a second copy of
that contract.

## Filename

`skills/_shared/breaker-topics/<sub-domain-slug>.md`, where `<sub-domain-slug>` is the kebab-case slug
of the sub-domain name exactly as written in `taxonomy_slots.md` (e.g. "Error analysis and stability"
→ `error-analysis-and-stability.md`).

## The 8 headings

Every topic file carries exactly these headings, in this order, and no others:

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

- **Model priors** — how models typically attack this topic: the recognized template, the default
  shortcut, the prior a hardening direction needs to defeat.
- **Mechanism-class menu** — 3–5 named gateway classes for this topic. This is the rotation fuel the
  harden loop's guided phase draws from (`harden_loop.md`): each guided round must pick a class not
  used earlier in that loop. Each entry should tag its mechanism role id (`M1`–`M9` from
  `skills/_shared/mechanism_library.md`) so a topic menu reads as a domain-specific instantiation of
  the shared roles; new topic files adopt the library through this schema.
- **Independent gate pairs** — the two (or more) load-bearing checks a correct answer must clear
  independently in this topic, so that clearing one does not automatically clear the other.
- **Natural closure certificates** — what a complete answer in this topic must exhibit to prove
  sharpness/attainment/uniqueness/exhaustiveness, per the topic's own object (not a copy of the
  generic certificate language in `hard_gates.md`).
- **Saturated routes** — named skeletons and P4/P5 side-channels already known to fail to stump models
  in this topic; do not reuse them as the decisive step.
- **Answer-shape options** — candidate final-object shapes for this topic, each with a length note
  (every option must still clear the Answer Length Gate in `hard_gates.md`).
- **Round-log** — machine-readable, appended once per harden round in the block format defined in
  `frontier_workspace.md`. Runtime-filled; empty at seed time.
- **Distilled lessons** — abstracted, topic-scoped lessons written at clean loop end. Runtime-filled;
  empty at seed time.

## Reference, never copy

A topic file **references** `skills/_shared/hard_gates.md`, `skills/_shared/harden_loop.md`, and
`skills/_shared/triviality_probe.md` by name (e.g. "run the gates per `hard_gates.md`", "Ablation
phase per `harden_loop.md`") — it never restates their text. Copied gate/probe/loop text is drift risk
and noise; the whole point of the per-topic split is that only the chosen topic's policy is loaded
alongside the shared machinery, so keep this file's own content topic-specific and short.

## Seeding sources

New or refreshed topic files are seeded from:

- First principles for the sub-domain, written directly into this file's own headings: the
  **Mechanism-class menu** from the 3–5 named gateway classes a solver typically reaches for in the
  topic; **Independent gate pairs** from the two load-bearing checks a correct answer must clear
  separately; **Saturated routes** from the named skeletons or P4/P5 side-channels already seen to
  fail to stump; **Answer-shape options** from the viable final-object shapes for the topic. Write
  these from your own experience plus the evidence below — do not depend on any external strategy
  document.
- The per-topic content previously carried in `skills/_shared/breaker_playbook.md`, before that file
  was narrowed to cross-topic-only lessons.
- The per-taxonomy rows for this sub-domain in `workspace/response-archive/analysis/by-taxonomy.md`
  (real model-trace evidence: what actually got recognized on sight, what genuinely stumped).

## How the loop uses this file

At topic selection, the harden loop loads exactly this one file alongside the shared machinery. The
**Mechanism-class menu** is the rotation fuel for the guided phase; **Distilled lessons** and the tail
of **Round-log** are read at the diagnose phase to avoid repeating a direction already known to fail;
every round of the loop appends a new **Round-log** block, and a clean loop end appends a new
**Distilled lessons** entry — so the file is a living document that gets smarter the more it is used,
not a static adapter.
