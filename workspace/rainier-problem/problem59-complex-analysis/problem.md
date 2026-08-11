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
1+\left(\frac13+\frac{2i}{15}\right)w^5
+\left(\frac{37}{150}+\frac{i}{9}\right)w^{10}
+\left(\frac{4837}{4050}+\frac{161i}{10125}\right)w^{15}
+O(w^{20}),
$$
where $F(w)/w$ is understood by its holomorphic extension at $w=0$.

Set
$$
\tau=2^{-1/5}.
$$
Assume in addition that
$$
\left|\frac{F(-\tau)}{-\tau}\right|=e^{-77/57}.
$$

Let $\mathcal A$ be the set of all normalized maps $F$ arising in this way and satisfying both the displayed jet and the modulus constraint at $-\tau$.

Determine
$$
M=\sup_{F\in\mathcal A}\left|\frac{F(\tau)}{\tau}\right|,
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

This is a Complex Analysis extremal problem. The order-five disk symmetry and the zero-free Schur lift reduce the normalized map to a positive-real function of $w^5$. The complex jet fixes three genuinely complex Herglotz moments, while the modulus condition at $-2^{-1/5}$ fixes an additional Poisson-kernel average. The objective is a second Poisson-kernel average at the opposite point. A sharp solution requires a constrained two-point moment duality argument: one must derive a rational minorant from the available moments and the fixed negative-point average, analyze its three-point contact set, use the imaginary moment constraints to recover asymmetric masses on conjugate boundary points, and then reconstruct the unique extremal holomorphic map.
