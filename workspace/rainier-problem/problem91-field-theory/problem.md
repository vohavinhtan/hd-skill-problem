# Normalized Math Problem

## LaTeX (Normalized)

Let $p\geq7$ be a prime satisfying
$$
p\equiv1\pmod3,
$$
and put
$$
n=\frac{p-1}{2}.
$$

Let $t$ be transcendental over $\mathbb F_p$, and set
$$
K_p=\mathbb F_p(t)(u),
\qquad
u^3=t^{n-1}-1.
$$

Let $L_p$ be the splitting field over $K_p$ of
$$
F_p(X)=X^n-nX+(n-1)t.
$$

Determine the genus of the function field $L_p$.

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

The polynomial first produces a symmetric Galois closure over the rational function field. The prescribed cubic base change is globally disjoint from that closure but ramifies over the same finite branch divisor and also at infinity. Determining the genus requires combining the global intersection argument with the change of tame inertia after base extension.
