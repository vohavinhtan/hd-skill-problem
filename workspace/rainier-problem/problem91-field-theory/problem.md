# Normalized Math Problem

## LaTeX (Normalized)

Let $p\geq5$ be a prime and put
$$
K=\mathbb Q_p.
$$

Let $L_p$ be the splitting field over $K$ of
$$
F_p(X)=(X^p-p)(X^p-(1+p)).
$$

If
$$
\mathfrak D_{L_p/K}=\mathfrak P_{L_p}^{d_p}
$$
is the different of $L_p/K$, determine the exponent $d_p$.

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

The splitting field first forces the cyclotomic extension containing the $p$th roots of unity. Over that field the two radicals give independent wild degree-$p$ directions, but their ramification is highly asymmetric: one has lower break $p$, while the other has lower break $1$. Determining the different requires classifying every degree-$p$ quotient of the resulting elementary abelian extension before applying the tower law.
