---
name: math-rewrite
description: Rewrite text to avoid LLM detection. Use when text sounds AI-generated and needs to sound human-written. Supports LaTeX-aware mode for mathematical content.
user-invocable: true
disable-model-invocation: false
argument-hint: text to rewrite
requires: []
produces: [rewritten text output]
calls: []
---

# Rewrite Text to Avoid LLM Detection

## Contract

- **Task:** rewrite the input text so it reads as human-written and evades LLM detection; auto-engage LaTeX-aware mode for mathematical content, keeping all math frozen.
- **Defaults (act, do not ask):** infer the input text and mode from context and arguments, then proceed on the most reasonable reading — pull text from the first available source in the Input priority order, and switch to LaTeX-aware mode whenever LaTeX markers are present. Load `skills/_shared/blocked_words.md` and `skills/_shared/style_guide.md` and complete the whole rewrite in this turn.
- **Only hard stop:** no rewritable text exists in any input source, or the solution hides a core computation behind the By-Hand gate — flag it for `math-solve`/`format-solution` expansion and stop. Nothing else pauses the run.
- **Done:** the rewritten text is returned in the Output Format, with the self-verification checklist and dual-pass audit run silently and their fixes folded in. Persist end-to-end this turn; do not narrate a plan or pause to report the audit before returning.

## Global Principle

**Mathematical semantics take precedence over style, formatting, and readability.**
No rewrite, formatting pass, or normalization step may alter the precise mathematical meaning of the solution.

**Edit-scope discipline (read `skills/_shared/edit_scope_discipline.md`).** Rewrite only what needs de-LLM-ifying; do not gratuitously restyle already-human, already-correct text. Never rewrite a valid `Domain Explanation` merely to change its phrasing. When the run is scoped to reviewer feedback, touch only the flagged text. Over-editing settled work is a regression risk and defeats the purpose of this skill.

## STRICT RULE — By-Hand Solution Gate

This is a **HARD GATE** for rewriting mathematical solutions. A rewrite must not compress away intermediate calculations, merge steps that make a computation reviewer-checkable, or replace explicit work with phrases such as "by computation", "one checks", "direct calculation gives", "computed similarly", or "applying the same formula".

If the input solution already hides a core computation needed for the final answer, do not make it sound acceptable. Flag that the solution violates the by-hand gate and needs expansion by `math-solve` or `format-solution` before submission. A solution that requires external computational software, CAS, Python, exhaustive search, numerical oracle, calculator, calculator-dependent arithmetic, or code-only derivation is not acceptable for frontier review; code may only sanity-check work already derived on the page.

## Input

Accept text from one of these sources (priority order):
1. Text selected in IDE (ide_selection)
2. Text passed as an argument to this skill
3. The active problem folder's `solution.md` under `workspace/frontier-problem/problemNN-*/`
4. Text user pastes in chat

## Output Format

Always return in this format:

```
### LLM signals detected:
- [list detected AI signals briefly]

### Rewritten text:
[rewritten text - copy-paste ready, no extra explanation]
```

IMPORTANT:
- Keep 100% of technical facts, numbers, file names, variable names - only change phrasing.
- Do not change meaning, do not add info, do not remove info.
- **File write rule**: You may use Edit/Write tools ONLY to update the active problem folder's `solution.md` under `workspace/frontier-problem/problemNN-*/`. Do NOT modify any other file. For all other inputs, output rewritten text only — do not touch any file.

## Required References

Before rewriting, internalize rules from these shared files:
- `skills/_shared/blocked_words.md` - 25 blocked EN + 14 blocked VI + Tier 1/2 flags
- `skills/_shared/style_guide.md` - 8-pass humanization audit + banned patterns

These files contain additional blocked words and patterns beyond what's listed in this skill.

---

## LaTeX-Aware Mode

**Activate this mode automatically** when the input contains any LaTeX markers: `$`, `$$`, `\(`, `\[`, `\begin`, or LaTeX commands like `\frac`, `\sum`, `\int`, `\mathbb`, etc.

In LaTeX-aware mode, the following overrides apply — they take priority over all general rules below:

### What MUST NOT change

