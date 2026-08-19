# Normalized Math Problem

## LaTeX (Normalized)

Let $p\geq7$ be a prime, let
$$
K=\mathbb F_p((t)),
\qquad
m=\frac{p-1}{2},
$$
and define
$$
F_p(X)=X^p-t^2X-\left(t^{-p}-t+t^2\right)
\in K[X].
$$

Let $L_p$ be the splitting field of $F_p(X)$ over $K$. If
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

The differences of the roots first force a tame subextension that is not visible from the constant term. After passing to that field and rescaling a root, the remaining equation is additive, but its apparent large pole cancels after a non-obvious change of variable. The exact different exponent depends on detecting this cancellation before applying the tower formula for differents.
