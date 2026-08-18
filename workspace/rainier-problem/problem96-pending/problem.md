# Problem 96

Let $p$ be an odd prime, let $n\geq2$, and put
$$
R=\mathbb F_p[t]/(t^n),\qquad V=R^4,\qquad Z=R^2.
$$
For
$$
v=(a,b,c,d),\qquad w=(a',b',c',d')\in V,
$$
define
$$
\omega_+(v,w)=ab'-a'b,\qquad \omega_-(v,w)=cd'-c'd
$$
and
$$
\beta(v,w)=\left(\omega_+(v,w)+\omega_-(v,w),\,
t\bigl(\omega_+(v,w)-\omega_-(v,w)\bigr)\right)\in Z.
$$

Give $G=V\times Z$ the multiplication
$$
(v,z)(w,u)=\left(v+w,\ z+u+\frac12\beta(v,w)\right).
$$
Here $\frac12$ denotes the inverse of $2$ in $\mathbb F_p$.

Let $A_n(p)$ be the number of automorphisms $\alpha$ of $G$ satisfying
$$
\alpha(0,z)=(0,z)\qquad\text{for every }z\in Z.
$$

Determine $A_n(p)$ exactly as a function of $p$ and $n$.

## Domain Classification

| Domain | Sub-domain | Problem Type | Answer Type |
|---|---|---|---|
| Abstract Algebra | Group theory | Exact computation | Exact scalar |
