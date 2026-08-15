# Normalized Math Problem

## LaTeX (Normalized)

For each parameter vector
$$
\theta=(\theta_1,\theta_2,\theta_3)\in\mathbb R^3,
$$
let
$$
X_1\sim N(\theta_1,1),\qquad
X_2\sim N(\theta_2,4),\qquad
X_3\sim N(\theta_3,9)
$$
be independent. The statistician observes only the unordered multiset
$$
\mathcal X=\{\!\{X_1,X_2,X_3\}\!\};
$$
the labels $1,2,3$ are not observed.

For a fixed coefficient vector
$$
q=(a_1,a_2,a_3,c_1,c_2,c_3,d_{12},d_{13},d_{23})\in\mathbb R^9,
$$
define
$$
\tau_q(\theta)
=
\exp\!\Big(
 a_1\theta_1+a_2\theta_2+a_3\theta_3
 +c_1\theta_1^2+c_2\theta_2^2+c_3\theta_3^2
 +d_{12}\theta_1\theta_2
 +d_{13}\theta_1\theta_3
 +d_{23}\theta_2\theta_3
\Big).
$$

Identify all $q\in\mathbb R^9$ for which there exists exactly one nonnegative Borel estimator $T(\mathcal X)$, up to almost-sure equality under every $\theta\in\mathbb R^3$, such that
$$
\mathbb E_\theta[T(\mathcal X)]=\tau_q(\theta)
$$
and
$$
\mathbb E_\theta[T(\mathcal X)^2]<\infty
$$
for every $\theta\in\mathbb R^3$.

For every admissible $q$, determine the unique estimator explicitly as a symmetric function of the three observed numerical values.

In addition, among the $L^2$-admissible coefficient vectors, determine exactly which ones satisfy the stronger condition
$$
\mathbb E_\theta[T(\mathcal X)^3]<\infty
\qquad\text{for every }\theta\in\mathbb R^3.
$$

A complete answer must satisfy all of the following requirements.

1. The $L^2$-admissible set must be given directly in the nine scalar coefficients
$$
a_1,a_2,a_3,c_1,c_2,c_3,d_{12},d_{13},d_{23}
$$
by explicit polynomial equalities and strict polynomial inequalities. A characterization only through an auxiliary covariance or precision matrix, its eigenvalues, principal minors left unevaluated, or an unspecified positive-definiteness condition is not sufficient.

2. The $L^3$ subregion must likewise be given explicitly in the original nine scalar coefficients. It is not sufficient to say that the same matrix inequality holds with a different numerical factor.

3. Every equality forced by invariance under the full permutation group $S_3$ must be derived. In particular, it is not enough to impose invariance under a single transposition and assert that the remaining permutations follow automatically.

4. All boundary and degenerate cases must be resolved, including singular Gaussian tilts, semidefinite $L^2$ or $L^3$ boundary forms, and cases in which some but not all off-diagonal coefficients vanish.

5. The derivation must be self-contained. If completeness of the three-dimensional Gaussian location family, injectivity of Gaussian convolution, uniqueness of a Fourier/Laplace transform, or any equivalent transform statement is used, the precise fact needed here must be proved in this setting rather than cited as a black box.

6. The final estimator must be written as an explicit symmetric formula in the three observed values $x,y,z$. Introducing unnamed constants defined only implicitly by solving a matrix equation is not sufficient.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Probability and Statistics |
| **Sub-domain** | Statistical inference |
| **Problem Type** | Exact parameter classification under unlabeled observation |
| **Answer Type** | Semialgebraic classification, explicit estimator, and moment stratification |

---

## Domain Explanation

The problem asks which exponential-quadratic functionals of a full three-dimensional Gaussian location family remain unbiasedly estimable after all three labels are erased. Because the three known variances are distinct, permutation-invariance of the estimator is not inherited by the labeled Gaussian likelihood and therefore imposes nonlinear algebraic constraints on the target coefficients. The exact answer requires combining Gaussian transform inversion, full $S_3$ symmetry, uniqueness, and sharp $L^2$ and $L^3$ integrability boundaries. The requested output is an explicit semialgebraic classification in the original nine coefficients together with the unique symmetric estimator.
