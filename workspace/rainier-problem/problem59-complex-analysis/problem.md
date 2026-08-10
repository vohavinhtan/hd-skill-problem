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
-\frac{2917}{5000}w^{20}
+O(w^{25}),
$$
where $F(w)/w$ is understood by its holomorphic extension at $w=0$.

Prove that the associated normalized map $F$ is unique and determine it exactly.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Analysis |
| **Sub-domain** | Complex analysis |
| **Problem Type** | Canonicalization or normalization |
| **Answer Type** | Function or mapping |

---

## Domain Explanation

This is a Complex Analysis problem. The order-five disk symmetry and the zero-free Schur lift first produce a positive-real logarithmic quotient depending only on $w^5$. The prescribed jet then determines only four initial Caratheodory moments. The decisive step is to use positivity of every Toeplitz moment matrix: the first singular matrix forces a recurrence for all later moments, from which the entire positive-real function, and hence $F$, must be reconstructed. Thus the problem requires a global positivity argument rather than finite coefficient matching alone.
