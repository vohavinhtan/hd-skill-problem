# Normalized Math Problem

## LaTeX (Normalized)

Fix an even integer $d=2m\geq4$, put $U=\mathbb F_2^d$ and $q=2^d$, and write each element of $U$ as
$$
x=(x_1,\ldots,x_m,y_1,\ldots,y_m).
$$
Define the alternating form
$$
\omega(x,x')=\sum_{i=1}^m\bigl(x_i y_i'+y_i x_i'\bigr)\in\mathbb F_2.
$$
Let $\mathcal H_d$ be the vector space of functions $h:U\to\mathbb F_2$ satisfying
$$
h(x)+h(x+a)+h(x+b)+h(x+a+b)=0
$$
for every $x\in U$ and every linearly independent $a,b\in U$ with $\omega(a,b)=0$.

Call $h:U\to\mathbb F_2$ affine if
$$
h(u)=c+\ell(u)
$$
for some $c\in\mathbb F_2$ and $\ell\in\operatorname{Hom}_{\mathbb F_2}(U,\mathbb F_2)$.

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

Determine, as a rational function of $q$, the natural density of primes $p$ for which there exist a non-affine function $r\in\mathcal H_d$ and two distinct partitions $\Lambda_0,\Lambda_1$ of $8$, having the same number of parts, such that
$$
\lambda_u(p)=\Lambda_{r(u)}
\qquad\text{for every }u\in U.
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

This problem is classified under algebraic number theory because the residue-degree partitions are Frobenius cycle types, and Chebotarev's theorem converts the requested density into an exact proportion inside the Galois group of the compositum. The local parallelogram relations are controlled by a symplectic form and produce two interacting families of Boolean characters rather than the single affine family in the original version. The requirement that two distinct splitting types have the same number of prime factors couples different signed cycle lengths, so the count cannot be reduced to independent cycle-parity constraints.
