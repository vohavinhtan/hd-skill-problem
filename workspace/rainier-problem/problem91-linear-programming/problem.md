# Normalized Math Problem

## LaTeX (Normalized)

Fix
$$
-\frac{9}{10}<r<-\frac{3}{5}.
$$
For
$$
\frac{1}{7}<\lambda<\frac{2}{9},
$$
let $V_r(\lambda)$ be the maximum of
$$
\int_{-1}^{1}\left(3-7\lambda+7(5\lambda-1)x^2\right)P(x)\,dx
$$
over all even real polynomials $P$ of degree at most $4$ satisfying
$$
(2-x^2)P(x)\leq1
$$
and
$$
\bigl((1+r)+(1-r)x^2\bigr)P(x)\leq1
$$
for every $x\in[-1,1]$.

For each such $r$, the function $V_r$ is $C^1$ on $(\frac{1}{7},\frac{2}{9})$ and has a unique point $\Lambda(r)$ in this interval at which it is not twice differentiable. At this point the two one-sided second derivatives exist and are nonzero.

Determine the reduced rational function $R(z)\in\mathbb Q(z)$ such that
$$
\frac{V_r''(\Lambda(r)+)}{V_r''(\Lambda(r)-)}
=R(\Lambda(r))
$$
for every $r\in(-\frac{9}{10},-\frac{3}{5})$.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Optimization and Numerical Mathematics |
| **Sub-domain** | Linear programming |
| **Problem Type** | Parameter identification |
| **Answer Type** | Polynomial or rational function |

---

## Domain Explanation

This problem is a parametric semi-infinite linear program over the three coefficients of an even quartic polynomial. The requested rational function is determined by a hidden change in the active constraint geometry and by the one-sided sensitivity of the optimal value across that change; locating the transition alone is not sufficient. The primary structure is therefore parameter identification inside a linear optimization problem, with polynomial contact geometry and implicit differentiation providing the closure certificate.
