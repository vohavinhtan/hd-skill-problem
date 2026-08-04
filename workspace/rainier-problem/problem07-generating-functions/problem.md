# Normalized Math Problem

## LaTeX (Normalized)

For a binary word $w=w_1w_2\cdots w_n$ with no two adjacent symbols equal to $1$, define its position charge by
$$
\chi(w)\equiv \sum_{i=1}^{n}i w_i\pmod 2.
$$
Let
$$
b_n=\sum_w(-1)^{\chi(w)},
$$
where the sum is over all such words of length $n$, and let $b_0=1$ for the empty word. Determine the ordinary generating function $B(t)=\sum_{n\geq0}b_nt^n$ as a reduced rational function.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Discrete Mathematics and Combinatorics |
| **Sub-domain** | Generating functions |
| **Problem Type** | Symbolic derivation |
| **Answer Type** | Polynomial or rational function |

---

## Domain Explanation

This problem involves a signed enumeration of constrained binary words and deriving its ordinary generating function, which are part of Discrete Mathematics and Combinatorics and Generating functions.
The problem also involves a two state transfer recurrence with position parity, which is part of linear algebra.
However, the transfer recurrence only encodes the signed word count, while the main object is the combinatorial generating function.
