# Normalized Math Problem

## LaTeX (Normalized)

Let $p\geq13$ be a prime and write
$$
p-1=2^s d,
$$
where $s\geq2$ and $d>1$ is odd. Let
$$
L=\mathbb F_p(z,y),
\qquad
y^p-y=z^{(2^s+1)d}-z^{-(2^s+1)d}.
$$
Inside $L$, define
$$
u=(z^d+z^{-d})^2,
\qquad
v=y(z^d-z^{-d}),
$$
and let
$$
K_p=\mathbb F_p(u,v).
$$

Determine the genus of $K_p$ as an exact expression in $p$ and $s$.

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
However, the main task is to reconstruct a hidden nonabelian fixed field from the two stated generators before the ramification calculation can be completed.

Specifically:

- The first generator hides both a cyclic scaling ambiguity and inversion of the rational coordinate.
- The second generator couples the Artin-Schreier coordinate to an anti-invariant, forcing a dihedral rather than cyclic fixed-field reconstruction.
- The tame quotient contains two different reflection types with different fixed fibers, and both types are needed for the genus.
