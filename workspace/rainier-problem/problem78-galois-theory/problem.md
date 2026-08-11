# Normalized Math Problem

## LaTeX (Normalized)

Let
$$
f(X)=X^3-3X+5\in\mathbb C[X],
$$
and for $j\geq1$ let $f^{\circ j}$ denote the $j$-fold iterate of $f$ under composition. Put
$$
\alpha_j=f^{\circ j}(1),
\qquad
\beta_j=f^{\circ j}(-1).
$$

Let $t$ be transcendental over $\mathbb C$. For each $n\geq2$, let $L_n$ be the splitting field over $\mathbb C(t)$ of
$$
f^{\circ n}(X)-t,
$$
and define
$$
K_n=\mathbb C(t)\left(\sqrt{(t-\alpha_n)(t-\beta_n)}\right).
$$
Let
$$
M_n=L_nK_n
$$
be their compositum in a fixed algebraic closure of $\mathbb C(t)$. Let
$$
\mathfrak D_n=\operatorname{Diff}(M_n/K_n)
$$
be the different divisor of the finite separable extension $M_n/K_n$, and let $\deg\mathfrak D_n$ denote its divisor degree.

Determine $\deg\mathfrak D_n$ exactly as a function of $n$.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Abstract Algebra |
| **Sub-domain** | Galois theory |
| **Problem Type** | Exact computation |
| **Answer Type** | Exact scalar |

---

## Domain Explanation

The problem asks for the different after a quadratic base change tied to the newest critical values of an iterated cubic. Determining it requires identifying how that quadratic field meets the splitting field, reconstructing the Galois groups in the iteration tower, and tracking the inertia groups through the base change before assembling the global ramification contribution. These are Galois-theoretic questions about splitting fields, intermediate fields, and ramification rather than direct polynomial evaluation.
