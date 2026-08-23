# Normalized Math Problem

## LaTeX (Normalized)

For each sufficiently large positive integer $n$, let $(\lambda_n,y_n)$ be the solution branch satisfying
$$
-y_n''(x)+\frac1n y_n(x)^2=\lambda_n y_n(x),
\qquad
0<x<1,
$$
$$
y_n(0)=y_n(1)=0,
\qquad
\int_0^1y_n(x)^2\,dx=2,
$$
and
$$
\lambda_n\to\pi^2,
\qquad
y_n\to2\sin(\pi x)
$$
in $C^1([0,1])$ as $n\to\infty$.

Determine the exact value of
$$
\lim_{n\to\infty}
n^2
\left[
\lambda_n-\pi^2-\frac{16}{3\pi n}
\right].
$$

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Differential Equations and Dynamical Systems |
| **Sub-domain** | Boundary value problems |
| **Problem Type** | Exact computation |
| **Answer Type** | Exact scalar |

---

## Domain Explanation

The parameter is selected by a nonlinear two-point boundary value problem together with a normalization constraint, so Differential Equations and Dynamical Systems and Boundary value problems is the best fit. The limit requires resolving a resonant perturbation of the first Dirichlet eigenfunction and applying a second solvability condition; the asymptotic limit is the requested output rather than the perturbation method itself.
