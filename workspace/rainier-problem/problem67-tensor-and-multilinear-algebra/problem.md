# Normalized Math Problem

## LaTeX (Normalized)

Fix integers $m,r,s$ satisfying
$$
m\geq4,\qquad 1\leq s\leq\left\lfloor\frac{m}{2}\right\rfloor,
\qquad s\leq r\leq s+\left\lfloor\frac{m}{2}\right\rfloor.
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
Determine, as a closed formula in $m,r,s$, the nullity of the linear map
$$
C^rL^s:\bigwedge^mV\longrightarrow\bigwedge^{m+2s-2r}V.
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

This problem is classified under Linear Algebra and Tensor and multilinear algebra because its central objects are exterior powers, contraction operators, and multiplication by a fixed alternating tensor. The requested nullity depends on how the wedge and contraction operators interact across the full decomposition of the middle exterior power. A direct basis computation grows exponentially with $m$, whereas the intended derivation must recover the hidden invariant-string structure and identify exactly which components are annihilated by the mixed power $C^rL^s$.
