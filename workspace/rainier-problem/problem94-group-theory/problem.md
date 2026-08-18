# Normalized Math Problem

## LaTeX (Normalized)

Fix an odd prime $p$ and an integer $n\geq1$ such that
$$
q=p^n\equiv1\pmod 5.
$$
Put $K=\mathbb{F}_q$ and $L=\mathbb{F}_{q^5}$. Choose a primitive fifth root of unity $\zeta\in K$ and an element $\xi\in L^\times$ satisfying
$$
\xi^q=\zeta\xi.
$$
Set
$$
\theta=\frac{\xi-1}{\xi+1},
\qquad
R=L[t]/(t^2).
$$

For $r\in R$, let $[r]_1\in L$ denote its coefficient of $t$. Write
$$
\operatorname{Tr}=\operatorname{Tr}_{L/K}.
$$
For $u=(x_1,x_2)$ and $v=(y_1,y_2)$ in $R^2$, put
$$
r(u,v)=x_1y_2-x_2y_1
$$
and define
$$
B_0(u,v)=\operatorname{Tr}([r(u,v)]_1),
$$
$$
B_1(u,v)=\operatorname{Tr}([(\theta+t)r(u,v)]_1).
$$
Let
$$
\beta(u,v)=(B_1(u,v),B_0(u,v))\in K^2.
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

For every $\alpha\in\operatorname{Aut}(G)$ whose restriction to $Z\cong K^2$ is $K$-linear with determinant $1$, let $\bar\alpha$ be the induced $\mathbb{F}_p$-linear automorphism of
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

The problem counts quotient actions of automorphisms of a finite class-two group. Its commutator pencil hides a degree-five field orbit together with a square-zero thickening, so the quotient action must recover both a projective Frobenius symmetry and an isometry group over a local ring.
