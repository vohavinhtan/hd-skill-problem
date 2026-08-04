---
description: Solve a math problem with Codex as the primary derivation engine and Claude as adversarial verifier (Black-Box Detection + Counterexample Attack Gate), looping with Codex on real findings before writing solution.md.
argument-hint: optional problem statement, image path, or problemNN-*/problem.md path — same resolution as /math-solve
allowed-tools: Agent, Read, Write, Bash, AskUserQuestion
---

# Math Solve — Codex Primary, Claude Verifies

This command is a Claude Code-only wrapper. It does not modify `skills/math-solve/SKILL.md` — that file stays exactly as the source of truth for standalone `/math-solve` and for Codex CLI's own mirror. This command reuses that file's Phase 3b, Phase 4, Loop Iteration, and Output Template by reading and following them directly; it does not restate them.

## Step 0 — Availability check

Verify the Codex plugin is installed and Codex CLI is authenticated. If unavailable (plugin not installed, `codex` CLI missing, or not logged in), stop immediately and tell the user: "Codex is not ready. Run `/codex:setup` first." Do not proceed, and do not fall back to solving the problem directly — this command's entire purpose is that Codex is the primary solver.

## Step 1 — Resolve the problem

Read `skills/_shared/frontier_workspace.md`. Resolve the problem exactly as `skills/math-solve/SKILL.md` Step 0/Step 1 do:
- Do not ask the user to pick a provider.
- If `$ARGUMENTS` contains inline text/LaTeX/an image path outside `workspace/frontier-problem/`, use it directly.
- If `$ARGUMENTS` points to a `workspace/frontier-problem/problemNN-*` folder or its `problem.md`, or is empty and a folder is clearly identified by conversation context, read that folder's `problem.md`'s `## LaTeX (Normalized)` section (or `## Problem Statement` if legacy, or the full file otherwise).
- Never infer the active folder by numeric ordering.
- If nothing resolves, ask the user to paste the problem or give a path.

## Step 2 — Delegate the derivation to Codex

Invoke the `Agent` tool directly (this command runs as the top-level thread — do not wrap this in a nested Task or forked subagent, which would hide the `Agent` tool) with:
- `subagent_type: "codex:codex-rescue"`
- `prompt`: the text below, with `{PROBLEM}` replaced by the resolved problem statement from Step 1.

First attempt (fresh thread):

```
--wait --effort medium --fresh
This is a research/diagnosis task only. Do not edit, create, or modify any files — return your answer as plain text in your final response.

Solve the following mathematical problem completely and rigorously, as a disciplined solver would for a frontier/competition-grade submission. Never return an answer that has not been verified by you; if you cannot verify it, say so explicitly rather than guessing.

Produce, in this order:
1. The final answer, stated first.
2. Solution Concepts: the main concepts/techniques/knowledge required.
3. The full step-by-step solution — do not skip or compress any nontrivial reasoning step, do not write "by symmetry" or "clearly" or "one can show" in place of an actual argument, and do not present a software-only final evaluation (a recurrence/transfer-matrix/dynamic-program/coefficient-extraction result) without a hand-auditable derivation backing it.

Problem:
{PROBLEM}
```

Record the Codex session/thread identifier from the response if one is returned (needed for `--resume` in Step 4).

## Step 3 — Review Codex's draft (Claude only, no Codex)

Treat Codex's returned text as the draft solution. Run, in order, exactly the instructions already written in `skills/math-solve/SKILL.md`:

1. **Phase 3b — Black-Box Detection** (that file, "Phase 3b" section): scan every step of Codex's draft for black-box reasoning per `skills/_shared/hard_gates.md`'s Black-Box Severity Scale. Record every Level 1/2/3 finding.
2. **Phase 4 — Verify** (that file, "Phase 4" section, methods A–F): apply at least 2 independent verification methods, and mandatorily run **E3, the Counterexample Attack Gate** — treat Codex's claimed answer as a target to falsify, not defend.

Full context: you see Codex's entire derivation, not just its final answer — this is an audit of a written argument, not a blind independent re-derivation.

## Step 4 — On a real finding, send it back to Codex

If Phase 3b found any Level 2/3 black-box step, or Phase 4/E3 found a real counterexample or a real verification failure:

Follow `skills/math-solve/SKILL.md`'s own "Loop Iteration (when verification fails)" section: diagnose which phase the flaw traces to (misread the problem, missed a case, flawed argument, or an unjustified black-box step), then instead of restarting that phase yourself, send it back to Codex.

Invoke the `Agent` tool again with `subagent_type: "codex:codex-rescue"` and:

```
--wait --effort medium --resume
This is a research/diagnosis task only. Do not edit, create, or modify any files — return your answer as plain text in your final response.

Your previous solution to this problem has a specific flaw. Do not patch it locally — rebuild the affected reasoning from the point where it went wrong, re-verify, and give a complete corrected solution in the same format as before (final answer first, then Solution Concepts, then the full step-by-step solution).

Flaw found:
{SPECIFIC_FAILURE_DESCRIPTION}
```

Where `{SPECIFIC_FAILURE_DESCRIPTION}` is the exact counterexample or the exact unresolved black-box step, stated concretely (per the Counterexample Attack Gate's own recording rule: "Counterexample found: ..." or the specific Level 2/3 step and why it's nontrivial).

Return to Step 3 with Codex's new draft. Track iteration count. **Maximum 3 iterations total** (matching `skills/math-solve/SKILL.md`'s existing cap). If the 3rd iteration still fails Step 3, stop: report to the user "Cannot solve this problem — Codex's derivation failed verification after 3 attempts," list what was tried and why each attempt failed, per that file's existing Hard Rule. Do not create `solution.md`.

## Step 5 — Write solution.md

Once Step 3 passes clean (no Level 2/3 black-box, no surviving counterexample): read `skills/_shared/frontier_workspace.md` and write `solution.md` into the resolved active problem folder, using `skills/math-solve/SKILL.md`'s exact existing "Output Template" section, populated from the final accepted Codex draft plus your own Phase 3b/Phase 4 findings.

Before writing, run the **Solution Length Gate** (`skills/_shared/hard_gates.md`): count every character of the `## Steps` section (as written; nothing outside it) and report the exact number — must be under 10,000. If over, compress honestly (tighter prose, certificate-style arguments) without reintroducing any Level 2/3 black box; if that cannot fit, report the problem as too computational instead of writing a violating file.

Add one line under `## Confidence`:

```
Solved by Codex (gpt-5.6-sol/high); verified by Claude (Phase 3b + Phase 4, N iteration(s)).
```

Where N is the total number of Step 2/4 Codex calls made (1 if it passed on the first attempt).
