# Normalized Math Problem

## LaTeX (Normalized)

For a real number $p>1$ and an integer $n\ge 1$, define
$$
R_n(p)=
\frac{\displaystyle\int_0^1 x\exp\!\left(-n\,[x^2(1-x)]^p\right)\,dx}
{\displaystyle\int_0^1 \exp\!\left(-n\,[x^2(1-x)]^p\right)\,dx}.
$$
For each $p>1$, determine the unique pair $(\alpha_p,L_p)\in\mathbb{R}\times(0,\infty)$ such that
$$
\lim_{n\to\infty} n^{\alpha_p}R_n(p)=L_p.
$$
Give $\alpha_p$ and $L_p$ exactly as functions of $p$.

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

The task asks for the exact leading power and leading coefficient of a parameterized ratio of Laplace-type integrals as $n\to\infty$. Determining the pair requires asymptotic localization and comparison of contributions to the numerator and denominator, so asymptotic analysis is the primary subject. The requested final object is the ordered pair of asymptotic parameters for each $p>1$.
