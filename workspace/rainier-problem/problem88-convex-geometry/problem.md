# Normalized Math Problem

## LaTeX (Normalized)

Let $m\geq 100$ be an integer, and set
$$
n=4m+3,
\qquad
\delta=\frac{\pi}{n}.
$$
For $1\leq r\leq 2m+1$, define
$$
x_r=\cos(2r\delta).
$$
Delete the three indices
$$
D_m=\{m-3,m-2,m+1\},
$$
and write
$$
R_m=\{1,\ldots,2m+1\}\setminus D_m.
$$
For $(\lambda,\mu)\in\mathbb R^2$ and $r\in R_m$, put
$$
P_r(\lambda,\mu)
=
\bigl(
x_r,
x_r^2,
x_r^3,
x_r^6+\lambda x_r^5+\mu x_r^4
\bigr)
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

Define
$$
\rho_m
=
\sup\left\{
\rho>0:
\mathcal F(\lambda,\mu)=\mathcal F(0,0)
\text{ whenever }|\lambda|<\rho\text{ and }|\mu|<\rho
\right\}.
$$
Call a $5$-element subset of $R_m$ consecutive if its elements are consecutive in the increasing order on $R_m$.

Prove that there is exactly one ordered pair $(E_m,\sigma_m)$, where $E_m\subset R_m$ is a consecutive $5$-element set and $\sigma_m\in\{-1,1\}$, such that the five points
$$
\{P_r(\sigma_m\rho_m,-\rho_m):r\in E_m\}
$$
are affinely dependent. Determine $(E_m,\sigma_m)$ exactly.

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

The problem asks for the unique five-vertex circuit and parameter-corner direction responsible for the first loss of facet stability in a two-parameter family of four-dimensional convex hulls. The main difficulty is to reconstruct a global orientation margin, compress all possible five-point obstructions to retained consecutive windows, and then prove which asymmetric window is the unique first obstruction.