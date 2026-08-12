# Normalized Math Problem

## LaTeX (Normalized)

Fix real parameters $\delta>0$ and $\frac{2}{3}<\rho<\frac{18}{25}$. Let $\mathcal{A}_{\delta,\rho}$ be the set of all absolutely continuous concave functions $\varphi:[0,1]\to\mathbb{R}$ such that $\varphi'\in L^2(0,1)$ and
$$
\varphi(0)=\varphi(1)=0,
\qquad
\varphi(x)=\varphi(1-x)\quad\text{for every }x\in[0,1],
$$
$$
\int_0^1\varphi(x)\,dx=\frac{1}{4}+\frac{\delta}{2},
\qquad
\int_0^1|1-2x|\,\varphi(x)\,dx
=\frac{1}{12}+\frac{\rho\delta}{4}.
$$
Define
$$
E(\varphi)=\int_0^1\left(\left|\varphi'(x)\right|-1\right)^2\,dx.
$$
The functional $E$ has a unique minimizer in $\mathcal{A}_{\delta,\rho}$. Let $\ell$ be the length of the maximal interval adjacent to $0$ on which the derivative of this minimizer is constant almost everywhere. Determine the rational function $R(X)=P(X)/Q(X)$ such that $\rho=R(\ell)$ for every allowed pair $(\delta,\rho)$, where $P,Q\in\mathbb{Z}[X]$ are coprime expanded polynomials, the greatest common divisor of all their coefficients is $1$, and $Q(0)>0$.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Analysis |
| **Sub-domain** | Calculus of variations |
| **Problem Type** | Parameter identification |
| **Answer Type** | Polynomial or rational function |

---

## Domain Explanation

The task minimizes a quadratic derivative energy over symmetric concave functions subject to two moment constraints and then reconstructs a free-boundary parameter of the minimizer, so calculus of variations is the primary subject. Optimization and Numerical Mathematics is the strongest competing domain because convex projection and active-constraint arguments support the derivation, but the central mathematical object is a variational minimizer in a function space.
