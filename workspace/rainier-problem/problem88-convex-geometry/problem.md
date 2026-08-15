# Normalized Math Problem

## LaTeX (Normalized)

Let $m\geq 10000$ be an integer, and set
$$
n=4m+3,
\qquad
t=\frac{\pi}{2n}.
$$
For $1\le r\le 2m+1$, define
$$
x_r=\cos\frac{2\pi r}{n}.
$$
Delete the four indices
$$
D_m=\{m-1,m,m+2,m+5\},
$$
and write
$$
R_m=\{1,\ldots,2m+1\}\setminus D_m.
$$

For $(\lambda,\mu)\in\mathbb R^2$ and $r\in R_m$, put
$$
P_r(\lambda,\mu)
=
\left(
x_r,
x_r^2,
x_r^3,
x_r^6+\frac{\lambda}{t}x_r^5+\mu x_r^4
\right)
\in\mathbb R^4,
$$
and
$$
K(\lambda,\mu)
=
\operatorname{conv}\{P_r(\lambda,\mu):r\in R_m\}.
$$

For a $4$-element set $F\subset R_m$, write $F\in\mathcal F(\lambda,\mu)$ if there is an affine hyperplane $H\subset\mathbb R^4$ such that $K(\lambda,\mu)$ lies in one of the two closed half-spaces bounded by $H$ and
$$
K(\lambda,\mu)\cap H
=
\operatorname{conv}\{P_r(\lambda,\mu):r\in F\}.
$$

For every $5$-element set $E\subset R_m$, define
$$
s_E=\sum_{r\in E}x_r,
\qquad
q_E=\sum_{r\in E}x_r^2.
$$
Call a $5$-element subset of $R_m$ consecutive if its elements are consecutive in the increasing order on $R_m$.

For a consecutive $5$-element set $E\subset R_m$, define
$$
d(E)
=
\inf\left\{
\rho>0:
\begin{array}{c}
\text{there exist }|\lambda|\le\rho,\ |\mu|\le\rho\\
\text{for which }\{P_r(\lambda,\mu):r\in E\}
\text{ is affinely dependent}
\end{array}
\right\}.
$$

Prove that among consecutive $5$-element subsets of $R_m$ there is a unique minimizer $A_m$ of $d(E)$ and a unique second minimizer $B_m$. For each $E\in\{A_m,B_m\}$, prove there is a unique $\sigma(E)\in\{-1,1\}$ such that affine dependence occurs at
$$
(\lambda,\mu)=\bigl(\sigma(E)d(E),-d(E)\bigr).
$$

Finally define
$$
\rho_m
=
\sup\left\{
\rho>0:
\mathcal F(\lambda,\mu)=\mathcal F(0,0)
\text{ whenever }|\lambda|<\rho,\ |\mu|<\rho
\right\}.
$$
Prove that $\rho_m=d(A_m)$ and determine exactly
$$
\bigl(A_m,\sigma(A_m),B_m,\sigma(B_m),\rho_m\bigr).
$$

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Topology and Geometry |
| **Sub-domain** | Convex geometry |
| **Problem Type** | Optimization |
| **Answer Type** | Tuple or ordered list |

---

## Domain Explanation

The problem asks for the first two affine-dependence obstructions to robust facet stability in a scaled two-parameter family of four-dimensional convex hulls. The first and second obstruction margins are asymptotically extremely close, so locating their exact order requires a global compression argument together with quantitative control of the small-angle error rather than a nearest-to-zero heuristic.
