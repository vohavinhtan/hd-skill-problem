# Normalized Math Problem

## LaTeX (Normalized)

Fix an integer $m\geq2$. For $\lambda>0$ and $u\in H^4(0,\pi)$ satisfying
$$
u'(0)=u'(\pi)=u'''(0)=u'''(\pi)=0,
$$
set
$$
G_u(x)
=
u(x)^3-
\frac{3u(x)}{\pi}
\int_0^\pi u(t)^2\,dt,
$$
and define
$$
\begin{aligned}
\mathcal E_{m,\lambda}(u)
={}&
\frac12\int_0^\pi
\bigl(u^{(4)}+5u''+4u\bigr)^2\,dx
\\
&+
\sqrt{\frac{m-1}{m}}
\int_0^\pi
\bigl(u^{(4)}+5u''+4u\bigr)G_u\,dx
+
\frac12\int_0^\pi G_u^2\,dx
\\
&-
\frac{\lambda}{2}\int_0^\pi u^2\,dx
+
\frac{1}{2\pi}
\left(\int_0^\pi u^2\,dx\right)^2.
\end{aligned}
$$

Prove that $\mathcal E_{m,\lambda}$ attains its global minimum. For all sufficiently small $\lambda>0$, choose any global minimizer $u_{m,\lambda}$ for which
$$
a_{m,\lambda}
=
\frac{2}{\pi}\int_0^\pi u_{m,\lambda}(x)\cos x\,dx>0,
$$
and
$$
b_{m,\lambda}
=
\frac{2}{\pi}\int_0^\pi u_{m,\lambda}(x)\cos(2x)\,dx>0.
$$
The existence of such a choice for all sufficiently small $\lambda$ is part of what must be justified.

Also set
$$
c_{m,\lambda}
=
\frac{2}{\pi}\int_0^\pi u_{m,\lambda}(x)\cos(3x)\,dx.
$$
Prove that the limits
$$
Q_m
=
\lim_{\lambda\downarrow0}
\left(\frac{b_{m,\lambda}}{a_{m,\lambda}}\right)^2
$$
and
$$
T_m
=
\lim_{\lambda\downarrow0}
\frac{c_{m,\lambda}}{\lambda^{3/2}}
$$
exist, are independent of the permitted choice of global minimizer, and determine the ordered pair
$$
(Q_m,T_m)
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

The problem studies global minimizers of a higher-order nonlocal variational functional near a small-parameter degeneracy. Determining the requested limits requires identifying the asymptotic Fourier structure of the minimizers and resolving the first nonlinear order at which the competing modes are distinguished. Calculus of variations is therefore the primary subject, with spectral and asymptotic analysis providing supporting tools.
