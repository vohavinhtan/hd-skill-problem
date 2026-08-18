# Normalized Math Problem

## LaTeX (Normalized)

Fix an odd prime $p$ and an integer $n\geq1$. Put
$$
q=p^n,\qquad K=\mathbb{F}_q,
$$
and assume that the residue class of $q$ modulo $7$ has multiplicative order $6$.

Let
$$
R=K[x]/(x^7-1),
$$
where $x$ also denotes the residue class of the indeterminate, and put
$$
W=\operatorname{span}_K\{1,x,x^3\}\subset R.
$$

For $u=(u_1,u_2)$ and $v=(v_1,v_2)$ in $R^2$, define
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

For every $\alpha\in\operatorname{Aut}(G)$ satisfying all three conditions
$$
\alpha(Z)=Z,
$$
$$
\alpha(\{0\}\times W)=\{0\}\times W,
$$
and the restriction $\alpha|_Z:R\to R$ is $K$-linear with
$$
\det_K(\alpha|_Z)=1,
$$
let $\bar\alpha$ denote the induced $\mathbb{F}_p$-linear automorphism of
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

The problem counts quotient actions of automorphisms of a finite nilpotent group of class two. The commutator pairing first reconstructs the coefficient ring, while the prescribed central subspace then forces a separate affine-support obstruction inside that ring.
