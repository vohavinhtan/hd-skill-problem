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
P(X)=X^{p^3}-3zX^{p^2}+3z^2X^p-X.
$$
Set
$$
A=s^{(p^3-1)/3}-3zs^{(p^2-1)/3}+3z^2s^{(p-1)/3},
$$
$$
B=s^{-(p^3-1)/3}-3zs^{-(p^2-1)/3}+3z^2s^{-(p-1)/3},
$$
and
$$
Q(Y)=Y^3-3ABY-A^3s-B^3s^{-1}.
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

This problem involves splitting fields, additive polynomials, constant-field extensions, and ramification,
which are part of Abstract Algebra and Field theory.
The problem also involves finite-field Frobenius actions and cyclic cubic extensions,
which are part of Number Theory and algebraic function theory.
However, those ingredients control hidden corrections among the additive fibers, while the main task is to reconstruct the splitting field and determine its exact degree.
