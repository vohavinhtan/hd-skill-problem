# Normalized Math Problem

## LaTeX (Normalized)

Fix real parameters
$$
\frac{7}{9}<\sigma<\frac{4}{5},
\qquad
\frac{7}{10}<r<\frac{3}{4}.
$$
For
$$
\frac{1}{9}<\lambda<\frac{3}{20},
$$
write
$$
P(x)=a_4x^8+a_3x^6+a_2x^4+a_1x^2+a_0
$$
and define
$$
\begin{aligned}
\Phi_{\sigma,\lambda}(P)
={}&3a_0+(1+\sigma)a_1
+(1+\sigma^2-2\lambda)a_2\\
&+(1+\sigma^3-3\sigma\lambda)a_3
+(1+\sigma^4-4\sigma^2\lambda+2\lambda^2)a_4.
\end{aligned}
$$

Let $P_{\sigma,\lambda}^*$ be the unique maximizer of $\Phi_{\sigma,\lambda}(P)$ over all even real polynomials $P$ of degree at most $8$ satisfying
$$
(2-x^2)P(x)\leq1
\qquad(-1\leq x\leq1)
$$
and
$$
P(1)\leq\frac{4}{5}.
$$

For every allowed pair $(\sigma,r)$ there is a unique
$$
\Lambda_\sigma(r)\in\left(\frac{1}{9},\frac{3}{20}\right)
$$
such that $P_{\sigma,\lambda}^*$ also satisfies
$$
\left(\frac{5}{4}-r(1-x^2)\right)P_{\sigma,\lambda}^*(x)\leq1
\qquad(-1\leq x\leq1)
$$
if and only if $\lambda\geq\Lambda_\sigma(r)$.

Determine the primitive irreducible polynomial
$$
F(\sigma,r,z)\in\mathbb Z[\sigma,r,z]
$$
whose coefficient of $rz^3$ is positive and which satisfies
$$
F\bigl(\sigma,r,\Lambda_\sigma(r)\bigr)=0
$$
for every allowed pair $(\sigma,r)$.

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

The relaxed problem is a finite-dimensional linear program with infinitely many pointwise constraints on an even degree-eight polynomial. The parameter to be identified is the robustness threshold at which its unique optimizer first satisfies an additional semi-infinite constraint. The decisive structure is therefore parametric linear optimization; polynomial interpolation and moment identities provide the certificate used to locate the threshold.
