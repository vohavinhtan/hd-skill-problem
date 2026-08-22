# Normalized Math Problem

## LaTeX (Normalized)

Fix an integer $m\geq1$. For $0<t<1$ and every integer $k\geq0$, define
$$
I_k(t)=
\int_0^1
x^k\left(1+\sqrt{t}(3x-1)\right)
\exp\left(-\frac{x(1-x)(3x-1)^2}{t}\right)\,dx
$$
and
$$
D_m(t)=
\det\left(I_{i+j}(t)\right)_{0\leq i,j\leq4m+1}.
$$
Put
$$
b_m=\binom{2m}{m},
$$
$$
r_m=
\frac{9(2m+1)\sqrt{\pi}b_m}{2^{2m+5/2}},
\qquad
s_m=
\frac{9\,2^{2m-3/2}}{\sqrt{\pi}b_m},
$$
and
$$
C_m=
2^{1/2-2m^2-m}3^{-8m^2-8m-2}\pi^{m+1/2}
\left(\prod_{j=0}^{m-1}(j!)^2\right)
\left(\prod_{j=0}^{m}(j!)^2\right)
\left(\prod_{j=0}^{2m}j!\right).
$$
Determine
$$
\lim_{t\to0^+}
\frac{
\displaystyle
\frac{D_m(t)}{C_mt^{4m^2+4m+3/2}}
-1
-\left(
m+\frac12+\frac{r_m+s_m}{2}
\right)t^{1/2}
-\left(
\frac{64m^2+1774m+1015}{128}
+\frac{mr_m+(m+1)s_m}{2}
\right)t
}{
t^{3/2}
}.
$$

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Calculus |
| **Sub-domain** | Limits and continuity |
| **Problem Type** | Symbolic derivation |
| **Answer Type** | Exact symbolic expression |

---

## Domain Explanation

This problem involves a singular one-sided limit for a moment determinant whose weight concentrates at two endpoint minima and an asymmetric interior minimum, which are part of Calculus and Limits and continuity.
The problem also involves competing Vandermonde particle clusters, Gaussian and Laguerre moment identities, and a weak perturbation that couples successive asymptotic layers, which are part of Linear Algebra and Determinants.
However, those determinant structures are used to determine the dependent fractional-order coefficients required by the stated limit, so the limiting analysis is primary.
