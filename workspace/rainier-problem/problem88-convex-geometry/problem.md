# Normalized Math Problem

## LaTeX (Normalized)

Let $m\geq 6$ be an integer, and set
$$
n=4m+3,
\qquad
\delta=\frac{\pi}{n}.
$$
For $1\le r\le 2m+1$, define
$$
x_r=\cos(2r\delta).
$$
For a real parameter $\lambda$, put
$$
P_r(\lambda)
=
\bigl(
x_r,
x_r^2,
x_r^3,
x_r^6+\lambda x_r^5
\bigr)
\in\mathbb R^4,
$$
and
$$
K(\lambda)
=
\operatorname{conv}\{P_r(\lambda):1\le r\le 2m+1\}.
$$

For a $4$-element set $F\subset\{1,\ldots,2m+1\}$, write
$F\in\mathcal F(\lambda)$ if there is an affine hyperplane $H\subset\mathbb R^4$
such that $K(\lambda)$ lies in one of the two closed half-spaces bounded by
$H$ and
$$
K(\lambda)\cap H
=
\operatorname{conv}\{P_r(\lambda):r\in F\}.
$$

For every $5$-element set $E\subset\{1,\ldots,2m+1\}$ with
$\sum_{r\in E}x_r\ne0$, define
$$
\Lambda(E)
=
-\frac{
\left(\sum_{r\in E}x_r\right)^2+\sum_{r\in E}x_r^2
}{
2\sum_{r\in E}x_r
}.
$$

Determine exactly the largest open interval $I\subset\mathbb R$ containing
$0$ such that
$$
\mathcal F(\lambda)=\mathcal F(0)
\qquad
\text{for every }\lambda\in I.
$$

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Topology and Geometry |
| **Sub-domain** | Convex geometry |
| **Problem Type** | Parameter identification |
| **Answer Type** | Interval or region description |

---

## Domain Explanation

The problem asks for the exact parameter range on which a four-dimensional convex hull keeps the same supporting tetrahedra. The decisive structure is global: one must control all five-point affine-dependence signs, compress that global family to the critical local blocks, and then identify the first two parameter values at which the facet structure changes.
