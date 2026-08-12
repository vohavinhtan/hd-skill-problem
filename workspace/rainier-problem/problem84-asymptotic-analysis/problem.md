# Normalized Math Problem

## LaTeX (Normalized)

For a real number $p>1$ and an integer $n\ge 2$, define
$$
\psi(x)=
\begin{cases}
e^{-1/x}(1-x), & 0<x\le 1,\\
0, & x=0,
\end{cases}
$$
and
$$
Q_n(p)=
\frac{\displaystyle\int_0^1 e^{-1/x}\exp\!\left(-n\,\psi(x)^p\right)\,dx}
{\displaystyle\int_0^1 \psi(x)\exp\!\left(-n\,\psi(x)^p\right)\,dx},
$$
where $e^{-1/x}$ at $x=0$ is understood by its continuous extension, equal to $0$.

For each $p>1$, determine the unique pair $(\beta_p,L_p)\in\mathbb{R}\times(0,\infty)$ such that
$$
\lim_{n\to\infty}(\log n)^{\beta_p}Q_n(p)=L_p.
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

The task asks for the exact logarithmic scaling exponent and leading coefficient in the large-$n$ behavior of a parameterized ratio of integrals. Determining these quantities requires asymptotic analysis of the defining integrals, so Asymptotic analysis is the appropriate sub-domain. The requested final object is an ordered pair of asymptotic parameters for each $p>1$.
