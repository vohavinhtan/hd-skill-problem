# Normalized Math Problem

## LaTeX (Normalized)

For $0<\varepsilon\ll1$ and real $\lambda$, consider
$$
\varepsilon\dot x=y-\frac{x^3}{3}+x,
\qquad
\dot y=\lambda+1-x-\frac12\left(y+\frac23\right).
$$

For every sufficiently small $\varepsilon>0$, let $\lambda_H(\varepsilon)$ be the parameter value for which the equilibrium converging to $(1,-2/3)$ has purely imaginary eigenvalues.

Let $\lambda_C(\varepsilon)$ be the maximal-canard parameter through the right fold: the parameter for which the attracting slow manifold associated with $x>1$ and the repelling slow manifold associated with $|x|<1$ join through a single orbit near $(1,-2/3)$.

Determine
$$
\lim_{\varepsilon\to0^+}
\frac{\lambda_C(\varepsilon)-\lambda_H(\varepsilon)}{\varepsilon^2}.
$$

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Differential Equations and Dynamical Systems |
| **Sub-domain** | Bifurcation theory |
| **Problem Type** | Symbolic derivation |
| **Answer Type** | Exact scalar |

---

## Domain Explanation

This problem compares the singular Hopf bifurcation curve with the maximal-canard curve of a planar slow-fast family near a fold, so the requested quantity is a bifurcation invariant in parameter space.
Stability of the equilibrium is used to locate the Hopf curve, but the main task is the second-order separation of two bifurcation loci, making Bifurcation theory more appropriate than Stability theory.
