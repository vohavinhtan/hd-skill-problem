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
w_{s;r,q}(t)=\frac{1}{\sqrt{s}}
\begin{pmatrix}
0\\
1\\
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
be the unique minimum-volume ellipsoid containing $K_{s;r,q}$, and define its two contact-parameter sets
$$
A_{s;r,q}=\left\{t\in[-1,1]:v(t)^{\mathsf T}Q_{s;r,q}v(t)=1\right\},
$$
$$
B_{s;r,q}=\left\{t\in[-1,1]:w_{s;r,q}(t)^{\mathsf T}Q_{s;r,q}w_{s;r,q}(t)=1\right\}.
$$
For compactness, put
$$
H=\max_{0\leq\tau\leq1}\tau(r-q\tau)^2.
$$

Determine, for arbitrary fixed $r,q>0$, the complete set of parameters $s_0>0$ at which the ordered pair
$$
\bigl(A_{s;r,q},B_{s;r,q}\bigr)
$$
is not locally constant as a function of $s$ at $s=s_0$. Your answer must be exact and valid for every $r,q>0$; numerical optimization or computer algebra is not allowed.

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

The problem asks for the exact contact-transition parameters of a one-parameter family of minimum-volume circumscribing ellipsoids. Its core is a convex-geometric active-set analysis: symmetry reduces the ellipsoid to a structured positive-definite matrix, containment becomes a small family of sharp contact inequalities, and the requested set consists precisely of the parameter values where the active contact pattern changes.