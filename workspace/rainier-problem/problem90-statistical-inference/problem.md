# Normalized Math Problem

## LaTeX (Normalized)

Let $a<b$ be real numbers, and let
$$
Y_1,Y_2,Y_3,Y_4
$$
be independent random variables, each uniformly distributed on $(a,b)$. Write
$$
Y_{(1)}<Y_{(2)}<Y_{(3)}<Y_{(4)}
$$
for the order statistics. The statistician observes only the ordered pair
$$
(U,V):=(Y_{(2)},Y_{(3)}).
$$

Set
$$
m=\frac{a+b}{2},
\qquad
\sigma^2=\frac{(b-a)^2}{12}.
$$
For a real parameter $\lambda$, define
$$
\tau_\lambda(a,b)
=
(m^2+\sigma^2)^2-\lambda m^2\sigma^2.
$$

Determine all $\lambda\in\mathbb R$ for which there exists a nonnegative Borel function
$$
T_\lambda=T_\lambda(U,V)
$$
such that, for every $a<b$,
$$
\mathbb E_{a,b}[T_\lambda(U,V)]
=
\tau_\lambda(a,b)
$$
and
$$
\mathbb E_{a,b}[T_\lambda(U,V)^2]<\infty.
$$

Prove that for each admissible $\lambda$ the estimator is unique up to almost-sure equality under every parameter pair $(a,b)$, and derive an explicit Borel formula for it.

Let $\Lambda$ be the largest admissible value, and let $T_*=T_\Lambda$. Determine the exact number $q_*>0$ such that
$$
\mathbb E_{a,b}[T_*^{-q}]<\infty
\text{ for every }a<b
\quad\Longleftrightarrow\quad
0<q<q_*.
$$
Use the convention $0^{-q}=+\infty$.

Give a rigorous, self-contained derivation. In particular, if uniqueness is obtained by inverting the integral transform induced by the joint law of $(U,V)$, justify that inversion for the stated integrability class rather than citing a completeness theorem as a black box. Numerical experimentation, computer algebra, code, and external sources may not replace any part of the proof.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Probability and Statistics |
| **Sub-domain** | Statistical inference |
| **Problem Type** | Exact parameter classification |
| **Answer Type** | Parameter interval and critical reciprocal-moment exponent |

---

## Domain Explanation

The problem asks for exact nonnegative unbiased estimation from two middle order statistics of a two-parameter uniform family. The joint law of the observed pair induces a nontrivial two-variable integral transform whose inversion forces the estimator; the sharp admissible parameter range then comes from global positivity of that forced estimator, while the endpoint reciprocal-moment threshold is controlled by the geometry of its zero set.