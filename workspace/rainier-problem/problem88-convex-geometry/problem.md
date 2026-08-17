# Normalized Math Problem

## LaTeX (Normalized)

Let
$$
X=\{-9,-3,-2,-1,1,2,3,9\}.
$$
For
$$
0<\alpha<\frac{19}{20},
\qquad
s\geq0,
$$
and $\xi\in X$, define
$$
P_\xi^{(\alpha)}(s)
=
\left(
\xi,\xi^2,\xi^3,
\xi^8-14\alpha s\xi^7-14s\xi^6+
(-70\alpha^2+269\alpha-9)s\xi^5
\right)
\in\mathbb R^4,
$$
and set
$$
K_\alpha(s)
=
\operatorname{conv}\{P_\xi^{(\alpha)}(s):\xi\in X\}.
$$

A hyperplane $H\subset\mathbb R^4$ is supporting for a convex set $K$ if $K$ is contained in one of the two closed half-spaces bounded by $H$ and $K\cap H\neq\varnothing$. A facet of $K_\alpha(s)$ is a set $K_\alpha(s)\cap H$ of affine dimension $3$ for some supporting hyperplane $H$. Call $K_\alpha(s)$ simplicial if every facet has exactly four vertices.

For each $\alpha\in(0,19/20)$ define
$$
s_\alpha
=
\inf\{s>0:K_\alpha(s)\text{ is not simplicial}\}.
$$

Prove that there is a unique
$$
\alpha_*\in\left(0,\frac{19}{20}\right)
$$
for which $K_{\alpha_*}(s_{\alpha_*})$ has a facet with exactly six vertices. Prove that this six-vertex facet is unique and every other facet of $K_{\alpha_*}(s_{\alpha_*})$ has exactly four vertices. Let $C\subset X$ be the set of first coordinates of the six vertices of this facet.

Finally, prove that for every sufficiently small $\varepsilon>0$, the number of tetrahedral facets of $K_{\alpha_*}(s_{\alpha_*}-\varepsilon)$ whose vertices all have first coordinates in $C$ is $6$, whereas the corresponding number for $K_{\alpha_*}(s_{\alpha_*}+\varepsilon)$ is $3$.

Determine exactly
$$
(C,\alpha_*).
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

The problem asks when a one-parameter lifting of eight points on the cubic moment curve first develops a unique six-vertex supporting facet. The difficult point is that the local six-point coplanarity equations have more than one admissible parameter value, and a separate first-wall comparison is needed to distinguish the genuine first facet from false coplanar candidates. The final local circuit change determines the two tetrahedral facet counts.
