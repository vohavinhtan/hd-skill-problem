# Normalized Math Problem

## LaTeX (Normalized)

Let $p\geq11$ be a prime and put
$$
n=\frac{p-1}{2},
\qquad
\delta=(-1)^{n(n-1)/2}n^n(n-1)^{n-1}\in\mathbb F_p^\times.
$$

Let $t$ be transcendental over $\mathbb F_p$, and set
$$
K_p=\mathbb F_p(t)\left(\sqrt{\delta(t^{n-1}-1)}\right).
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

The polynomial defines a degree-$n$ cover whose finite ramification is simple but whose Galois closure must first be reconstructed. The prescribed quadratic base field removes precisely the odd part of the monodromy, changing the Galois group from the symmetric group to the alternating group. The behavior at infinity then depends on the parity of $n$, but the two parity cases collapse to one genus formula.
