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
\frac{I_2(n)I_4(n)-I_3(n)^2}{I_0(n)^2}
$$
and
$$
K_n=H_nH_{256n}-H_{16n}^2.
$$
Let
$$
G=\Gamma\!\left(\frac14\right).
$$
Determine the exact value of
$$
\lim_{n\to\infty}
n^{15/4}
\left(
K_nK_{256n}-K_{16n}^2
\right).
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

This problem involves competing endpoint scales, repeated asymptotic cancellation, and a nested dilation limit, which are part of Calculus and Limits and continuity. The problem also involves Laplace-type endpoint expansions and gamma-function integrals, which are part of Calculus and Integration. However, those integral calculations supply coefficients for the nested cancellation, while the requested object is a single exact limit.
