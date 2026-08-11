# Normalized Math Problem

## LaTeX (Normalized)

Fix an integer $r\geq2$, and let $S=A_5$. Put
$$
N_r=S^r.
$$
Let $\tau$ act on $N_r$ by the cyclic shift
$$
\tau(g_0,g_1,\ldots,g_{r-1})
=(g_{r-1},g_0,\ldots,g_{r-2}),
$$
and set
$$
G_r=N_r\rtimes\langle\tau\rangle,
\qquad |\tau|=r.
$$
Let
$$
\pi:G_r\to\langle\tau\rangle
$$
be the natural quotient map. For $H\leq G_r$, write
$$
\operatorname{core}_{G_r}(H)
=
\bigcap_{g\in G_r}gHg^{-1}.
$$

Call $H\leq G_r$ admissible if all three conditions hold:

1. $\pi(H)=\langle\tau\rangle$;
2. for $K=H\cap N_r$, every coordinate projection $K\to S$ is surjective;
3. $\operatorname{core}_{G_r}(H)=\{1\}$.

Let
$$
\mu_r
=
\min\{[G_r:H]:H\leq G_r\text{ is admissible}\},
$$
and let $c_r$ be the number of $G_r$-conjugacy classes of admissible subgroups $H$ satisfying
$$
[G_r:H]=\mu_r.
$$
Let $\ell(r)$ denote the smallest prime divisor of $r$.

Determine the ordered pair
$$
(\mu_r,c_r)
$$
for every $r\geq2$.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Abstract Algebra |
| **Sub-domain** | Group theory |
| **Problem Type** | Optimization |
| **Answer Type** | Tuple or ordered list |

---

## Domain Explanation

The problem asks for extremal core-free subgroups in a cyclic extension of a direct power of the nonabelian simple group $A_5$. The decisive structure is the classification of subdirect subgroups of the simple direct product, the block systems forced by the cyclic shift, and the conjugacy of twisted diagonal factors. Thus the primary machinery is finite group theory, with the arithmetic of divisors of $r$ entering only through the cyclic permutation action.
