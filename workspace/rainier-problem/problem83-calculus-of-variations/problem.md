# Normalized Math Problem

## LaTeX (Normalized)

Fix an integer $m\geq2$. For each real $\lambda>0$, let $u_{m,\lambda}$ be the unique minimizer of
$$
\mathcal E_{m,\lambda}(u)
=
\int_{-1}^{1}
\left[
\frac12\bigl(u'(x)\bigr)^2
+
\bigl(\lambda x^{2m}-x^{2m+2}\bigr)u(x)
\right]dx
$$
over all $u\in H^1(-1,1)$ satisfying
$$
u(x)\geq0\quad\text{for almost every }x\in(-1,1),
$$
$$
u(-1)=u(1)
=
\frac{2(4m+5)}
{(2m+1)(2m+2)(2m+3)(2m+4)},
$$
where the endpoint conditions are understood in the Sobolev trace sense.

Define
$$
a_m(\lambda)
=
\sup\left\{
a\in[0,1]:
u_{m,\lambda}(x)=0
\text{ for almost every }x\in[-a,a]
\right\},
$$
and
$$
\lambda_m
=
\inf\left\{
\lambda>0:
a_m(\lambda)>0
\right\}.
$$
There are unique real numbers $\alpha_m>0$ and $C_m>0$ such that
$$
a_m(\lambda)
\sim
C_m\bigl(\lambda-\lambda_m\bigr)^{\alpha_m}
\qquad
\text{as }\lambda\downarrow\lambda_m
\text{ with }\lambda>\lambda_m.
$$
Determine the ordered triple
$$
\bigl(\lambda_m,\alpha_m,C_m\bigr)
$$
for every integer $m\geq2$.

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

The problem studies a one-dimensional obstacle-constrained variational minimizer and asks for the exact onset and scaling law of its contact set. Determining the answer requires identifying when the obstacle first becomes active, reconstructing the resulting free boundary from the variational inequality, and resolving a degenerate asymptotic transition. Calculus of variations is therefore the primary subject, with real analysis and asymptotic analysis providing supporting tools.
