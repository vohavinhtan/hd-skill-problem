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

For real parameters $\lambda$ and $\theta$, set
$$
Z_n(p,\lambda,\theta)
=
\int_0^1 x^{-\lambda}e^{\theta x}e^{-1/x}
\exp\!\left(-R_n(x)\right)\,dx,
$$
and define the probability measure
$$
d\mu_{n,p,\lambda,\theta}(x)
=
\frac{x^{-\lambda}e^{\theta x}e^{-1/x}
\exp\!\left(-R_n(x)\right)}
{Z_n(p,\lambda,\theta)}\,dx.
$$
Put
$$
a_n(p)=\frac{\log n}{p}.
$$

For each fixed $p>1$, prove that for all sufficiently large $n$ there is a unique pair
$$
(\lambda_n(p),\theta_n(p))\in\mathbb R^2
$$
satisfying the two simultaneous moment conditions
$$
\int_0^1(-\log x)\,d\mu_{n,p,\lambda_n(p),\theta_n(p)}(x)
=\frac14\log a_n(p),
$$
and
$$
\int_0^1x\,d\mu_{n,p,\lambda_n(p),\theta_n(p)}(x)
=\frac12.
$$
The existence and uniqueness of this pair are part of what must be justified.

For $k\in\{0,1,\dots,8\}$, define
$$
M_{k,n}(p)
=
\int_0^1x^k\,d\mu_{n,p,\lambda_n(p),\theta_n(p)}(x),
$$
and set
$$
H_n(p)
=
\det\!\bigl[M_{i+j,n}(p)\bigr]_{i,j=0}^{4}.
$$

For $j\ge0$, write
$$
\psi_j(z)=\frac{d^{j+1}}{dz^{j+1}}\log\Gamma(z),
$$
and define
$$
\Delta_p
=
\psi_1\!\left(\frac1p\right)\psi_3\!\left(\frac1p\right)
+2\psi_1\!\left(\frac1p\right)^3
-\psi_2\!\left(\frac1p\right)^2.
$$

For each $p>1$, prove that the following four limits exist and determine them exactly:
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
\log a_n(p)\bigl(\theta_n(p)-\log16\bigr),
$$
$$
\beta_p
\text{ and }L_p>0
\quad\text{such that}\quad
\lim_{n\to\infty}(\log n)^{\beta_p}H_n(p)=L_p.
$$
Give the ordered quadruple
$$
(A_p,B_p,\beta_p,L_p)
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

The two parameters are determined by a coupled exponential-family moment map, while the normalized measure develops three competing concentration layers at $0$, $\tfrac12$, and $1$. The moment constraints tune both the limiting layer weights and the slow logarithmic drift of the parameters. The resulting three-point weak limit makes the $5\times5$ Hankel matrix rank deficient, so the first nonzero determinant term comes from a finer three-sample fluctuation inside the flat endpoint layer. Establishing global uniqueness of the implicit pair, resolving its coupled asymptotics, and identifying the dominant determinant configuration are asymptotic-analysis tasks.