- **LaTeX math content is frozen.** Never alter anything inside `$...$` or `$$...$$` blocks. This includes commands, symbols, variable names, and operators. Math is not prose — do not paraphrase it.
- **LaTeX display format is preserved.** The project requires `$...$` for inline math and `$$...$$` for display equations. Never convert these to `\(...\)` or `\[...\]`, and never strip them.
- **Step structure is preserved.** Text following `format-solution` conventions uses `Step 1:`, `Step 2:`, ... `Step N:`, ending with `Final Answer: $\boxed{...}$`. Do not reorder, merge, renumber, or remove steps. Do not convert the step list to prose.
- **Answer-side sections are preserved.** When rewriting a formatted `solution.md`, keep the section labels `## Answer`, `## Solution Concepts`, and `## Classification` unchanged, and do not rewrite their structural role or ordering.
- **Domain Explanation sentence structure is preserved.** Text following `normalize-problem` conventions uses the fixed 3-sentence scaffold: "This problem involves...", "The problem also involves...", "However, ...". Preserve this scaffold — only rephrase within each sentence.
- **LaTeX commands are not "arrows".** The Banned Patterns rule "NO arrows, ellipsis" applies only to Unicode arrows (`→`, `⇒`) and prose ellipsis (`...`). It does NOT apply to `\to`, `\Rightarrow`, `\ldots`, `\cdots`, `\dots` inside math mode — leave those untouched.
- **Math symbols are not blocked words.** Blocked word replacements (robust, leverage, etc.) apply only to prose words, never inside math delimiters.
- **Mathematical semantics are frozen.** Do NOT weaken or paraphrase formal mathematical distinctions such as: maximum vs supremum, minimum vs infimum, existence vs uniqueness, bounded vs attained, undefined vs infinite, asymptotic equality vs exact equality.

### Rewrite restrictions in LaTeX-aware mode

- Do NOT replace formal mathematical conclusions with conversational approximations.
- Preserve the exact logical strength of all claims.

### What changes in LaTeX-aware mode

- Rewrite only the **prose sentences** between and around math blocks.
- Apply all 14 rewrite rules and blocked-word replacements to prose text only.
- Burstiness and sentence-length variation apply to prose paragraphs only — do not count math lines or step labels as sentences.
- "NEVER use numbered lists" is suspended: `Step N:` labels are required formatting, not an AI tell.
- "No markdown formatting in non-code text" is suspended: `$...$` and `$$...$$` are the required and only allowed math delimiters.
- Do not introduce em-dashes in prose rewrites. If the input already contains an em-dash in prose, remove it and replace it with a conjunction or rephrased clause that preserves the meaning (e.g. "since", "because", "so", "and", "but", "which", or split into two sentences). Exception: em-dashes that are part of a mathematical operation or expression inside a math block are frozen and must not be changed.

### LaTeX Compliance Rules (apply when producing or passing through LaTeX)

These rules govern the correctness of any LaTeX that appears in the output — both frozen math blocks and any LaTeX introduced during rewriting.

