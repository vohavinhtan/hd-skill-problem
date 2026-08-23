# Normalized Math Problem

## LaTeX (Normalized)

For real parameters $\mu,\nu$, put
$$
A=(x^2+y^2)^2,
\qquad
B=1-2x^2+2y^2+(x^2+y^2)^2.
$$
Consider the planar polynomial system
$$
\dot x=
(x-x^3+3xy^2)
\left[\mu A^2B^2+\nu AB(A^2+B^2)-(A^2+B^2)^2\right]
-
(y-3x^2y+y^3)
\left[A^3B^3-(A^2+B^2-5AB)^2(x^2-y^2-A)^2\right],
$$
$$
\dot y=
(y-3x^2y+y^3)
\left[\mu A^2B^2+\nu AB(A^2+B^2)-(A^2+B^2)^2\right]
+
(x-x^3+3xy^2)
\left[A^3B^3-(A^2+B^2-5AB)^2(x^2-y^2-A)^2\right].
$$

Determine the interior in $\mathbb R^2$ of the set of parameter pairs $(\mu,\nu)$ for which this system has exactly three limit cycles, all hyperbolic, with exactly two asymptotically stable.

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

This problem asks for the parameter region in which a planar polynomial family has a prescribed number and stability pattern of hyperbolic limit cycles, which is a bifurcation-theory question.
The requested region is determined by how periodic orbits appear and disappear as the two parameters vary.
Although stability of individual cycles is part of the condition, the primary task is to locate the bifurcation region in parameter space, so Bifurcation theory is more appropriate than Stability theory.
