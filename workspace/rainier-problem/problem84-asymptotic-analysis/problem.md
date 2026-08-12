# Normalized Math Problem

## LaTeX (Normalized)

For a real number $p>1$ and an integer $n\ge3$, define
$$
\phi(x)=
\begin{cases}
e^{-1/x}(1-x)\left|x-\frac12\right|,&0<x\le1,\\
0,&x=0,
\end{cases}
$$
and
$$
R_n(x)=n\phi(x)^p.
$$

For real $\lambda,\theta$, real $\eta>-1/p$, and $\tau>0$, set
$$
Z_n(p,\lambda,\theta,\eta,\tau)
=
\int_0^1 x^{-\lambda}e^{\theta x}e^{-1/x}R_n(x)^\eta
\exp\!\left(-\tau R_n(x)\right)\,dx,
$$
and define the probability measure
$$
d\mu_{n,p,\lambda,\theta,\eta,\tau}(x)
=
\frac{x^{-\lambda}e^{\theta x}e^{-1/x}R_n(x)^\eta
\exp\!\left(-\tau R_n(x)\right)}
{Z_n(p,\lambda,\theta,\eta,\tau)}\,dx.
$$
Put
$$
a_n(p)=\frac{\log n}{p}.
$$

For each fixed $p>1$, prove that for all sufficiently large $n$ there is a unique quadruple
$$
(\lambda_n(p),\theta_n(p),\eta_n(p),\tau_n(p))
\in\mathbb R^2\times(-1/p,\infty)\times(0,\infty)
$$
satisfying the four simultaneous moment conditions
$$
\int_0^1(-\log x)\,d\mu_n(x)
=\frac14\log a_n(p),
$$
$$
\int_0^1x\,d\mu_n(x)=\frac12,
$$
$$
\int_0^1\log R_n(x)\,d\mu_n(x)
=\psi_0\!\left(\frac1p\right),
$$
and
$$
\int_0^1R_n(x)\,d\mu_n(x)=\frac1p,
$$
where, for brevity,
$$
\mu_n=\mu_{n,p,\lambda_n(p),\theta_n(p),\eta_n(p),\tau_n(p)}.
$$
The existence and uniqueness of this quadruple are part of what must be justified.

For $k\in\{0,1,\dots,8\}$, define
$$
M_{k,n}(p)=\int_0^1x^k\,d\mu_n(x),
$$
and set
$$
H_n(p)=\det\!\bigl[M_{i+j,n}(p)\bigr]_{i,j=0}^{4}.
$$

For $j\ge0$, write
$$
\psi_j(z)=\frac{d^{j+1}}{dz^{j+1}}\log\Gamma(z),
$$
put $\ell=\log2$, and define
$$
\Delta_p
=
\psi_1\!\left(\frac1p\right)\psi_3\!\left(\frac1p\right)
+2\psi_1\!\left(\frac1p\right)^3
-\psi_2\!\left(\frac1p\right)^2,
$$
$$
\Theta_p
=
\frac{\psi_2(1/p)}{p-\psi_1(1/p)}.
$$

For each $p>1$, prove that the following six quantities exist and determine them exactly:
$$
A_p
=
\lim_{n\to\infty}\log a_n(p)\bigl(\lambda_n(p)-2\bigr),
$$
$$
B_p
=
\lim_{n\to\infty}\log a_n(p)\bigl(\theta_n(p)-\log16\bigr),
$$
$$
C_p
=
\lim_{n\to\infty}a_n(p)\log a_n(p)\,\eta_n(p),
$$
$$
D_p
=
\lim_{n\to\infty}a_n(p)^2\log a_n(p)\bigl(\tau_n(p)-1\bigr),
$$
and the unique $\beta_p\in\mathbb R$ and $L_p>0$ such that
$$
\lim_{n\to\infty}(\log n)^{\beta_p}H_n(p)=L_p.
$$

Give the ordered sextuple
$$
(A_p,B_p,C_p,D_p,\beta_p,L_p)
$$
exactly as a function of $p$.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Analysis |
| **Sub-domain** | Asymptotic analysis |
| **Problem Type** | Parameter identification |
| **Answer Type** | Tuple or ordered list |

---

## Domain Explanation

The problem couples four exponential-family parameters through two spatial moments and two energy moments while the measure develops three competing concentration layers at $0$, $\tfrac12$, and $1$. The slow drift of $\lambda$ changes the internal energy law of the flat layer before it changes the algebraic layers, forcing a separate shape correction through $\eta$ and a still finer rate correction through $\tau$. After these cancellations, the limiting three-point spatial measure still makes the $5\times5$ Hankel matrix rank deficient, so its first nonzero term comes from a multi-sample fluctuation inside the flat layer. Proving global uniqueness, resolving the nested parameter scales, and identifying the dominant determinant configuration are asymptotic-analysis tasks.