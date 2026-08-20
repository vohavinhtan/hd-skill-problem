# Normalized Math Problem

## LaTeX (Normalized)

Let $p\geq5$ be a prime and let
$$
L=\mathbb F_p(x,y),
\qquad
y^p-y=
\left(
\frac{(x+1)(x-2)(2x-1)}{x(x-1)}
\right)^3.
$$
Inside $L$, define
$$
u=\frac{(x^2-x+1)^3}{x^2(x-1)^2},
\qquad
v=
y\frac{(x+1)(x-2)(2x-1)}{x(x-1)},
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
The problem also involves wild ramification and quotient-curve genus calculations,
which are part of Topology and Geometry and Differential geometry.
However, the main task is to reconstruct a hidden nonabelian fixed field from the two stated generators before the ramification calculation can be carried out.

Specifically:

- The first generator conceals the square of a relative invariant for a six-element Möbius group.
- The second generator couples that relative invariant to an Artin-Schreier coordinate, so identifying the automorphism action requires both pieces at once.
- The genus calculation combines wild ramification in the Artin-Schreier cover with two different tame fixed-point classes in the hidden quotient group.
