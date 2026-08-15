# Normalized Math Problem

## LaTeX (Normalized)

For each real parameter $\theta$, let $W$ take values in $[0,2\pi)$ with density
$$
p_\theta(w)
=
\frac{3}{2\pi\bigl(5-4\cos(w-\theta)\bigr)},
\qquad 0\le w<2\pi.
$$
The statistician observes $W$.

For a real parameter $\lambda$, define
$$
\tau_\lambda(\theta)
=
4-\lambda
-4\cos\theta
+\cos(2\theta)
+3\log\!\left(\frac{17-8\cos\theta}{4}\right)
+\frac{5}{17-8\cos\theta}.
$$

Determine all $\lambda\in\mathbb R$ for which there exists a nonnegative Borel function
$$
T_\lambda=T_\lambda(W)
$$
such that, for every $\theta\in\mathbb R$,
$$
\mathbb E_\theta[T_\lambda(W)]=\tau_\lambda(\theta)
$$
and
$$
\mathbb E_\theta[T_\lambda(W)^2]<\infty.
$$

For every admissible $\lambda$, prove that the estimator is unique up to almost-sure equality under every parameter value and derive an explicit closed-form Borel formula for $T_\lambda(w)$.

Let $\Lambda$ be the largest admissible value and let $T_*=T_\Lambda$. Determine the exact number $q_*>0$ such that
$$
\mathbb E_\theta[T_*^{-q}]<\infty
\text{ for every }\theta\in\mathbb R
\quad\Longleftrightarrow\quad
0<q<q_*.
$$
Use the convention $0^{-q}=+\infty$, and decide the endpoint.

Give a rigorous, self-contained derivation. Any Fourier-series or Poisson-kernel identity used to recover the estimator or prove uniqueness must be justified for the stated integrability class. Every global nonnegativity claim for the recovered estimator must be proved exactly. Numerical experimentation, computer algebra, code, and external sources may not replace any part of the proof.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Probability and Statistics |
| **Sub-domain** | Statistical inference |
| **Problem Type** | Exact parameter classification |
| **Answer Type** | Parameter ray and critical reciprocal-moment exponent |

---

## Domain Explanation

The problem is an exact unbiased-estimation question in a circular location family. Unlike a finite trigonometric target, the logarithmic and rational terms have infinite harmonic support, so unbiasedness requires an exact infinite-spectrum deconvolution rather than matching finitely many Fourier coefficients. After the estimator is recovered, the sharp admissible boundary is encoded by a hidden one-variable positivity certificate with high-order cancellation at its unique zero; the reciprocal-moment threshold depends on that multiplicity.