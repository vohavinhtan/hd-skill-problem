# Normalized Math Problem

## LaTeX (Normalized)

Let
$$
\mathcal P=\left\{(p_1,p_2,p_3)\in(0,1)^3:p_1+p_2+p_3=1\right\}.
$$
For each $p=(p_1,p_2,p_3)\in\mathcal P$, let
$$
X=(X_1,X_2,X_3)
$$
take values in the open simplex
$$
\Delta=\left\{(x_1,x_2,x_3)\in(0,1)^3:x_1+x_2+x_3=1\right\}
$$
with density, with respect to $dx_1\,dx_2$ after setting $x_3=1-x_1-x_2$,
$$
f_p(x_1,x_2)
=
\frac{120}{\Gamma(1+3p_1)\Gamma(1+3p_2)\Gamma(1+3p_3)}
\prod_{i=1}^3 x_i^{3p_i}.
$$
The statistician observes $X$.

Set
$$
q=p_1p_2+p_2p_3+p_3p_1,
\qquad
r=p_1p_2p_3,
$$
and define
$$
G(q,r)
=
184-348q+486q^2-972q^3-2970r+6561qr-6561r^2.
$$
For a real parameter $\lambda$, let
$$
\tau_\lambda(p)
=
\frac{G(q,r)}{110880}
+\frac{5-9q}{21}(1-\lambda).
$$

Determine all $\lambda\in\mathbb R$ for which there exists a nonnegative Borel function
$$
T_\lambda=T_\lambda(X)
$$
such that, for every $p\in\mathcal P$,
$$
\mathbb E_p[T_\lambda]=\tau_\lambda(p),
\qquad
\mathbb E_p[T_\lambda^2]<\infty.
$$

For every admissible $\lambda$, prove uniqueness up to almost-sure equality under every $p\in\mathcal P$ and derive an explicit closed-form Borel formula for $T_\lambda(x_1,x_2,x_3)$.

Let $\Lambda$ be the largest admissible value and let $T_*=T_\Lambda$. Determine the exact number $q_*>0$ such that
$$
\mathbb E_p[T_*^{-q}]<\infty
\text{ for every }p\in\mathcal P
\quad\Longleftrightarrow\quad
0<q<q_*.
$$
Use the convention $0^{-q}=+\infty$, and decide the endpoint.

Give a rigorous, self-contained derivation. In particular, any completeness or transform argument for this fixed-concentration Dirichlet family must be justified for the stated integrability class rather than cited as a black box. Any algebraic identity used to prove global nonnegativity must be derived, and the reciprocal-moment analysis must account for every component and intersection of the zero set. Numerical experimentation, computer algebra, code, and external sources may not replace any part of the proof.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Probability and Statistics |
| **Sub-domain** | Statistical inference |
| **Problem Type** | Exact parameter classification |
| **Answer Type** | Parameter ray, explicit estimator, and critical reciprocal-moment exponent |

---

## Domain Explanation

The problem is an exact unbiased-estimation question for a fixed-concentration three-component Dirichlet family. Because the parameter moves on a two-dimensional affine slice of the full Dirichlet family, uniqueness is not an immediate finite-moment argument and requires a genuine transform/completeness step. Recovering the forced estimator exposes a symmetric discriminant structure on the simplex; the sharp parameter boundary then follows from its global nonnegativity, while the endpoint reciprocal-moment threshold is controlled by the interaction of three collision curves at their common interior intersection.