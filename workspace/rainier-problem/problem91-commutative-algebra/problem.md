# Normalized Math Problem

## LaTeX (Normalized)

Let $p\geq5$ be a prime, let
$$
S=\mathbb F_p[x,y]
$$
with the standard grading, and set
$$
I_p=\left(x^{p+2},y^{p+2},(x+y)^{p+1},(x+2y)^{p+1}\right).
$$
Write
$$
A_p=S/I_p,
\qquad
\mathfrak m=(x,y)A_p,
$$
and let
$$
\operatorname{Soc}(A_p)=\{a\in A_p:\mathfrak m a=0\}.
$$

Determine the graded socle polynomial
$$
\Sigma_p(t)=\sum_{d\geq0}\dim_{\mathbb F_p}\!\left(\operatorname{Soc}(A_p)_d\right)t^d
$$
for every prime $p\geq5$.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Abstract Algebra |
| **Sub-domain** | Commutative algebra |
| **Problem Type** | Exact computation |
| **Answer Type** | Polynomial or rational function |

---

## Domain Explanation

This problem concerns the graded socle of an Artinian quotient of a polynomial ring in positive characteristic. The key structure comes from characteristic-$p$ cancellations among the two powers of linear forms and from the resulting boundary behavior of the homogeneous ideal, so the primary subject is commutative algebra rather than finite-field computation alone.
