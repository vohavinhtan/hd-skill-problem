# Normalized Math Problem

## LaTeX (Normalized)

For each positive integer $n$, let $\lambda_n,\mu_n\in\mathbb R$ be the unique pair satisfying
$$
\int_0^1
\left(x-\frac12\right)
\exp\!\left(
-nx^4\left(x-\frac12\right)^2(1-x)^6
+\lambda_nx+\mu_nx^2
\right)\,dx=0
$$
and
$$
\int_0^1
\left(x^2-\frac{5}{12}\right)
\exp\!\left(
-nx^4\left(x-\frac12\right)^2(1-x)^6
+\lambda_nx+\mu_nx^2
\right)\,dx=0.
$$
Let
$$
G=\Gamma\!\left(\frac14\right).
$$
Determine the exact value of
$$
\lim_{n\to\infty}
n^{1/6}
\left[
2\lambda_n+\mu_n-\log n
+4\log\left(\frac{64\sqrt{2\pi}}{G}\right)
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

This problem involves two implicitly coupled parameters, three concentration scales, and extraction of a correction to their logarithmic asymptotics, which are part of Calculus and Limits and continuity. The solution also uses local integral asymptotics and gamma-function moments, which are part of Calculus and Integration. The requested combination cannot be obtained from any one concentration point alone because its first correction is forced by the moment constraints through the displacement of a different concentration point.
