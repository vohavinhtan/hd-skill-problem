---
description: Harden specified existing frontier problems in parallel via Codex (gpt-5.6-sol, effort medium) — Codex proposes a hardening direction, Claude approves it, Codex executes the rewrite, Claude verifies, then writes the hardened problem.md plus a preliminary solution.md.
argument-hint: problemNN folder names or paths, space-separated (e.g. problem120 problem134)
allowed-tools: Workflow, AskUserQuestion, Bash
---

# Math Harder Batch — Parallel Codex Hardening

This command is a Claude Code-only wrapper. It does not modify `skills/math-harder/SKILL.md`. It hardens each specified problem's `problem.md` in place and writes a PRELIMINARY `solution.md`; run `/math-solve-codex` per problem afterward for a verified solution.

## Step 1 — Resolve the folder list

Collect the target folders from `$ARGUMENTS` (bare names like `problem120` or full `workspace/frontier-problem/problemNN-*` paths). Read `skills/_shared/frontier_workspace.md`, then resolve each argument to an actual `workspace/frontier-problem/problemNN-*` directory. Drop (and note to the user) any that do not resolve or whose `problem.md` is missing or empty. If `$ARGUMENTS` names no resolvable folder, use `AskUserQuestion` to ask which problems to harden — never invent a folder.

## Step 2 — Availability check

Verify the Codex plugin is installed and Codex CLI is authenticated (same check as `/math-solve-codex`). If unavailable, stop and tell the user to run `/codex:setup` first.

## Step 3 — Run the batch workflow

Invoke the `Workflow` tool with `args: { folders: [<resolved full paths>] }` and the script below.

```javascript
export const meta = {
  name: 'math-harder-batch',
  description: 'Harden specified frontier problems in parallel: Codex proposes direction, Claude approves, Codex executes, Claude verifies, write hardened problem + preliminary solution',
  phases: [
    { title: 'Propose direction' },
    { title: 'Approve direction' },
    { title: 'Execute' },
    { title: 'Verify' },
    { title: 'Write' },
  ],
}

const parsedArgs = typeof args === 'string' ? JSON.parse(args) : args
const folders = parsedArgs && parsedArgs.folders
if (!Array.isArray(folders) || folders.length === 0) {
  throw new Error(`args.folders must be a non-empty array of problem folder paths, got: ${JSON.stringify(parsedArgs)} (raw args typeof ${typeof args}). Pass args as {"folders": ["workspace/frontier-problem/problem120-..."]}.`)
}

const DIRECTION_SCHEMA = {
  type: 'object',
  properties: {
    approved: { type: 'boolean' },
    reason: { type: 'string' },
  },
  required: ['approved', 'reason'],
}

const VERIFY_SCHEMA = {
  type: 'object',
  properties: {
    pass: { type: 'boolean' },
    reason: { type: 'string' },
    problemMarkdown: { type: 'string' },
    preliminaryAnswer: { type: 'string' },
    approachSummary: { type: 'string' },
  },
  required: ['pass', 'reason'],
}

function buildProposePrompt(folder, feedback, resumeFlag) {
  const feedbackBlock = feedback
    ? `\n\nYour previous direction was rejected: ${feedback}\nRevise the direction to fix exactly that.`
    : ''
  return `--wait --effort medium ${resumeFlag}
You MUST wait synchronously until Codex has fully finished before responding. Do NOT return an in-progress or status-check placeholder — keep waiting until the result is ready.

This is a research/diagnosis task only. Do not edit, create, or modify any files — return your answer as plain text.

Read ${folder}/problem.md and ${folder}/solution.md. Read skills/math-harder/SKILL.md, skills/_shared/breaker_playbook.md, skills/_shared/triviality_probe.md, and skills/_shared/hard_gates.md. If workspace/response-archive/analysis/ exists, also consult this problem's rows there.

