# Normalized Math Problem

## LaTeX (Normalized)

Let $p$ be a prime and write
$$
p-1=2^s d,
$$
where $d>9$ is odd,
$$
3\mid d,\qquad 9\nmid d.
$$
Let
$$
L=\mathbb F_p(x,y),
\qquad
y^p-y=(x^p-x)^9.
$$
Inside $L$, define
$$
u=(x^p-x)^{2d},
\qquad
v=(x^p-x)^{2d-9}y,
$$
and let
$$
K_p=\mathbb F_p(u,v).
$$

Determine the genus of $K_p$ as an exact expression in $s$.

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
The problem also involves wild Artin-Schreier ramification and tame cyclic quotients,
which are part of Topology and Geometry and Differential geometry.
However, the main task is to reconstruct a two-stage fixed field and distinguish the different stabilizer types in its tame quotient before computing the genus.

Specifically:

- The expression $x^p-x$ conceals the fixed field of an additive translation group.
- The two stated generators then conceal a cyclic scaling quotient whose action has two exceptional nonidentity elements with larger fixed fibers.
- The final genus depends on combining the wild Artin-Schreier genus calculation with the nonuniform tame ramification of that cyclic quotient.
