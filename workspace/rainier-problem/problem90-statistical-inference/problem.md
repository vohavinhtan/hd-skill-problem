# Normalized Math Problem

## LaTeX (Normalized)

For each parameter pair $(\mu,\delta)\in\mathbb R^2$, let
$$
X_+\sim N(\mu+\delta,1),
\qquad
X_-\sim N(\mu-\delta,1)
$$
be independent. The statistician observes only the unordered multiset
$$
\mathcal X=\{\!\{X_+,X_-\}\!\};
$$
the labels $+$ and $-$ are not observed.

For a fixed triple $(a,b,c)\in\mathbb R^3$, define
$$
\tau_{a,b,c}(\mu,\delta)
=
\exp\!\left(a\mu+b\delta+c\delta^2\right).
$$

Identify all triples $(a,b,c)$ for which there exists exactly one nonnegative
Borel estimator $T(\mathcal X)$, up to almost-sure equality under every
parameter value, such that
$$
\mathbb E_{\mu,\delta}[T(\mathcal X)]
=
\tau_{a,b,c}(\mu,\delta)
$$
and
$$
\mathbb E_{\mu,\delta}[T(\mathcal X)^2]<\infty
$$
for every $(\mu,\delta)\in\mathbb R^2$.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Probability and Statistics |
| **Sub-domain** | Statistical inference |
| **Problem Type** | Parameter identification |
| **Answer Type** | Interval or region description |

---

## Domain Explanation

The problem asks which parameterized functionals are estimable from an
unlabeled Gaussian experiment under nonnegativity and uniform second-moment
constraints. Its central issues are statistical identifiability, unbiased
estimability, and uniqueness of an estimator, so Statistical inference is the
most appropriate sub-domain. The requested output is an exact feasible region
in the parameter space $(a,b,c)$.
