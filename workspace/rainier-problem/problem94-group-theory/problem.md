# Normalized Math Problem

## LaTeX (Normalized)

Fix an odd prime $p$ and an integer $n\geq2$. Put
$$
K=\mathbb{F}_{p^n},\qquad R=K[t]/(t^3).
$$
For $r\in R$, let $[r]_j\in K$ denote the coefficient of $t^j$ in its unique expression
$$
r=[r]_0+[r]_1t+[r]_2t^2.
$$

For $u=(x_1,x_2)$ and $v=(y_1,y_2)$ in $R^2$, put
$$
\det_R(u,v)=x_1y_2-x_2y_1
$$
and define
$$
\beta(u,v)=\left([\det_R(u,v)]_0,[\det_R(u,v)]_2\right)\in K^2.
$$

On
$$
G=R^2\times K^2
$$
define
$$
(u,a)(v,b)=\left(u+v,\ a+b+\frac12\beta(u,v)\right).
$$
Its center is
$$
Z=\{(0,a):a\in K^2\}.
$$

For every $\alpha\in\operatorname{Aut}(G)$ that fixes $Z$ pointwise, let $\bar\alpha$ be the induced $\mathbb{F}_p$-linear automorphism of
$$
G/Z\cong R^2.
$$

Determine the number of distinct maps $\bar\alpha$ that occur.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Abstract Algebra |
| **Sub-domain** | Group theory |
| **Problem Type** | Exact computation |
| **Answer Type** | Exact scalar |

---

## Domain Explanation

The requested number counts quotient actions of automorphisms of a finite nilpotent group of class two. The commutator map hides a nilpotent operator and a symplectic structure whose simultaneous stabilizer determines the induced automorphism group, so Group theory is the primary sub-domain.
