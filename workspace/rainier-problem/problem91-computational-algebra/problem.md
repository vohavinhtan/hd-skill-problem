# Normalized Math Problem

## LaTeX (Normalized)

Let $p>37$ be a prime satisfying
$$
p\equiv13\pmod{24},
$$
and put
$$
n=p-1.
$$
Let
$$
L=\mathbb F_p(x,y),
\qquad
x^n+y^n+1=0.
$$
Inside $L$, define
$$
u=\frac{x^{12}y^{12}+x^{12}+y^{12}}{(x^{12}+y^{12}+1)^2},
\qquad
v=\frac{x^4y^4}{x^{12}+y^{12}+1},
$$
and let
$$
K_p=\mathbb F_p(u,v).
$$

Determine the genus of $K_p$ as an exact expression in $p$.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Abstract Algebra |
| **Sub-domain** | Computational algebra |
| **Problem Type** | Symbolic derivation |
| **Answer Type** | Exact symbolic expression |

---

## Domain Explanation

This problem involves algebraic function fields, invariant subfields, finite automorphism groups, and extension degrees,
which are part of Abstract Algebra and Computational algebra.
The problem also involves quotient curves, tame ramification, and genus calculations,
which are part of Topology and Geometry and Differential geometry.
However, the main task is to reconstruct the hidden semidirect-product fixed field from the stated generators and determine its nonuniform ramification.

Specifically:

- The generators recover normalized twelfth powers but retain a cubic root of their third elementary symmetric function.
- The resulting diagonal subgroup is not the full group of independent twelfth-root scalings, so the problem does not reduce directly to a lower-degree Fermat curve.
- Elements above a transposition split into three different fixed-point types, and that split is needed for the genus.
