```markdown id="1j9jry"
# Normalized Math Problem

## LaTeX (Normalized)

Let $p\geq5$ be a prime and put
$$
n=p^2+p+1.
$$
Let $t$ be transcendental over $\mathbb F_p$, and set
$$
K=\mathbb F_p(t).
$$

Choose an element
$$
\zeta\in\mathbb F_{p^3}^\times
$$
of order $n$, and put
$$
\zeta_i=\zeta^{p^i}
$$
for $i\in\mathbb Z/3\mathbb Z$.

Define
$$
F_p(X)=
\prod_{i=0}^{2}
\left(
(t-\zeta_{i-1})X^n-(t-\zeta_i)^2
\right).
$$
The three factors are cyclically permuted by
$$
\operatorname{Gal}(\mathbb F_{p^3}/\mathbb F_p),
$$
so
$$
F_p(X)\in K[X].
$$

Let $L_p$ be the splitting field of $F_p(X)$ over $K$.

Determine
$$
[L_p:K].
$$

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Abstract Algebra |
| **Sub-domain** | Field theory |
| **Problem Type** | Exact computation |
| **Answer Type** | Exact scalar |

---

## Domain Explanation

The splitting field first forces a nontrivial constant-field extension through ratios of roots. Over that constant field the problem becomes a three-generator Kummer extension, but the three radical classes are not always independent. Their relation lattice has determinant $7$, producing an exceptional degree drop exactly when $7$ divides $p^2+p+1$.
