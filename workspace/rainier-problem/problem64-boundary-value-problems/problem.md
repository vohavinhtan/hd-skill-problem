# Normalized Math Problem

## LaTeX (Normalized)

Let $p\geq5$ be an odd prime and set
$$
\mu=\frac{(p^2-2p)\pi^2}{2}.
$$
For each real number $\lambda$, let $E_\lambda$ be the real vector space of all twice continuously differentiable functions $u:[0,1]\to\mathbb R$ satisfying
$$
-u''(x)+\mu\,u(1-x)=\lambda u(x),\qquad 0\leq x\leq1,
$$
$$
u(0)=u(1)=0.
$$
Let $\lambda_p$ be the least real number $\lambda$ for which $\dim E_\lambda\geq2$, and let $w_p$ be the unique function in $E_{\lambda_p}$ satisfying
$$
w_p\!\left(\frac1p\right)=0,\qquad w_p'\!\left(\frac1p\right)=1.
$$

Determine, in closed form in terms of $p$, the exact value of
$$
\int_0^1 |w_p(x)|\,dx.
$$

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Differential Equations and Dynamical Systems |
| **Sub-domain** | Boundary value problems |
| **Problem Type** | Symbolic derivation |
| **Answer Type** | Exact symbolic expression |

---

## Domain Explanation

The primary task is to identify the least multiple eigenvalue of a nonlocal two-point boundary value problem, reconstruct a uniquely normalized function inside its eigenspace, and then evaluate an exact nonsmooth functional of that function. The arithmetic parameter and the interior normalization are both load-bearing parts of the spectral analysis, while the absolute value forces a complete determination of the normalized eigenfunction's nodal structure before the requested integral can be derived.
