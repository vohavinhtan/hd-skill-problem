# Normalized Math Problem

## LaTeX (Normalized)

For each real parameter $\lambda>-1$, let $V(\lambda)$ be the supremum of
$$
\int_{-1}^{1}(1+\lambda x^2)P(x)\,dx
$$
over all even real polynomials $P$ of degree at most $4$ satisfying
$$
(2-x^2)P(x)\leq1
$$
and
$$
(1+x^2)P(x)\leq1
$$
for every $x\in[-1,1]$.

Determine $V(\lambda)$ exactly for all $\lambda>-1$.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Optimization and Numerical Mathematics |
| **Sub-domain** | Linear programming |
| **Problem Type** | Optimization |
| **Answer Type** | Function or mapping |

---

## Domain Explanation

This problem is a semi-infinite linear program whose decision variables are the three coefficients of an even quartic polynomial and whose pointwise bounds give infinitely many linear constraints. The parameter enters only through the linear objective, so the task is to identify the active constraints and determine the exact optimal-value function. Polynomial approximation and quadrature ideas support the derivation, but the primary mathematical structure is linear optimization over a fixed feasible coefficient set.
