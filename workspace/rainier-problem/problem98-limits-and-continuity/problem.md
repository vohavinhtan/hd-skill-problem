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
Let $\Gamma$ denote the gamma function. Determine the exact value of
$$
\lim_{n\to\infty}
n^{1/2}
\left[
n^{3/4}H_n
-\frac{2\sqrt2\,\pi^{3/2}}{\Gamma(\frac14)^3}
+\frac{12\sqrt2\,\pi^2}
{\Gamma(\frac14)^4n^{1/4}}
\right].
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

This problem involves a two-scale asymptotic limit and cancellation between competing endpoint contributions, which are part of Calculus and Limits and continuity. The problem also involves local changes of variables and exact gamma-function evaluation of improper integrals, which are part of Calculus and Integration. However, those integral evaluations supply coefficients in the asymptotic expansion, while the requested object is a single exact limit.
