# Edit-Scope Discipline

Shared minimal-change rule for every skill that edits an existing, already-authored `problem.md` or `solution.md`. The governing principle: **change only what the task or the reviewer actually requires; never rewrite settled, correct text as a side effect.** Every gratuitous edit is a regression risk and an LLM-detection tell (uniform re-wording is exactly what a reviewer's detector flags). This rule applies with particular force to `math-harder` and `normalize-all` and every sub-skill `normalize-all` invokes (`normalize-problem`, `format-solution`, `math-rewrite`, `rainier-submit`), but binds any skill that references it.

## Preserve the Domain Explanation

Do **not** rewrite, reword, or "improve" the problem's `Domain Explanation` unless the edit genuinely requires it. It requires it only when: **a reviewer or the user explicitly asked for it to be rewritten**; the Domain/Sub-domain itself changed; the existing explanation is factually wrong, substandard, or reads as machine-generated (vague, generic, doesn't genuinely explain what the problem is about); it violates its own format (plain English, no LaTeX/formulas, the 3-sentence scaffold); or it no longer matches the problem after a redesign. In any of those cases, rewriting it **is** the task — do it fully. Otherwise, if the domain is unchanged and the explanation is already valid and genuinely good, **leave it byte-for-byte as written**: a correct Domain Explanation is settled text, not a rewrite target — do not touch it to "freshen" the phrasing or to match a new writing style. (Real reviewer note this rule is calibrated to: "the revision needed is not mathematical repair but filling in five short justifications … plus a rewrite of the domain explanation" — when a reviewer names the Domain Explanation, rewriting it is exactly in scope; when none does and it is fine, it is exactly out of scope.)

## Act only on what the reviewer flagged

When acting on reviewer feedback — or on a pasted model response used as feedback — fix **exactly** the parts the reviewer called out, and nothing else. Do not overthink and re-edit adjacent, unmentioned sections that are already correct:

- no gratuitous restatement or renumbering of steps the reviewer did not question;
- no re-notation, re-symbol-choice, or reformatting of untouched prose;
- no reworking of the answer, the classification, or the Domain Explanation the reviewer did not question;
- no "while I'm here" cleanups of settled text.

Scope each edit tightly to the flagged issue and its genuine mathematical dependencies (fixing a flagged step may force an honest downstream propagation — that is in scope; cosmetically rewriting an unrelated step is not). If you believe an **unflagged** part is genuinely wrong, **report it to the user** rather than silently changing it. When in doubt whether an edit is required, leave the text as-is and note the concern — under-editing is recoverable, over-editing destroys settled, accepted work.

**Filling a genuinely-missing justification is in scope — it is not over-editing.** The discipline forbids gratuitous rewrites of *correct, settled* text; it does not excuse leaving a real gap. If a reviewer says "fill in five short justifications, one or two sentences each," add exactly those five one-to-two-sentence justifications at the flagged steps and change nothing else. Adding a real missing justification and cosmetically restyling correct prose are opposite acts — do the first, never the second.

## Prevent the recurrence (pre-submit, before a reviewer sees it)

The two things reviewers most commonly send an otherwise-strong submission back for are cheap to prevent at authoring/format/submit time:

- **No reviewer-fillable justification gap.** Before submit, scan every step for an assertion whose justification a reviewer could reasonably request in one or two sentences (a "why does this hold here?" that a peer would ask). Each such gap is a Black-Box Level 2 / Compressed-Rigor finding (`skills/_shared/hard_gates.md`) — fill it with the short justification now, in the solution's own voice, rather than shipping it bare and getting it back. This is the single most common "strong submission, minor revision" bounce; catching it pre-submit is the fix.
- **A genuinely good Domain Explanation.** Ensure the Domain Explanation actually explains what the problem is about, in plain human English, before submit — not merely that it satisfies the 3-sentence scaffold. A scaffold-compliant but generic/machine-sounding explanation is a common rewrite request; get it right once so no rewrite is asked for later.

These are prevention checks, not licenses to over-edit: fill the real gap, fix the substandard explanation, and leave everything already correct alone.
