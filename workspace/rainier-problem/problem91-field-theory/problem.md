# Normalized Math Problem

## LaTeX (Normalized)

Let $p\geq7$ be a prime. Let $\phi$ denote Euler's totient function. For every integer $m>2$ with $\gcd(m,15)=1$, define
$$
\rho_m=\min\{d\geq1:5^d\equiv3^d\pmod m\text{ or }5^d\equiv-3^d\pmod m\}.
$$

Define
$$
F_p(X)=X^{3p}+3X^{2p}-X^5-5X^4-5X^3+5X^2+5X-3
\in\mathbb F_p[X].
$$

For $d\geq1$, let $b_d$ be the number of monic irreducible factors of $F_p(X)$ over $\mathbb F_p$ having degree $d$.

Determine
$$
\mathcal D_p(t)=\sum_{d\geq1}b_dt^d
$$
for every prime $p\geq7$.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Abstract Algebra |
| **Sub-domain** | Field theory |
| **Problem Type** | Exact computation |
| **Answer Type** | Polynomial or rational function |

---

## Domain Explanation

The sparse polynomial conceals a translated reciprocal parametrization. Its roots become inversion classes in two cyclic root-of-unity groups, while the factor degrees are determined by the Frobenius action on those classes. The orbit lengths reduce to signed multiplicative orders with moduli depending on $p$.
