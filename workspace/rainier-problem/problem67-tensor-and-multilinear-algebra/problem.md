# Normalized Math Problem

## LaTeX (Normalized)

Fix integers $d,h,k$ satisfying
$$
d\geq2,\qquad h\geq3,\qquad m=dh,
\qquad d\leq k<\frac{dh(h-1)}{2}.
$$
Let $q$ be the unique integer satisfying
$$
\frac{dq(q+1)}{2}\leq k<\frac{d(q+1)(q+2)}{2}.
$$
Let $J\in M_m(\mathbb C)$ be defined on the standard basis by
$$
J e_1=0,
\qquad
J e_i=e_{i-1}\quad(2\leq i\leq m),
$$
and define a linear map $T:M_m(\mathbb C)\to M_m(\mathbb C)$ by
$$
T(X)=JX-XJ^d.
$$
Put
$$
Q=M_m(\mathbb C)/\ker T,
$$
and let $\overline T:Q\to Q$ be the induced map
$$
\overline T([X])=[T(X)].
$$
Define the induced derivation $\Delta:\bigwedge^kQ\to\bigwedge^kQ$ by
$$
\Delta(v_1\wedge\cdots\wedge v_k)
=
\sum_{i=1}^{k}
 v_1\wedge\cdots\wedge \overline T(v_i)
 \wedge\cdots\wedge v_k.
$$
Determine, as a closed formula in $d,h,k$, the least positive integer $N$ such that
$$
\Delta^N=0.
$$

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Linear Algebra |
| **Sub-domain** | Tensor and multilinear algebra |
| **Problem Type** | Parameter identification |
| **Answer Type** | Exact symbolic expression |

---

## Domain Explanation

This problem is classified under Linear Algebra and Tensor and multilinear algebra because it combines a quotient of a matrix space by the kernel of a nilpotent operator with the derivation induced on an exterior power. Determining the nilpotency index requires recovering the Jordan structure created by the unequal left and right actions, understanding how passage to the quotient changes every Jordan chain, and then identifying the extremal chain in the exterior representation.