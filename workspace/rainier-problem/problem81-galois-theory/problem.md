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
for every $\tau\in S_n$. Assume that there is $c\in\mathbb Q^\times$ with
$$
\prod_{|I|=r}a_I=c^3,
$$
and that this is the only cubic relation among the $a_I$: whenever $e_I\in\{0,1,2\}$ and
$$
\prod_{|I|=r}a_I^{e_I}
$$
is a cube in $M$, all the exponents $e_I$ are equal.

Choose cube roots $\alpha_I^3=a_I$ so that
$$
\prod_{|I|=r}\alpha_I=c,
$$
and put
$$
E=M\bigl(\alpha_I:|I|=r\bigr),\qquad
\Gamma=\operatorname{Gal}(E/\mathbb Q(\omega)),\qquad
A=\operatorname{Gal}(E/M).
$$
The restriction map identifies $\Gamma/A$ with $S_n$.

A subgroup $C\leq\Gamma$ is called a complement to $A$ if $C\cap A=1$ and $AC=\Gamma$. Two complements are regarded as equivalent when they are conjugate by an element of $A$.

For a point stabilizer $H\cong S_{n-1}$ in $S_n=\Gamma/A$, let $\Gamma_H$ be its full preimage in $\Gamma$. Every complement $C$ determines a complement $C\cap\Gamma_H$ to $A$ in $\Gamma_H$.

Determine exactly those integers $r\geq2$ for which both of the following hold:

1. The complements to $A$ in $\Gamma$ form exactly three equivalence classes.
2. For every point stabilizer $H$, the intersections with $\Gamma_H$ of representatives of those three classes remain pairwise inequivalent under conjugation by $A$.

Give the set of all such $r$ by an explicit condition in base $3$.

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

This problem concerns complements in a split cubic Kummer extension of an $S_n$-extension. The cubic radical kernel is an augmentation submodule of the permutation module on $r$-element subsets, and conjugacy of complements is governed by how this module changes when restricted from $S_n$ to a point stabilizer. The requested parameter set is determined by the interaction between that Galois-theoretic restriction problem and arithmetic in characteristic $3$.