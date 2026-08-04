---
name: revise-shelf
description: Park, list, inspect, or restore strong frontier math problems whose taxonomy slot is closed or temporarily unavailable. Use when a user wants to preserve a problem for a later revise task, free its active problem number for a new topic, or recover a previously shelved problem without losing its prompt, solution, taxonomy, provenance, or checksums.
---

# Revise Shelf

## Contract

- **Task:** park, list, inspect, or restore a shelved frontier-problem snapshot via the bundled script — pick the sub-action (`park` / `list` / `show` / `restore`) from the invocation arguments and context.
- **Defaults (act, do not ask):** infer the intended sub-action, target folder, and shelf ID from context and act on the most reasonable reading; resolve paths per `skills/_shared/frontier_workspace.md` and state any assumption in the report.
- **Only hard stop:** a named shelf ID is not found, or a `restore` target is nonempty (would overwrite active work) without explicit `--force` authorization — report and stop; nothing else pauses the run.
- **Done:** the chosen sub-action executed by the script, and its result (shelf ID, listing, manifest, or restore path) reported. Persist end-to-end in this turn; do not narrate a plan before acting.

Store inactive problem snapshots under `workspace/revise-shelf/`. A shelved snapshot is archival, not an active frontier problem, and must never be selected by `math-solve`, `math-harder`, normalization, or submission workflows until restored.

## Trigger: a review says the taxonomy slot is exhausted/full

When a reviewer comment (or a slot-snapshot check in `normalize-all` / `rainier-submit` reading `skills/_shared/taxonomy_slots.md`) reports that the problem's Domain/Sub-domain (or Problem/Answer Type) slot is **exhausted, full, or closed** — the problem is not wrong, only mis-slotted. Do **not** discard it and do **not** try to force-submit it into the closed slot. Apply this decision:

1. **Is the problem otherwise sound?** — i.e. it passes the hard gates and Triviality Probe (see `skills/_shared/hard_gates.md`, `skills/_shared/triviality_probe.md`) and its only defect is the closed slot, so it is worth reviving when that slot (or a compatible one) reopens.
   - **Yes → `park` it** with `--reason "taxonomy slot exhausted (reviewer)"` so its prompt, solution, taxonomy, provenance, and checksums are preserved for later restore. This frees the active problem number.
   - **No → do not shelf.** Fix/redesign it first (`math-harder` / `math-check` / the change-type skills), or drop it. The shelf is for strong problems only, not a dumping ground.
2. **Then create a replacement to fill the batch:** after parking, the follow-up action is to generate a **new** problem for a **different currently-open** Domain/Sub-domain row — run `math-clone` (or `math-clone-batch`), selecting an open slot per `skills/_shared/taxonomy_slots.md`. Do not re-target the same closed slot. When the shelved problem's slot later reopens, restore it with `restore` instead of re-authoring from scratch.

This keeps a good problem from being wasted on a closed slot while keeping the batch full with an in-slot replacement.

## Resolve the Repository

Read `skills/_shared/frontier_workspace.md`. Run the bundled script from the repository root:

```bash
python3 skills/revise-shelf/scripts/revise_shelf.py <command> ...
```

## Park

Use `park` when the current problem is worth retaining but its Domain/Sub-domain slot is closed or the user explicitly wants to defer it:

```bash
python3 skills/revise-shelf/scripts/revise_shelf.py park \
  workspace/frontier-problem/problemNN-slug \
  --reason "taxonomy slot closed"
```

The command copies `problem.md` and `solution.md`; it never deletes or edits the active folder. It records taxonomy, the current slot snapshot, source path, UTC timestamp, and SHA-256 checksums in `manifest.json`, then rebuilds `workspace/revise-shelf/index.json`.

After parking, report the exact shelf ID. Do not redesign, rename, remove, or overwrite the active problem unless the user also requested that separate action.

## List

List every snapshot:

```bash
python3 skills/revise-shelf/scripts/revise_shelf.py list
```

Filter by a case-insensitive taxonomy substring when useful:

```bash
python3 skills/revise-shelf/scripts/revise_shelf.py list --taxonomy "Linear programming"
```

## Inspect

Read one manifest without restoring:

```bash
python3 skills/revise-shelf/scripts/revise_shelf.py show <shelf-id>
```

## Restore

Restore only after the user explicitly selects the snapshot and target:

```bash
python3 skills/revise-shelf/scripts/revise_shelf.py restore <shelf-id> \
  --target workspace/frontier-problem/problemNN-slug
```

The command verifies checksums first and refuses to write into a nonempty target. `--force` exists for recovery, but never use it without explicit user authorization because it can overwrite active work.

After restoring:

1. Re-read `skills/_shared/taxonomy_slots.md`.
2. Confirm the restored taxonomy is open before treating the problem as active.
3. Update the problem's row in `workspace/frontier-problem/used_concept_map.md`.
4. Run `math-check`, then `normalize-all`, before submission.

## Safety Rules

- Never store a snapshot inside `workspace/frontier-problem/`.
- Never use `workspace/response-archive/` for problem snapshots.
- Never mutate a shelved snapshot; park a new version instead.
- Never count shelved folders as active problems or include them in slot/skeleton scans.
- Never claim that parking reserves a portal slot. It only preserves local work.
