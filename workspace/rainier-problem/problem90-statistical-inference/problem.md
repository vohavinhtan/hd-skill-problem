# Normalized Math Problem

## LaTeX (Normalized)

For each parameter vector
$$
\mu=(\mu_1,\mu_2)\in\mathbb R^2,
$$
let
$$
X_1\sim N(\mu_1,1),
\qquad
X_2\sim N(\mu_2,1)
$$
be independent, and observe the ordered pair $(X_1,X_2)$.

Set
$$
s=\mu_1^2+\mu_2^2,
\qquad
p=\mu_1^2\mu_2^2.
$$
For a real parameter $\lambda$, define
$$
\begin{aligned}
\tau_\lambda(\mu)
={}&s^4+20s^3+(158-6\lambda)s^2+(44-8\lambda)sp+(6-\lambda)p^2\\
&+(476-48\lambda)s+(272-52\lambda)p+289-36\lambda.
\end{aligned}
$$

Let $\Lambda$ be the supremum of all real $\lambda$ for which there exists a nonnegative Borel estimator
$$
T_\lambda=T_\lambda(X_1,X_2)
$$
satisfying, for every $\mu\in\mathbb R^2$,
$$
\mathbb E_\mu[T_\lambda]=\tau_\lambda(\mu),
\qquad
\mathbb E_\mu[T_\lambda^2]<\infty.
$$

Prove that the supremum $\Lambda$ is attained and that at $\lambda=\Lambda$ the estimator is unique up to almost-sure equality under every parameter value. Denote this critical estimator by $T_*$. In the proof, derive an explicit Borel formula for $T_*(x_1,x_2)$.

Determine the ordered pair
$$
(\Lambda,q_*),
$$
where $q_*>0$ is characterized by
$$
\mathbb E_\mu[T_*^{-q}]<\infty
\text{ for every }\mu\in\mathbb R^2
\quad\Longleftrightarrow\quad
0<q<q_*.
$$
Use the convention $0^{-q}=+\infty$.

Give a rigorous, self-contained derivation. If completeness of the Gaussian location family, uniqueness of a Fourier transform, or an equivalent transform statement is used, prove the precise fact needed here rather than citing it as a black box. Numerical experimentation, computer algebra, code, and external sources may not replace any part of the proof.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Probability and Statistics |
| **Sub-domain** | Statistical inference |
| **Problem Type** | Exact parameter classification |
| **Answer Type** | Ordered pair of sharp constants |

---

## Domain Explanation

The problem asks for exact unbiased estimation in a two-parameter Gaussian location family under a global nonnegativity constraint. Recovering the unique estimator from the target polynomial is only the first step: the sharp parameter boundary is encoded by a hidden polynomial positivity certificate, and the critical reciprocal-moment exponent is determined by the anisotropic local vanishing of the boundary estimator. The requested final object is the ordered pair of the two sharp constants.