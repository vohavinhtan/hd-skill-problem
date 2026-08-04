# Normalized Math Problem

## LaTeX (Normalized)

For each integer $n\ge 1$, let $\mathcal T_n$ be the set of rooted plane trees with $n$ vertices, where the children of every vertex are linearly ordered. Choose $T_n$ uniformly from $\mathcal T_n$, label its vertices $1,\ldots,n$ in preorder, and independently choose $\varepsilon^{(n)}=(\varepsilon_1,\ldots,\varepsilon_n)$ uniformly from $\mathbb F_2^n$.

For $x=(x_1,\ldots,x_n)\in\mathbb F_2^n$, define
$$
Q_n(x)=\sum_{\{i,j\}\in E(T_n)}x_ix_j+\sum_{i=1}^n\varepsilon_i x_i
\quad\text{in }\mathbb F_2,
$$
and set
$$
W_n=\sum_{x\in\mathbb F_2^n}(-1)^{Q_n(x)}.
$$
The expectation below is taken jointly over $T_n$ and $\varepsilon^{(n)}$. Define
$$
\Lambda=\lim_{n\to\infty}\left(2^{-n/2}\,\mathbb E|W_n|\right)^{1/n}.
$$

Determine the unique primitive irreducible polynomial $P\in\mathbb Z[X]$ of positive degree and positive leading coefficient such that $P(\Lambda)=0$. Here primitive means that the greatest common divisor of the coefficients is $1$.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Discrete Mathematics and Combinatorics |
| **Sub-domain** | Generating functions |
| **Problem Type** | Canonicalization or normalization |
| **Answer Type** | Polynomial or rational function |

---

## Domain Explanation

This problem derives an algebraic invariant by encoding weighted rooted plane trees in an algebraic generating function, which is part of Discrete Mathematics and Combinatorics and Generating functions. The random binary vector, expectation, adjacency-matrix rank, and maximum matchings also draw on Probability and Statistics and discrete graph theory. However, averaging over the binary vector reduces the character sum to a matching weight, after which the main derivation uses recursive generating functions, dominant singularities, and coefficient growth, so Generating functions is the appropriate primary classification.