1. **Allowed delimiters only**: Use `$...$` for inline math and `$$...$$` for display equations. Never use `\(...\)` or `\[...\]` — they are not allowed.
2. **No unnecessary braces**: Strip wrapping braces that add no grouping meaning (e.g., `{\frac{3}{4}}\cdot{\frac{5}{8}}` → `\frac{3}{4}\cdot\frac{5}{8}`).
3. **Escape visible braces**: Braces that should render as literal `{` or `}` must be escaped: `\{1, 2, 3\}`, `x \in \{0, 1\}`. The empty visible pair writes as `\{\}`, never as `{}`. Do NOT use `{}` as an alignment spacer before `&` in `aligned` environments — move `&` to precede the relation symbol instead: `\alpha &= \omega^\ldots` not `\alpha = {}& \omega^\ldots`.
4. **Polynomials in descending order**: Terms must be ordered highest exponent first (e.g., $x^3 + 2x^2 - x + 5$, not $5 - x + 2x^2 + x^3$).
5. **Fractions with `\frac`**: Always write fractions as `\frac{a}{b}`, not `a/b` inside math. Simplify unless the unsimplified form adds context.
6. **Units formatted correctly**: Physical units use `\,\text{unit}` (e.g., `9.8 \, \text{m/s}^2`), never plain text or Unicode.
7. **Proper math symbols**: Use LaTeX symbol commands — `\leq` not `<=`, `\geq` not `>=`, `\neq` not `!=`, `\approx` not `≈`, `\infty` not `∞`, `\in` not `∈`, `\pi` not `π`, etc.
8. **Define special symbols**: If a non-standard symbol or notation is introduced in prose near math, define it on first use.
9. **Rounding**: Do not round or approximate values unless the input explicitly instructs rounding and specifies precision. If rounding instructions are absent, leave exact forms.
10. **No LaTeX for non-math formatting**: Do not use LaTeX commands for bullet points, bold text, or structural formatting — plain prose handles those.
11. **Multi-environment display blocks must be split**: A single `$$...$$` block must never contain more than one `\begin{cases}...\end{cases}` environment. If the input contains a `$$...$$` block with multiple nested `\begin{cases}` environments (or multiple compound environments of any kind) all on one line or run together, split it into one `$$...$$` block per environment, with a prose label or separator between each block. This applies both when passing through frozen math and when producing new LaTeX.
12. **No `cases` in final answer fields**: `Final Answer: $\boxed{...}$` and `## Answer` must not contain `\begin{cases}` or `\end{cases}`. Move piecewise definitions into the final step prose and box a compact symbol/expression, or use an equivalent case-free formula with indicators, parity factors, residue-class products, unions, or named families.
13. **Cases row separators**: if a `cases` environment remains outside the final answer fields, put it in display math and make every non-final row end with exactly `\\` in the source. Never compress `cases` into one inline `$...$` block. A "Single backslash row separator in cases environment" validator error means the environment must be expanded to display math with correct `\\` or replaced by a case-free formula.
14. **No `\item[]`**: Do not use `\item[]` for lists; use plain prose or standard Markdown list markers.
15. **No `**...**` on Steps or Titles**: Never wrap a `Step N:` label or a section title in `**...**` bold markers (the LaTeX-mode counterpart of the general "no bold pairs" rule, applied specifically to step labels and titles).
16. **No KaTeX-only commands**: Use the standard LaTeX command, never a KaTeX-only alias — e.g. `\langle`/`\rangle`, never `\lang`/`\rang`. Replace any KaTeX-only command with its standard LaTeX equivalent.

### LaTeX-aware Self-Verification (run after general checklist)

After rewriting, additionally verify:

