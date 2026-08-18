# Normalized Math Problem

## LaTeX (Normalized)

Fix an odd prime $p$ and an integer $n\geq1$. Put
$$
q=p^n,\qquad K=\mathbb{F}_q,
$$
and assume
$$
q\equiv11\pmod{12}.
$$

Let
$$
R=K^6
$$
with coordinatewise addition and multiplication. Define the $K$-subspace $W\subset R$ by
$$
W=\operatorname{span}_K\left\{
(1,1,1,0,0,0),
(-1,0,0,1,1,0),
(0,-1,0,-1,0,1)
\right\}.
$$

For $u=(u_1,u_2)$ and $v=(v_1,v_2)$ in $R^2$, put
$$
\det_R(u,v)=u_1v_2-u_2v_1.
$$
On
$$
G=R^2\times R
$$
define
$$
(u,a)(v,b)=\left(u+v,\ a+b+\frac12\det_R(u,v)\right).
$$
Its center is
$$
Z=\{(0,a):a\in R\}.
$$

For every $\alpha\in\operatorname{Aut}(G)$ such that the restriction
$$
\alpha|_Z:R\to R
$$
is $K$-linear, satisfies $\alpha(W)=W$, and has $K$-linear determinant $1$, let $\bar\alpha$ be the induced $\mathbb{F}_p$-linear automorphism of
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

The problem counts quotient actions of automorphisms of a finite nilpotent group of class two. The commutator pairing reconstructs the product ring, while the prescribed central subspace hides a monomial symmetry group that must be recovered from its minimum-support vectors.
