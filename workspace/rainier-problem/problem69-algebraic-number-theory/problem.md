# Normalized Math Problem

## LaTeX (Normalized)

Let $p>5$ be prime. Let $K$ be the unramified quadratic extension of $\mathbb Q_p(\zeta_p)$, where $\zeta_p$ is a primitive $p$-th root of unity, and put
$$
\pi=\zeta_p-1.
$$
Normalize $v_K$ by $v_K(\pi)=1$. Let $\mathcal O_K$ be the valuation ring of $K$, whose residue field is $\mathbb F_{p^2}$, and choose $\omega\in\mathcal O_K^\times$ whose residue does not belong to $\mathbb F_p$.

Fix an integer $m$ such that
$$
2\leq m,
\qquad
3m<p<5m.
$$
Define
$$
\eta_1=
\pi\frac{1+\pi^m}{1-\pi^m},
\qquad
\eta_2=
\zeta_p\frac{1+\omega\pi^m}{1-\omega\pi^m},
$$
$$
\eta_3=
\frac{1+(1+\omega)\pi^m}{1-(1+\omega)\pi^m},
\qquad
\eta_4=\pi\zeta_p,
\qquad
\eta_5=\pi^2\zeta_p^3,
$$
and let
$$
L=K\left(
\sqrt[p]{\eta_1},
\sqrt[p]{\eta_2},
\sqrt[p]{\eta_3},
\sqrt[p]{\eta_4},
\sqrt[p]{\eta_5}
\right).
$$

Among all intermediate fields $E$ satisfying
$$
K\subset E\subset L,
\qquad
[E:K]=p^2,
$$
let $\delta_2$ be the second-largest distinct value of
$$
v_K\left(\operatorname{Disc}(E/K)\right).
$$
Form a graph $\Gamma$ whose vertices are the fields $E$ attaining this value $\delta_2$, with two distinct vertices $E,E'$ adjacent exactly when
$$
[E\cap E':K]=p.
$$

Determine the ordered pair
$$
\left(\delta_2,\ \deg\Gamma\right),
$$
where $\deg\Gamma$ denotes the common vertex degree of $\Gamma$.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Number Theory |
| **Sub-domain** | Algebraic number theory |
| **Problem Type** | Parameter identification |
| **Answer Type** | Tuple or ordered list |

---

## Domain Explanation

This problem is classified under Number Theory and Algebraic number theory because its primary objects are Kummer extensions of a local field, ramification filtrations, discriminants, and intermediate extensions. The decisive work is to reconstruct the filtered Kummer space from the given radicands and then translate the discriminant condition into the incidence geometry of degree-$p^2$ subextensions. Finite-dimensional projective geometry supports the final incidence count, but the filtration and discriminant structure remain the controlling algebraic-number-theoretic data.