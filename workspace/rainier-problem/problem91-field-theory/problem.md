# Normalized Math Problem

## LaTeX (Normalized)

Let $p\geq5$ be a prime, let $t$ be transcendental over $\mathbb F_p$, and put
$$
K=\mathbb F_p(t).
$$

Let $L_p$ be the splitting field over $K$ of
$$
F_p(X)=
X^8-4tX^6+(6t^2-2t)X^4+(4t^2-4t^3)X^2+t^4-2t^3+t^2-t.
$$

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

The degree-eight polynomial conceals an iterated quadratic map. Its successive splitting fields form multiquadratic layers, but maximal growth at the final layer is not visible from the first two. Proving the final independence requires locating a new valuation from the critical orbit and transferring it among the conjugate third-level radicands.
