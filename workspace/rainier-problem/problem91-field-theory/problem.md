# Normalized Math Problem

## LaTeX (Normalized)

Let $p\geq5$ be a prime, and define
$$
e_p=
\begin{cases}
1,&p\equiv3\pmod4,\\
0,&p\equiv1\pmod4.
\end{cases}
$$

Set
$$
L_p(X)=X^{p^{p+2}}-X^{p^p}-X^{p^2}+X
\in\mathbb F_p[X],
$$
and
$$
F_p(X)=L_p(X)^{p+1}-1.
$$

For $d\geq1$, let $b_d$ be the number of monic irreducible factors of $F_p(X)$ over $\mathbb F_p$ having degree $d$.

Determine
$$
\mathcal D_p(t)=\sum_{d\geq1}b_dt^d
$$
for every prime $p\geq5$.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Abstract Algebra |
| **Sub-domain** | Field theory |
| **Problem Type** | Exact computation |
| **Answer Type** | Polynomial or rational function |

---

## Domain Explanation

The roots are affine fibers of a Frobenius-linear map above the norm-one subgroup of a quadratic extension. The target set has three different Frobenius behaviors, and the repeated eigenvalue at $1$ in the linearized map makes the periods of its lifts depend on which target component vanishes.
