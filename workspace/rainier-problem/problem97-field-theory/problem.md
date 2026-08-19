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
Let $L$ be the splitting field over $K$ of
$$
F(X)=P(X)^3-sP(X)^2+(s-3)P(X)+1.
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
which are part of Number Theory and algebraic function theory.
However, those ingredients control the hidden outer cubic and the translation kernel, while the main task is to reconstruct the full field tower and prove the required extensions are independent.
