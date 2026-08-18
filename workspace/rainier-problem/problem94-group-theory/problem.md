# Normalized Math Problem

## LaTeX (Normalized)

Fix an odd prime $p$ and an integer $n\geq2$. Put
$$
q=p^n,\qquad K=\mathbb{F}_q,\qquad R=K[t]/(t^3).
$$
For
$$
r=r_0+r_1t+r_2t^2\in R,
$$
write $[r]_j=r_j$.

For $u=(x_1,x_2)$ and $v=(y_1,y_2)$ in $R^2$, put
$$
\det_R(u,v)=x_1y_2-x_2y_1
$$
and
$$
\beta(u,v)=\left([\det_R(u,v)]_1,[\det_R(u,v)]_2\right)\in K^2.
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

View $Z\cong K^2$ with its natural $K$-vector-space structure. For every $\alpha\in\operatorname{Aut}(G)$ whose restriction to $Z$ is $K$-linear, let $\bar\alpha$ be the induced $\mathbb{F}_p$-linear automorphism of
$$
G/Z\cong R^2.
$$

Determine the number of distinct maps $\bar\alpha$ that occur.

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Abstract Algebra |
| **Sub-domain** | Group theory |
| **Problem Type** | Exact computation |
| **Answer Type** | Exact scalar |

## Domain Explanation

The problem asks for quotient actions of automorphisms of a finite nilpotent group of class two. Its commutator map determines a pencil of alternating forms whose normalizer recovers truncated polynomial substitutions and a determinant restriction, so Group theory is the primary sub-domain.
