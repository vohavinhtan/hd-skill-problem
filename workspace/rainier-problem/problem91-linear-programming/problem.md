# Normalized Math Problem

## LaTeX (Normalized)

Let $p\geq13$ be a prime with
$$
p\equiv1\pmod 4,
$$
and let $\chi$ be the quadratic character of $\mathbb F_p$, extended by $\chi(0)=0$.

For $\frac{1}{2}<\lambda<1$, assign a nonnegative real variable $w_{x,y}$ to each $(x,y)\in\mathbb F_p^2$. Let $V_p(\lambda)$ be the maximum of
$$
\begin{aligned}
&\sum_{\substack{x,y\in\mathbb F_p\\y=x^2}}w_{x,y}
+\lambda\sum_{\substack{x,y\in\mathbb F_p\\\chi(y-x^2)=1}}w_{x,y}\\
&\qquad
+\lambda^3\sum_{\substack{x,y\in\mathbb F_p\\\chi(y-x^2)=-1}}w_{x,y}
\end{aligned}
$$
over all such families satisfying
$$
\sum_{x\in\mathbb F_p}w_{x,mx+c}\leq1
\qquad(m,c\in\mathbb F_p)
$$
and
$$
\sum_{y\in\mathbb F_p}w_{c,y}\leq\frac{9}{10}
\qquad(c\in\mathbb F_p).
$$

Prove that $V_p$ has exactly one point $\Lambda_p\in(\frac{1}{2},1)$ at which it is not differentiable. Determine the primitive irreducible polynomial
$$
F(p,z)\in\mathbb Z[p,z]
$$
whose coefficient of $pz^3$ is positive and which satisfies
$$
F(p,\Lambda_p)=0
$$
for every prime $p\geq13$ with $p\equiv1\pmod4$.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Optimization and Numerical Mathematics |
| **Sub-domain** | Linear programming |
| **Problem Type** | Parameter identification |
| **Answer Type** | Polynomial or rational function |

---

## Domain Explanation

This is a parametric linear program on point weights in a finite affine plane. The difficulty is to identify an affine symmetry that compresses the problem, reconstruct the incidence counts of the resulting point and line orbits using the quadratic character, and then certify the two optimal bases on opposite sides of the unique phase transition. The requested polynomial records that transition uniformly over an unbounded family of primes.
