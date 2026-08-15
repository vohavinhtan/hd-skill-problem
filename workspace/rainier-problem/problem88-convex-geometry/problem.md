# Normalized Math Problem

## LaTeX (Normalized)

Let $m\geq 50$ be an integer, and set
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
D_m=\{m-4,m,m+4,m+5\},
$$
and write
$$
R_m=\{1,\ldots,2m+1\}\setminus D_m.
$$

For
$$
\frac{29}{100}<\alpha<\frac{3}{10},
\qquad s\geq0,
$$
and $r\in R_m$, put
$$
P_r^{(\alpha)}(s)
=
\left(
x_r,
x_r^2,
x_r^3,
x_r^8-\frac{s}{t^2}x_r^6-\frac{\alpha s}{t^3}x_r^7
\right)
\in\mathbb R^4,
$$
and
$$
K_\alpha(s)
=
\operatorname{conv}\{P_r^{(\alpha)}(s):r\in R_m\}.
$$

A hyperplane $H\subset\mathbb R^4$ is supporting for a convex set $K$ if $K$ is contained in one of the two closed half-spaces bounded by $H$ and $K\cap H\neq\varnothing$. A facet of $K_\alpha(s)$ is a set $K_\alpha(s)\cap H$ of affine dimension $3$ for some supporting hyperplane $H$. Call $K_\alpha(s)$ simplicial if every facet has exactly four vertices.

For each $\alpha\in(29/100,3/10)$ define
$$
s_\alpha
=
\inf\{s>0:K_\alpha(s)\text{ is not simplicial}\}.
$$

Prove that there is a unique number
$$
\alpha_m\in\left(\frac{29}{100},\frac{3}{10}\right)
$$
for which $K_{\alpha_m}(s_{\alpha_m})$ has a facet with exactly six vertices. Prove that this six-vertex facet is unique and every other facet of $K_{\alpha_m}(s_{\alpha_m})$ has exactly four vertices. Let $C_m\subset R_m$ be the set of its six vertex indices.

Write
$$
C_m=\{c_1<c_2<c_3<c_4<c_5<c_6\},
$$
and define $a,b,c,d,e,f$ by
$$
\prod_{r\in C_m}(z-x_r)
=
z^6-az^5+bz^4-cz^3+dz^2-ez+f.
$$

Finally, prove that for every sufficiently small $\varepsilon>0$, the number of tetrahedral facets of $K_{\alpha_m}(s_{\alpha_m}-\varepsilon)$ whose vertices all lie in $C_m$ is $6$, whereas the corresponding number for $K_{\alpha_m}(s_{\alpha_m}+\varepsilon)$ is $3$.

Determine exactly
$$
(C_m,\alpha_m).
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

The problem asks for the unique parameter at which the first loss of simpliciality in a one-parameter family of four-dimensional convex hulls is a simultaneous six-vertex facet collision rather than an ordinary five-vertex event. The hard step is to reconstruct the hidden six-point interpolation constraint, prove that this collision is globally first, and then determine the local facet transition across it.