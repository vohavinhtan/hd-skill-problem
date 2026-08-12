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
For real $\lambda$, set
$$
Z_n(p,\lambda)
=
\int_0^1 x^{-\lambda}e^{-1/x}
\exp\!\left(-R_n(x)\right)\,dx,
$$
and define
$$
m_n(p,\lambda)
=
\frac{\displaystyle\int_0^1 x^{1-\lambda}e^{-1/x}
\exp\!\left(-R_n(x)\right)\,dx}
{Z_n(p,\lambda)}.
$$

For each fixed $p>1$ and $n\ge3$, let $\lambda_n(p)$ be the unique real number satisfying
$$
m_n\bigl(p,\lambda_n(p)\bigr)=\frac12.
$$
The existence and uniqueness of $\lambda_n(p)$ are part of what must be justified.

For $k\in\{0,1,\dots,8\}$, define
$$
M_{k,n}(p)
=
\frac{\displaystyle\int_0^1 x^{k-\lambda_n(p)}e^{-1/x}
\exp\!\left(-R_n(x)\right)\,dx}
{Z_n\bigl(p,\lambda_n(p)\bigr)}.
$$
Thus $M_{0,n}(p)=1$ and $M_{1,n}(p)=\tfrac12$.

Set
$$
H_n(p)
=
\det\!\bigl[M_{i+j,n}(p)\bigr]_{i,j=0}^{4}.
$$

For each $p>1$, determine the unique pair
$(\beta_p,L_p)\in\mathbb R\times(0,\infty)$ such that
$$
\lim_{n\to\infty}(\log n)^{\beta_p}H_n(p)=L_p.
$$
Give $\beta_p$ and $L_p$ exactly as functions of $p$.

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

The normalized measure develops three competing concentration layers, at the flat endpoint $x=0$, the interior zero $x=\tfrac12$, and the algebraic endpoint $x=1$. The implicit first-moment condition fixes their critical balance. The limiting three-point measure makes the $5\times5$ Hankel matrix rank deficient, so the first nonzero determinant term depends on a finer multi-sample fluctuation inside the widest boundary layer and on proving that all configurations involving algebraic-width collisions are negligible. Determining that surviving scale and coefficient is an asymptotic-analysis problem.