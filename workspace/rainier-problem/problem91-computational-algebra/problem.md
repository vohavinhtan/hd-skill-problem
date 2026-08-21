# Normalized Math Problem

## LaTeX (Normalized)

Let $p$ be a prime and write
$$
p-1=2^s d,
$$
where $s\geq2$ and $d>3$ is odd. Put
$$
m=(3\cdot2^s+1)d.
$$
Let
$$
L=\mathbb F_{p^2}(z,y),
\qquad
y^{p^2}-y=z^m-z^{-m}.
$$
Inside $L$, define
$$
u=(z^d+z^{-d})^2,
$$
$$
v=(y^p-y)(z^d-z^{-d}),
$$
and let
$$
K_p=\mathbb F_{p^2}(u,v).
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
The problem also involves Artin-Schreier ramification and tame quotient curves,
which are part of Topology and Geometry and Differential geometry.
However, the main task is to reconstruct a hidden translation quotient followed by a nonabelian fixed field before the genus can be calculated.

Specifically:

- The expression $y^p-y$ conceals the fixed field of a nontrivial translation subgroup inside a degree-$p^2$ additive extension.
- The remaining generators conceal both a cyclic scaling action and inversion, producing a dihedral quotient with two different reflection classes.
- The genus calculation requires the wild ramification of the intermediate Artin-Schreier curve and the nonuniform tame ramification of the dihedral action.
