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
\exp\!\left(a\mu+c\mu^2+e\delta^2\right)
\cosh\!\left(b\delta+d\mu\delta\right).
$$
Equivalently,
$$
\tau_{a,b,c,d,e}
=
\frac12\exp\!\left(a\mu+b\delta+c\mu^2+d\mu\delta+e\delta^2\right)
+
\frac12\exp\!\left(a\mu-b\delta+c\mu^2-d\mu\delta+e\delta^2\right).
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

For every admissible quintuple, determine the unique estimator explicitly as a symmetric function of the two observed numerical values.

A complete answer must satisfy all of the following.

1. The admissible set must be given as a finite union of cases described directly by algebraic equalities and strict inequalities in $a,b,c,d,e$. A characterization only in terms of auxiliary matrices, eigenvalues, determinants left unevaluated, or an unspecified positive-definiteness condition is not sufficient.

2. All degenerate and boundary cases must be resolved, including the cases in which the two exponential-quadratic branches coincide, have the same covariance but different means, or are exchanged by the symmetry $(x,y)\mapsto(y,x)$ rather than fixed individually.

3. The second-moment condition must be proved for the full estimator, not merely for the two branches separately. In particular, if the square of the estimator produces a mixed cross-term between the two branches, its integrability must be checked explicitly and cannot be discarded by appealing only to the two diagonal terms.

4. The derivation must be self-contained. If completeness of a Gaussian location family, uniqueness of a Laplace/Fourier transform, or identifiability of a finite Gaussian mixture is used, the needed statement must be proved in the present two-dimensional setting rather than cited as a black box.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Probability and Statistics |
| **Sub-domain** | Statistical inference |
| **Problem Type** | Parameter identification |
| **Answer Type** | Finite semialgebraic case classification plus explicit estimator |

---

## Domain Explanation

The problem concerns unbiased estimation from a heteroscedastic Gaussian experiment after the labels of the two observations are erased. The target is now a two-branch exponential-quadratic mixture. Under Gaussian tilting, the two branches generally produce two different Gaussian components, so existence and uniqueness require more than the single-matrix calculation of the one-branch problem. One must control identifiability of the induced Gaussian mixture, determine whether the unordered-data symmetry fixes the components or exchanges them, and impose the sharp global $L^2$ condition including the cross-term between components. These are statistical-inference questions, and the requested output is an exact finite semialgebraic classification together with the unique estimator in each admissible case.
