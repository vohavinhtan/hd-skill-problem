<!-- GENERATED from skills/_shared/agents_core.md by scripts/sync-provider-skills.sh. Do not edit by hand; edit the source. -->

# Rotura Math — Core Rules (Codex AGENTS source)

This file is the lean, front-loaded rule set. The sync script copies it to the repo-root `AGENTS.md`
so Codex loads it every session (Claude sees the same rules via `CLAUDE.md` + the skills). It states
each durable rule **once**; the authoritative detail lives in the referenced `skills/_shared/*` files.
Do not restate these rules inside individual skills — reference them.

## What this project does

Author **frontier math problems** that survive portal review and ideally stump a GPT-5.x-class model.
Every problem folder holds exactly two files: `problem.md`, `solution.md`. The single source of truth
for every provider is `skills/` — never hand-edit `.claude/commands`, `.codex/**`, or `~/.codex`.

## Working policy — read this first

- **Bias to action.** Do not end a turn on clarifying questions unless genuinely blocked; proceed on
  the most reasonable reading and state the assumption. Prefer a stated default over a pause.
- **Do not narrate an upfront plan** before acting. Required reports and artifacts (the P1–P8 probe
  block, audits, verdicts) belong in the finished deliverable, not as a pre-write status pause —
  narrating a plan first can make the model stop early.
- **Decide the files you need before acting.** Read enough context, then batch edits; avoid repeated
  micro-edits to the same file.
- **Avoid busy-looping.** If you are re-reading or re-editing the same file without progress, stop and
  end with a concise summary.
- **Done means**: the deliverable exists, every hard gate (below) passes, and the change is verified —
  not merely attempted.

## Hard gates (a fail blocks save/submit) — detail in `skills/_shared/hard_gates.md`

- **Answer Length** — boxed answer, `$` and whitespace stripped, **under 100 characters**.
- **Solution Length** — the `## Steps` section, as written, **under 10,000 characters**. Never
  re-hide a derivation behind "one checks" to fit; if an honest write-up cannot fit, redesign.
- **By-Hand Solution** — every core computation is hand-derivable: no CAS/code/calculator dependency.
- **Magnitude** — no number above `10^15` or below `10^-10`, no absurd numerical evaluation.
- **Too-Computational** — the decisive step is not "run this K times", brute force, long recurrence,
  or many eigenvalue/solve calls. Use an invariant / law / certificate instead.
- **Mechanical-Bookkeeping** — no long coefficient/case/orbit/determinant table as the main content.
- **Smokescreen** — no notation/domain dressing that only hides a simple problem.
- **Self-Containment** — every symbol/custom term is defined before use, over its whole domain, with
  no second defensible reading.
- **No "does not exist"** answers; **no niche-only object** cited by name alone.
- **Black-Box** — no Level 2/3 jump ("one checks", "by computation", a theorem applied without
  checking its hypotheses). Detail: the Black-Box Severity Scale in `hard_gates.md`.
- **Plain Portal Text** — problem/solution use no Markdown emphasis/blockquote; no machine word-wrap.

## Gate > Stump priority — detail in `skills/_shared/harden_loop.md`

- **Gate-clean is the hard constraint.** A stump obtained by failing any gate is worthless.
- A stump is **pursued but never required** to save. On honest-effort exhaustion of the harden
  ladder, a **gate-clean** draft matching the accepted profile (`skills/_shared/passed_exemplars.md`)
  **may ship**; if it does not match the profile, recommend replace.
- The staged harden loop (Diagnose → Guided rotation → Creative pivot → Ablation → Final), the
  per-round anti-regression check, and lesson logging all live in `skills/_shared/harden_loop.md`.
  The stump verdict oracle (two blind gpt-5.4 solvers) lives in `skills/_shared/stump_gate.md`.

## Triviality Probe — detail in `skills/_shared/triviality_probe.md`

Every saved/hardened problem records the P1–P8 block. Hard-tier (P1, P2, P3, P5, P7 7a/7b, P8) REJECT
blocks; soft-tier (P4, P6, P7 node-count) warns when the accepted profile holds.

## Taxonomy

`skills/_shared/taxonomy_slots.md` is the current source of truth for open Domain/Sub-domain, Problem
Type, and Answer Type slots. Read it before choosing any label; do not paste the full slot table into
outputs. Per-topic breaker knowledge lives in `skills/_shared/breaker-topics/<topic>.md` (load only
the chosen topic).

