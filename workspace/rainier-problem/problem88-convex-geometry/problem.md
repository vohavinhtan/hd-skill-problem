# Normalized Math Problem

## LaTeX (Normalized)

Let $m\geq 8$ be an integer, and set
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
D_m=\{m-2,m,m+2\},
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

For every $5$-element set $E\subset R_m$, define
$$
S(E)=\sum_{r\in E}x_r,
\qquad
Q(E)=\sum_{r\in E}x_r^2.
$$
Let
$$
r_1<r_2<\cdots<r_{2m-2}
$$
be the elements of $R_m$, and for $1\leq j\leq2m-6$ set
$$
W_j=\{r_j,r_{j+1},r_{j+2},r_{j+3},r_{j+4}\}.
$$

Determine exactly the largest real number $\rho>0$ such that
$$
\mathcal F(\lambda,\mu)=\mathcal F(0,0)
$$
for every pair $(\lambda,\mu)$ satisfying
$$
|\lambda|<\rho,
\qquad
|\mu|<\rho.
$$

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Topology and Geometry |
| **Sub-domain** | Convex geometry |
| **Problem Type** | Optimization |
| **Answer Type** | Exact scalar |

---

## Domain Explanation

The problem asks for the exact robust stability radius of a two-parameter family of four-dimensional convex hulls after three prescribed vertices are removed. The key difficulty is global: one must translate simultaneous parameter perturbations into orientation margins, prove that a worst five-point configuration can be compressed to consecutive retained vertices, and then locate the unique critical retained block.