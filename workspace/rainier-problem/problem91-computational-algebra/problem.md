# Normalized Math Problem

## LaTeX (Normalized)

Let $p\geq7$ be a prime. Write
$$
p-1=2^s d,
$$
where $d>1$ is odd. Let
$$
L=\mathbb F_p(x,y),
\qquad
y^p+y=x^{p+1}.
$$
Inside $L$, define
$$
u=(x^p-x)^d,
$$
$$
v=(x^p-x)^{d-2}(2y-x^2),
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
The problem also involves wild and tame ramification on quotient curves,
which are part of Topology and Geometry and Differential geometry.
However, the main task is to reconstruct two successive fixed fields from the stated generators and derive the genus from their algebraic ramification data.

Specifically:

- The combinations appearing in the generators conceal the fixed field of an additive translation group on the original curve.
- The odd part $d$ of $p-1$ then produces a nontrivial cyclic action with different weights on the two recovered invariants.
- The final genus depends on combining the wild Artin-Schreier quotient with a separate tame cyclic quotient.
