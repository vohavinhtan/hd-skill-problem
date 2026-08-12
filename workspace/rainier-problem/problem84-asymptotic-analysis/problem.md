# Normalized Math Problem

## LaTeX (Normalized)

For a real number $p>1$, an integer $n\ge 3$, and a real parameter $\lambda$, define
$$
\phi_\lambda(x)=
\begin{cases}
x^{-\lambda}e^{-1/x}(1-x), & 0<x\le 1,\\
0, & x=0,
\end{cases}
$$
and
$$
Q_n(p,\lambda)=
\frac{\displaystyle\int_0^1 x^{-\lambda}e^{-1/x}
\exp\!\left(-n\,\phi_\lambda(x)^p\right)\,dx}
{\displaystyle\int_0^1 \phi_\lambda(x)
\exp\!\left(-n\,\phi_\lambda(x)^p\right)\,dx},
$$
where $x^{-\lambda}e^{-1/x}$ at $x=0$ is understood by its continuous extension, equal to $0$.

Set
$$
C_n(p)=
\left.
\frac{\partial^3}{\partial\lambda^3}
\log Q_n(p,\lambda)
\right|_{\lambda=0}.
$$
For each $p>1$, determine the unique pair
$(\beta_p,L_p)\in\mathbb{R}\times(0,\infty)$ such that
$$
\lim_{n\to\infty}
\frac{(\log n)^3}{(\log\log n)^{\beta_p}}\,C_n(p)
=L_p.
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

The task asks for the asymptotic scale and leading coefficient of a third-order parameter sensitivity of a logarithmic ratio of integrals. The dominant behavior comes from the interaction between a flat endpoint and differentiation with respect to the parameter, so asymptotic analysis is the appropriate sub-domain. The requested final object is the ordered pair of scaling parameters for each $p>1$.
