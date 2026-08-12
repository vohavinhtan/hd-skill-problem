# Normalized Math Problem

## LaTeX (Normalized)

For a real number $p>1$ and an integer $n\ge3$, define
$$
\phi(x)=
\begin{cases}
e^{-1/x}(1-x)\left|x-\frac13\right|\left|x-\frac23\right|,&0<x\le1,\\
0,&x=0,
\end{cases}
$$
and
$$
R_n(x)=n\phi(x)^p.
$$

For real parameters $\lambda,\theta,\kappa$, set
$$
Z_n(p,\lambda,\theta,\kappa)
=
\int_0^1 x^{-\lambda}e^{\theta x+\kappa x^2}e^{-1/x}
\exp\!\left(-R_n(x)\right)\,dx,
$$
and define the probability measure
$$
d\mu_{n,p,\lambda,\theta,\kappa}(x)
=
\frac{x^{-\lambda}e^{\theta x+\kappa x^2}e^{-1/x}
\exp\!\left(-R_n(x)\right)}
{Z_n(p,\lambda,\theta,\kappa)}\,dx.
$$
Put
$$
a_n(p)=\frac{\log n}{p}.
$$

For each fixed $p>1$, prove that for all sufficiently large $n$ there is a unique triple
$$
(\lambda_n(p),\theta_n(p),\kappa_n(p))\in\mathbb R^3
$$
satisfying the three simultaneous moment conditions
$$
\int_0^1(-\log x)\,d\mu_n(x)
=\frac14\log a_n(p),
$$
$$
\int_0^1x\,d\mu_n(x)=\frac12,
$$
and
$$
\int_0^1x^2\,d\mu_n(x)=\frac7{18},
$$
where, for brevity,
$$
\mu_n=\mu_{n,p,\lambda_n(p),\theta_n(p),\kappa_n(p)}.
$$
The existence and uniqueness of this triple are part of what must be justified.

For $k\in\{0,1,\dots,12\}$, define
$$
M_{k,n}(p)=\int_0^1x^k\,d\mu_n(x),
$$
and set
$$
H_n(p)=\det\!\bigl[M_{i+j,n}(p)\bigr]_{i,j=0}^{6}.
$$

Put
$$
\ell_2=\log2,\qquad \ell_3=\log3,
$$
and define
$$
\Xi_p
=
\det\!\left[
\frac{\Gamma^{(i+j)}(1/p)}{\Gamma(1/p)}
\right]_{i,j=0}^{3}.
$$

For each $p>1$, prove that the following five quantities exist and determine them exactly:
$$
A_p
=
\lim_{n\to\infty}
\log a_n(p)\bigl(\lambda_n(p)-2\bigr),
$$
$$
B_p
=
\lim_{n\to\infty}\theta_n(p),
$$
$$
C_p
=
\lim_{n\to\infty}\kappa_n(p),
$$
and the unique $\beta_p\in\mathbb R$ and $L_p>0$ such that
$$
\lim_{n\to\infty}(\log n)^{\beta_p}H_n(p)=L_p.
$$

Give the ordered quintuple
$$
(A_p,B_p,C_p,\beta_p,L_p)
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

The three parameters are determined by a coupled exponential-family moment map, while the normalized measure develops four competing concentration layers at $0$, $\tfrac13$, $\tfrac23$, and $1$. The three moment conditions force a four-point limiting measure, making the $7\times7$ Hankel matrix rank deficient. Its first nonzero term requires four samples in the flat endpoint layer and one sample in each algebraic layer, so the surviving coefficient depends on a fourth-order log-Gamma moment determinant. Proving global uniqueness of the implicit triple, resolving the four-layer balance, and identifying the dominant Vandermonde configuration are asymptotic-analysis tasks.