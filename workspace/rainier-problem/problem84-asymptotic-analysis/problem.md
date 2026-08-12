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

Set
$$
a_n(p)=\frac{\log n}{p}.
$$
For each $p>1$, prove that the following two limits exist and determine them exactly:
$$
A_p
=
\lim_{n\to\infty}
a_n(p)
\left[
a_n(p)\log a_n(p)\bigl(\lambda_n(p)-2\bigr)-1
\right],
$$
$$
B_p
=
\lim_{n\to\infty}
\log a_n(p)
\left\{
a_n(p)
\left[
a_n(p)\log a_n(p)\bigl(\lambda_n(p)-2\bigr)-1
\right]
-A_p
\right\}.
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

The parameter $\lambda_n(p)$ is defined implicitly by a normalized first-moment condition. Determining its asymptotics requires proving monotonicity and uniqueness, identifying two competing endpoint layers whose leading masses balance at a critical tilt, and resolving the implicit balance through two successive correction scales. The primary mathematical content is therefore asymptotic analysis.