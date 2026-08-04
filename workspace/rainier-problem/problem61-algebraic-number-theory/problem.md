# Normalized Math Problem

## LaTeX (Normalized)

Fix an integer $d\geq3$, put $U=\mathbb F_2^d$ and $q=2^d$, and let $\mathcal H_d$ be the vector space of functions $h:U\to\mathbb F_2$ satisfying
$$
h(x)+h(x+a)+h(x+b)+h(x+a+b)=0
$$
for every $x\in U$ and every linearly independent $a,b\in U$.

Let
$$
B_4=C_2^4\rtimes S_4
$$
act naturally on $\Omega=\{\pm1,\pm2,\pm3,\pm4\}$. Write an element as $(\varepsilon,\sigma)$, where $\varepsilon=(\varepsilon_1,\ldots,\varepsilon_4)\in\{\pm1\}^4$ and $\sigma\in S_4$, and define $\eta(1)=0$, $\eta(-1)=1$ in $\mathbb F_2$.

For every $u\in U$, let $F_u$ be an octic number field with Galois closure $L_u$ such that $\operatorname{Gal}(L_u/\mathbb Q)$ is identified with $B_4$ through its action on the eight embeddings of $F_u$. Assume that the fields $L_u^{C_2^4}$ are all equal and that, for the compositum $L$ of the $L_u$, restriction identifies $\operatorname{Gal}(L/\mathbb Q)$ with
$$
\mathcal G_d=
\left\{
\bigl((\varepsilon_u,\sigma)\bigr)_{u\in U}:
\begin{array}{l}
\sigma\in S_4,\quad \varepsilon_u\in\{\pm1\}^4,\\
u\longmapsto\eta(\varepsilon_{u,j})\text{ belongs to }\mathcal H_d
\text{ for }j=1,2,3,4
\end{array}
\right\}.
$$

For every rational prime $p$ unramified in $L$, let $\lambda_u(p)$ be the partition of $8$ formed by the residue degrees of the primes of $F_u$ above $p$, counted with multiplicity.

Determine, as a rational function of $q$, the natural density of primes $p$ for which
$$
\lambda_u(p)=\lambda_v(p)
\qquad\text{for all }u,v\in U.
$$

---

## Domain Classification

| Field | Value |
|---|---|
| Domain | Number Theory |
| Sub-domain | Algebraic number theory |
| Problem Type | Symbolic derivation |
| Answer Type | Exact symbolic expression |

## Domain Explanation

This problem is classified under algebraic number theory because residue-degree partitions are Frobenius cycle types and their density is governed by the Galois group of the compositum through Chebotarev's theorem. The imposed binary relations couple the signed parts of the Frobenius elements across the fields, so deriving the density also requires uncovering the affine structure encoded by the local parity constraints and translating it into a weighted cycle-type count.
