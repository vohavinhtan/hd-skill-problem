# Normalized Math Problem

## LaTeX (Normalized)

Let $p\equiv1\pmod 6$ be a prime and put $n=p-1$. Let
$$
L=\mathbb F_p(x,y),\qquad x^n+y^n+1=0.
$$
Inside $L$, define
$$
u=\frac{xy}{x^3+y^3+1},
\qquad
v=\frac{x^3y^3+x^3+y^3}{(x^3+y^3+1)^2},
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

This problem involves algebraic function fields, finite automorphism groups, invariant subfields, and ramification, which are part of Abstract Algebra and Computational algebra.
The problem also involves quotient curves and genus, which are part of Topology and Geometry and Differential geometry.
However, the main task is to reconstruct the finite field extension hidden by the two generators and determine its ramification algebraically, rather than to study geometric structures independently.

Specifically:

- The two generators encode both coordinate permutations and a diagonal cubic symmetry.
- Recovering the fixed field requires reconstructing three normalized cubic coordinates together with the residual cube-root ambiguity.
- The genus calculation depends on distinguishing the order-$3$ and order-$2$ elements of the resulting noncyclic automorphism group.
