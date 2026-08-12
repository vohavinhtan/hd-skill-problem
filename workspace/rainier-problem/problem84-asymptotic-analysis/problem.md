# Normalized Math Problem

## LaTeX (Normalized)

For a real number $p>1$ and an integer $n\ge3$, define
$$
\phi(x)=
\begin{cases}
e^{-1/x}(1-x), & 0<x\le1,\\
0, & x=0,
\end{cases}
$$
and
$$
R_n(x)=n\phi(x)^p.
$$
For real $\lambda$ and $\tau>0$, set
$$
Z_n(p,\lambda,\tau)
=
\int_0^1 x^{-\lambda}e^{-1/x}
\exp\!\left(-\tau R_n(x)\right)\,dx,
$$
and define the probability measure
$$
d\mu_{n,p,\lambda,\tau}(x)
=
\frac{x^{-\lambda}e^{-1/x}
\exp\!\left(-\tau R_n(x)\right)}
{Z_n(p,\lambda,\tau)}\,dx.
$$
Put
$$
a_n(p)=\frac{\log n}{p}.
$$

For each fixed $p>1$, prove that for all sufficiently large $n$ there is a unique pair
$$
(\lambda_n(p),\tau_n(p))\in\mathbb R\times(0,\infty)
$$
satisfying the two conditions
$$
\int_0^1(-\log x)\,d\mu_{n,p,\lambda_n(p),\tau_n(p)}(x)
=\frac12\log a_n(p),
$$
and
$$
\int_0^1 R_n(x)\,d\mu_{n,p,\lambda_n(p),\tau_n(p)}(x)
=\frac1p.
$$
The existence and uniqueness of this pair are part of what must be justified.

For each $p>1$, prove that the following limits exist and determine them exactly:
$$
A_p
=
\lim_{n\to\infty}
\log a_n(p)
\left[
 a_n(p)\log a_n(p)\bigl(2-\lambda_n(p)\bigr)-1
\right],
$$
$$
B_p
=
\lim_{n\to\infty}
 a_n(p)^2\bigl(\tau_n(p)-1\bigr).
$$
Give the ordered pair $(A_p,B_p)$ exactly as a function of $p$.

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

The problem defines two parameters implicitly through simultaneous moment constraints for a family of endpoint-concentrated probability measures. Determining their asymptotics requires proving existence and uniqueness of the coupled parameter pair, identifying the competing boundary layers, and resolving two different correction scales in the implicit system. The primary mathematical content is therefore asymptotic analysis.