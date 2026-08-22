# Normalized Math Problem

## LaTeX (Normalized)

For each positive integer $n$ and $k\in\{0,2,3,4\}$, define
$$
I_k(n)=\int_0^1 x^k
\exp\!\left(-n x^4(1-x)^2\right)\,dx.
$$
Set
$$
H_n=
\frac{I_2(n)I_4(n)-I_3(n)^2}{I_0(n)^2}.
$$
Define
$$
K_n=
\det\left(H_{16^{i+j}n}\right)_{0\leq i,j\leq2}.
$$
Let
$$
G=\Gamma\!\left(\frac14\right).
$$
Determine the exact value of
$$
\lim_{n\to\infty}n^3K_n.
$$

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Calculus |
| **Sub-domain** | Limits and continuity |
| **Problem Type** | Exact computation |
| **Answer Type** | Exact scalar |

---

## Domain Explanation

This problem involves competing endpoint scales, nested asymptotic cancellation, and a dilation determinant whose first surviving term must be identified, which are part of Calculus and Limits and continuity. The problem also involves Laplace-type integral expansions and gamma-function evaluations, which are part of Calculus and Integration. However, those integral calculations supply coefficients for the dilation determinant, while the requested object is a single exact limit.
