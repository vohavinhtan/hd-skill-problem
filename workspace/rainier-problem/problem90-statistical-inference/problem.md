# Normalized Math Problem

## LaTeX (Normalized)

For each real parameter $\theta$, let $W$ be a random variable taking values in $[0,2\pi)$ with density
$$
p_\theta(w)
=
\frac{27}{10\pi\bigl(5-4\cos(w-\theta)\bigr)^2},
\qquad 0\le w<2\pi.
$$
The statistician observes $W$.

For a real parameter $\lambda$, define
$$
\begin{aligned}
\tau_\lambda(\theta)
={}&101-\lambda
+80\bigl(\cos\theta-\sin\theta\bigr)
+11\cos(2\theta)-44\sin(2\theta)\\
&-7\bigl(\cos(3\theta)+\sin(3\theta)\bigr).
\end{aligned}
$$

Determine all $\lambda\in\mathbb R$ for which there exists a nonnegative Borel function
$$
T_\lambda=T_\lambda(W)
$$
satisfying, for every $\theta\in\mathbb R$,
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

Give a rigorous, self-contained derivation. In particular, any Fourier-series identity used to prove uniqueness or to recover the estimator must be justified for the stated integrability class, and every global nonnegativity claim for the recovered estimator must be proved exactly. Numerical experimentation, computer algebra, code, and external sources may not replace any part of the proof.

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

The problem is an exact unbiased-estimation question in a circular location family. The observation kernel has a nontrivial but explicitly recoverable harmonic multiplier sequence, so unbiasedness becomes a deconvolution problem rather than a finite moment-matching problem. After the estimator is forced, the sharp admissible parameter boundary is controlled by a hidden nonnegative trigonometric factorization, while the reciprocal-moment threshold is determined by the multiplicity of the critical estimator's isolated zero on the circle.