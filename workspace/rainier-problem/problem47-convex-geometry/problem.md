# Normalized Math Problem

## LaTeX (Normalized)

For $s,r,q>0$ and $|t|\leq1$, define
$$
v(t)=
\begin{pmatrix}
1\\
t\\
t^2
\end{pmatrix},
\qquad
w_{s;r,q}(t)=
\begin{pmatrix}
0\\
s^{-1/2}\\
rt-qt^3
\end{pmatrix},
$$
and
$$
K_{s;r,q}=\operatorname{conv}
\left(
\left\{\pm v(t):|t|\leq1\right\}
\cup
\left\{\pm w_{s;r,q}(t):|t|\leq1\right\}
\right)
\subset\mathbb R^3.
$$
Let
$$
E(Q_{s;r,q})=
\left\{x\in\mathbb R^3:x^{\mathsf T}Q_{s;r,q}x\leq1\right\}
$$
be the unique minimum-volume ellipsoid containing $K_{s;r,q}$, and define
$$
A_{s;r,q}=\left\{t\in[-1,1]:v(t)^{\mathsf T}Q_{s;r,q}v(t)=1\right\},
$$
$$
B_{s;r,q}=\left\{t\in[-1,1]:w_{s;r,q}(t)^{\mathsf T}Q_{s;r,q}w_{s;r,q}(t)=1\right\}.
$$
Also put
$$
H:=\max_{0\leq u\leq1}u(r-qu)^2.
$$

For arbitrary fixed $r,q>0$, determine the complete set of parameters $s_0>0$ at which the ordered contact pair
$$
\bigl(A_{s;r,q},B_{s;r,q}\bigr)
$$
is not locally constant as a function of $s$ at $s=s_0$.

Your answer must be exact and valid for every $r,q>0$. Numerical optimization, computer algebra, exhaustive search, and unproved completeness claims are not accepted.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Topology and Geometry |
| **Sub-domain** | Convex geometry |
| **Problem Type** | Parameter identification |
| **Answer Type** | Set or multiset of objects |

---

## Domain Explanation

The task is a single parametric minimum-volume circumscribing-ellipsoid problem. The deformation acts anisotropically on one generating curve, so the contact inequality itself changes with the parameter being identified. The difficulty is to derive the sharp contact constraints, exhaust the possible active sets, and detect genuine loss and re-entry of contacts without introducing a separate bifurcation or algebraic-geometry subproblem.