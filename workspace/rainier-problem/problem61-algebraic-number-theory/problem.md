# Normalized Math Problem

## LaTeX (Normalized)

Fix $n\geq1$, let $K=\mathbb F_{8^n}$, $q=8^n$, $V=M_2(\mathbb F_2)$, and $U=K^2\times K^2$; vectors are columns. For $a=(x,y),b=(x',y')\in U$, set $[a,b]=xy'^T+x'y^T$, $\langle C,Z\rangle=\operatorname{Tr}_{K/\mathbb F_2}(\operatorname{tr}(C^TZ))$, and $D_ah(w)=h(w+a)+h(w)$. Let $\mathcal H_n$ be the functions $h:U\to\mathbb F_2$ with $h(0)=0$, $D_aD_bD_ch(w)=0$ for all $w,a,b,c\in U$, and $D_aD_bh(w)=0$ for all $w$ whenever $\langle C,[a,b]\rangle=0$ for every $C\in V$.

Let $B_{16}=C_2^{16}\rtimes S_{16}$ act on $\{\pm1,\ldots,\pm16\}$, with $\eta(1)=0,\eta(-1)=1$. For each $u\in U$, let $F_u/\mathbb Q$ have degree $32$, Galois closure $L_u$, group $B_{16}$, and identify $\operatorname{Gal}(L_u/\mathbb Q)\cong B_{16}$ so that this signed action is its permutation action on the $32$ embeddings of $F_u$ into an algebraic closure. Assume all $L_u^{C_2^{16}}$ are equal, and assume for their compositum $L$ that
$$
\operatorname{Gal}(L/\mathbb Q)=\{(\sigma,(\varepsilon_u)):\sigma\in S_{16},\ \varepsilon_u\in\{\pm1\}^{16},\ u\mapsto\eta(\varepsilon_{u,j})\in\mathcal H_n\ (1\leq j\leq16)\}.
$$

Put $d=(7,5,3,1)$. For $b\in\mathbb F_2^4$, let $\Pi_b$ be the partition of $32$ obtained by replacing $d_i$ with $(d_i,d_i)$ if $b_i=0$ and with $(2d_i)$ if $b_i=1$. For unramified $p$, let $\lambda_u(p)$ be the residue-degree partition in $F_u$.

You may use without proof the following form of the Chebotarev density theorem: if $M/\mathbb Q$ is finite Galois with group $G$ and $C\subseteq G$ is stable under conjugation, then the unramified primes whose Frobenius conjugacy class lies in $C$ have natural density $|C|/|G|$.

For $X=(x_{ij})\in V$, set $r_X=\sum x_{ij}r_{ij}$. Determine the density of primes $p$ for which some $r_{11},r_{12},r_{21},r_{22}\in\mathcal H_n$ satisfy
$$
\#\{u:r_X(u)=0\}=\frac{q^4+(-1)^{\operatorname{tr}X}q^3}{2}
\qquad(0\neq X\in V,\ \det X=0),
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

The primary domain is Number Theory because the requested object is a density of rational primes determined by Frobenius behavior. The primary sub-domain is Algebraic number theory because residue-degree partitions in finite extensions and the Chebotarev density theorem convert the Galois-group count into that prime density. The next-best domain is Abstract Algebra because the finite Galois group and its conjugacy classes organize the counting problem. Within that domain, the next-best sub-domain is Galois theory because Frobenius elements and the compositum Galois group are the central algebraic structures. Number Theory and Algebraic number theory remain primary over Abstract Algebra and Galois theory because the final object is an arithmetic density of primes, while the group-theoretic structure is used to compute it.
