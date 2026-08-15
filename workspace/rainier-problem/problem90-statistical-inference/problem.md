# Normalized Math Problem

## LaTeX (Normalized)

For each parameter vector
$$
\theta=(\theta_1,\theta_2)\in\mathbb R^2,
$$
let $W_1,W_2$ be independent random variables taking values in $[0,2\pi)$ with densities
$$
p_{\theta_i}(w)
=
\frac{3}{2\pi\bigl(5-4\cos(w-\theta_i)\bigr)},
\qquad 0\le w<2\pi,
\qquad i=1,2.
$$
The statistician observes the ordered pair $(W_1,W_2)$.

For $t\in\mathbb R$, define
$$
R_0(t)=\frac{5}{17-8\cos t},
$$
$$
R_1(t)=\frac{1-R_0(t)}8,
\qquad
R_2(t)=\frac{3-2\cos t+R_0(t)}{64},
$$
and
$$
R_3(t)=\frac{21-14\cos t+2\cos(2t)-R_0(t)}{512}.
$$

For a real parameter $\lambda$, set
$$
\begin{aligned}
\tau_\lambda(\theta_1,\theta_2)
={}&R_0(\theta_1)R_0(\theta_2)
+\frac18R_3(\theta_1)R_0(\theta_2)
+R_0(\theta_1)R_3(\theta_2)
+\frac32R_1(\theta_1)R_1(\theta_2)\\
&-\lambda\Bigg[
\left(\frac12R_1(\theta_1)+\frac14R_2(\theta_1)\right)R_0(\theta_2)
+R_0(\theta_1)\bigl(R_1(\theta_2)+R_2(\theta_2)\bigr)\\
&\hspace{28mm}
+\frac14R_2(\theta_1)R_1(\theta_2)
+\frac12R_1(\theta_1)R_2(\theta_2)
\Bigg].
\end{aligned}
$$

Determine all $\lambda\in\mathbb R$ for which there exists a nonnegative Borel function
$$
T_\lambda=T_\lambda(W_1,W_2)
$$
such that, for every $\theta\in\mathbb R^2$,
$$
\mathbb E_\theta[T_\lambda]=\tau_\lambda(\theta_1,\theta_2),
\qquad
\mathbb E_\theta[T_\lambda^2]<\infty.
$$

For every admissible $\lambda$, prove that the estimator is unique up to almost-sure equality under every parameter value and derive an explicit closed-form Borel formula for $T_\lambda(w_1,w_2)$.

Let $\Lambda$ be the largest admissible value and let $T_*=T_\Lambda$. Determine the exact number $q_*>0$ such that
$$
\mathbb E_\theta[T_*^{-q}]<\infty
\text{ for every }\theta\in\mathbb R^2
\quad\Longleftrightarrow\quad
0<q<q_*.
$$
Use the convention $0^{-q}=+\infty$, and decide the endpoint.

Give a rigorous, self-contained derivation. Any one- or two-dimensional Fourier-series or Poisson-kernel identity used to recover the estimator or prove uniqueness must be justified for the stated integrability class. Any sharp inequality used to prove global nonnegativity must be proved in the precise form needed here rather than cited as a black box. Numerical experimentation, computer algebra, code, and external sources may not replace any part of the proof.

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

The problem is an exact unbiased-estimation question in a two-parameter circular location family. The rational response functions have infinite harmonic support, so uniqueness and recovery require a genuinely two-dimensional deconvolution rather than finite coefficient matching. After recovery, the sharp parameter boundary is controlled by a coupled two-variable positivity problem, and the endpoint reciprocal-moment threshold depends on the local geometry of the critical zero.