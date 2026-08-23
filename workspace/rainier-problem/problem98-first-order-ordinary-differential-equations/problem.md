# Normalized Math Problem

## LaTeX (Normalized)

For each positive integer $n$, let $y_n$ be the solution on $[0,1]$ of
$$
\frac1n y_n'(x)=x-y_n(x)^2,
\qquad
y_n(1)=0.
$$
Define
$$
C=
3^{1/3}
\frac{\Gamma(\frac23)}{\Gamma(\frac13)}
$$
and
$$
D=
\frac{3^{4/3}\Gamma(\frac23)^2}{2\pi}.
$$
Determine the exact value of
$$
\lim_{n\to\infty}
n e^{4n/3}
\left[
C+n^{1/3}y_n(0)-De^{-4n/3}
\right].
$$

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Differential Equations and Dynamical Systems |
| **Sub-domain** | First-order ordinary differential equations |
| **Problem Type** | Exact computation |
| **Answer Type** | Exact scalar |

---

## Domain Explanation

The sequence is defined through a parameter-dependent first-order Riccati equation with terminal data, so Differential Equations and Dynamical Systems and First-order ordinary differential equations is the best fit. The requested quantity is a limit, but resolving it requires linearizing the Riccati equation, identifying the turning-point scale, and extracting an exponentially small correction from the associated linear equation.
