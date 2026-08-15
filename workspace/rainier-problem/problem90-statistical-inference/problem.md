# Normalized Math Problem

## LaTeX (Normalized)

Let
$$
v_1=1,\qquad v_2=4,\qquad v_3=9.
$$
For every parameter vector
$$
\theta=(\theta_1,\theta_2,\theta_3)\in\mathbb R^3,
$$
let
$$
X_i\sim N(\theta_i,v_i),\qquad i=1,2,3,
$$
independently. The statistician observes only the unordered multiset
$$
\mathcal X=\{\!\{X_1,X_2,X_3\}\!\}.
$$

For nonnegative integers $r_1,r_2,r_3$, define
$$
H_{r_1,r_2,r_3}(\theta)
=
\sum_{
\substack{(k_1,k_2,k_3)\text{ a distinct permutation of }(r_1,r_2,r_3)}
}
\prod_{i=1}^3
\frac{1}{\sqrt{1-v_i/50}}
\exp\!\left(
\frac{\theta_i^2/100+k_i\theta_i+\frac12v_i k_i^2}
{1-v_i/50}
\right).
$$

For a real parameter $\lambda$, set
$$
\begin{aligned}
\tau_\lambda(\theta)
={}&H_{8,2,0}(\theta)-\lambda H_{6,4,0}(\theta)-2H_{8,1,1}(\theta)
+2\lambda H_{6,2,2}(\theta)\\
&+2H_{5,4,1}(\theta)-2\lambda H_{5,3,2}(\theta)
+2(\lambda-1)H_{5,5,0}(\theta)\\
&-2H_{4,4,2}(\theta)+2\lambda H_{4,3,3}(\theta).
\end{aligned}
$$

Determine all $\lambda\in\mathbb R$ for which there exists a nonnegative Borel estimator $T(\mathcal X)$ satisfying
$$
\mathbb E_\theta[T(\mathcal X)]=\tau_\lambda(\theta)
$$
and
$$
\mathbb E_\theta[T(\mathcal X)^2]<\infty
$$
for every $\theta\in\mathbb R^3$.

For every admissible $\lambda$, prove that the estimator is unique up to almost-sure equality under every parameter value and determine it explicitly as a symmetric function of the three observed numerical values.

Finally, for each admissible $\lambda$, determine the exact set of real $p>0$ for which
$$
\mathbb E_\theta[T(\mathcal X)^p]<\infty
$$
for every $\theta\in\mathbb R^3$. The endpoint case must be decided.

Give a rigorous, self-contained derivation. Numerical experimentation, computer algebra, code, and external sources may not replace any part of the proof.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Probability and Statistics |
| **Sub-domain** | Statistical inference |
| **Problem Type** | Exact parameter classification under unlabeled observation |
| **Answer Type** | Parameter range with explicit estimator and critical moment index |

---

## Domain Explanation

The problem is an exact unbiased-estimation question for a heteroscedastic Gaussian location family when all labels are erased. The target is a signed combination of Gaussian exponential moments, so existence of a nonnegative estimator depends on recovering and certifying a hidden symmetric structure rather than on a single Gaussian density-ratio calculation. The final moment question asks for the sharp global integrability threshold of that uniquely determined estimator.
