# Normalized Math Problem

## LaTeX (Normalized)

Let $r\geq 4$ and $k\geq r+2$ be integers, set $n=2^{r}$, and define
$$
R_n=\mathbb Z[t]/(t^n-1).
$$
Let
$$
G(t)=t^7-t^6-3t^5+3t^4+3t^3-3t^2-t+1.
$$
Consider the chain complex of free abelian groups
$$
0\longrightarrow R_n\longrightarrow R_n^2\longrightarrow R_n\longrightarrow 0,
$$
where the first nonzero map is $d_3$ and the second is $d_2$, defined by
$$
d_3(z)=\left(-2^{k}z,G(t)z\right)
$$
and
$$
d_2(x,y)=G(t)x+2^{k}y.
$$
These maps satisfy $d_2\circ d_3=0$. Define
$$
H_{r,k}=\frac{\ker d_2}{\operatorname{im}d_3}.
$$
Write $\mathbb Z_q=\mathbb Z/q\mathbb Z$ for every positive integer $q$.

Determine the invariant factor decomposition of the finite abelian group $H_{r,k}$.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Abstract Algebra |
| **Sub-domain** | Homological Algebra |
| **Problem Type** | Canonicalization or normalization |
| **Answer Type** | Canonical form |

---

## Domain Explanation

This problem involves the middle homology of a finite free chain complex and the classification of its torsion, which are part of Abstract Algebra and Homological Algebra. The problem also involves integral matrices and invariant factors, which are part of Linear Algebra. However, the matrix calculations arise only after the cycles and boundaries have been converted into a homological quotient, so Homological Algebra is the more appropriate primary classification.
