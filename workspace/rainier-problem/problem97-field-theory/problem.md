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
Let $s$ be transcendental over $\mathbb F_p$, put $K=\mathbb F_p(s)$, and set
$$
m=\frac{p-1}{3}.
$$
Define
$$
P(X)=X^{p^3}-3zX^{p^2}+3z^2X^p-X.
$$

Choose $t$ in an algebraic closure of $K$ with $t^3=s$, and define
$$
R(T)=\frac1s+
\frac{(1-zs^m)T+z-1}{(s^mT-1)(T-1)}.
$$
Let
$$
Q(Y)=\prod_{i=0}^{2}\left(Y-R(z^it)\right)\in K[Y],
$$
and let $L$ be the splitting field over $K$ of
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

This problem involves splitting fields, additive polynomial extensions, constant-field extensions, and ramification,
which are part of Abstract Algebra and Field theory.
The problem also involves finite-field Frobenius actions and a cyclic cubic function-field extension,
which are part of Number Theory and algebraic function theory.
However, those ingredients control a partial overlap among three additive fibers, while the main task is to reconstruct the field tower and determine the exact splitting-field degree.
