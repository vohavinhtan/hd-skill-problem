# Normalized Math Problem

## LaTeX (Normalized)

For a real number $p>1$, an integer $n\ge3$, and a real parameter $\lambda$, define
$$
\phi(x)=
\begin{cases}
e^{-1/x}(1-x),&0<x\le1,\\
0,&x=0,
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

For $k\in\{0,1,2,3,4,5,6\}$, define
$$
M_{k,n}(p)
=
\frac{\displaystyle\int_0^1 x^{k-\lambda_n(p)}e^{-1/x}
\exp\!\left(-n\phi(x)^p\right)\,dx}
{Z_n\bigl(p,\lambda_n(p)\bigr)}.
$$
Thus $M_{0,n}(p)=1$ and $M_{1,n}(p)=\tfrac12$.

Set
$$
H_n(p)
=
\det\!\begin{pmatrix}
M_{0,n}(p)&M_{1,n}(p)&M_{2,n}(p)&M_{3,n}(p)\\
M_{1,n}(p)&M_{2,n}(p)&M_{3,n}(p)&M_{4,n}(p)\\
M_{2,n}(p)&M_{3,n}(p)&M_{4,n}(p)&M_{5,n}(p)\\
M_{3,n}(p)&M_{4,n}(p)&M_{5,n}(p)&M_{6,n}(p)
\end{pmatrix}.
$$

For each $p>1$, determine the unique pair
$(\beta_p,L_p)\in\mathbb{R}\times(0,\infty)$ such that
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

The parameter $\lambda_n(p)$ is defined implicitly by a normalized first-moment condition, while the requested quantity is a fourth-order Hankel determinant of moments under the resulting critical tilt. The limiting measure separates into two endpoint layers, making the leading two-point approximation rank deficient; the first nonzero determinant term therefore comes from finer fluctuations inside the flat endpoint layer. Establishing the critical tilt, identifying the dominant endpoint configuration, and resolving the surviving determinant scale are asymptotic-analysis tasks.