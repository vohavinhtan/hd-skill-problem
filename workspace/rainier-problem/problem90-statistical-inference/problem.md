# Normalized Math Problem

## LaTeX (Normalized)

For each parameter pair $(\mu,\delta)\in\mathbb R^2$, let
$$
X_+\sim N(\mu+\delta,1),
\qquad
X_-\sim N(\mu-\delta,4)
$$
be independent. The statistician observes only the unordered multiset
$$
\mathcal X=\{\!\{X_+,X_-\}\!\};
$$
the labels $+$ and $-$ are not observed.

For a fixed quintuple $(a,b,c,d,e)\in\mathbb R^5$, define
$$
\tau_{a,b,c,d,e}(\mu,\delta)
=
\exp\!\left(
 a\mu+b\delta+c\mu^2+d\mu\delta+e\delta^2
\right).
$$

Identify all quintuples $(a,b,c,d,e)$ for which there exists exactly one nonnegative Borel estimator $T(\mathcal X)$, up to almost-sure equality under every parameter value, such that
$$
\mathbb E_{\mu,\delta}[T(\mathcal X)]
=
\tau_{a,b,c,d,e}(\mu,\delta)
$$
and
$$
\mathbb E_{\mu,\delta}[T(\mathcal X)^2]<\infty
$$
for every $(\mu,\delta)\in\mathbb R^2$.

For every admissible quintuple, also determine the unique estimator explicitly as a symmetric function of the two observed numerical values.

A complete answer must give the admissible set directly by algebraic equalities and strict inequalities in $a,b,c,d,e$; a characterization only in terms of an auxiliary matrix, its eigenvalues, or an unspecified positive-definiteness condition is not sufficient. All boundary cases must be resolved.

The derivation must be self-contained. In particular, if completeness of a Gaussian location family, injectivity of Gaussian convolution, a Hermite expansion, or an equivalent transform argument is used to prove uniqueness or nonexistence, the needed statement must be proved in this setting rather than cited as a black box.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Probability and Statistics |
| **Sub-domain** | Statistical inference |
| **Problem Type** | Parameter identification |
| **Answer Type** | Semialgebraic region plus explicit estimator |

---

## Domain Explanation

The problem asks which exponential-quadratic functionals of a two-parameter heteroscedastic Gaussian model remain unbiasedly estimable after the labels of the two observations are erased, under nonnegativity and global second-moment constraints. The unequal variances couple the sum and difference coordinates and destroy the simple sign symmetry of the homoscedastic case. Determining the exact feasible set therefore requires simultaneous control of identifiability from unlabeled data, uniqueness in the underlying Gaussian location experiment, symmetry of the unique labeled estimator, and the sharp $L^2$ boundary. These are statistical-inference questions, and the requested output is an exact semialgebraic classification together with the estimator itself.
