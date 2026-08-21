# Normalized Math Problem

## LaTeX (Normalized)

For $0<t<1$ and each integer $k\geq0$, define
$$
I_k(t)=\int_0^1 x^k\exp\left(-\frac{x(1-x)}{t}\right)\,dx
$$
and
$$
M_k(t)=\frac{I_k(t)}{I_0(t)}.
$$
For $r\in\{4,5\}$, put
$$
\Delta_r(t)=\det\left(M_{i+j}(t)\right)_{0\leq i,j\leq r-1}.
$$
Determine
$$
\lim_{t\to0^+}
\frac{
\displaystyle\frac{\Delta_5(t)}{\Delta_4(t)^2}-64-1024t
}{t^2}.
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

This problem involves a singular one-sided limit obtained from moment determinants whose leading orders vanish as the underlying measure concentrates at two endpoints, which are part of Calculus and Limits and continuity.
The problem also involves Gram determinants, symmetry of moments, and changes of polynomial basis, which are part of Linear Algebra and Determinants.
However, those determinant identities only expose the cancellations needed before the endpoint asymptotics can be evaluated, so the limiting analysis is primary.
