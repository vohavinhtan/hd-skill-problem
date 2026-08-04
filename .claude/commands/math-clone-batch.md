---
description: Generate N candidate frontier problems in parallel via Codex (gpt-5.6-sol, effort high), each in a distinct taxonomy/technique slot, gated for hard-constraint compliance, with a preliminary (not yet verified) answer.
argument-hint: N [startNN] — how many candidate problems, and the first problem number to use
allowed-tools: Workflow, AskUserQuestion, Bash
---

# Math Clone Batch — Parallel Codex Generation

This command is a Claude Code-only wrapper. It does not modify `skills/math-clone/SKILL.md`. It does not solve the generated problems — each `solution.md` is a preliminary stub. Run `/math-solve-codex` per chosen candidate later for a fully verified solution.

## Step 1 — Resolve N and the start number

If `$ARGUMENTS` contains a positive integer, use it as N. Otherwise, use `AskUserQuestion` to ask how many candidate problems to generate. Never proceed with a silently-chosen default — every slot costs a high-effort Codex call.

Also resolve `START` — the first problem number to use. The batch assigns numbers `START, START+1, …, START+N-1`. **Never auto-pick the start by scanning existing `problemNN-*/` folders**: multiple clones run in parallel across windows, so a number can be claimed while its folder does not exist yet, and a scan collides. Take `START` from a second `$ARGUMENTS` token if present; otherwise `AskUserQuestion` for it. Do not guess.

## Step 2 — Availability check

Verify the Codex plugin is installed and Codex CLI is authenticated (same check as `/math-solve-codex`). If unavailable, stop and tell the user to run `/codex:setup` first.

## Step 3 — Run the batch workflow

Invoke the `Workflow` tool with `args: { n: N, start: START }` (both from Step 1) and the script below.

```javascript
export const meta = {
  name: 'math-clone-batch',
  description: 'Generate N candidate frontier problems in parallel via Codex, gate-check, write into pre-allocated folders',
  phases: [
    { title: 'Plan slots' },
    { title: 'Generate' },
    { title: 'Gate check' },
    { title: 'Write' },
  ],
}

const parsedArgs = typeof args === 'string' ? JSON.parse(args) : args
const N = parsedArgs && parsedArgs.n
if (!Number.isInteger(N) || N <= 0) {
  throw new Error(`args.n must be a positive integer, got: ${JSON.stringify(N)} (raw args typeof ${typeof args}: ${JSON.stringify(args)}). Pass args as {"n": <count>} to the Workflow tool call.`)
}
const START = parsedArgs && parsedArgs.start
if (!Number.isInteger(START) || START <= 0) {
  throw new Error(`args.start must be a positive integer (the first problem number, taken from the user — never a folder scan), got: ${JSON.stringify(START)}. Pass args as {"n": <count>, "start": <firstNN>}.`)
}
const pad = (k) => String(k).padStart(2, '0')
const numbers = Array.from({ length: N }, (_, i) => pad(START + i))

phase('Plan slots')

const SLOT_SCHEMA = {
  type: 'object',
  properties: {
    slots: {
      type: 'array',
      minItems: N,
      maxItems: N,
      items: {
        type: 'object',
        properties: {
          folder: { type: 'string', description: 'Full path from the repository root, e.g. "workspace/frontier-problem/problem07-taxonomy-slug" — not a bare folder name.' },
          domain: { type: 'string' },
          subDomain: { type: 'string' },
          technique: { type: 'string' },
        },
        required: ['folder', 'domain', 'subDomain', 'technique'],
      },
    },
  },
  required: ['slots'],
}

const planPrompt = `Read skills/_shared/taxonomy_slots.md and skills/_shared/accepted_topic_history.md.
Also read every existing workspace/frontier-problem/problemNN-*/problem.md and build the
used-concept map (sub-domain, core object, mechanism, technique) exactly as
skills/math-clone/SKILL.md Phase 1b defines.

