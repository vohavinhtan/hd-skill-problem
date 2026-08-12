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
and, for $k\in\{2,3,4\}$,
$$
M_{k,n}(p)=
\frac{\displaystyle\int_0^1 (1-x)^k e^{-p/x}
\exp\!\left(-n\,\psi_p(x)\right)\,dx}
{\displaystyle\int_0^1 e^{-p/x}
\exp\!\left(-n\,\psi_p(x)\right)\,dx}.
$$
Set
$$
H_n(p)=M_{2,n}(p)M_{4,n}(p)-M_{3,n}(p)^2.
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

The task asks for the exact logarithmic scale and leading coefficient of a Hankel-type gap formed from normalized moments of a parameterized family of integrals. The leading moment contributions cancel, so determining the surviving asymptotic behavior requires resolving the concentration width of a flat endpoint layer and proving competing endpoint configurations are negligible. The requested final object is the ordered pair of asymptotic parameters for each $p>1$.