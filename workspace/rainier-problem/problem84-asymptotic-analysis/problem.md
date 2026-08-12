# Normalized Math Problem

## LaTeX (Normalized)

For a real number $p>1$ and an integer $n\ge 3$, define
$$
\psi_p(x)=
\begin{cases}
e^{-p/x}(1-x), & 0<x\le 1,\\
0, & x=0,
\end{cases}
$$
and, for $k\in\{2,3,4,5,6\}$,
$$
M_{k,n}(p)=
\frac{\displaystyle\int_0^1 (1-x)^k e^{-p/x}
\exp\!\left(-n\,\psi_p(x)\right)\,dx}
{\displaystyle\int_0^1 e^{-p/x}
\exp\!\left(-n\,\psi_p(x)\right)\,dx}.
$$
For $k\in\{2,3,4\}$, set
$$
\Delta_{k,n}(p)
=M_{k,n}(p)M_{k+2,n}(p)-M_{k+1,n}(p)^2,
$$
and define
$$
T_n(p)=
\frac{\Delta_{2,n}(p)\Delta_{4,n}(p)}{\Delta_{3,n}(p)^2}-1.
$$
For each $p>1$, determine the unique pair
$(\beta_p,L_p)\in\mathbb{R}\times(0,\infty)$ such that
$$
\lim_{n\to\infty}(\log n)^{\beta_p}T_n(p)=L_p.
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

The task asks for the exact logarithmic scale and leading coefficient of a ratio built from consecutive Hankel-type moment gaps. The leading rare-layer mass, the leading deterministic location of the flat endpoint layer, and the first Hankel-gap scale all cancel in the displayed ratio, so the surviving term depends on finer fluctuations inside the boundary layer. Determining that term and proving that competing endpoint contributions remain negligible makes asymptotic analysis the appropriate sub-domain.