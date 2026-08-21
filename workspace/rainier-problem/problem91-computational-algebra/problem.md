# Normalized Math Problem

## LaTeX (Normalized)

Let $p>19$ be a prime satisfying
$$
p\equiv1\pmod{18},
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
u=\frac{x^9y^9+x^9+y^9}{(x^9+y^9+1)^2},
\qquad
v=\frac{x^3y^3}{x^9+y^9+1},
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
The problem also involves quotient curves, ramification, and genus,
which are part of Topology and Geometry and Differential geometry.
However, the main task is to reconstruct the hidden fixed field from the stated rational generators and determine the ramification of its finite algebraic quotient.

Specifically:

- The generators determine symmetric functions of normalized ninth powers but retain a cubic root of the third elementary symmetric function.
- Recovering the fixed field requires identifying a nontrivial diagonal subgroup and its permutation normalizer rather than passing directly to a lower-degree Fermat curve.
- The genus calculation requires separate fixed-point analyses for diagonal elements, transposition cosets, and three-cycle cosets.
