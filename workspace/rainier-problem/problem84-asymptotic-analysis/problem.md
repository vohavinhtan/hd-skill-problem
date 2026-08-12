# Normalized Math Problem

## LaTeX (Normalized)

For a real number $p>1$, an integer $n\ge3$, and a real parameter $\lambda$, define
$$
\phi(x)=
\begin{cases}
e^{-1/x}(1-x), & 0<x\le1,\\
0, & x=0,
\end{cases}
$$
and
$$
Z_n(p,\lambda)
=
\int_0^1 x^{-\lambda}e^{-1/x}
\exp\!\left(-n\phi(x)^p\right)\,dx,
$$
$$
m_n(p,\lambda)
=
\frac{\displaystyle\int_0^1 x^{1-\lambda}e^{-1/x}
\exp\!\left(-n\phi(x)^p\right)\,dx}
{Z_n(p,\lambda)}.
$$

For each $p>1$ and $n\ge3$, let $\lambda_n(p)$ be the unique real number satisfying
$$
m_n\bigl(p,\lambda_n(p)\bigr)=\frac12.
$$
The existence and uniqueness of $\lambda_n(p)$ are part of what must be justified.

Define the probability measure
$$
d\mu_{n,p}(x)
=
\frac{x^{-\lambda_n(p)}e^{-1/x}
\exp\!\left(-n\phi(x)^p\right)}
{Z_n\bigl(p,\lambda_n(p)\bigr)}\,dx,
$$
and set
$$
C_n(p)
=
\int_0^1
\left(x-\frac12\right)
\,n\phi(x)^p\,d\mu_{n,p}(x).
$$

For each $p>1$, determine the unique pair
$(\beta_p,L_p)\in\mathbb{R}\times(0,\infty)$ such that
$$
\lim_{n\to\infty}
(\log n)^{\beta_p}C_n(p)=L_p.
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

The parameter $\lambda_n(p)$ is defined implicitly by a normalized first-moment condition, and the requested quantity is a covariance-type observable evaluated under the resulting critical tilt. The two endpoint layers have the same leading scaled-energy law, so the leading covariance cancels; the first nonzero term comes from finer fluctuations in the flat endpoint layer together with the second-order mismatch between the endpoint energy means. Determining that surviving scale and coefficient, while proving existence and uniqueness of the critical tilt and controlling discarded regions, is an asymptotic-analysis problem.