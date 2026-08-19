# Normalized Math Problem

## LaTeX (Normalized)

Let $p\geq5$ be a prime and put
$$
m=\frac{p+1}{2}.
$$
Over $\mathbb F_{p^2}$ let
$$
L=\mathbb F_{p^2}(x,y),\qquad
y^{p^2}-y=x^m-x^{-m}.
$$
Inside $L$, define
$$
u=x+x^{-1},
\qquad
v=(y^p-y)(x-x^{-1}),
$$
and let
$$
K_p=\mathbb F_{p^2}(u,v).
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

This problem involves algebraic function fields, fixed fields, finite automorphism groups, and extension degrees,
which are part of Abstract Algebra and Computational algebra.
The problem also involves wild and tame ramification on algebraic curves,
which are part of Topology and Geometry and Differential geometry.
However, the main task is to reconstruct the hidden intermediate field and its automorphism tower algebraically before computing the genus.

Specifically:

- The first generator hides an involution on the rational coordinate, while the second simultaneously hides an additive translation invariant.
- Recovering the fixed field requires a degree comparison rather than a direct polynomial relation between the stated generators.
- The genus calculation passes through a wild Artin-Schreier quotient and then a separate tame involution quotient.
