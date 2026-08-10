# Normalized Math Problem

## LaTeX (Normalized)

Fix $n\geq1$, let $K=\mathbb F_{8^n}$, $q=8^n$, $V=M_2(\mathbb F_2)$, and $U=K^2\times K^2$; vectors are columns. For $a=(x,y),b=(x',y')\in U$, set $[a,b]=xy'^T+x'y^T$, $\langle C,Z\rangle=\operatorname{Tr}_{K/\mathbb F_2}(\operatorname{tr}(C^TZ))$, and $D_ah(w)=h(w+a)+h(w)$. Let $\mathcal H_n$ be the functions $h:U\to\mathbb F_2$ with $h(0)=0$, $D_aD_bD_ch(w)=0$ for all $w,a,b,c\in U$, and $D_aD_bh(w)=0$ for all $w$ whenever $\langle C,[a,b]\rangle=0$ for every $C\in V$.

Let $B_{16}=C_2^{16}\rtimes S_{16}$ act on $\{\pm1,\ldots,\pm16\}$, with $\eta(1)=0,\eta(-1)=1$. For each $u\in U$, let $F_u/\mathbb Q$ have degree $32$, Galois closure $L_u$, group $B_{16}$, all $L_u^{C_2^{16}}$ equal, and assume for their compositum $L$ that
$$
\operatorname{Gal}(L/\mathbb Q)=\{(\sigma,(\varepsilon_u)):\sigma\in S_{16},\ \varepsilon_u\in\{\pm1\}^{16},\ u\mapsto\eta(\varepsilon_{u,j})\in\mathcal H_n\ (1\leq j\leq16)\}.
$$

Put $d=(7,5,3,1)$. For $b\in\mathbb F_2^4$, let $\Pi_b$ be the partition of $32$ obtained by replacing $d_i$ with $(d_i,d_i)$ if $b_i=0$ and with $(2d_i)$ if $b_i=1$. For unramified $p$, let $\lambda_u(p)$ be the residue-degree partition in $F_u$.

For $X=(x_{ij})\in V$, set $r_X=\sum x_{ij}r_{ij}$. Determine the density of primes $p$ for which some $r_{11},r_{12},r_{21},r_{22}\in\mathcal H_n$ satisfy
$$
\#\{u:r_X(u)=0\}=\frac{q^4+q^3}{2}\qquad(0\neq X\in V,\ \det X=0),
$$
and $\lambda_u(p)=\Pi_{(r_{11}(u),r_{12}(u),r_{21}(u),r_{22}(u))}$ for every $u\in U$.

---

## Domain Classification

| Field | Value |
|---|---|
| Domain | Number Theory |
| Sub-domain | Algebraic number theory |
| Problem Type | Symbolic derivation |
| Answer Type | Polynomial or rational function |

## Domain Explanation

This problem is classified under algebraic number theory because residue-degree partitions are Frobenius cycle types and Chebotarev converts the requested prime density into a proportion in a Galois group. The coupled Boolean conditions constrain quadratic parts through the singular-matrix geometry of a small matrix space and constrain linear parts through finite-field trace pairings. Matrix geometry and Boolean Fourier analysis are supporting tools, while the requested object is an algebraic-number-theoretic prime density.
