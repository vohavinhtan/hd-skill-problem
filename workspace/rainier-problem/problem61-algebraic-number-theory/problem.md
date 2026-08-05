# Normalized Math Problem

## LaTeX (Normalized)

Fix $n\geq1$, let $K=\mathbb F_{8^n}$, $q=8^n$, $E=\mathbb F_8\subset K$, $U=K^2$, and let $\operatorname{Tr}:K\to\mathbb F_2$ be the absolute trace. For $a=(a_1,a_2),b=(b_1,b_2)\in U$, set $[a,b]=a_1b_2+a_2b_1$ and $D_ah(x)=h(x+a)+h(x)$. Let $\mathcal H_n$ be the functions $h:U\to\mathbb F_2$ satisfying $D_aD_bD_ch(x)=0$ for all $x,a,b,c\in U$, and $D_aD_bh(x)=0$ whenever $\operatorname{Tr}(e[a,b])=0$ for every $e\in E$.

Let $B_7=C_2^7\rtimes S_7$ act on $\{\pm1,\ldots,\pm7\}$, and put $\eta(1)=0,\eta(-1)=1$. For each $u\in U$, let $F_u/\mathbb Q$ have degree $14$, Galois closure $L_u$, and Galois group $B_7$ in this action. Assume all $L_u^{C_2^7}$ coincide and restriction identifies $\operatorname{Gal}(L/\mathbb Q)$, for the compositum $L$, with
$$
\{(\sigma,(\varepsilon_u)): \sigma\in S_7,\ \varepsilon_u\in\{\pm1\}^7,\ u\mapsto\eta(\varepsilon_{u,j})\in\mathcal H_n\ (1\leq j\leq7)\}.
$$

For unramified $p$, let $\lambda_u(p)$ be the residue-degree partition of $14$ in $F_u$. Define
$$
(\Pi_{000},\Pi_{001},\Pi_{010},\Pi_{011},\Pi_{100},\Pi_{101},\Pi_{110},\Pi_{111})
=((4,4,2,2,1,1),(4,4,2,2,2),(4,4,4,1,1),(4,4,4,2),(8,2,2,1,1),(8,2,2,2),(8,4,1,1),(8,4,2)).
$$

Determine, as a rational function of $q$, the density of primes $p$ for which some $r_1,r_2,r_3\in\mathcal H_n$ satisfy, for every $0\neq a\in\mathbb F_2^3$,
$$
\#\{u:\textstyle\sum_{i=1}^3a_ir_i(u)=0\}=\frac{q^2-q}{2}
$$
when $a_1+a_2+a_3=0$, and equals $(q^2+q)/2$ otherwise, while $\lambda_u(p)=\Pi_{r_1(u)r_2(u)r_3(u)}$ for every $u\in U$.

---

## Domain Classification

| Field | Value |
|---|---|
| Domain | Number Theory |
| Sub-domain | Algebraic number theory |
| Problem Type | Symbolic derivation |
| Answer Type | Polynomial or rational function |

## Domain Explanation

This problem is classified under algebraic number theory because residue-degree partitions are Frobenius cycle types and Chebotarev's theorem converts the requested density into a proportion in a Galois group. The Frobenius signs are constrained by quadratic Boolean functions over a finite field. The count depends on a simultaneous Walsh correlation whose matrix ranks interact with the signed cycle decomposition.
