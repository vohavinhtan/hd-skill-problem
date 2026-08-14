# Normalized Math Problem

## LaTeX (Normalized)

Let $\mathbb{T}=\mathbb{R}/(2\pi\mathbb{Z})$ and $X=[0,\infty)\times\mathbb{T}$. For real parameters $a$ and $\lambda$, consider the autonomous system
$$
\dot r=r\bigl(a+\sin\theta-r^2\bigr),
\qquad
\dot\theta=1+\lambda\cos\theta.
$$
The set $\mathcal{A}=\{0\}\times\mathbb{T}$ is invariant. Call $\mathcal{A}$ globally asymptotically stable if both of the following conditions hold:

1. For every $\varepsilon>0$, there exists $\delta>0$ such that every solution with $0\leq r(0)<\delta$ satisfies $r(t)<\varepsilon$ for all $t\geq 0$.
2. Every solution in $X$ satisfies $\lim_{t\to\infty}r(t)=0$.

Determine the complete set of parameter pairs $(a,\lambda)\in\mathbb{R}^2$ for which $\mathcal{A}$ is globally asymptotically stable. Give the answer as one explicit region, with all case distinctions stated as inequalities in $\lambda$.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Differential Equations and Dynamical Systems |
| **Sub-domain** | Stability theory |
| **Problem Type** | Parameter identification |
| **Answer Type** | Interval or region description |

---

## Domain Explanation

This problem asks for the exact parameter region in which an invariant set of a nonlinear autonomous system is globally asymptotically stable, so its primary classification is Differential Equations and Dynamical Systems and Stability theory. Real analysis is the strongest competing domain because uniform estimates and limiting behavior are needed at degenerate parameter values, but those tools support the stability classification rather than define the central object of study.
