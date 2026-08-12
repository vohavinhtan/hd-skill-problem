# Normalized Math Problem

## LaTeX (Normalized)

For real numbers $p>1$ and $\lambda\ge 0$, and an integer $n\ge 3$, define
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

For each $p>1$ and $\lambda\ge0$, determine the unique pair
$(\beta_{p,\lambda},L_{p,\lambda})\in\mathbb{R}\times(0,\infty)$ such that
$$
\lim_{n\to\infty}
\frac{\log n}{(\log\log n)^{\beta_{p,\lambda}}}
\left(
\frac{p^2Q_n(p,\lambda)}{(\log n)^2}-1
\right)
=L_{p,\lambda}.
$$
Give $\beta_{p,\lambda}$ and $L_{p,\lambda}$ exactly as functions of $p$ and $\lambda$.

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

The task asks for the first nontrivial correction to a logarithmically normalized ratio of parameterized integrals, including the change in correction scale at a boundary value of the parameter $\lambda$. Determining the correction exponent and coefficient requires second-order asymptotic analysis, so Asymptotic analysis is the appropriate sub-domain. The requested final object is an ordered pair of asymptotic parameters for each $(p,\lambda)$.