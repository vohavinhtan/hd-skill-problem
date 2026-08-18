# Normalized Math Problem

## LaTeX (Normalized)

Fix an odd prime $p$. Let
$$
K=\mathbb{F}_{p^2}
$$
and choose $\theta\in K^\times$ with
$$
\theta^p=-\theta.
$$
For $a\in K$, write $\bar a=a^p$. Let
$$
R=K[t]/(t^2)
$$
and let
$$
H=\operatorname{span}_{\mathbb{F}_p}\{1,\theta+t\}\subset R.
$$

For $u=(x_1,x_2)$ and $v=(y_1,y_2)$ in $R^2$, put
$$
\det_R(u,v)=x_1y_2-x_2y_1.
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

Put
$$
S=\mathrm{SL}_2(R).
$$
For every $\alpha\in\operatorname{Aut}(G)$ satisfying
$$
\alpha(0,1)=(0,1)
$$
and
$$
\alpha(\{0\}\times H)=\{0\}\times H,
$$
let $\bar\alpha$ be the induced $\mathbb{F}_p$-linear automorphism of
$$
G/Z\cong R^2.
$$

Determine the complete set of all such $\bar\alpha$.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Abstract Algebra |
| **Sub-domain** | Group theory |
| **Problem Type** | Exhaustive enumeration |
| **Answer Type** | Set or multiset of objects |

---

## Domain Explanation

The problem classifies quotient actions of automorphisms of a finite nilpotent group of class two. The main difficulty is recovering the local coefficient ring from the commutator map and then using the prescribed central subspace to determine which semilinear actions survive.
