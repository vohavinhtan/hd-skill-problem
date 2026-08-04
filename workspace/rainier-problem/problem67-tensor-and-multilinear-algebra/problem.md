# Normalized Math Problem

## LaTeX (Normalized)

Fix integers $m,r,s$ satisfying
$$
m\geq4,\qquad m\equiv0\pmod2,
\qquad 1\leq s\leq\frac{m}{2},
\qquad s\leq r\leq s+\frac{m}{2}.
$$
Let $V$ be a complex vector space with ordered basis
$$
e_1,\ldots,e_m,f_1,\ldots,f_m,
$$
and let
$$
\varepsilon_1,\ldots,\varepsilon_m,\varphi_1,\ldots,\varphi_m
$$
be the dual basis. For $\lambda\in V^*$, define the contraction operator $\iota_\lambda$ on decomposable exterior products by
$$
\iota_\lambda(v_1\wedge\cdots\wedge v_k)
=\sum_{j=1}^{k}(-1)^{j-1}\lambda(v_j)
\,v_1\wedge\cdots\wedge\widehat{v_j}\wedge\cdots\wedge v_k,
$$
and extend it linearly.

Put
$$
\Omega=\sum_{i=1}^{m}e_i\wedge f_i,
$$
and define linear operators on the exterior algebra $\bigwedge V$ by
$$
L(\alpha)=\Omega\wedge\alpha,
\qquad
C(\alpha)=\sum_{i=1}^{m}\iota_{\varphi_i}\iota_{\varepsilon_i}(\alpha).
$$
Let $J$ be the algebra automorphism of $\bigwedge V$ induced by
$$
J(e_i)=f_i,
\qquad
J(f_i)=e_i
$$
for $1\leq i\leq m$. For $\delta\in\{1,-1\}$, set
$$
E_\delta=\left\{\alpha\in\bigwedge^mV:J(\alpha)=\delta\alpha\right\}
$$
and
$$
\nu_\delta=\dim\ker\left(\left.C^rL^s\right|_{E_\delta}\right).
$$
Determine, as a closed formula in $m,r,s$, the integer
$$
\nu_1-\nu_{-1}.
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

This problem is classified under Linear Algebra and Tensor and multilinear algebra because its central objects are exterior powers, contraction operators, multiplication by an alternating tensor, and the eigenspace decomposition induced by an involution. The requested signed nullity requires both the invariant-string decomposition of the middle exterior power and a trace calculation that records how the involution acts across those strings; counting only the annihilated components no longer determines the answer.