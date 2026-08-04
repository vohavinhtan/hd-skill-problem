# Response Archive

Shared file layout and workflow contract for archiving downloaded model-response HTML exports (e.g. a portal's "Difficulty Evaluation — Model Traces" export showing multiple models/attempts against one problem) and mining them for weakness patterns at four levels: a single problem (Zone 1), a taxonomy row (Zone 2), cross-taxonomy common failure modes (Zone 3), and a short durable design digest (Zone 4, `skills/_shared/breaker_playbook.md`). `evaluate-responses` writes here; `math-clone` and `math-harder` read the Zone-4 digest as their primary design/hardening input and the Zone-2/3 aggregates for deep-dive.

## Base Directory

```text
workspace/response-archive/
  html/
    <any-filename>.html
  analysis/
    by-problem/
      <same-stem-as-html>.md
    by-taxonomy.md
    common-failures.md
```

Do not create any other base workspace folder for this workflow, and do not create it as a child of `workspace/frontier-problem/` — it is a separate, cross-problem archive, not a single problem's folder.

## `html/` — Raw Archive (user-managed)

- The user drops downloaded/pasted HTML export files here directly, any filename.
- Skills only read from `html/`; never rename, move, edit, or delete a file in it.
- A file may or may not correspond to an active `workspace/frontier-problem/problemNN-*/` folder. Both cases are valid:
  - **Linked**: the HTML is a response set for a problem that also exists under `workspace/frontier-problem/`. Record the link in the per-problem analysis file.
  - **Unlinked / archived-only**: the HTML was captured from the portal review process with no corresponding local problem folder (e.g. a colleague's submission, or a problem no longer in the active workspace). Still analyze it — classify its taxonomy from the embedded problem statement and `skills/_shared/taxonomy_slots.md` instead of from a linked `problem.md`.

## Reading Large HTML Exports

These exports are frequently hundreds of KB (a single "Difficulty Evaluation" export with 2 models × 8 attempts each has run well past 700KB) and exceed a direct file-read limit. Before reading:

1. Strip HTML to plain text first — remove `<script>`/`<style>` blocks, convert `<br>`/`</p>`/`</h1>`/`</h2>`/`</h3>` to newlines and `## `/`### ` markers for headers, strip remaining tags, HTML-unescape entities.
2. If the stripped text is still too large to read in one pass, split it into per-section chunks at each `## Model` / `### Attempt` boundary (or equivalent heading level found in the export) and read each chunk separately rather than truncating silently.
3. Never analyze only a truncated prefix of a large export and report as if the whole file was read — if a file must be chunked, read every chunk before writing the analysis.

## `analysis/by-problem/<stem>.md` — Zone 1: Per-Problem Weakness

One file per analyzed HTML, named after the HTML file's stem (e.g. `html/2026-07-02-z17-reconstruction.html` → `analysis/by-problem/2026-07-02-z17-reconstruction.md`). Required sections:

```markdown
# Response Archive Analysis — <html filename>

## Source
- HTML file: `workspace/response-archive/html/<file>`
- Linked problem: `workspace/frontier-problem/problemNN-taxonomy-slug/` or "unlinked / archived-only"
- Taxonomy: Domain / Sub-domain / Problem Type / Answer Type
- Models observed: e.g. Model 1 — 8/8 correct; Model 2 — 5/8 correct (3 length-cutoff)

## Per-Attempt Summary
| Model | Attempt | Verdict | finish_reason | Decisive shortcut / failure point |
|---|---|---|---|---|

## Weakness Diagnosis
Run the Triviality Probe (`skills/_shared/triviality_probe.md`) if the problem/solution is available, and check the failure-mode table and Response-Driven Weakness Audit fields from `math-harder`'s SKILL.md (first decisive recognition, successful shortcut, prompt leak, skipped structure, computation profile, generalizability). State which failure mode(s) apply, and whether any observed failure was a genuine reasoning weakness versus an artifact (e.g. `finish_reason=length` budget cutoff, not a wrong idea).

## Recommended Action
- For `math-harder`: which technique(s)/certificate pattern to apply if this exact problem is hardened later.
- For `math-clone`: which design mistake to avoid repeating in new problems of this taxonomy.
```

## `analysis/by-taxonomy.md` — Zone 2: Per-Taxonomy Aggregate

A single running table, one row per Domain/Sub-domain/Problem Type/Answer Type combination seen in the archive:

```markdown
| Domain | Sub-domain | Problem Type | Answer Type | Observed shortcut/failure pattern(s) | Files analyzed | Source files |
|---|---|---|---|---|---:|---|
```

Update this file after every new per-problem analysis: if the taxonomy row already exists, append the new pattern (dedupe near-identical wording) and increment the file count; otherwise add a new row.

## `analysis/common-failures.md` — Zone 3: Cross-Taxonomy Common Failures

A single running table of failure modes that recur **regardless of taxonomy**:

```markdown
| Failure mode | Maps to math-harder table row (or "NEW") | Taxonomies observed in | Files observed | Representative example |
|---|---|---|---:|---|
```

- Prefer mapping to an existing row in `math-harder`'s failure-mode table or a Triviality Probe test (P1–P8) when the pattern matches one.
- If a genuinely new recurring pattern emerges that isn't covered by the existing table, add it here as `NEW: <name>` with a one-line symptom description — this is a signal that `math-harder`'s failure-mode table itself may need a new row; flag it to the user rather than silently expanding that table.

## `skills/_shared/breaker_playbook.md` — Zone 4: Durable Digest

A short, design-time-readable distillation of the **durable** lessons only (what defeats models, winning patterns, saturated skeletons, verified hardening moves) — the lessons that do not age with a specific problem version. Zones 1–3 hold per-problem and per-taxonomy detail that ages; Zone 4 holds only what stays true across versions, so `math-clone`/`math-harder` can read it instead of the large aggregates.

- **Hard line cap: ≤60 lines.** Zone 4 is a digest, not a log. If an update would exceed the cap, merge or drop the least-load-bearing existing line rather than growing the file.
- **Durable only.** Never copy a per-problem verdict ("probXX is a breaker") into Zone 4 — those live in Zone 1/2/3 and go stale. Zone 4 records the *generalizable* lesson (a reusable trap pattern, a newly saturated skeleton, a hardening move that verifiably moved solve rate).
- `evaluate-responses` updates Zone 4 after each analysis; `math-clone` and `math-harder` read it as their primary design/hardening digest.

## Workflow Contract

- `evaluate-responses` is the only skill that writes into `workspace/response-archive/analysis/`. Given a specific path under `html/`, it analyzes only that file. Given the argument `all`, it analyzes every file in `html/` that has no matching file yet in `analysis/by-problem/`; ask the user before re-analyzing files that already have one.
- Writing into `workspace/response-archive/` is unrelated to the existing rule (in `skills/_shared/frontier_workspace.md`) that ad-hoc pasted-response grading must not create files in `workspace/frontier-problem/` — that rule is unchanged and still applies to that base directory.
- `math-clone`, before designing a new problem for a given Domain/Sub-domain, must check `analysis/by-taxonomy.md` for that row and `analysis/common-failures.md` in general, and design away from any recorded shortcut (the Zone-4 `breaker_playbook.md` digest is the fast path; these two aggregates are the specific-taxonomy deep-dive).
- `math-harder`, during Step 3 diagnosis, must check the same two files for the current problem's taxonomy — a match narrows down the failure mode immediately and indicates which hardening technique has (or has not) worked before for this kind of problem.
- If `workspace/response-archive/` does not exist yet, treat both aggregate files as empty (no rows) rather than blocking — this archive is optional until the user starts populating it.
