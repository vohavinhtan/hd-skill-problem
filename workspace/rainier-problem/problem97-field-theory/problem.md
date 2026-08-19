# Normalized Math Problem

## LaTeX (Normalized)

Let $p$ be a prime with
$$
p\equiv1\pmod3,
$$
and choose $z\in\mathbb F_p$ such that
$$
z^2+z+1=0.
$$
Let $s$ be transcendental over $\mathbb F_p$, put $K=\mathbb F_p(s)$, and define
$$
P(X)=X^{p^2}-2zX^p+z^2X.
$$
Set
$$
Q(Y)=Y^3+\left(sz-s-3z\right)Y^2+
\left(-s^2z+4sz+2s-3z-3\right)Y
-s^2-2sz+2s+3z-4.
$$
Let $L$ be the splitting field over $K$ of
$$
F(X)=Q(P(X)).
$$

Determine the exact degree $[L:K]$.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Abstract Algebra |
| **Sub-domain** | Field theory |
| **Problem Type** | Exact computation |
| **Answer Type** | Exact scalar |

---

## Domain Explanation

This problem involves splitting fields, cyclic function-field extensions, constant-field extensions, and ramification,
which are part of Abstract Algebra and Field theory.
The problem also involves finite-field Frobenius actions and rational transformations,
which are part of Number Theory and modular arithmetic and congruences.
However, those ingredients control a hidden dependence among additive fibers, while the main task is to reconstruct the field tower and determine the degree of its splitting field.
