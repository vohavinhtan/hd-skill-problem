---
name: problem-init
description: Create a frontier problem folder under workspace/frontier-problem/problemNN-taxonomy-slug/ with exactly two placeholder files: problem.md and solution.md.
user-invocable: true
disable-model-invocation: false
argument-hint: optional taxonomy slug or problem folder path
---

# Problem Workspace Initializer

## Contract

- **Task:** create one frontier problem folder under `workspace/frontier-problem/problemNN-taxonomy-slug/` with exactly two placeholder files — `problem.md` and `solution.md` — plus the `used_concept_map.md` placeholder row.
- **Defaults (act, do not ask):** proceed on the most reasonable reading. The `NN` must come from the argument or context; if a number is given (in a path or alongside a slug) use exactly that `NN`, and default only the slug to `untitled` when none is given. Never auto-increment over a supplied number, and never pick `NN` by scanning for the next free folder — that collides with in-flight parallel clones that claim a number before their folder exists.
- **Only hard stop:** no `NN` supplied and none inferable from the argument/context — ask which `NN` to use (a folder scan is unsafe here), then proceed. Nothing else pauses.
- **Done:** folder created with both placeholder files, `used_concept_map.md` row appended, and the resolved path reported. Persist end-to-end in this turn; do not narrate a plan before acting.

## Task

Create a frontier problem folder with the following structure:

```
workspace/frontier-problem/
  problemNN-taxonomy-slug/
    problem.md            ← active generated problem
    solution.md           ← active ground-truth solution
```

## Steps

1. **Determine the folder.**
   - Read `skills/_shared/frontier_workspace.md`.
   - If the user supplied a `workspace/frontier-problem/problemNN-*` path, use it.
   - **A user-supplied number is authoritative** (`skills/_shared/frontier_workspace.md`): parallel clones claim numbers before their folders exist. If the user gave a number (in the path, or alongside a slug), use exactly that `NN` — never auto-increment over it.
   - If a slug but no number was given, default only the slug to `untitled`; the `NN` still must come from the argument or context. Do **not** scan for the next free `problemNN` — that collides with parallel clones. If no `NN` is supplied and none is inferable from context, ask which `NN` to use (the one genuine hard stop), then proceed.

2. **Check for conflicts.**
   - Do not delete or truncate existing files unless the user explicitly asks to reset that problem folder.
   - If the selected folder exists, create any missing placeholder files and leave existing content untouched.

3. **Create the directory and placeholder files.**
   Use the resolved `$PROBLEM_DIR`:
   ```bash
   mkdir -p "$PROBLEM_DIR"
   touch "$PROBLEM_DIR/problem.md"
   touch "$PROBLEM_DIR/solution.md"
   ```

   These are the only files this skill creates inside the problem folder. Placeholder files may stay empty until the relevant skill writes them.

   Also append a placeholder row for this `NN`/slug to `workspace/frontier-problem/used_concept_map.md` (contract in `skills/_shared/frontier_workspace.md`), with the concept columns set to `placeholder` — `math-clone` fills them on save.

4. **Confirm success.**
   Report to the user:
   ```
   Ready: workspace/frontier-problem/problemNN-taxonomy-slug/
     problem.md              ← active problem
     solution.md             ← active solution

   Run /math-clone, /math-solve, then /normalize-all.
   ```
