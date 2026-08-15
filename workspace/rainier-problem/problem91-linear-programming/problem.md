# Normalized Math Problem

## LaTeX (Normalized)

Fix
$$
-\frac{9}{10}<r<-\frac{3}{5}.
$$
For a real parameter $\lambda>-1$, consider the problem of maximizing
$$
\int_{-1}^{1}(1+\lambda x^2)P(x)\,dx
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

For each such $r$, there is a unique value $\Lambda(r)\in(-1,\frac{1}{2})$ for which this maximization problem has an optimizer $P$ such that, with
$$
S(x)=1-\bigl((1+r)+(1-r)x^2\bigr)P(x),
$$
one has
$$
S(1)=S'(1)=0.
$$

Determine the primitive irreducible polynomial $F(r,z)\in\mathbb Z[r,z]$ whose coefficient of $rz^3$ is positive and which satisfies
$$
F(r,\Lambda(r))=0
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

This problem is a parametric semi-infinite linear program over the three coefficients of an even quartic polynomial, with infinitely many pointwise linear constraints. The task is to identify the exact algebraic phase boundary where an optimizer acquires a double endpoint contact and to eliminate the hidden contact point. Polynomial elimination supports the final step, but the primary structure is parameter identification inside a linear optimization problem.
