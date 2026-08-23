# Normalized Math Problem

## LaTeX (Normalized)

Put
$$
\ell=\log2,
\qquad
\kappa=\frac{\pi^2}{12\ell}-\frac{\ell}{2},
$$
and
$$
\eta=
\frac{4\ell^4-24\ell^3+78\ell^2-3\pi^2}{32\ell^3}.
$$
For $a>0$ and each positive integer $n$, define
$$
Q_n(a)=
\prod_{k=1}^{n}
\left(1-e^{-ak/n}\right).
$$
For all sufficiently large $n$, let $a_n\in(\ell/2,\ell)$ be the unique solution of
$$
\log Q_n(a_n)-\kappa n\log a_n
=
-n\left(
\frac{\pi^2}{12\ell}
+\frac{\ell}{2}
+\kappa\log\ell
\right)
+\frac12\log\frac{\pi n}{\ell}
+\frac{\eta}{n}.
$$
Determine the exact value of
$$
\lim_{n\to\infty}
n^2
\left(
a_n-\ell+\frac{3}{2n}
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

The requested object is a second-order limit of roots of finite-product equations, so Calculus and Limits and continuity is the best fit. The product has a logarithmic endpoint singularity, and its limiting exponent is stationary at the target point. Resolving the root requires both the singular finite-product expansion and the local degenerate implicit equation.
