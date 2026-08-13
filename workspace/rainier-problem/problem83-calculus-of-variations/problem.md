# Normalized Math Problem

## LaTeX (Normalized)

For $0<\lambda<1$, define
$$
\psi_\lambda(x)
=
x^2(1-x)^2
\left(
\frac{121}{16}+\lambda
-11x(1-x)
-144x^2(1-x)^2
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
\frac{1}{2}\int_0^1\bigl(u''(x)\bigr)^2\,dx.
$$

Prove that $\mathcal J$ has a unique global minimizer $u_\lambda$ on $\mathcal K_\lambda$.

For all sufficiently small $\lambda>0$, prove that the contact set
$$
\mathcal C_\lambda
=
\left\{x\in[0,1]:u_\lambda(x)=\psi_\lambda(x)\right\}
$$
has exactly two connected components and can be written
$$
\mathcal C_\lambda
=
[a_\lambda,b_\lambda]\cup[1-b_\lambda,1-a_\lambda],
\qquad
0<a_\lambda<b_\lambda<\frac12.
$$
Prove also that $u_\lambda$ is $C^2$ and piecewise smooth, so that the one-sided third derivatives appearing below exist.

Prove that the limits
$$
A
=
\lim_{\lambda\downarrow0}
\frac{b_\lambda-a_\lambda}{\lambda},
$$
$$
B
=
\lim_{\lambda\downarrow0}
\frac{a_\lambda-\frac{1}{12}}{\lambda},
$$
and
$$
C
=
\lim_{\lambda\downarrow0}
\frac{
 u_\lambda'''(b_\lambda^+)-u_\lambda'''(b_\lambda^-)
}{
 u_\lambda'''(a_\lambda^+)-u_\lambda'''(a_\lambda^-)
}
$$
exist, and determine the ordered triple
$$
(A,B,C).
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

The problem is a fourth-order obstacle problem for bending energy. Its difficulty lies in determining the global contact geometry, certifying the minimizer through the variational inequality and the contact reaction, and then resolving the first-order splitting of a degenerate contact point. Calculus of variations is therefore the primary subject, with free-boundary and spline methods providing supporting tools.
