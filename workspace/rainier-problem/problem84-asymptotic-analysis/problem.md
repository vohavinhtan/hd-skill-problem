# Normalized Math Problem

## LaTeX (Normalized)

For a real number $p>1$, put $q=p-1$. For an integer $n\ge3$, define
$$
\phi_p(x)=
\begin{cases}
\exp\!\left(-\dfrac1x-\dfrac1{(1-x)^q}\right)\left|x-\dfrac12\right|,&0<x<1,\\
0,&x\in\{0,1\},
\end{cases}
$$
and
$$
R_n(x)=n\phi_p(x)^p.
$$

For real parameters $\lambda,\mu$, set
$$
Z_n(p,\lambda,\mu)
=
\int_0^1
x^{-\lambda}(1-x)^{-\mu}
\exp\!\left(-\frac1x-\frac1{(1-x)^q}\right)
\exp\!\left(-R_n(x)\right)\,dx,
$$
and define the probability measure
$$
d\nu_{n,p,\lambda,\mu}(x)
=
\frac{
 x^{-\lambda}(1-x)^{-\mu}
 \exp\!\left(-\frac1x-\frac1{(1-x)^q}\right)
 \exp\!\left(-R_n(x)\right)
}{Z_n(p,\lambda,\mu)}\,dx.
$$
Put
$$
a_n(p)=\frac{\log n}{p}.
$$

For each fixed $p>1$, prove that for all sufficiently large $n$ there is a unique pair
$$
(\lambda_n(p),\mu_n(p))\in\mathbb R^2
$$
satisfying the two simultaneous conditions
$$
\int_0^1(-\log x)\,d\nu_n(x)
=\frac13\log a_n(p),
$$
and
$$
\int_0^1\bigl(-\log(1-x)\bigr)\,d\nu_n(x)
=\frac1{3(p-1)}\log a_n(p),
$$
where, for brevity,
$$
\nu_n=\nu_{n,p,\lambda_n(p),\mu_n(p)}.
$$
The existence and uniqueness of this pair are part of what must be justified.

For $k\in\{0,1,\dots,8\}$, define
$$
M_{k,n}(p)=\int_0^1x^k\,d\nu_n(x),
$$
and set
$$
H_n(p)=\det\!\bigl[M_{i+j,n}(p)\bigr]_{i,j=0}^{4}.
$$

For $j\ge0$, write
$$
\psi_j(z)=\frac{d^{j+1}}{dz^{j+1}}\log\Gamma(z).
$$

For each $p>1$, prove that the following four quantities exist and determine them exactly:
$$
A_p
=
\lim_{n\to\infty}
\log a_n(p)\bigl(\lambda_n(p)-2\bigr),
$$
$$
B_p
=
\lim_{n\to\infty}
\log a_n(p)\bigl(\mu_n(p)-p\bigr),
$$
and the unique $\beta_p\in\mathbb R$ and $L_p>0$ such that
$$
\lim_{n\to\infty}(\log n)^{\beta_p}H_n(p)=L_p.
$$

Give the ordered quadruple
$$
(A_p,B_p,\beta_p,L_p)
$$
exactly as a function of $p$. Any case distinction in $p$ that is required by the asymptotics must be identified and justified.

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

The two parameters are defined through a coupled exponential-family moment map. The normalized measure develops three concentration layers, but the two endpoint layers are flat on different logarithmic spatial scales, while the interior zero is algebraic. The limiting three-point measure makes the $5\times5$ Hankel matrix rank deficient, and the first nonzero Vandermonde contribution depends on how repeated samples are distributed between the two flat layers. Determining the parameter drift, proving which multi-layer configurations dominate, and resolving the transition between competing logarithmic scales are asymptotic-analysis tasks.