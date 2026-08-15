# Normalized Math Problem

## LaTeX (Normalized)

Let
$$
f(x)=(1,x,x^2,x^3,x^4)^T,
\qquad
c=(0,0,0,0,1)^T,
\qquad -1\le x\le1.
$$

An **approximate design** is a Borel probability measure $\xi$ on $[-1,1]$. Its information matrix is
$$
M(\xi)
=
\int_{-1}^{1}
\frac{f(x)f(x)^T}{(2+x)(3+x)}\,d\xi(x).
$$
Call $\xi$ nonsingular if $M(\xi)$ is positive definite, and for such a design set
$$
V(\xi)=c^TM(\xi)^{-1}c.
$$
Thus $V(\xi)$ is the variance factor for estimating the coefficient of $x^4$ in quartic polynomial regression with known error variance proportional to $(2+x)(3+x)$.

Define
$$
V_*=\inf\{V(\xi):\xi\text{ is a nonsingular approximate design on }[-1,1]\}.
$$

Prove that the infimum is attained by a unique design $\xi_*$. Let
$$
N=|\operatorname{supp}\xi_*|
$$
be the number of points in its support. Determine the exact ordered pair
$$
(V_*,N).
$$

Give a rigorous, self-contained derivation. In particular, if an optimal-design equivalence theorem, an Elfving-type theorem, or a Chebyshev alternation theorem is used, prove the precise form needed here rather than citing it as a black box. The proof must establish both attainment and uniqueness of the minimizing design, including the equality conditions in every sharp bound used. Numerical experimentation, computer algebra, code, and external sources may not replace any part of the proof.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Probability and Statistics |
| **Sub-domain** | Experimental design and causal inference |
| **Problem Type** | Optimization |
| **Answer Type** | Tuple or ordered list |

---

## Domain Explanation

This is an exact approximate-design optimization problem for a heteroscedastic quartic regression model. The criterion is the variance factor for estimating the highest-order regression coefficient, while attainment, uniqueness, and the support size of the optimal design are part of the required global analysis.