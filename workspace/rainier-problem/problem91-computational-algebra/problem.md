# Normalized Math Problem

## LaTeX (Normalized)

Let $p\equiv 1\pmod 6$ be a prime and put
$$
N=\frac{p-1}{3}.
$$
Let
$$
L=\mathbb F_p(x,y),\qquad x^{p-1}+y^{p-1}+1=0.
$$
Inside $L$, define
$$
u=\frac{x^3y^3+x^3+y^3}{(x^3+y^3+1)^2},
\qquad
v=\frac{x^3y^3}{(x^3+y^3+1)^3},
$$
and let
$$
K_p=\mathbb F_p(u,v).
$$

Determine the genus of the function field $K_p$ as an exact expression in $p$.

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

This problem involves algebraic function fields, finite field extensions, invariant subfields, and genus computation, which are part of Abstract Algebra and Computational algebra.
The problem also involves quotient curves and ramification, which are part of Topology and Geometry and Differential geometry.
However, the main task is the algebraic reconstruction of the hidden fixed field and the exact calculation of its function-field genus rather than the study of differential-geometric structures.

Specifically:

- The generators of $K_p$ conceal an intermediate Fermat function field and a finite permutation action.
- Recovering the fixed field requires reconstructing normalized elementary symmetric functions from the stated generators.
- The final genus depends on the ramification of two different conjugacy classes in the resulting finite Galois extension.
