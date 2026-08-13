# Normalized Math Problem

## LaTeX (Normalized)

Fix a real number $p>0$. Define
$$
W_p(s)=
\begin{cases}
\dfrac{p^2}{2}\left(s+\dfrac{1}{p}\right)^2,&s\leq0,\\
\dfrac{1}{2}(s-1)^2,&s\geq0.
\end{cases}
$$
For $0<\varepsilon<1$, let
$$
\mathcal A_p=
\left\{
 u\in H^1(0,1):
 u(0)=u(1)=1,
 \quad
 \int_0^1u(x)\,dx=0,
 \quad
 \int_0^1x u(x)\,dx=\frac{1}{6(p+1)}
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

Prove that $\mathcal E_{\varepsilon,p}$ attains its global minimum on $\mathcal A_p$. For each fixed $p>0$, prove that for all sufficiently small $\varepsilon>0$, every global minimizer $u_{\varepsilon,p}$ has exactly two zeros
$$
0<z^-_{\varepsilon,p}<z^+_{\varepsilon,p}<1.
$$
Put
$$
d_{\varepsilon,p}=z^+_{\varepsilon,p}-z^-_{\varepsilon,p}.
$$

Let $\eta_{\varepsilon,p}$ and $\xi_{\varepsilon,p}$ be the Lagrange multipliers associated respectively with
$$
\int_0^1u(x)\,dx=0
$$
and
$$
\int_0^1x u(x)\,dx=\frac{1}{6(p+1)},
$$
with the sign convention that the constrained functional is
$$
\mathcal E_{\varepsilon,p}(u)
+\eta_{\varepsilon,p}\int_0^1u(x)\,dx
+\xi_{\varepsilon,p}
\left(
\int_0^1x u(x)\,dx-\frac{1}{6(p+1)}
\right).
$$
Prove that this multiplier pair is uniquely determined for every sufficiently small $\varepsilon>0$.

The following limits exist and are independent of the choice of global minimizer:
$$
A_p
=
\lim_{\varepsilon\downarrow0}
\frac{d_{\varepsilon,p}-\frac{p}{p+1}}{\varepsilon},
$$
$$
B_p
=
-\lim_{\varepsilon\downarrow0}
\varepsilon
\log\left|
d_{\varepsilon,p}-\frac{p}{p+1}-\varepsilon A_p
\right|,
$$
and
$$
C_p
=
-\lim_{\varepsilon\downarrow0}
\varepsilon
\log\sqrt{\eta_{\varepsilon,p}^2+\xi_{\varepsilon,p}^2}.
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

The problem studies a singularly perturbed two-phase variational energy under simultaneous mass and first-moment constraints. The two constraints force a coupled two-interface geometry, and the requested limits require separating algebraic interface shifts from two different exponentially small interaction mechanisms. Calculus of variations is the primary subject, while singular perturbation and asymptotic analysis provide supporting tools.
