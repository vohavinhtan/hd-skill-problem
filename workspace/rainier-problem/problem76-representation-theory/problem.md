# Normalized Math Problem

## LaTeX (Normalized)

Let $n\geq6$ be even. Identify the vertices of a regular $n$-gon with $\mathbb Z/n\mathbb Z$, and regard
$$
D_n=\langle r,s:r^n=s^2=1,\ srs=r^{-1}\rangle
$$
as a subgroup of $S_n$ through
$$
r(i)=i+1,
\qquad
s(i)=-i.
$$
Let $\chi_n:D_n\to\{1,-1\}$ be the one-dimensional character determined by
$$
\chi_n(r)=-1,
\qquad
\chi_n(s)=1,
$$
and let
$$
M_n=\operatorname{Ind}_{D_n}^{S_n}\chi_n
$$
be the induced complex representation.

For $0\leq k\leq n-1$, let $S^{(n-k,1^k)}$ denote the irreducible complex Specht module of $S_n$ corresponding to the hook partition $(n-k,1^k)$, and let $m_{n,k}$ be its multiplicity in $M_n$.

Define
$$
P_n(t)=\sum_{k=0}^{n-1}m_{n,k}t^k.
$$

Determine $P_n(t)$ in closed form for every even $n\geq6$.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Abstract Algebra |
| **Sub-domain** | Representation theory |
| **Problem Type** | Symbolic derivation |
| **Answer Type** | Polynomial or rational function |

---

## Domain Explanation

The problem asks for the hook-isotypic multiplicities in a complex representation induced from a nontrivial one-dimensional character of a dihedral subgroup of $S_n$. Its structure is governed by restriction and induction of representations, irreducible Specht modules, and the interaction between the character twist and the conjugacy behavior of rotations and reflections. These are representation-theoretic rather than purely combinatorial features.