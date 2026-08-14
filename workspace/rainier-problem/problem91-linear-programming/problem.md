# Normalized Math Problem

## LaTeX (Normalized)

Fix a real parameter $a>1$. Let $\mathcal M_a$ be the set of probability measures $\pi$ on $[-1,1]\times[-a,a]$ satisfying the following conditions:

- the first marginal of $\pi$ is the uniform probability measure on $[-1,1]$;
- the second marginal of $\pi$ is the uniform probability measure on $[-a,a]$;
- for any disintegration
  $$
  \pi(dx,dy)=\frac{1}{2}\,dx\,K_x(dy),
  $$
  one has
  $$
  \int_{-a}^{a}y\,K_x(dy)=x
  $$
  for Lebesgue-almost every $x\in[-1,1]$.

Let $\pi_a^*$ be the unique minimizer of
$$
\int_{[-1,1]\times[-a,a]}|y-x|\,d\pi(x,y)
$$
over $\mathcal M_a$. For any disintegration
$$
\pi_a^*(dx,dy)=\frac{1}{2}\,dx\,K_{a,x}^*(dy),
$$
define, for almost every $x\in(-1,1)$,
$$
\ell_a(x)=K_{a,x}^*([-a,x)),
\qquad
u_a(x)=K_{a,x}^*((x,a]).
$$

Determine exactly, as a function of $a$,
$$
J(a)=\int_{-1}^{1}\ell_a(x)u_a(x)\,dx.
$$

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Optimization and Numerical Mathematics |
| **Sub-domain** | Linear programming |
| **Problem Type** | Optimization |
| **Answer Type** | Exact symbolic expression |

---

## Domain Explanation

The primary task is an infinite-dimensional linear optimization over martingale couplings, with fixed marginal and conditional-mean constraints, followed by extraction of a functional of the unique optimizer. Measure theory is the strongest competing classification because disintegration and probability measures are essential supporting tools, but the decisive mathematical content is identifying and characterizing the optimizer of the constrained transport problem.
