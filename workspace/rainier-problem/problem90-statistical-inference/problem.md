# Normalized Math Problem

## LaTeX (Normalized)

For each parameter vector
$$
\theta=(\theta_1,\theta_2,\theta_3)\in(0,\infty)^3,
$$
let $X_1,X_2,X_3$ be independent with densities
$$
f_{\theta_i}(x)=\theta_i e^{-\theta_i x}\mathbf 1_{\{x\ge0\}},
\qquad i=1,2,3.
$$
The ordered triple $(X_1,X_2,X_3)$ is observed.

Set
$$
\ell_1=2\theta_1+\theta_3,
\qquad
\ell_2=\theta_1+2\theta_2,
\qquad
\ell_3=\theta_2+2\theta_3.
$$
For a real parameter $\lambda$, define
$$
\tau_\lambda(\theta)
=
1+
\frac{9\theta_1\theta_2\theta_3}{\ell_1\ell_2\ell_3}
-
\frac{9\lambda\theta_1\theta_2\theta_3}
{(\ell_1+1)^2(\ell_2+1)^2(\ell_3+1)^2}.
$$

Determine all $\lambda\in\mathbb R$ for which there exists a nonnegative Borel estimator
$$
T_\lambda=T_\lambda(X_1,X_2,X_3)
$$
such that, for every $\theta\in(0,\infty)^3$,
$$
\mathbb E_\theta[T_\lambda]=\tau_\lambda(\theta),
\qquad
\mathbb E_\theta[T_\lambda^2]<\infty.
$$

For every admissible $\lambda$, prove that the estimator is unique up to almost-sure equality under every parameter value and identify an explicit Borel version of it.

For admissible $\lambda$, define
$$
\mathcal Q_\lambda
=
\left\{
q>0:
\mathbb E_\theta[T_\lambda^{-q}]<\infty
\text{ for every }\theta\in(0,\infty)^3
\right\},
$$
with the convention $0^{-q}=+\infty$. Determine $\mathcal Q_\lambda$ exactly, including every endpoint.

Give a rigorous, self-contained derivation. If injectivity of a one- or multi-dimensional Laplace transform is used, prove the precise fact needed here rather than citing it as a black box. Numerical experimentation, computer algebra, code, and external sources may not replace any part of the proof.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Probability and Statistics |
| **Sub-domain** | Statistical inference |
| **Problem Type** | Exact parameter classification |
| **Answer Type** | Parameter range and reciprocal-moment index |

---

## Domain Explanation

The problem asks for exact unbiased estimation in a three-parameter exponential family. The rational target encodes a nontrivial multivariate Laplace inversion whose inverse has a geometric support constraint; nonnegativity then imposes a sharp parameter threshold, while the boundary case creates an isolated quadratic zero that changes the reciprocal-moment range. The required output is an exact parameter classification together with the critical negative-moment behavior of the unique estimator.