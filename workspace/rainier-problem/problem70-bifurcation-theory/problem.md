# Normalized Math Problem

## LaTeX (Normalized)

For real parameters $\mu,\nu$, define
$$
E(x,y)=\frac{y^2}{2}+\frac{x^6}{8}-\frac{15x^4}{16}+\frac{3x^2}{2},
$$
and
$$
g(x)=\frac34x(x^2-1)(x^2-4).
$$
Consider the planar system
$$
\dot x
=
y+g(x)E(x,y)\left(\mu+\nu E(x,y)-E(x,y)^2\right),
$$
$$
\dot y
=
-g(x)+yE(x,y)\left(\mu+\nu E(x,y)-E(x,y)^2\right).
$$

Determine all parameter pairs $(\mu,\nu)$ for which this system has exactly eight limit cycles, all hyperbolic, with exactly five asymptotically stable.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Differential Equations and Dynamical Systems |
| **Sub-domain** | Bifurcation theory |
| **Problem Type** | Parameter identification |
| **Answer Type** | Interval or region description |

---

## Domain Explanation

This problem asks for the parameter region in which a planar family changes to a specified configuration of hyperbolic limit cycles, which is a bifurcation-theory question.
The decisive structure is the creation and stability of periodic orbits on different energy levels as the two parameters move.
Although stability of individual cycles is used, the requested object is a bifurcation region in parameter space, so Bifurcation theory is more appropriate than Stability theory.
