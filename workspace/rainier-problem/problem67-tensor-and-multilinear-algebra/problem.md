# Normalized Math Problem

## LaTeX (Normalized)

Fix integers
$$
r\geq 6,\qquad 2\leq q\leq r-2,
$$
and put
$$
n_r=\frac{2^{r+1}+(-1)^r}{3}.
$$
Work over the field $\mathbb F_2$. Let $V_r$ have ordered basis
$$
e_0,e_1,\ldots,e_{n_r-1},
$$
and define a nilpotent linear map $J_r:V_r\to V_r$ by
$$
J_r(e_0)=0,\qquad J_r(e_i)=e_{i-1}\quad(i\geq1).
$$
Let
$$
D_r:\bigwedge^2V_r\longrightarrow\bigwedge^2V_r
$$
be the induced map
$$
D_r(v\wedge w)=J_rv\wedge w+v\wedge J_rw.
$$
Let
$$
Q_r=\bigwedge^2V_r/\ker D_r,
$$
and let $\overline D_r$ be the endomorphism of $Q_r$ induced by $D_r$.

Determine, as a closed formula in $r$ and $q$, the rank of
$$
\overline D_r^{\,2^q-2}.
$$

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Linear Algebra |
| **Sub-domain** | Tensor and multilinear algebra |
| **Problem Type** | Symbolic derivation |
| **Answer Type** | Exact symbolic expression |

---

## Domain Explanation

This problem is classified under Linear Algebra and Tensor and multilinear algebra because it studies the nilpotent derivation induced by a single Jordan chain on an exterior square and on a canonical quotient. The requested rank is controlled by characteristic-two cancellations in the exterior-square Jordan structure, together with the effect of quotienting by the first kernel layer; characteristic-zero tensor-product rules do not determine it.