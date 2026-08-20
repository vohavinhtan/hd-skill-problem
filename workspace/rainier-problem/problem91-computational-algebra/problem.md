# Normalized Math Problem

## LaTeX (Normalized)

Let $p\equiv31\pmod{60}$ be a prime, put
$$
n=p-1,
$$
and let
$$
L=\mathbb F_p(x,y),\qquad x^n+y^n+1=0.
$$
Inside $L$, define
$$
u=\frac{x^6y^6+x^6+y^6}{(x^6+y^6+1)^2},
\qquad
v=\frac{x^2y^2}{x^6+y^6+1},
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
However, the main task is to reconstruct the hidden finite group from the two stated generators and then derive the quotient ramification algebraically.

Specifically:

- The generators encode normalized symmetric functions together with a cubic root of their third elementary symmetric function.
- Recovering the fixed field requires identifying a twelve-element diagonal subgroup and its permutation normalizer.
- The genus calculation requires a first quotient by the diagonal subgroup and a second quotient whose fixed points are recovered from entire cosets rather than from individual coordinate permutations.
