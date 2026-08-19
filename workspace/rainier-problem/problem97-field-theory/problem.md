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
Let $t$ be transcendental over $\mathbb F_p$, and put $K=\mathbb F_p(t)$.

Define
$$
N(X)=(X-1)^{p^2}-2z(X-1)^p(X+1)^{p^2-p}+z^2(X-1)(X+1)^{p^2-1},
$$
and let $L$ be the splitting field over $K$ of
$$
F(X)=N(X)^2-t(X+1)^{2p^2}.
$$

Determine $\operatorname{Gal}(L/K)$ up to isomorphism. Give the answer as a presentation with generators $r,a,b$, where exponents involving $z$ are read modulo $p$.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Abstract Algebra |
| **Sub-domain** | Field theory |
| **Problem Type** | Exact computation |
| **Answer Type** | Other |

---

## Domain Explanation

This problem involves splitting fields, towers of extensions, constant-field extensions, and Galois automorphisms,
which are part of Abstract Algebra and Field theory.
The problem also involves finite-field Frobenius actions and congruences,
which are part of Number Theory and modular arithmetic and congruences.
However, those ingredients determine the action on a translation kernel, while the main task is to reconstruct the hidden field tower and its full Galois group.
