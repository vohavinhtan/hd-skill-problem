# Normalized Math Problem

## LaTeX (Normalized)

Let
$$
R=\frac{\Gamma(\frac34)}{\Gamma(\frac14)}.
$$
For each positive integer $n$, let $\lambda_n,\mu_n\in\mathbb R$ be the unique pair satisfying
$$
\int_{-\infty}^{\infty}
x
\exp\!\left(
-nx^4(1+x+x^2)+\lambda_nx+\mu_nx^2
\right)\,dx=0
$$
and
$$
\int_{-\infty}^{\infty}
\left(x^2-Rn^{-1/2}\right)
\exp\!\left(
-nx^4(1+x+x^2)+\lambda_nx+\mu_nx^2
\right)\,dx=0.
$$
Determine the exact value of
$$
\lim_{n\to\infty}
n^{1/2}
\left[
\mu_n-
\frac{3R^2-1}{2(4R^2-1)}
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

The problem asks for a second-order limit of parameters defined implicitly by two integral constraints, so Calculus and Limits and continuity is the best fit. Its derivation also uses asymptotic integration and gamma-function moments, which relate to Integration, but those computations serve the extraction of the limiting coefficient rather than being the requested object.