This problem was solved too easily. Diagnose the decisive shortcut that lets a model crack it, then PROPOSE A HARDENING DIRECTION (not a rewrite yet). State concisely:
1. The decisive shortcut / named recipe being exploited.
2. Which math-harder technique(s) you will apply to block it.
3. What changes in the problem, and what the new decisive step becomes.
4. The intended new final answer (must fit under 100 characters, with $ and whitespace stripped).

Before returning, VERIFY the intended answer: do a quick from-scratch derivation of the hardened problem you are proposing and confirm the stated answer is actually correct and unique. Only propose a direction whose answer you have confirmed this way. If your own derivation does not reproduce a clean, unique answer under 100 characters, revise the direction until it does — never propose a direction whose answer you could not verify.
Do not rewrite the full problem statement yet — just the plan plus this answer-confirming derivation.${feedbackBlock}`
}

function buildApprovePrompt(folder, direction) {
  return `Read skills/_shared/triviality_probe.md, skills/_shared/hard_gates.md, and skills/_shared/breaker_playbook.md.

A hardening DIRECTION was proposed for the problem in ${folder}. Here is the raw proposal:

---
${direction}
---

Approve it ONLY if all hold:
- It actually blocks the diagnosed shortcut, not a cosmetic rename (apply the cosmetic-check in breaker_playbook.md).
- It targets the Current-Flow acceptance profile in skills/_shared/passed_exemplars.md: bespoke gateway, dependent nonroutine chain, task-appropriate closure certificate, and a natural exact answer under 100 characters. Do not require a parametric or near-cap answer. Acceptance does not require an actual model stump — reject directions that only enlarge objects, add phases, or hide names without structural change. (This batch flow is intentionally a candidate generator with a weaker bar than interactive `/math-harder`: it runs no 2×gpt-5.4 Stump-Check Gate here. The real per-problem verification happens later via `/math-solve-codex`; the stump gate stays interactive-only by design.)
- The new decisive step has no retrievable name and is not a saturated workspace skeleton (Triviality Probe P4).
- It does not leak the route: the hardened statement will specify the object, not spell out its construction (Probe P6, Route-Concession Test).
- It does not stack contrived terminology: reject a direction that would introduce four or more new bespoke defined terms/labels, force the reader to hold more than three definitions at once, or rename a concept that already has a standard taxonomy name (Probe P8, terminology-density — the portal's "Beyond Project Scope" reject reason; ≤2 preferred below the cap). Depth must come from the dependency chain among few well-motivated objects, in standard Domain/Sub-domain vocabulary, not from the count of definitions. This is a cheap early filter before the expensive execute stage; the full P8 check runs at verify.
- The intended new answer fits under 100 characters ($/whitespace stripped) — Answer Length Gate.
- The proposal includes a from-scratch derivation that confirms the intended answer is correct and unique — not merely asserted. Reject if the answer is stated without a confirming derivation, or if that derivation looks unsound or does not actually yield the stated answer. (This is the gate that stops an optimistic direction whose math does not survive execution.)

If all hold, approve. Otherwise reject and state exactly which check failed and how to fix the direction.`
}

function buildExecutePrompt(folder, direction, feedback) {
  const feedbackBlock = feedback
    ? `\n\nYour previous rewrite failed verification: ${feedback}\nFix exactly that.`
    : ''
  return `--wait --effort medium --resume
You MUST wait synchronously until Codex has fully finished before responding. Do NOT return an in-progress or status-check placeholder.

This is a research/diagnosis task only. Do not edit, create, or modify any files — return your answer as plain text.

Your hardening direction for ${folder} was approved:
---
${direction}
---
Now EXECUTE it. Produce:
1. The full rewritten, harder problem statement in the exact shape of skills/math-clone/SKILL.md's "Problem File Template" (## LaTeX (Normalized) / ## Domain Classification / ## Domain Explanation), following the approved direction exactly.
2. A short preliminary solution sketch: approach (2-4 sentences), the decisive step, and the intended final answer stated explicitly.${feedbackBlock}`
}

function buildVerifyPrompt(folder, direction, built) {
  return `Read skills/_shared/triviality_probe.md and skills/_shared/hard_gates.md.

The problem in ${folder} was hardened following this approved direction:
---
${direction}
---
Here is the executed rewrite (hardened problem + preliminary sketch):
---
${built}
---

Verify it passes ALL of:
- The rewrite actually matches the approved direction and blocks the original shortcut.
- P2/P8 terminology pre-pass FIRST: if Probe P2 (decoration) or P8 (terminology-density — ≥4 bespoke defined terms, >3 held simultaneously, or a bespoke term renaming a standard taxonomy concept; ≤2 preferred below the cap) REJECTs, apply the answer-preserving condense before anything else — strip decoration; merge chained bespoke objects into one custom class; inline auxiliary quantities into the question; rename to the standard taxonomy term; delete narrative flavor. Re-check until P2 and P8 PASS, and confirm the intended answer is unchanged. Only fail the rewrite for P2/P8 if no answer-preserving condense can bring them to PASS (then say so, concretely).
- Triviality Probe P1–P8 all PASS (record the Probe Results Block), especially P6 (the hardened statement must not spell out the solution's construction), P7 (serial depth, not breadth-dominant parallel conditions), and P8 (terminology-density). P2 and P8 are non-waivable hard-tier lines.
- hard_gates.md: By-Hand Solution Gate, hand-solvable bounds, no-DNE, Answer Length Gate (final answer under 100 chars, $/whitespace stripped), the Answer Compaction Gate if the answer is compacted, the Self-Containment Gate (every used symbol/term defined before use over its full domain, no second defensible reading), the Smokescreen / Reverse-Engineered-Difficulty Reject (difficulty intrinsic, not from decoding a disguised/off-domain-dressed set-up), the Mechanical-Bookkeeping Reject on the hardened honest solution route (no coefficient/trace tables, term-by-term matching, modular Frobenius/Bézout irreducibility tables, or order-by-order case tables carrying the decisive content — redesign, do not compress or hide), and the Solution Length Gate at design level (the hardened intended solution's Steps must plausibly fit under 10,000 characters with zero black boxes — reject if the mechanism needs large printed tables or long case enumerations).
- Exactly one Problem Type and one Answer Type from open rows in skills/_shared/taxonomy_slots.md.

If it passes every check: format the hardened problem into the exact "Problem File Template" markdown, extract the intended final answer as a single bare object, and extract a 1-paragraph approach summary.

If it fails any check, do not format anything — state exactly which check failed and why, concretely enough that a rewrite attempt can fix it.`
}

function buildWritePrompt(result) {
  return `Overwrite these two files in the existing folder:

${result.folder}/problem.md:
---
${result.problemMarkdown}
---

${result.folder}/solution.md:
---
## Answer (PRELIMINARY)
**${result.preliminaryAnswer}**

## Approach Summary
${result.approachSummary}

---
PRELIMINARY — hardened problem, not yet verified. Run /math-solve-codex on this
folder for a full verified solution. Use this sketch to check pasted answers.
---`
}

function looksLikePlaceholder(text) {
  return typeof text === 'string' && /(is still running|\/codex:status|Task not found|waiting (on|for) the background|I['’]?ll wait for|still running)/i.test(text)
}

// Codex (via codex:codex-rescue) sometimes returns an in-progress status placeholder
// instead of blocking until done, despite --wait. Detect that and retry the same call
// with a varied note and a fresh label (to bust the workflow cache) before giving up,
// so a placeholder never burns a gate attempt. Returns null if every retry still
// yielded a placeholder.
async function codexCall(basePrompt, opts) {
  for (let r = 0; r < 4; r++) {
    const prompt = r === 0
      ? basePrompt
      : `${basePrompt}\n\n(Your previous reply was an in-progress status placeholder — retry ${r}. You did NOT wait for Codex to finish. Wait fully now and return ONLY the finished result, never a "still running" status.)`
    const out = await agent(prompt, { ...opts, label: `${opts.label}-c${r}` })
    if (!looksLikePlaceholder(out)) return out
    log(`Codex returned an in-progress placeholder on ${opts.label} (retry ${r + 1}/4)`)
  }
  return null
}

async function hardenOne(folder, originalItem, index) {
  let feedback = null
  let resumeFlag = '--fresh'
  let approvedDirection = null
  for (let attempt = 1; attempt <= 3; attempt++) {
    const direction = await codexCall(buildProposePrompt(folder, feedback, resumeFlag), {
      agentType: 'codex:codex-rescue',
      phase: 'Propose direction',
      label: `harden-${index}-propose-${attempt}`,
    })
    if (!direction) {
      feedback = 'Codex kept returning an in-progress placeholder instead of a direction; no proposal to review.'
      resumeFlag = '--resume'
      log(`${folder} direction attempt ${attempt}: Codex never returned a real proposal`)
      continue
    }
    const g1 = await agent(buildApprovePrompt(folder, direction), {
      schema: DIRECTION_SCHEMA,
      phase: 'Approve direction',
      label: `harden-${index}-approve-${attempt}`,
    })
    if (g1.approved) { approvedDirection = direction; break }
    feedback = g1.reason
    resumeFlag = '--resume'
    log(`${folder} direction attempt ${attempt} rejected: ${g1.reason}`)
  }
  if (!approvedDirection) return { folder, status: 'FAILED at direction gate', attempts: 3 }

  let execFeedback = null
  for (let attempt = 1; attempt <= 3; attempt++) {
    const built = await codexCall(buildExecutePrompt(folder, approvedDirection, execFeedback), {
      agentType: 'codex:codex-rescue',
      phase: 'Execute',
      label: `harden-${index}-execute-${attempt}`,
    })
    if (!built) {
      execFeedback = 'Codex kept returning an in-progress placeholder instead of the rewrite.'
      log(`${folder} execute attempt ${attempt}: Codex never returned a real rewrite`)
      continue
    }
    const g2 = await agent(buildVerifyPrompt(folder, approvedDirection, built), {
      schema: VERIFY_SCHEMA,
      phase: 'Verify',
      label: `harden-${index}-verify-${attempt}`,
    })
    if (g2.pass && g2.problemMarkdown && g2.preliminaryAnswer && g2.approachSummary) {
      return {
        folder,
        status: 'OK',
        problemMarkdown: g2.problemMarkdown,
        preliminaryAnswer: g2.preliminaryAnswer,
        approachSummary: g2.approachSummary,
        attempts: attempt,
      }
    }
    if (g2.pass) {
      execFeedback = 'Verification passed but did not return the formatted problemMarkdown / preliminaryAnswer / approachSummary needed to write the files; re-emit all three.'
      log(`${folder} verify attempt ${attempt} passed but was missing content fields`)
      continue
    }
    execFeedback = g2.reason
    log(`${folder} verify attempt ${attempt} failed: ${g2.reason}`)
  }
  return { folder, status: 'FAILED at verify gate', attempts: 3 }
}

async function writeStage(result) {
  if (result.status !== 'OK') return result
  await agent(buildWritePrompt(result), { phase: 'Write', label: `harden-write-${result.folder}` })
  return result
}

const results = await pipeline(folders, hardenOne, writeStage)

const rows = results.filter(Boolean).map(r =>
  `| ${r.folder} | ${r.status} | ${r.preliminaryAnswer ?? '—'} |`
)
log(`Batch hardening complete (${results.filter(r => r?.status === 'OK').length}/${folders.length} hardened):\n| Folder | Status | Preliminary Answer |\n|---|---|---|\n` + rows.join('\n'))

return results
```

## Step 4 — Present the final report

Show the user the markdown table `log()` produced. For each OK row, remind them: `problem.md` was hardened, `solution.md` is a preliminary sketch (use it to check pasted answers), and `/math-solve-codex` gives a fully verified solution. For FAILED rows, note the original `problem.md` was left untouched.
