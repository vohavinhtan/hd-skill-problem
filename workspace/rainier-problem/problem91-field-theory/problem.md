# Normalized Math Problem

## LaTeX (Normalized)

Let $p\geq5$ be a prime and put
$$
m=p-1,
\qquad
q=\frac{p-1}{2}.
$$

Let $L=\mathbb F_p(x,y)$ be the function field defined by
$$
x^m+y^m=1.
$$
Inside $L$, set
$$
K_p=\mathbb F_p\left(xy,\ x^q+y^q\right).
$$

Determine the genus of the function field $K_p$.

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

The two displayed generators conceal a dihedral fixed field inside a Fermat function field. One must recover the full fixing group from the generators, prove that no larger extension remains, and then compute the genus of the quotient. The fixed-point contribution of the rotation subgroup changes according to the parity of $(p-1)/2$, although the two cases admit a single final formula.
