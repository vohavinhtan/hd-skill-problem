# Normalized Math Problem

## LaTeX (Normalized)

Let $r\geq2$ be an integer and put $n=2r+1$. Let $K/\mathbb Q$ be a Galois extension together with a fixed identification
$$
\operatorname{Gal}(K/\mathbb Q)\cong S_n,
$$
where $S_n$ acts naturally on $[n]=\{1,\ldots,n\}$. Let $\omega$ be a primitive cube root of unity, assume $\omega\notin K$, and put $M=K(\omega)$.

For every $r$-element subset $I\subset[n]$, choose $a_I\in K^\times$ such that
$$
\tau(a_I)=a_{\tau(I)}
$$
for every $\tau\in S_n$. Assume that the cubic relations among the $a_I$ are exactly the following ones: for exponents $e_I\in\{0,1,2\}$, the element
$$
\prod_{|I|=r}a_I^{e_I}
$$
is a cube in $M$ if and only if there exist coefficients $\lambda_{uv}\in\mathbb F_3$, indexed by the two-element subsets $\{u,v\}\subset[n]$, such that
$$
e_I=\sum_{\{u,v\}\subset I}\lambda_{uv}
\qquad\text{in }\mathbb F_3
$$
for every $r$-element subset $I$.

Choose cube roots $\alpha_I^3=a_I$ and put
$$
E=M\bigl(\alpha_I:|I|=r\bigr),\qquad
\Gamma=\operatorname{Gal}(E/\mathbb Q(\omega)),\qquad
A=\operatorname{Gal}(E/M).
$$
Assume that the restriction sequence
$$
1\longrightarrow A\longrightarrow\Gamma\longrightarrow S_n\longrightarrow1
$$
splits.

A subgroup $C\leq\Gamma$ is called a complement to $A$ if $C\cap A=1$ and $AC=\Gamma$. Two complements are regarded as equivalent when they are conjugate by an element of $A$.

For a three-element subset $T\subset[n]$, let $H_T\leq S_n$ be its setwise stabilizer, and let $\Gamma_T$ be the full preimage of $H_T$ in $\Gamma$.

Determine exactly those integers $r\geq2$ for which both conditions below hold:

1. There exist two inequivalent complements to $A$ in $\Gamma$.
2. For every three-element subset $T\subset[n]$, any two inequivalent complements $C_1,C_2$ to $A$ have $C_1\cap\Gamma_T$ and $C_2\cap\Gamma_T$ inequivalent under conjugation by $A$.

Give the set of all such $r$ by an explicit condition on the base-$3$ expansion of $r$.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Abstract Algebra |
| **Sub-domain** | Galois theory |
| **Problem Type** | Parameter identification |
| **Answer Type** | Set or multiset of objects |

---

## Domain Explanation

This problem studies complements in a split cubic Kummer extension whose radical relations are coupled across the natural symmetric-group action on subsets. The requested parameter classification depends on when distinct global complements remain distinct after restriction to setwise stabilizers of three-element subsets.