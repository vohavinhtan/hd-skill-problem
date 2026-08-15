# Normalized Math Problem

## LaTeX (Normalized)

Let $a<b$ be real numbers, and let
$$
Y_1,Y_2,Y_3,Y_4,Y_5
$$
be independent random variables, each uniformly distributed on $(a,b)$. Write
$$
Y_{(1)}<Y_{(2)}<Y_{(3)}<Y_{(4)}<Y_{(5)}
$$
for the order statistics. The statistician observes only
$$
(U,V):=(Y_{(2)},Y_{(4)}).
$$

For $r\in\{0,1,2,3,4\}$, define
$$
M_r(a,b)=\frac1{b-a}\int_a^b e^{rx}\,dx.
$$
For a real parameter $\lambda$, set
$$
\tau_\lambda(a,b)
=
\bigl(M_4-M_1M_3\bigr)
-\lambda\bigl(M_1M_3-M_2^2\bigr),
$$
where every $M_r$ is evaluated at $(a,b)$.

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

For every admissible $\lambda$, prove uniqueness up to almost-sure equality under every parameter pair $(a,b)$ and derive an explicit closed-form Borel formula for $T_\lambda(u,v)$.

Let $\Lambda$ be the largest admissible value and let $T_*=T_\Lambda$. Determine the exact number $q_*>0$ such that
$$
\mathbb E_{a,b}[T_*^{-q}]<\infty
\text{ for every }a<b
\quad\Longleftrightarrow\quad
0<q<q_*.
$$
Use the convention $0^{-q}=+\infty$, and decide every endpoint.

Give a rigorous, self-contained derivation. In particular, if uniqueness is obtained by inverting the integral transform induced by the joint law of $(U,V)$, justify that inversion for the stated integrability class. Any global sign claim for the forced estimator must be proved exactly; numerical sampling of the sign is not sufficient. Numerical experimentation, computer algebra, code, and external sources may not replace any part of the proof.

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

The problem asks for exact nonnegative unbiased estimation from two nonadjacent order statistics of a two-parameter uniform family. The observed-pair transform is explicitly invertible, but the target is non-polynomial, so finite-dimensional moment matching no longer determines the estimator; after inversion, the sharp parameter boundary is governed by a global hyperbolic-function positivity problem. The reciprocal-moment threshold at the boundary depends on the interaction between the estimator's higher-order vanishing as $U\to V$ and the vanishing of the joint order-statistic density along the same diagonal.