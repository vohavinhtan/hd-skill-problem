# Normalized Math Problem

## LaTeX (Normalized)

Let $m\geq 200$ be an integer, and set
$$
n=4m+3,
\qquad
t=\frac{\pi}{2n}.
$$
For $1\leq r\leq 2m+1$, define
$$
x_r=\cos\frac{2\pi r}{n}.
$$
Delete the four indices
$$
D_m=\{m-1,m+1,m+2,m+5\},
$$
and write
$$
R_m=\{1,\ldots,2m+1\}\setminus D_m.
$$

For every $5$-element set $E\subset R_m$ and every integer $k\geq0$, define
$$
H_0(E)=1,
$$
and, for $k\geq1$,
$$
H_k(E)
=
\sum_{r_1\leq\cdots\leq r_k\atop r_1,\ldots,r_k\in E}
 x_{r_1}\cdots x_{r_k}.
$$
For $k\in\{1,3\}$, set
$$
R_k(E)=\frac{H_k(E)}{H_4(E)}.
$$

For $\alpha\in(1,2)$, $(\lambda,\mu)\in\mathbb R^2$, and $r\in R_m$, put
$$
P_r^{(\alpha)}(\lambda,\mu)
=
\left(
x_r,
x_r^2,
x_r^3,
x_r^8+\frac{\lambda}{t^3}x_r^7+\frac{\alpha\mu}{t}x_r^5
\right)
\in\mathbb R^4,
$$
and
$$
K_\alpha(\lambda,\mu)
=
\operatorname{conv}\{P_r^{(\alpha)}(\lambda,\mu):r\in R_m\}.
$$

For a $4$-element set $F\subset R_m$, write $F\in\mathcal F_\alpha(\lambda,\mu)$ if there is an affine hyperplane $H\subset\mathbb R^4$ such that $K_\alpha(\lambda,\mu)$ lies in one of the two closed half-spaces bounded by $H$ and
$$
K_\alpha(\lambda,\mu)\cap H
=
\operatorname{conv}\{P_r^{(\alpha)}(\lambda,\mu):r\in F\}.
$$

Call a $5$-element subset of $R_m$ consecutive if its elements are consecutive in the increasing order on $R_m$. For $\alpha\in(1,2)$ and a consecutive $5$-element set $E\subset R_m$, define
$$
d_\alpha(E)
=
\inf\left\{
\rho>0:
\begin{array}{c}
\text{there exist }|\lambda|\leq\rho,\ |\mu|\leq\rho\\
\text{for which }\{P_r^{(\alpha)}(\lambda,\mu):r\in E\}
\text{ is affinely dependent}
\end{array}
\right\}.
$$

Prove that there is a unique number $\alpha_m\in(1,2)$ for which the minimum of $d_{\alpha_m}(E)$ over all consecutive $5$-element sets $E\subset R_m$ is attained by exactly two distinct sets. Denote those two sets by $A_m,B_m$, ordered so that $\min A_m<\min B_m$, and let $\rho_m$ be their common minimum.

Prove also that $\rho_m$ is the largest real number $\rho>0$ such that
$$
\mathcal F_{\alpha_m}(\lambda,\mu)
=
\mathcal F_{\alpha_m}(0,0)
$$
whenever
$$
|\lambda|<\rho,
\qquad
|\mu|<\rho.
$$
At the two boundary corners of the square $[-\rho_m,\rho_m]^2$ where $A_m$ and $B_m$ become affinely dependent, prove that moving radially outward changes the facet family in both cases.

Determine exactly
$$
(A_m,B_m,\alpha_m).
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

The problem asks for the unique anisotropy at which two different affine-dependence obstructions become simultaneously critical for a robust parameter square. Its main difficulty is global: the solver must reconstruct the higher divided-difference orientation law, identify the lower envelope over retained five-windows, balance two distinct critical circuits exactly, and then prove that both boundary contacts correspond to genuine changes of supporting facets rather than irrelevant orientation degeneracies.
