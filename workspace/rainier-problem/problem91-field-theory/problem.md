# Normalized Math Problem

## LaTeX (Normalized)

Let $p\geq7$ be a prime satisfying
$$
p\equiv1\pmod3,
$$
and let $t$ be transcendental over $\mathbb F_p$. Define
$$
F_p(X)=
tX^{3p}-3tX^{2p+1}+3tX^{p+2}-3tX^p-tX^3+3tX-t^2-1
\in\mathbb F_p(t)[X].
$$

Let $L_p$ be the splitting field of $F_p(X)$ over $\mathbb F_p(t)$.

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

The polynomial hides a cubic auxiliary extension followed by two independent Artin-Schreier directions. These directions are independent globally but become dependent at each of the two ramified places, so determining the genus requires reconstructing both the global splitting field and its local ramification.
