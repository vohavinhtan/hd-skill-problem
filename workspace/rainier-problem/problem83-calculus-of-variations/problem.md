# Normalized Math Problem

## LaTeX (Normalized)

For $0<\lambda<1$, define
$$
\psi_\lambda(x)
=
x^2(1-x)^2
\left(
\frac{121}{16}
-11x(1-x)
-144x^2(1-x)^2
+\lambda(3+4x)
\right),
\qquad 0\leq x\leq1.
$$
Let
$$
\mathcal K_\lambda
=
\left\{
 u\in H^2(0,1):
 u(0)=u'(0)=u(1)=u'(1)=0,
 \quad
 u(x)\geq\psi_\lambda(x)\ \text{for every }x\in[0,1]
\right\},
$$
and set
$$
\mathcal J(u)
=
\frac12\int_0^1\bigl(u''(x)\bigr)^2\,dx.
$$

Prove that $\mathcal J$ has a unique global minimizer $u_\lambda$ on $\mathcal K_\lambda$.

For all sufficiently small $\lambda>0$, prove that the interior contact set
$$
\mathcal C_\lambda^\circ
=
\left\{x\in(0,1):u_\lambda(x)=\psi_\lambda(x)\right\}
$$
has exactly two connected components and can be written
$$
\mathcal C_\lambda^\circ
=
[a_\lambda,b_\lambda]\cup[c_\lambda,d_\lambda],
\qquad
0<a_\lambda<b_\lambda<c_\lambda<d_\lambda<1.
$$
Prove also that $u_\lambda$ is $C^2$ and piecewise smooth. Define the inner free-boundary jumps
$$
\Delta_b(\lambda)
=u_\lambda'''(b_\lambda^+)-u_\lambda'''(b_\lambda^-),
\qquad
\Delta_c(\lambda)
=u_\lambda'''(c_\lambda^+)-u_\lambda'''(c_\lambda^-).
$$
Prove that these jumps are positive for all sufficiently small $\lambda>0$.

Prove that the limits
$$
A
=
\lim_{\lambda\downarrow0}
\frac{b_\lambda-a_\lambda}{d_\lambda-c_\lambda},
$$
$$
B
=
\lim_{\lambda\downarrow0}
\frac{b_\lambda+c_\lambda-1}{\lambda},
$$
$$
C
=
\lim_{\lambda\downarrow0}
\frac{b_\lambda+c_\lambda-1-B\lambda}{\lambda^2},
$$
and
$$
D
=
\lim_{\lambda\downarrow0}
\frac1\lambda
\left(
\frac{\Delta_c(\lambda)}{\Delta_b(\lambda)}-1
\right)
$$
exist, and determine the ordered quadruple
$$
(A,B,C,D).
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

The problem is a fourth-order obstacle problem for bending energy. Its difficulty lies in determining the global contact geometry, certifying the minimizer through the variational inequality and the contact reaction, and then resolving an asymmetric free-boundary splitting together with a second-order cancellation. Calculus of variations is therefore the primary subject, with free-boundary and spline methods providing supporting tools.
