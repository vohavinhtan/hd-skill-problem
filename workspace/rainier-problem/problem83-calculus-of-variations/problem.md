# Normalized Math Problem

## LaTeX (Normalized)

Fix a real number $p$ with $0<p<1$. For $0<\lambda<1$, let $\mathcal A_{p,\lambda}$ be the set of all $u\in L^2(-1,1)$ such that $u\geq0$ almost everywhere and
$$
\int_{-1}^1u(x)\,dx
=
\frac{2}{7}+\frac{2p^2}{5}-2\lambda,
$$
$$
\int_{-1}^1x^4u(x)\,dx
=
\frac{2}{11}+\frac{2p^2}{9}-\frac{2\lambda}{5},
$$
$$
\int_{-1}^1x^5u(x)\,dx
=
-\frac{4p}{11},
$$
and
$$
\int_{-1}^1x^6u(x)\,dx
=
\frac{2}{13}+\frac{2p^2}{11}-\frac{2\lambda}{7}.
$$
Let $\widetilde{\mathcal A}_{p,\lambda}$ be defined by the same four moment conditions but without the requirement $u\geq0$.

Define
$$
J_{p,\lambda}
=
\inf_{u\in\mathcal A_{p,\lambda}}
\frac{1}{2}\int_{-1}^1u(x)^2\,dx
$$
and
$$
\widetilde J_{p,\lambda}
=
\inf_{u\in\widetilde{\mathcal A}_{p,\lambda}}
\frac{1}{2}\int_{-1}^1u(x)^2\,dx.
$$

Prove that for each fixed $p\in(0,1)$ and all sufficiently small $\lambda>0$, both infima are attained and their minimizers are unique. Let $u_{p,\lambda}$ denote the minimizer defining $J_{p,\lambda}$.

Prove that for each fixed $p\in(0,1)$ and all sufficiently small $\lambda>0$, there are unique numbers
$$
-1<\alpha_{p,\lambda}<0<\beta_{p,\lambda}<\gamma_{p,\lambda}<p<\delta_{p,\lambda}<1
$$
such that, up to changing $u_{p,\lambda}$ on a null set,
$$
u_{p,\lambda}(x)=0
$$
exactly on
$$
[\alpha_{p,\lambda},\beta_{p,\lambda}]
\cup
[\gamma_{p,\lambda},\delta_{p,\lambda}],
$$
and $u_{p,\lambda}(x)>0$ elsewhere on $[-1,1]$.

Set
$$
\Delta_{p,\lambda}=J_{p,\lambda}-\widetilde J_{p,\lambda}.
$$
Prove that for every fixed $p\in(0,1)$ there are unique real numbers
$$
0<\gamma_0(p)<\gamma_1(p)
$$
and unique constants
$$
K_0(p)>0,
\qquad
K_1(p)>0,
$$
such that
$$
\lim_{\lambda\downarrow0}
\frac{\Delta_{p,\lambda}}{\lambda^{\gamma_0(p)}}
=
K_0(p)
$$
and
$$
\lim_{\lambda\downarrow0}
\frac{\Delta_{p,\lambda}-K_0(p)\lambda^{\gamma_0(p)}}
{\lambda^{\gamma_1(p)}}
=
K_1(p).
$$

Determine the ordered quadruple
$$
\bigl(\gamma_0(p),K_0(p),\gamma_1(p),K_1(p)\bigr)
$$
for every $0<p<1$.

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

The problem studies a strictly convex $L^2$ variational problem with moment constraints and a pointwise nonnegativity condition. Determining the requested two-term penalty asymptotics requires resolving how the active set and the moment constraints influence one another beyond leading order. Calculus of variations is therefore the primary subject, with convex duality and asymptotic analysis providing supporting tools.
