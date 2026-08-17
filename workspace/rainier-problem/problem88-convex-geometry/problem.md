# Normalized Math Problem

## LaTeX (Normalized)

Let $m\geq8$ be an integer, put
$$
\lambda=m(m+1),
\qquad
c=\lambda+\frac12-\lambda^2,
$$
and let
$$
X_m=\{-m,-m+1,\ldots,m+5\}.
$$

For a polynomial $f$, write
$$
\Delta f(x)=f(x+1)-f(x).
$$
For $\alpha>0$ and $s\geq0$, let $H_{\alpha,s}^{(m)}(x)$ be the unique real polynomial of degree at most $10$ satisfying
$$
H_{\alpha,s}^{(m)}(0)
=
H_{\alpha,s}^{(m)}(1)
=
H_{\alpha,s}^{(m)}(2)
=
H_{\alpha,s}^{(m)}(3)
=
0
$$
and
$$
\frac{\Delta^4H_{\alpha,s}^{(m)}(x)}{24}
=
1-s\left(
-x^4+(2\lambda-1)x^2+(\alpha-1)x+c
\right)
$$
$$
\qquad
+s^2\left(
x^6-\alpha x^5-2\lambda x^4+(2\lambda\alpha+1)x^3
-(\alpha+c)x^2+\alpha cx
\right).
$$

For $\xi\in X_m$, define
$$
P_\xi^{(\alpha)}(s)
=
\left(
\xi,\xi^2,\xi^3,H_{\alpha,s}^{(m)}(\xi)
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

For each $\alpha>0$, define
$$
s_\alpha^{(m)}
=
\inf\{s>0:K_\alpha^{(m)}(s)\text{ is not simplicial}\}.
$$

Prove that the set of $\alpha>0$ for which
$K_\alpha^{(m)}(s_\alpha^{(m)})$ has a facet with exactly six vertices is nonempty and has a least element. Denote that least element by $\alpha_m$.

Prove that at $s=s_{\alpha_m}^{(m)}$ the six-vertex facet is unique and every other facet has exactly four vertices. Let $C_m\subset X_m$ be the set of first coordinates of its six vertices.

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

The problem asks for the first parameter at which a family of lifted moment-curve configurations develops a unique six-vertex supporting facet. The decisive structure is hidden in the fourth finite difference of the lifting polynomial: its wall equation splits into two competing discrete envelopes, one with a fixed nonlocal maximizer and one whose maximizer moves with the parameter. The first six-vertex event occurs only after the moving envelope overtakes the fixed obstruction at an adjacent double maximum.
