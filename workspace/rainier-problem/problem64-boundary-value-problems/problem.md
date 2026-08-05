# Normalized Math Problem

## LaTeX (Normalized)

Consider the singular boundary value problem
$$
-\frac{d}{dx}\!\left((1-x^2)u'(x)\right)+\frac{4}{1-x^2}u(x)=\lambda u(x),
\qquad -1<x<1,
$$
where admissible solutions belong to $C^2((-1,1))\cap C([-1,1])$ and satisfy
$$
u(-1)=u(1)=0.
$$
Let
$$
\lambda_0<\lambda_1<\lambda_2<\cdots
$$
be the real numbers for which the problem has a nonzero admissible solution. For an integer $n\geq2$, let
$$
-1<\xi_1<\xi_2<\cdots<\xi_n<1
$$
be the zeros in $(-1,1)$ of a nonzero solution corresponding to $\lambda_n$.

Determine, in closed form as a function of $n$, the exact value of
$$
\prod_{1\leq i<j\leq n}(\xi_j-\xi_i)^2.
$$

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Differential Equations and Dynamical Systems |
| **Sub-domain** | Boundary value problems |
| **Problem Type** | Symbolic derivation |
| **Answer Type** | Exact symbolic expression |

---

## Domain Explanation

The problem asks for a global invariant of the nodal set of a singular Sturm--Liouville boundary value problem. A complete derivation must first control the endpoint singularities and identify the indexed eigenfunction, then convert its differential and recurrence structure into an exact product over every pair of interior zeros. The requested quantity is insensitive to eigenfunction scaling but depends on the full nodal configuration, so neither local asymptotics nor a finite collection of individual zeros determines it.