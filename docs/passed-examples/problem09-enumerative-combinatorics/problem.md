# Normalized Math Problem

## LaTeX (Normalized)

For $n\geq 0$, call a sequence
$$
h=(h_0,h_1,\ldots,h_n)
$$
a ridge path of length $n$ if $h_0=h_n=0$, each $h_i$ lies in $\{0,1,2,3\}$, and $|h_{i+1}-h_i|\leq 1$ for $0\leq i<n$. Define its charge by
$$
\chi(h)\equiv \sum_{i=0}^{n-1}(2h_i+h_{i+1})\pmod 5.
$$
Two ridge paths $h=(h_0,\ldots,h_n)$ and $g=(g_0,\ldots,g_n)$ of the same length are called reversal equivalent if either $g_i=h_i$ for every $i$, or $g_i=h_{n-i}$ for every $i$. Let $b_n$ be the number of reversal equivalence classes of ridge paths of length $n$ with $\chi(h)\equiv 0\pmod 5$, and let
$$
B(t)=\sum_{n\geq 0} b_n t^n.
$$
The function $B(t)$ is rational. Determine the reduced rational function $B(t)=N(t)/D(t)$, where $N(t),D(t)\in\mathbb{Z}[t]$, $\gcd(N,D)=1$, and $D(0)=1$.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Discrete Mathematics and Combinatorics |
| **Sub-domain** | Enumerative combinatorics |

---

## Domain Explanation

This problem involves counting constrained finite paths modulo a reversal symmetry and extracting their ordinary generating function, which are part of Discrete Mathematics and Combinatorics and Enumerative combinatorics.
The problem also involves finite state transfer matrices, residue class tracking, and rational generating functions, which are part of Algebra.
However, those algebraic tools only encode the counting process and do not change the main combinatorial content of the problem.
