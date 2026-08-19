# Normalized Math Problem

## LaTeX (Normalized)

Let $p\geq5$ be a prime, let $t$ be transcendental over $\mathbb F_p$, and put
$$
K=\mathbb F_p(t).
$$

Choose
$$
\lambda\in\mathbb F_{p^3}\setminus\mathbb F_p
$$
and put
$$
\lambda_i=\lambda^{p^i},
\qquad
x_i=t-\lambda_i
$$
for $i\in\mathbb Z/3\mathbb Z$.

Define
$$
a_i=
2x_i^{-2}-x_{i-1}^{-2}
+4x_i^{-1}-x_{i-2}^{-1},
$$
and
$$
F_p(X)=
\prod_{i=0}^{2}
\left(X^p-X-a_i\right).
$$
The three factors are cyclically permuted by
$$
\operatorname{Gal}(\mathbb F_{p^3}/\mathbb F_p),
$$
so
$$
F_p(X)\in K[X].
$$

Let $L_p$ be the splitting field of $F_p(X)$ over $K$.

Determine the genus of the function field $L_p$.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Abstract Algebra |
| **Sub-domain** | Field theory |
| **Problem Type** | Exact computation |
| **Answer Type** | Exact scalar |

---

## Domain Explanation

The polynomial descends from three Artin-Schreier equations over a cubic constant extension. The splitting field itself must first be shown to recover that constant field. The three Artin-Schreier classes satisfy a characteristic-dependent global relation controlled by the determinant $7$, while at each branch point their local images have dimension two with two different conductor levels. The genus follows only after combining the global rank calculation with the local different contributions.
