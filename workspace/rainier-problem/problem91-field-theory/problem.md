# Normalized Math Problem

## LaTeX (Normalized)

Let $p\geq5$ be a prime, let $t$ be transcendental over $\mathbb F_p$, and put
$$
K=\mathbb F_p(t).
$$

Define
$$
F_p(X)=
(t^2-8)(X^3-3X)^2
-2(t-2)(t^2-4)(X^3-3X)
+t(t^3-4t^2+16)
\in K[X].
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

The polynomial hides two cubic extensions whose Galois closures have the same quadratic resolvent field. Determining the full splitting-field degree requires recovering those cubic factors, proving that both closures have symmetric Galois group, identifying their common quadratic subfield, and then using ramification to show that their remaining cubic layers are distinct.
