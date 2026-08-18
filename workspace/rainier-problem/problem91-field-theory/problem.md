# Normalized Math Problem

## LaTeX (Normalized)

Let $p\geq7$ be a prime and put
$$
n=\frac{p-1}{2}.
$$
Define polynomials $P_r(X)\in\mathbb F_p[X]$ by
$$
P_0(X)=2,\qquad P_1(X)=X,
$$
and
$$
P_{r+1}(X)=XP_r(X)-P_{r-1}(X)
$$
for $r\geq1$.

Let $t$ be transcendental over $\mathbb F_p$, and let $L_p$ be the splitting field over $\mathbb F_p(t)$ of
$$
F_p(X)=P_n(X)-2t^3.
$$

Determine the genus of the function field $L_p$.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Abstract Algebra |
| **Sub-domain** | Field theory |
| **Problem Type** | Exact computation |
| **Answer Type** | Exact scalar |

---

## Domain Explanation

The recurrence conceals a reciprocal parametrization of the roots. Reconstructing it produces a Kummer extension of a genus-two quadratic function field, but that Kummer field is larger than the requested splitting field. The genus is obtained only after identifying the splitting field as an involution-fixed subfield and determining the ramification of that quotient.
