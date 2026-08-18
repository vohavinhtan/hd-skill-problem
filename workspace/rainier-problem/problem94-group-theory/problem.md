# Normalized Math Problem

## LaTeX (Normalized)

Fix an odd prime $p$ and an integer $n\geq2$. Put
$$
q=p^n,\qquad K=\mathbb{F}_q,\qquad R_3=K[t]/(t^3),\qquad R_2=K[t]/(t^2).
$$
For $r\in R_m$, write $[r]_j$ for the coefficient of $t^j$.

Let
$$
V=R_3^2\oplus R_2^2.
$$
For $u=(x,z)$ and $v=(y,w)$ in $V$, define
$$
B_1(u,v)=[\det_{R_3}(x,y)]_1+[\det_{R_2}(z,w)]_0,
$$
$$
B_2(u,v)=[\det_{R_3}(x,y)]_2+[\det_{R_2}(z,w)]_1,
$$
and put
$$
\beta(u,v)=(B_1(u,v),B_2(u,v))\in K^2.
$$

On
$$
G=V\times K^2
$$
define
$$
(u,a)(v,b)=\left(u+v,\ a+b+\frac12\beta(u,v)\right).
$$
Its center is
$$
Z=\{(0,a):a\in K^2\}.
$$

For every $\alpha\in\operatorname{Aut}(G)$ that fixes $Z$ pointwise, let $\bar\alpha$ denote the induced $\mathbb{F}_p$-linear automorphism of
$$
G/Z\cong V.
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

The problem counts quotient actions of automorphisms of a finite nilpotent group of class two. The commutator pairing reconstructs a nilpotent module operator with two different Jordan-chain lengths, and the required count is the size of its isometry centralizer.
