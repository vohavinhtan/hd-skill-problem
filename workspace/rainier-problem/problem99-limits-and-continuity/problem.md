# Normalized Math Problem

## LaTeX (Normalized)

For $0<t<1$ and each integer $k\geq0$, define
$$
I_k(t)=\int_0^1x^{k+1}\exp\left(-\frac{x(1-x)}{t}\right)\,dx
$$
and
$$
M_k(t)=\frac{I_k(t)}{I_0(t)}.
$$
For $r\in\{3,5\}$, put
$$
\Delta_r(t)=\det\left(M_{i+j}(t)\right)_{0\leq i,j\leq r-1}.
$$
Determine
$$
\lim_{t\to0^+}
\frac{
\displaystyle\frac{\Delta_5(t)}{\Delta_3(t)^2}-8t^4
}{t^6}.
$$

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Calculus |
| **Sub-domain** | Limits and continuity |
| **Problem Type** | Exact computation |
| **Answer Type** | Exact scalar |

---

## Domain Explanation

This problem involves a singular one-sided limit of moment determinants for a measure whose mass concentrates near two endpoints at unequal weights, which are part of Calculus and Limits and continuity.
The problem also involves Gram determinants, non-orthogonal parity components, and a change of polynomial basis, which are part of Linear Algebra and Determinants.
However, those determinant structures expose the cancellations needed to obtain the endpoint asymptotics, while the requested object itself is an exact limit.
