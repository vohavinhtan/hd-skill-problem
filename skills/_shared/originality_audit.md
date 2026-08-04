# Originality Audit

Use this shared audit whenever a skill creates, redesigns, or hardens a frontier problem. The goal is to reduce the risk that the submitted problem is a disguised copy of an existing textbook, contest, paper, forum, or online problem.

## Mandatory Web Search

Before saving the final problem statement, use available internet search or browser tools to check originality. Do not rely on memory or local files alone. If internet search is unavailable, stop and tell the user that the originality audit cannot be completed; do not silently mark originality as verified.

Run at least these searches:

1. **Exact phrase search**: search 1-2 distinctive phrases from the drafted statement in quotation marks.
2. **Formula search**: search the most distinctive formulas, recurrences, matrices, polynomials, operators, graph constraints, or parameter values.
3. **Concept search**: search a natural-language summary of the core object and mechanism.
4. **Answer-target search**: search the requested final object type together with the core constraints, such as "canonical form", "extremal value", "matrix representation", "complete solution set", or "dual certificate".
5. **Domain-specific search**: repeat one concept query with likely source words such as `problem`, `exercise`, `olympiad`, `Putnam`, `StackExchange`, `arXiv`, `textbook`, or the relevant theorem name.

Use multiple query formulations. Do not rely on one failed query.

Open and inspect the most relevant hits, especially pages whose title/snippet shares the same objects, formulas, theorem names, or requested answer target. Search snippets alone are not enough for a pass decision when a result looks close.

## Mathematical Fingerprint

Before searching, write a short fingerprint of the draft:

- **Domain/Sub-domain**
- **Core object**
- **Exact constraints**
- **Problem mechanism**
- **Requested answer target**
- **Distinctive constants, formulas, or named structures**
- **Intended hidden solution technique**

Search from this fingerprint, not only from surface wording.

## Similarity Decision

After reviewing search results, classify the draft:

- **Pass**: no result shares the same core object, mechanism, constraints, and requested answer target.
- **Needs redesign**: one or more results share at least three of the four axes: core object, mechanism, constraints, answer target.
- **Reject as non-original**: a result shares the same mathematical skeleton and differs mainly by notation, constants, parameter values, or cosmetic context.

Parameter changes are not enough. A problem is still too similar if it uses the same theorem pipeline, same extremal obstruction, same construction, same recurrence, same canonical object, or same equality case as an existing problem.

## Redesign Requirements After a Hit

If the draft is `Needs redesign` or `Reject as non-original`, redesign until it differs on all essential axes:

- Change the core object or ambient structure.
- Change the problem mechanism, not just the output wording.
- Change the hidden solution technique or certificate.
- Make the final answer target structurally different when possible.
- Remove distinctive constants/formulas that caused the match unless they are mathematically forced by the new design.

Then rerun the full web search audit on the redesigned draft.

## Reporting Requirement

Before writing the final `problem.md`, record a concise originality note for the user:

```text
Originality audit:
  Fingerprint: [one-line mathematical fingerprint]
  Web queries: [3-6 representative queries]
  Closest hits: [brief description with links, or "none materially similar"]
  Decision: pass / redesigned after hit / blocked
```

Do not paste long copyrighted excerpts from search results. Summarize only the mathematical similarity.

## Hard Rules

- Do not claim a problem is original merely because wording is new.
- Do not ignore a close hit because the constants, labels, or notation differ.
- Do not save a problem that is a parameter shift of an existing source.
- Do not use obscure source material as hidden dependency. The final problem must remain self-contained.
- Do not overfit to search results by copying their structure with different language.
- Do rerun the audit after every substantial redesign or hardening.
