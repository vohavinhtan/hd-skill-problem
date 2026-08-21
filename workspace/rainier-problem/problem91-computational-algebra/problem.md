# Normalized Math Problem

## LaTeX (Normalized)

Let $p$ be a prime satisfying
$$
p\equiv1\pmod{42},
$$
and put
$$
n=p-1.
$$
Choose a primitive cube root $\omega\in\mathbb F_p$ and a primitive $21$st root $\zeta\in\mathbb F_p$. Let
$$
L=\mathbb F_p(x,y),
\qquad
x^n+\omega y^n+\omega^2=0.
$$
Define automorphisms of $L$ by
$$
\sigma(x,y)=(\zeta x,\zeta^{-4}y),
$$
$$
\tau(x,y)=\left(\frac{y}{x},\frac1x\right),
$$
and let
$$
H=\langle\sigma,\tau\rangle,
\qquad
K_p=L^H.
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

This problem involves algebraic function fields, finite automorphism groups, fixed fields, and extension degrees,
which are part of Abstract Algebra and Computational algebra.
The problem also involves quotient curves, projective fixed points, and tame ramification,
which are part of Topology and Geometry and Differential geometry.
However, the main task is to reconstruct the nonabelian automorphism group and derive the ramification of its quotient algebraically.

Specifically:

- The two generators form a nonabelian group of order $63$ rather than a cyclic or dihedral group.
- The diagonal subgroup acts without fixed points, while every element in the two nontrivial cosets has fixed points because of the twisted Fermat coefficients.
- The genus depends on combining the semidirect-product structure with the full tame fixed-point contribution.
