# Normalized Math Problem

## LaTeX (Normalized)

For $0<\lambda<1$, let $\mathcal A_\lambda$ be the set of all $u\in L^2(-1,1)$ such that $u\geq0$ almost everywhere and
$$
\int_{-1}^1u(x)\,dx=1,
$$
$$
\int_{-1}^1x u(x)\,dx=\lambda,
$$
$$
\int_{-1}^1x^2u(x)\,dx=\frac{5}{7}+\lambda,
$$
and
$$
\int_{-1}^1x^4u(x)\,dx=\frac{5}{9}.
$$
Let $\widetilde{\mathcal A}_\lambda$ be defined by the same four moment conditions but without the requirement $u\geq0$.

Define
$$
J_\lambda
=
\inf_{u\in\mathcal A_\lambda}
\frac{1}{2}\int_{-1}^1u(x)^2\,dx
$$
and
$$
\widetilde J_\lambda
=
\inf_{u\in\widetilde{\mathcal A}_\lambda}
\frac{1}{2}\int_{-1}^1u(x)^2\,dx.
$$

Prove that for all sufficiently small $\lambda>0$, both infima are attained and their minimizers are unique. Let $u_\lambda$ denote the minimizer defining $J_\lambda$.

Prove that for all sufficiently small $\lambda>0$ there are unique numbers
$$
-1<\alpha_\lambda<0<\beta_\lambda<1
$$
such that, up to changing $u_\lambda$ on a null set,
$$
u_\lambda(x)=0
\quad\text{for }\alpha_\lambda\leq x\leq\beta_\lambda,
$$
and
$$
u_\lambda(x)>0
\quad\text{for }-1\leq x<\alpha_\lambda
\text{ and }\beta_\lambda<x\leq1.
$$
Set
$$
a_\lambda=\frac{\beta_\lambda-\alpha_\lambda}{2},
\qquad
h_\lambda=\frac{\alpha_\lambda+\beta_\lambda}{2}.
$$

Prove that the limits
$$
L
=
\lim_{\lambda\downarrow0}
\frac{a_\lambda}{\lambda^{1/4}}
$$
and
$$
H
=
\lim_{\lambda\downarrow0}
\frac{h_\lambda}{\lambda^{1/2}}
$$
exist. Also prove that there are unique real numbers $\gamma>0$ and $K>0$ such that
$$
\lim_{\lambda\downarrow0}
\frac{J_\lambda-\widetilde J_\lambda}{\lambda^\gamma}
=K.
$$

Determine the ordered quadruple
$$
(L,H,\gamma,K).
$$

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

The problem studies a strictly convex integral functional under moment constraints and a pointwise nonnegativity condition. Near a degenerate limiting minimizer, the active set opens on a fractional scale, while an asymmetric moment perturbation moves that set on a different scale and the positivity constraint contributes only at a still higher order to the optimal value. Calculus of variations is therefore the primary subject, with convex duality and asymptotic analysis providing supporting tools.
