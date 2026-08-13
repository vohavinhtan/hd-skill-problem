# Normalized Math Problem

## LaTeX (Normalized)

Fix a real number $p>0$. Define the continuous double-well potential
$$
W_p(s)=
\begin{cases}
\dfrac{p^2}{2}\left(s+\dfrac{1}{p}\right)^2,&s\leq0,\\
\dfrac{1}{2}(s-1)^2,&s\geq0.
\end{cases}
$$
For $0<\varepsilon<1$, let
$$
\mathcal A=
\left\{
 u\in H^1(0,1):
 \int_0^1u(x)\,dx=0,
 \quad u(1)\geq1
\right\},
$$
and define
$$
\mathcal E_{\varepsilon,p}(u)
=
\int_0^1
\left[
\frac{\varepsilon^2}{2}(u'(x))^2+W_p(u(x))
\right]dx.
$$

Prove that $\mathcal E_{\varepsilon,p}$ attains its global minimum on $\mathcal A$. For each fixed $p>0$, prove that for all sufficiently small $\varepsilon>0$, every global minimizer $u_{\varepsilon,p}$ satisfies $u_{\varepsilon,p}(1)=1$ and has exactly one zero $z_{\varepsilon,p}\in(0,1)$.

Let $\eta_{\varepsilon,p}$ be the Lagrange multiplier associated with the constraint
$$
\int_0^1u(x)\,dx=0,
$$
with the sign convention that the constrained functional is
$$
\mathcal E_{\varepsilon,p}(u)
+\eta_{\varepsilon,p}\int_0^1u(x)\,dx.
$$
Prove that $\eta_{\varepsilon,p}>0$ for all sufficiently small $\varepsilon$.

The following limits exist and are independent of the choice of global minimizer:
$$
A_p
=
\lim_{\varepsilon\downarrow0}
\frac{z_{\varepsilon,p}-\frac{p}{p+1}}{\varepsilon},
$$
$$
B_p
=
-\lim_{\varepsilon\downarrow0}
\varepsilon
\log\left|
z_{\varepsilon,p}-\frac{p}{p+1}-\varepsilon A_p
\right|,
$$
and
$$
C_p
=
-\lim_{\varepsilon\downarrow0}
\varepsilon\log\eta_{\varepsilon,p}.
$$
Determine the ordered triple
$$
(A_p,B_p,C_p)
$$
for every $p>0$.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Analysis |
| **Sub-domain** | Calculus of variations |
| **Problem Type** | Parameter identification |
| **Answer Type** | Tuple or ordered list |

---

## Domain Explanation

The problem studies minimizers of a mass-constrained singularly perturbed phase-field energy with asymmetric wells and a one-sided boundary constraint. The requested constants depend on the precise location of the transition layer and on exponentially small interactions between the interface, the boundary, and the mass multiplier. Calculus of variations is the primary subject, while singular perturbation and asymptotic analysis provide the supporting tools.
