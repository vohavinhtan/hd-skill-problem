# Normalized Math Problem

## LaTeX (Normalized)

Let $p\equiv1\pmod{12}$ be a prime and put $n=p-1$. Let
$$
L=\mathbb F_p(x,y),\qquad x^n+y^n+1=0.
$$
Inside $L$, define
$$
u=xy+x^6+y^6,
\qquad
v=\frac{xy+1}{x^6+y^6+1},
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

This problem involves algebraic function fields, finite automorphism groups, invariant subfields, and extension degrees,
which are part of Abstract Algebra and Computational algebra.
The problem also involves quotient curves, ramification, and genus,
which are part of Topology and Geometry and Differential geometry.
However, the main difficulty is reconstructing the hidden fixed field from the stated rational generators and then calculating its algebraic ramification data, rather than studying differential-geometric structures independently.

Specifically:

- The stated generators must first be inverted to recover the natural dihedral invariants.
- A degree comparison is needed to prove that these invariants give the full fixed field rather than merely a subfield of it.
- The quotient genus depends on separate fixed-point calculations for rotations and reflections, including an exceptional central rotation.
