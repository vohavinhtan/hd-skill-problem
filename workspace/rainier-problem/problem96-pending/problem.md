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
\beta(v,w)=\left(
ad'+bc'-cb'-da',\,
t(ac'-ca')+t^2(bd'-db')
\right)\in Z.
$$
Give $G=V\times Z$ the multiplication
$$
(v,z)(w,u)=\left(v+w,\ z+u+\frac12\beta(v,w)\right),
$$
where $\frac12$ is the inverse of $2$ in $\mathbb F_p$.

Let $A_n(p)$ be the number of automorphisms $\alpha$ of $G$ satisfying
$$
\alpha(0,z)=(0,z)\qquad\text{for every }z\in Z.
$$
Determine $A_n(p)$ exactly as a function of $p$ and $n$.

## Domain Classification

| Domain | Sub-domain | Problem Type | Answer Type |
|---|---|---|---|
| Abstract Algebra | Group theory | Exact computation | Exact scalar |
