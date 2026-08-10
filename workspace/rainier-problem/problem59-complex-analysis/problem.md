# Normalized Math Problem

## LaTeX (Normalized)

Let
$$
\mathbb D=\{z\in\mathbb C:|z|<1\},\qquad
\zeta=e^{2\pi i/5},
$$
and define
$$
\kappa(z)=\frac{3z-1}{3-z},\qquad
\kappa^{-1}(w)=\frac{3w+1}{w+3},\qquad
\sigma=\kappa^{-1}\circ(w\mapsto\zeta w)\circ\kappa.
$$

Let $\mathcal F$ be the class of holomorphic maps $f:\mathbb D\to\mathbb D$ satisfying
$$
f\circ\sigma=\sigma\circ f.
$$
For $f\in\mathcal F$, put
$$
F(w)=\kappa\bigl(f(\kappa^{-1}(w))\bigr).
$$
Assume that $F$ has a zero-free fourth Schur lift: there is a zero-free holomorphic map $G:\mathbb D\to\mathbb D$ such that
$$
F(w)=wG(w)^4.
$$

Suppose that, as $w\to0$,
$$
e\,\frac{F(w)}{w}
=
1-\frac35w^5-\frac{27}{50}w^{10}
+\frac{333}{250}w^{15}
+O(w^{20}),
$$
where $F(w)/w$ is understood by its holomorphic extension at $w=0$.

For every such normalized map $F$, define
$$
\Lambda(F)
=[w^{20}]\left(-\log\left(e\frac{F(w)}{w}\right)\right),
$$
where the logarithm is the holomorphic branch near $w=0$ satisfying $\log 1=0$, and $[w^{20}]$ denotes the coefficient of $w^{20}$ in the Taylor expansion.

Let $\mathcal A$ be the set of all normalized maps $F$ arising in this way and satisfying the displayed jet. Determine
$$
M=\sup_{F\in\mathcal A}\operatorname{Re}\Lambda(F),
$$
prove that the supremum is attained by a unique normalized map, and determine that extremal map exactly.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Analysis |
| **Sub-domain** | Complex analysis |
| **Problem Type** | Optimization |
| **Answer Type** | Tuple or ordered list |

---

## Domain Explanation

This is a Complex Analysis extremal problem. The order-five disk symmetry and the zero-free Schur lift reduce the normalized map to a positive-real logarithmic function of $w^5$. The prescribed jet determines only its first three Caratheodory moments, while the fourth moment remains free. Positivity of the next Toeplitz moment matrix cuts out a nontrivial disk of admissible fourth moments; optimizing the logarithmic coefficient selects one boundary point. Only at that extremal point does the Toeplitz matrix become singular, and its nullspace then forces a recurrence for every later moment. The problem therefore combines disk symmetry, logarithmic normalization, semidefinite moment optimization, and singular Toeplitz rigidity.
