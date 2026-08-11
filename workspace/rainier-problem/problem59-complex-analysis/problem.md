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
1-w^5+\frac7{10}w^{10}-\frac{17}{30}w^{15}+O(w^{20}),
$$
where $F(w)/w$ is understood by its holomorphic extension at $w=0$.

For every such normalized map $F$, define
$$
\Lambda_7(F)
=[w^{35}]\left(-\log\left(e\frac{F(w)}{w}\right)\right),
$$
where the logarithm is the holomorphic branch near $w=0$ satisfying $\log 1=0$, and $[w^{35}]$ denotes the coefficient of $w^{35}$ in the Taylor expansion.

Let $\mathcal A$ be the set of all normalized maps $F$ arising in this way and satisfying the displayed jet. Determine
$$
M=\sup_{F\in\mathcal A}\operatorname{Re}\Lambda_7(F),
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

This is a Complex Analysis extremal problem. The order-five disk symmetry and the zero-free Schur lift reduce the normalized map to a positive-real logarithmic function of $w^5$. The jet fixes only the first three Caratheodory moments, while the objective is the seventh logarithmic coefficient. Solving the problem requires a higher-order trigonometric moment optimization: one must derive a sharp cubic majorant for the seventh Chebyshev mode from the available lower moments, analyze its contact set, and use the equality conditions to recover the unique boundary measure and hence the entire extremal holomorphic map.