# Normalized Math Problem

## LaTeX (Normalized)

For each positive integer $n$, let $\lambda_n$ be the unique real number satisfying
$$
\int_0^1
(2x-1)
\exp\!\left(
-nx^4(1-x)^2+\lambda_nx
\right)\,dx=0.
$$
Let $\mu_n$ be the probability measure on $[0,1]$ whose density is proportional to
$$
\exp\!\left(
-nx^4(1-x)^2+\lambda_nx
\right).
$$
If $X$ has law $\mu_n$, let
$$
C_n=
\operatorname{Cov}_{\mu_n}
\begin{pmatrix}
X\\
X^2\\
X^3
\end{pmatrix}.
$$
Set
$$
G=\Gamma\!\left(\frac14\right),
\qquad
R=\Gamma\!\left(\frac34\right).
$$
Determine the exact value of
$$
\lim_{n\to\infty}n^{3/2}\det C_n.
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

This problem involves an implicitly tuned parameter, two boundary layers with different scales, and a singular covariance limit, which are part of Calculus and Limits and continuity. The solution also uses asymptotic integral scaling and gamma-function moments, which are part of Calculus and Integration. The covariance determinant cannot be read from the separate moment limits because its limiting matrix has rank one; the first nonzero term appears only after resolving the two endpoint fluctuation scales.
