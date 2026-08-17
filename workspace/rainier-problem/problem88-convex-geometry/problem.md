# Normalized Math Problem

## LaTeX (Normalized)

Let $m\geq8$ be an integer and put
$$
X_m=\{-m,-m+1,\ldots,-1,1,\ldots,m-1,m\}.
$$
For
$$
\frac{1}{10}<\alpha<\frac{2}{5},
\qquad
s\geq0,
$$
and $\xi\in X_m$, define
$$
P_\xi^{(\alpha)}(s)
=
\left(
\xi,\xi^2,\xi^3,
\xi^8+s\xi^5\left(-14\alpha\xi^2-14\xi-70\alpha^2+269\alpha-9\right)
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

For each $\alpha\in(1/10,2/5)$ define
$$
s_\alpha^{(m)}
=
\inf\{s>0:K_\alpha^{(m)}(s)\text{ is not simplicial}\}.
$$

Prove that for every $m\geq8$ there is a unique
$$
\alpha_m\in\left(\frac{1}{10},\frac{2}{5}\right)
$$
for which $K_{\alpha_m}^{(m)}(s_{\alpha_m}^{(m)})$ has a facet with exactly six vertices. Prove that this six-vertex facet is unique and every other facet at that time has exactly four vertices. Let $C_m\subset X_m$ be the set of first coordinates of its six vertices.

Finally, prove that for every sufficiently small $\varepsilon>0$, the number of tetrahedral facets of $K_{\alpha_m}^{(m)}(s_{\alpha_m}^{(m)}-\varepsilon)$ whose first coordinates all lie in $C_m$ is $6$, whereas the corresponding number for $K_{\alpha_m}^{(m)}(s_{\alpha_m}^{(m)}+\varepsilon)$ is $3$.

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

The problem asks for the unique parameter at which the first wall in a large family of moment-curve liftings is a simultaneous two-circuit collapse. The local six-point coplanarity equations admit competing candidates, while a uniform analysis over arbitrarily many ordinary windows and a separate preemption argument are required to identify which candidate is genuinely first. The local circuit change then determines the two tetrahedral facet counts.
