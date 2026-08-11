# Normalized Math Problem

## LaTeX (Normalized)

Let
$$
f(X)=X^3-3X+5\in\mathbb C[X],
$$
and for $n\geq2$ let $f^{\circ n}$ denote the $n$-fold iterate of $f$ under composition.

Let $t$ be transcendental over $\mathbb C$, and let $L_n$ be the splitting field over $\mathbb C(t)$ of
$$
f^{\circ n}(X)-t.
$$
Let
$$
\mathfrak D_n=\operatorname{Diff}\bigl(L_n/\mathbb C(t)\bigr)
$$
be the different divisor of this finite separable extension, and let $\deg\mathfrak D_n$ denote its divisor degree.

Determine $\deg\mathfrak D_n$ exactly as a function of $n$.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Abstract Algebra |
| **Sub-domain** | Galois theory |
| **Problem Type** | Exact computation |
| **Answer Type** | Exact scalar |

---

## Domain Explanation

The problem asks for a ramification invariant of the splitting field of an iterated polynomial over the rational function field $\mathbb C(t)$. Determining the different requires reconstructing the Galois groups in the iteration tower, identifying the branch places and their inertia groups, and then combining those local Galois data globally. Thus the decisive structure is the Galois and ramification theory of the splitting fields rather than polynomial manipulation alone.
