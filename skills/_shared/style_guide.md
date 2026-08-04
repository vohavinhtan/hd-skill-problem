# Shared Style Guide for math-rewrite

Use this file as an extra audit layer after following `skills/math-rewrite/SKILL.md`.

## 8-Pass Humanization Audit

1. **Meaning pass**: Preserve every technical fact, number, filename, symbol, hypothesis, and conclusion.
2. **Math pass**: Leave all math blocks character-for-character intact unless the active skill explicitly asks for LaTeX normalization.
3. **Template pass**: Remove canned openings, closings, and balanced summary language.
4. **Directness pass**: Delete hedging that weakens the claim without adding mathematical precision.
5. **Rhythm pass**: Vary sentence length. Use short sentences where they fit.
6. **Word pass**: Replace blocked words from `blocked_words.md` and avoid synonym cycling.
7. **Format pass**: Remove prose em dashes, curly quotes, bold markers, Unicode arrows, ellipses, and unsupported markdown formatting.
8. **Reference pass**: allow only backward references to an earlier numbered step. Rewrite vague backward pointers to the exact earlier step. Remove every forward reference to a later step and state the current conclusion locally without announcing where it will be used.

## Banned Patterns

- Template openings: "Overall", "In summary", "In conclusion", "It is worth noting", "It is important to".
- Formal connector pileups: "furthermore", "additionally", "moreover", "consequently", "thus", "hence", "specifically".
- Hedge stacks: "slightly", "somewhat", "potentially", "arguably", "it seems", "appears to".
- Copula avoidance: "serves as", "stands as", "represents", "acts as", "functions as".
- Three-item filler lists where two concrete items would do.
- Three or more consecutive sentences with the same syntactic opening.
- Three or more chained "-ing" clauses.
- Synonym cycling for the same concept.
- Cross-step references must point backward. An explicit reference such as "from Step 2" is valid only when Step 2 precedes the current step. A reference to a later step, including "needed in Step 4" or "used in Step 5", must be replaced by a local conclusion with no future step number. Rewrite vague backward pointers to the exact earlier step.

## LaTeX-Aware Notes

- `$...$` and `$$...$$` are allowed and required for math.
- Do not treat LaTeX commands such as `\to`, `\Rightarrow`, `\ldots`, or `\cdots` as banned prose arrows or ellipses.
- Scan for bare `{}` in math output. If the braces are meant to render, write `\{\}`. If they were only an alignment spacer before `&`, remove them and put `&` before the relation symbol.
- A display math block should not contain multiple `cases` or other compound environments. Split it into separate display blocks.