Choose ${N} distinct (domain, sub-domain, technique) combinations, prioritizing rows with
open capacity in skills/_shared/taxonomy_slots.md. They must be distinct from each other
AND distinct from the used-concept map (Phase 1b's cross-corpus dedup rule) on all of:
sub-domain, core object, mechanism, and solution technique.

Then create ${N} folders under workspace/frontier-problem/, using these EXACT problem numbers
in order — one per slot: ${numbers.join(', ')}. Do NOT scan existing folders for a "next
available" number: these numbers were given by the user, and parallel clones make a folder
scan collide. Take the numbers in the listed order, one per slot; for each, name the folder
problem{number}-{slug}, mkdir -p it, and touch problem.md and solution.md placeholders inside.
If a target folder problem{number}-* already exists, STOP and report the collision instead of
picking a different number.

Return exactly ${N} (folder, domain, subDomain, technique) assignments, where folder is the full path from the repository root for each created directory (e.g. "workspace/frontier-problem/problem07-taxonomy-slug"), not a bare folder name.`

const plan = await agent(planPrompt, { schema: SLOT_SCHEMA, label: 'plan-slots' })
let slots = plan.slots

if (slots.length !== N) {
  log(`plan-slots returned ${slots.length} slots, expected ${N} — trimming to the first ${N}.`)
  const excess = slots.slice(N)
  slots = slots.slice(0, N)
  if (excess.length > 0) {
    await agent(
      `Delete these ${excess.length} folder(s) that were created but are not needed: ${excess.map(s => s.folder).join(', ')}. Run rm -rf on each one, then confirm they no longer exist.`,
      { label: 'cleanup-excess-slots' }
    )
  }
}

function buildGeneratePrompt(slot, feedback, resumeFlag) {
  const feedbackBlock = feedback
    ? `\n\nYour previous attempt for this slot was rejected: ${feedback}\nFix exactly this and resubmit — do not change the assigned domain/sub-domain/technique.`
    : ''
  return `--wait --effort high ${resumeFlag}
You MUST wait synchronously until Codex has fully finished and produced its complete derivation before responding. Do NOT return early with a "task is still running", a status-check pointer (e.g. "use /codex:status"), or any other in-progress placeholder — if the underlying task has not finished yet, keep waiting and checking until it has, then return the finished result. Returning an incomplete/in-progress placeholder as your final response is treated as a failed attempt.

This is a research/diagnosis task only. Do not edit, create, or modify any files — return your answer as plain text in your final response.

Design one original frontier math problem for Project Rotura, following skills/math-clone/SKILL.md's Phase 2 Core Requirements and Hard Math Quality Standards. Target: Domain "${slot.domain}", Sub-domain "${slot.subDomain}", core technique "${slot.technique}".

First read skills/_shared/passed_exemplars.md, sections "Current-Flow Accepted Corpus" and "Current-flow archetype catalog". Pick ONE archetype as the design driver and use the shared fingerprint: a bespoke gateway with no retrievable one-move core, a serial chain of dependent nonroutine steps, a task-appropriate closure certificate, and the shortest natural error-sensitive answer under 100 characters. Do not force a parametric or near-cap answer.

This problem must be distinct from every other problem in the current batch. The other slots in this batch use these (domain, sub-domain, technique) combinations, which you must not overlap with: ${JSON.stringify(slots.filter(s => s !== slot))}.

Produce:
1. The problem statement, in the exact shape of skills/math-clone/SKILL.md's "Problem File Template" (## LaTeX (Normalized) / ## Domain Classification / ## Domain Explanation).
2. A short intended-solution sketch: approach (2-4 sentences), key technique, and the intended final answer stated explicitly. This is a sketch, not a full derivation.${feedbackBlock}`
}

function buildGatePrompt(slot, draft) {
  return `Read skills/_shared/hard_gates.md, skills/_shared/taxonomy_slots.md, and skills/_shared/triviality_probe.md.

A candidate frontier problem was generated for Domain "${slot.domain}" / Sub-domain "${slot.subDomain}" / technique "${slot.technique}". Here is the raw Codex output (problem statement + intended-solution sketch):

---
${draft}
---

Check it against:
- P2/P8 terminology pre-pass FIRST: if Probe P2 (decoration — a component whose deletion leaves the answer unchanged) or P8 (terminology-density — ≥4 bespoke defined terms, >3 held simultaneously, or a bespoke term renaming a standard taxonomy concept; the portal's "Beyond Project Scope" reject reason; ≤2 preferred below the cap) REJECTs, apply the answer-preserving condense before other checks — strip decoration; merge chained bespoke objects into one custom class; inline auxiliary quantities into the question; rename to the standard taxonomy term; delete narrative flavor. Re-check until P2 and P8 PASS and the intended answer is unchanged. Only FAIL for P2/P8 if no answer-preserving condense can bring them to PASS. P2 and P8 are non-waivable.
- Triviality Probe hard-tier lines P1 (state-space), P3 (answer-triviality), P5 (side-channel), P7 7a/7b (serial depth, not breadth-dominant parallel conditions), and P8 (terminology-density) must PASS; record the Probe Results Block.
- By-Hand Solution Gate and hand-solvable magnitude bounds (skills/_shared/hard_gates.md).
- Answer Length Gate: the intended final answer, $ and whitespace stripped, must be under 100 characters.
- Answer Compaction Gate (skills/_shared/hard_gates.md), only if the intended answer looks like a compacted/shortened rich object.
- Exactly one Problem Type and exactly one Answer Type, both from open rows in skills/_shared/taxonomy_slots.md, matching the assigned domain/sub-domain.
- Gate-Era acceptance profile (skills/_shared/passed_exemplars.md): the intended answer must be a parametric object over free parameters — a fixed small-data instance whose answer a short program could brute-force is a FAIL (P5 side-channel). Flag (but do not fail) an answer far below ~60 stripped characters as wasting the length budget.
- Self-Containment Gate (skills/_shared/hard_gates.md): every symbol, operator, and custom term used anywhere (statement and requested answer) is defined before first use and over the full domain it is later applied to, no custom term admits a second defensible reading, and any invoked substep's exact rule is written out.
- Smokescreen / Reverse-Engineered-Difficulty Reject (skills/_shared/hard_gates.md): strip any off-domain dressing and state the core in one plain sentence; FAIL if the difficulty comes from decoding a disguised or obviously reverse-engineered set-up rather than from the mathematics.
- Mechanical-Bookkeeping Reject on the honest solution route (skills/_shared/hard_gates.md): FAIL if the intended solution's decisive content is carried by coefficient/trace tables, term-by-term coefficient matching, entry-by-entry matrix verification, modular Frobenius/Bézout irreducibility tables, or order-by-order case tables — redesign, do not compress or hide.
- Solution Length Gate, design-time (skills/_shared/hard_gates.md): the intended solution's Steps must plausibly fit under 10,000 characters written honestly with zero black boxes. FAIL if the sketch's mechanism clearly needs large printed audit tables, long case enumerations, or many repeated expansions to verify.

If it passes every check: format the problem statement into skills/math-clone/SKILL.md's exact "Problem File Template" markdown (fill in Domain/Sub-domain/Problem Type/Answer Type/Domain Explanation), extract the intended final answer as a single bare object, and extract a 1-paragraph approach summary from the sketch.

If it fails any check, do not format anything — state exactly which check failed and why, concretely enough that a rewrite attempt can fix it.`
}

function buildWritePrompt(result) {
  return `Write these two files, overwriting the existing empty placeholders. ${result.slot.folder} is already the full path from the repository root — do not add any further "workspace/frontier-problem/" prefix to it.

${result.slot.folder}/problem.md:
---
${result.problemMarkdown}
---

${result.slot.folder}/solution.md:
---
## Answer (PRELIMINARY)
**${result.preliminaryAnswer}**

## Approach Summary
${result.approachSummary}

---
PRELIMINARY — not yet verified. Run /math-solve-codex on this folder after
selecting/hardening, before treating this answer as final.
---`
}

const GATE_SCHEMA = {
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

async function generateAndGate(slot, originalItem, index) {
  let feedback = null
  let resumeFlag = '--fresh'
  for (let attempt = 1; attempt <= 3; attempt++) {
    const draft = await agent(buildGeneratePrompt(slot, feedback, resumeFlag), {
      agentType: 'codex:codex-rescue',
      phase: 'Generate',
      label: `slot-${index}-generate-${attempt}`,
    })
    const gate = await agent(buildGatePrompt(slot, draft), {
      schema: GATE_SCHEMA,
      phase: 'Gate check',
      label: `slot-${index}-gate-${attempt}`,
    })
    if (gate.pass) {
      return {
        slot,
        status: 'OK',
        problemMarkdown: gate.problemMarkdown,
        preliminaryAnswer: gate.preliminaryAnswer,
        approachSummary: gate.approachSummary,
        attempts: attempt,
      }
    }
    feedback = gate.reason
    resumeFlag = '--resume'
    log(`Slot ${slot.folder} attempt ${attempt} failed gate: ${gate.reason}`)
  }
  return { slot, status: 'FAILED', attempts: 3 }
}

async function writeStage(result) {
  if (result.status === 'FAILED') return result
  await agent(buildWritePrompt(result), { phase: 'Write', label: `slot-write-${result.slot.folder}` })
  return result
}

const results = await pipeline(slots, generateAndGate, writeStage)

const rows = results.filter(Boolean).map(r =>
  `| ${r.slot.folder} | ${r.slot.domain} / ${r.slot.subDomain} | ${r.status}${r.status === 'FAILED' ? ' after 3 attempts' : ''} | ${r.preliminaryAnswer ?? '—'} |`
)
log(`Batch generation complete (${results.filter(r => r?.status === 'OK').length}/${N} succeeded):\n| Folder | Taxonomy | Status | Preliminary Answer |\n|---|---|---|---|\n` + rows.join('\n'))

return results
```

## Step 4 — Present the final report

Show the user the markdown table `log()` produced. For each `OK` row, remind them the answer is preliminary and `/math-solve-codex` is the next step before treating any candidate as final.
