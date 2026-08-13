# Normalized Math Problem

## LaTeX (Normalized)

Fix a real number $p>0$. Let $\mathcal A$ be the set of all measurable functions $\rho:\mathbb R\to\mathbb R$ such that
$$
0\leq\rho(x)\leq1
$$
for almost every $x\in\mathbb R$ and
$$
\int_{\mathbb R}\rho(x)\,dx=2,
\qquad
\int_{\mathbb R}x\rho(x)\,dx=1,
\qquad
\int_{\mathbb R}x^4\rho(x)\,dx<\infty.
$$
For $\rho\in\mathcal A$, set
$$
M_2(\rho)=\int_{\mathbb R}x^2\rho(x)\,dx
$$
and
$$
\mathcal F_p(\rho)
=
\int_{\mathbb R}\left(x^4-2px^2\right)\rho(x)\,dx
+
\frac{1}{2}M_2(\rho)^2.
$$

Prove that $\mathcal F_p$ attains its global minimum on $\mathcal A$ at a function $\rho_p$ that is unique up to equality almost everywhere.

Define
$$
M_p=M_2(\rho_p),
\qquad
E_p=\mathcal F_p(\rho_p).
$$
Determine the ordered pair
$$
(M_p,E_p)
$$
for every $p>0$.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Analysis |
| **Sub-domain** | Calculus of variations |
| **Problem Type** | Parameter identification |
| **Answer Type** | Tuple or ordered list |

---

## Domain Explanation

The problem studies an infinite-dimensional variational minimization under pointwise bounds and moment constraints. The nonlocal second-moment term couples the Euler condition back to the unknown minimizer, so determining the minimum requires resolving the global active-set geometry and its parameter-dependent change of regime. Calculus of variations is therefore the primary subject, with convex duality and moment methods providing supporting tools.
