# Normalized Math Problem

## LaTeX (Normalized)

Let $m\geq8$ be an integer and put
$$
X_m=\{-m-2,-m-1,\ldots,m+1,m+2\}.
$$
For $\alpha>0$, $s\geq0$, and $\xi\in X_m$, define
$$
P_\xi^{(\alpha)}(s)
=
\left(
\xi,\xi^2,\xi^3,
\xi^4-s\left(
\frac{\alpha}{5}\xi^5+
\frac{2m+2}{15}\xi^6-
\frac{1}{70}\xi^8
\right)
\right)
\in\mathbb R^4,
$$
and set
$$
K_\alpha^{(m)}(s)
=
\operatorname{conv}\{P_\xi^{(\alpha)}(s):\xi\in X_m\}.
$$

A hyperplane $H\subset\mathbb R^4$ is supporting for a convex set $K$ if $K$ is contained in one of the two closed half-spaces bounded by $H$ and $K\cap H\neq\varnothing$. A facet of $K_\alpha^{(m)}(s)$ is a set $K_\alpha^{(m)}(s)\cap H$ of affine dimension $3$ for some supporting hyperplane $H$. Call $K_\alpha^{(m)}(s)$ simplicial if every facet has exactly four vertices.

For each $\alpha>0$ define
$$
s_\alpha^{(m)}
=
\inf\{s>0:K_\alpha^{(m)}(s)\text{ is not simplicial}\}.
$$

Prove that the set of positive $\alpha$ for which
$K_\alpha^{(m)}(s_\alpha^{(m)})$ has a facet with exactly six vertices has a least element. Denote it by $\alpha_m$.

Prove that at $s=s_{\alpha_m}^{(m)}$ this six-vertex facet is unique and every other facet has exactly four vertices. Let $C_m\subset X_m$ be the set of first coordinates of its six vertices.

Finally, prove that for every sufficiently small $\varepsilon>0$, the number of tetrahedral facets of
$K_{\alpha_m}^{(m)}(s_{\alpha_m}^{(m)}-\varepsilon)$ whose first coordinates all lie in $C_m$ is $6$, whereas the corresponding number for
$K_{\alpha_m}^{(m)}(s_{\alpha_m}^{(m)}+\varepsilon)$ is $3$.

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

The problem asks for the first parameter at which the lower envelope of many competing moment-curve circuit walls develops an adjacent double maximum. Finding the local coplanarity condition is not enough: one must first reconstruct the wall function for every consecutive five-window and then solve a discrete global optimization problem whose maximizing window depends on $m$. The resulting adjacent-wall collision produces the unique six-vertex facet and its local circuit flip.
