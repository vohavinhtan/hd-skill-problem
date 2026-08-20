# Normalized Math Problem

## LaTeX (Normalized)

Let $p\geq7$ be a prime and put
$$
h(x)=\frac{(x+1)(x-2)(2x-1)}{x(x-1)}.
$$
Let
$$
L=\mathbb F_p(x,y),
\qquad
y^p-y=h(x)^5+h(x).
$$
Inside $L$, define
$$
u=\frac{(x^2-x+1)^3}{x^2(x-1)^2},
\qquad
v=yh(x),
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
The problem also involves Artin-Schreier ramification and quotient-curve genus calculations,
which are part of Topology and Geometry and Differential geometry.
However, the main task is to reconstruct the hidden fixed field from the stated generators before combining wild and tame ramification data.

Specifically:

- The first generator conceals the square of a relative invariant for a six-element Möbius group.
- The second generator couples that relative invariant to an Artin-Schreier coordinate, while the nonmonomial right side prevents the resulting quotient from collapsing to a single Kummer cover.
- The genus calculation requires both the wild ramification of the original Artin-Schreier extension and separate fixed-point counts for the two nontrivial conjugacy classes of the hidden group.