1. **Math block integrity**: compare every `$...$` and `$$...$$` block in output against original — must be character-for-character identical.
2. **Delimiter format**: no `\(...\)` or `\[...\]` in output.
3. **Step numbering intact**: if input had `Step 1:` ... `Step N:`, output has same count in same order.
4. **`\boxed{}` and Final Answer line intact**: must appear verbatim on the last line of the final step.
5. **Answer-side section labels intact**: if input had `## Answer`, `## Solution Concepts`, or `## Classification`, those labels remain exactly the same and in the same order.
6. **Domain Explanation scaffold intact**: if input used the 3-sentence scaffold, output preserves it.
7. **No Unicode math in output**: `°`, `≤`, `≥`, `×`, `→`, `∞`, `∈`, `π` must not appear — they should already be LaTeX commands in well-formed input; if they appear in input prose, replace with words, not LaTeX.
8. **LaTeX compliance check**: scan all math blocks against the 16 LaTeX Compliance Rules above — fix unnecessary braces, unescaped visible braces, wrong delimiters, unordered polynomials, plain-text fractions, bare units, ASCII comparison operators, unsanctioned rounding, multi-environment display blocks, final-answer `cases`, row separators in `cases`, `\item[]`, `**...**` bolding of Steps/Titles, and KaTeX-only commands. Specifically: scan for bare `{}` that is not a command argument (not preceded by `\`, `^`, `_`, `\frac`, etc.). Any standalone `{}` = either escape as `\{\}` if visible braces are intended, or remove the `{}` and move `&` before the relation symbol if it was an alignment spacer.
9. **Multi-environment block check**: scan every `$$...$$` block for more than one `\begin{cases}` (or any other compound environment) inside it. Any hit = split into separate `$$...$$` blocks, one per environment, with prose or a separator between them.
10. **Final-answer cases check**: scan the `Final Answer: $\boxed{...}$` line and `## Answer` field for `\begin{cases}` or `\end{cases}`. Any hit = fail the rewrite pass until `format-solution` converts the answer to a case-free object or a compact symbol with its piecewise definition stated before the final line.
11. **Cases separator check**: scan remaining `cases` environments for row separators. Every non-final row must contain `\\` in the source, and the environment must live in display math. Any inline `cases` or single-backslash separator must be fixed or flagged.

---

## 14 Rewrite Rules

### 1. Kill template openings/closings
DELETE: "Overall", "In summary", "In conclusion", "It's worth noting", "It's important to", "Let's", "Certainly", "Absolutely"
Go straight to the point.

LLM: "Overall B is slightly ahead on test evidence"
Human: "B wins - more tests pass, cleaner worktree"

### 2. Drop hedging - say it straight
DELETE: "slightly", "somewhat", "potentially", "arguably", "it seems", "appears to", "could potentially", "may or may not"

LLM: "This can potentially break custom configs"
Human: "This breaks custom configs"

### 3. Break parallel structure
LLM writes every sentence same pattern: "Verb X. Verb Y. Verb Z."
Mix it up: short, long, fragment, dash clause.
Don't start 3+ consecutive sentences the same way.

LLM: "Refactors X. Adds Y. Extends Z. Implements W."
Human: "X got refactored. Also added Y - and Z now extends properly. W was the tricky part."

### 4. Abstract nouns -> concrete
LLM loves: "reviewability", "maintainability", "confidence", "hygiene", "evidence", "robustness"
Human says it straight:
  - "reviewability" -> "easier to review" or "reviewer has to scroll through junk"
  - "test evidence" -> "8/8 tests pass"
  - "repo hygiene" -> "git status clean"

### 5. Casual connectors, not formal
DELETE: "furthermore", "additionally", "consequently", "thus", "hence", "moreover", "specifically"
USE: "also", "plus", "though", "but", "so", "and", dash (-), or just new paragraph

### 6. Add texture/opinion (measured)
Humans have light feelings: "annoying but works" / "nice touch" / "overkill" / "the real fix is..."
1-2 spots per section, don't overdo it.

### 7. Don't over-structure
LLM balances pros/cons evenly. Human emphasizes what matters, skips or mentions the rest briefly.

### 8. Contractions + fragments OK
"doesn't" > "does not", "won't" > "will not"
Fragments are fine: "Clean diff. No junk."

### 9. Kill "which is" / "that is" chains
LLM: "X, which is Y, which means Z"
Human: split into sentences or use dash
LLM: "sets _auto_class without checking, which means typos fail later"
Human: "sets _auto_class without checking - typos won't blow up until way later"

### 10. No balanced sandwich
LLM: "A does well at X, but B does well at Y, though A also..."
Human: state winner first, mention loser briefly
LLM: "A does stronger work in X, but the extra Y and fewer Z hurt reviewability and confidence"
Human: "A's X work is better, sure, but the binary junk and fewer passing tests drag it down"

### 11. Break rule-of-three
LLM always lists exactly 3 items. Humans list 2, or 4, or 1 with detail.
LLM: "improves readability, maintainability, and testability"
Human: "easier to read and test"

### 12. No synonym cycling
Pick one word, stick with it. Don't rotate synonyms for the same thing.
LLM: "the function... the method... the routine... the procedure"
Human: "the function" every time. Repetition is fine - synonym cycling is an AI tell.

### 13. Kill -ing tacking
LLM chains "-ing" clauses: "highlighting X, underscoring Y, emphasizing Z"
Human: cut most of them or expand into full sentences.
LLM: "improving performance, reducing latency, and increasing throughput"
Human: "performance got better. Latency dropped too."

### 14. Stop copula avoidance
LLM avoids "is/are" by using "serves as", "stands as", "represents", "acts as", "functions as".
Just say "is".
LLM: "This component serves as the primary entry point"
Human: "This is the main entry point"

## BLOCKED Words - Auto-Replace

If ANY of these appear in the text, replace them:

robust -> solid, reliable
comprehensive -> thorough, full
leverage -> use, rely on
utilize -> use
enhance -> improve, add
optimal -> best, efficient
crucial -> important, key
essential -> needed, required
streamline -> simplify
facilitate -> allow, enable
seamless -> smooth
innovative -> new, novel
fundamental -> core, basic
delve -> look into, examine
harness -> use, apply
pivotal -> important, key

## BLOCKED Formatting
- Em dashes (—) in prose -> remove and rewrite with a conjunction or split into two sentences. Choose the replacement that best preserves meaning: "since", "because", "so", "and", "but", "which", a comma, or a new sentence. Do NOT replace with a hyphen. Exception: em-dashes inside math blocks (`$...$` or `$$...$$`) are part of mathematical notation and must not be touched.
- Bold pairs (`**...**`) -> not allowed anywhere in prose output. Remove all `**` markers and keep the plain text. Exception: bold inside the skill's own SKILL.md instruction headings is not rewritten content and is exempt.
- Cross-step references may point backward only. Keep an explicit numbered reference such as "from Step 2" only when Step 2 precedes the current step. Remove every reference to a later step and state the current conclusion locally without announcing future use. Rewrite vague backward pointers to the exact earlier step; rewrite vague forward pointers without a step number.
- Curly quotes -> straight quotes
- Markdown formatting in non-code text

## Advanced Anti-Detection Techniques

### Perplexity Boosting
AI detectors measure word predictability. Lower perplexity = more AI-like.
- Inject unexpected word choices: "gnarly" instead of "difficult", "sketchy" instead of "problematic"
- Use domain-specific jargon naturally: "footgun", "yak-shaving", "bikeshedding"
- Avoid the most predictable next word. If "implementation" is obvious, use "approach" or "setup"

### Burstiness Enhancement
AI text has uniform sentence length. Human text is bursty (wild variation).
- Target: max/min sentence length ratio >= 2.0
- Mix: "Works." (1 word) with "The retry logic in api_client.py catches ConnectionError on the first attempt and falls back to exponential backoff with a configurable ceiling." (25 words)
- Some paragraphs: 2 sentences. Others: 5. Don't be uniform.

### Per-Sentence Paraphrasing
For each sentence, ask: "Would a human write this exact sentence?" If no:
- Restructure: passive -> active, or vice versa
- Merge two short sentences into one
- Split one long sentence into two
- Move a clause to the beginning or end

### Dual-Pass Audit
After rewriting:
1. First pass: "What still screams AI?" Fix those.
2. Second pass: "Did my fixes introduce new AI patterns?" Fix those too.
The second pass catches patterns the first edit creates.

## Banned Patterns
- NO abbreviations: "etc.", "i.e.", "e.g." -> "and so on", "meaning", "like"
- NO arrows, ellipsis
- NO synonym cycling (pick one word, stick with it)
- NEVER use numbered lists (1. 2. 3.) in rewrites. Use prose connectors: "first off", "also", "on top of that", "the other thing is"

## Self-Verification Checklist

After rewriting, run through this checklist BEFORE outputting. Fix any failures silently.

1. **Blocked words scan**: grep output against ALL words in `blocked_words.md`. Any hit = auto-replace
2. **Em dash scan**: search for "—" (U+2014) in prose. Any hit outside a math block = remove and rewrite with a conjunction or new sentence. Do NOT replace with a hyphen. Em-dashes inside `$...$` or `$$...$$` are exempt.
3. **Bold pairs scan**: search for `**` anywhere in prose output. Any hit = strip the `**` markers and keep plain text.
4. **Cross-step reference scan**: inspect every numbered reference and compare it with the current step number. Keep only references to earlier steps. Rewrite a forward reference as a local conclusion without the future step number. Rewrite vague backward pointers to the exact earlier step, and rewrite vague forward pointers locally.
5. **Burstiness check**: count words per sentence. If max/min ratio < 2.0 = rewrite some sentences shorter/longer
6. **Synonym cycling check**: same concept referred to by 3+ different words? Pick one, stick with it
7. **Rule-of-three check**: any list with exactly 3 items? Change to 2 or 4
8. **Parallel structure check**: 3+ consecutive sentences start the same way? Break the pattern
9. **-ing tacking check**: 3+ "-ing" clauses chained? Expand or cut
10. **Copula avoidance check**: "serves as"/"stands as"/"acts as" present? Replace with "is"
11. **Meaning preservation**: re-read original vs rewritten. Same technical facts? Same file/function refs? Nothing added or lost?
12. **Read-aloud test**: does it sound like a dev wrote this in a PR comment? If it sounds like a Wikipedia article, rewrite harder
13. **Mathematical semantics check**: verify that all formal mathematical distinctions from the original text remain unchanged. Ensure that rewriting prose did not: change quantifiers, weaken hypotheses, strengthen conclusions, replace precise notions with informal approximations.
