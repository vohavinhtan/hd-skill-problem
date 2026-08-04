# Normalized Math Problem

## LaTeX (Normalized)

Let $\mathcal F$ be the class of all nonnegative functions $f:[0,1]\to\mathbb R$ such that $f$ is continuously differentiable, $f'$ is piecewise continuously differentiable, and
$$
f(0)=f(1)=0.
$$
For $x\in[0,1]$, put
$$
\rho(x)=\max\left\{x-\frac{1}{2},0\right\}.
$$
For $f\in\mathcal F$, define
$$
E(f)=\int_{0}^{1}\bigl(f'(x)\bigr)^2\,dx.
$$
Among all $f\in\mathcal F$ satisfying the five moment constraints
$$
\int_{0}^{1}f(x)\,dx=\frac{91}{51840},
$$
$$
\int_{0}^{1}x f(x)\,dx=\frac{917}{1244160},
$$
$$
\int_{0}^{1}x^2 f(x)\,dx=\frac{647}{1866240},
$$
$$
\int_{0}^{1}\rho(x)f(x)\,dx=\frac{1}{15360},
$$
$$
\int_{0}^{1}\rho(x)^2f(x)\,dx=\frac{1}{107520},
$$
determine the unique function $f$ for which $E(f)$ is as small as possible.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Calculus |
| **Sub-domain** | Integration |
| **Problem Type** | Optimization |
| **Answer Type** | Function or mapping |

---

## Domain Explanation

This problem involves one variable constrained minimization, definite integrals, integration by parts, and exact moment evaluation on an interval, which are part of Calculus and Integration.
The problem also involves an energy functional on a class of functions, which is part of Analysis.
However, the minimizing function is determined by elementary interval calculations and an active set energy gap, so Calculus is the more appropriate primary classification.
