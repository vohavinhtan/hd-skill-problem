# Normalized Math Problem

## LaTeX (Normalized)

Let $n\geq 8$ be divisible by $4$, and write $m=n/4$. For $1\leq i\leq n$, define
$$
u_i=1,\qquad v_i=(-1)^{i-1},\qquad w_i=(-1)^{\lfloor(i-1)/2\rfloor},\qquad z_i=v_iw_i.
$$
Let $W_n$ be the complex vector space with basis vectors $e_S$, indexed by all even-cardinality subsets $S\subseteq\{1,2,\ldots,n\}$. For $i<j$, put
$$
A_{ij}=u_iv_j-v_iu_j+w_iz_j-z_iw_j,\qquad B_{ij}=u_iv_j-v_iu_j.
$$
For $i<j$ and either $i,j\notin S$ or $i,j\in S$, put
$$
\varepsilon(S;i,j)=(-1)^{|\{s\in S:i<s<j\}|}.
$$
Define a linear operator $T_n:W_n\to W_n$ by
$$
T_n(e_S)=
\sum_{\substack{1\leq i<j\leq n\\ i,j\notin S}}
\varepsilon(S;i,j)A_{ij}e_{S\cup\{i,j\}}
+
\sum_{\substack{1\leq i<j\leq n\\ i,j\in S}}
\varepsilon(S;i,j)B_{ij}e_{S\setminus\{i,j\}}.
$$

Let $\pi$ be the permutation of $\{1,\ldots,n\}$ given by $\pi(i)=i+4$ for $i\leq n-4$ and $\pi(i)=i+4-n$ for $i>n-4$. If $S=\{s_1<\cdots<s_{2r}\}$, define $\delta(S)$ to be the sign of the permutation that sorts the list
$$
\pi(s_1),\ldots,\pi(s_{2r})
$$
into increasing order. Let $P:W_n\to W_n$ be the linear map
$$
P(e_S)=\delta(S)e_{\pi(S)}.
$$
The operator $T_n$ commutes with $P$. Let
$$
F_n=\{x\in W_n:P(x)=x\}.
$$

Determine the Jordan canonical form of the restricted operator $T_n|_{F_n}$.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Linear Algebra |
| **Sub-domain** | Matrix decompositions and canonical forms |
| **Problem Type** | Canonicalization or normalization |
| **Answer Type** | Canonical form |

---

## Domain Explanation

This problem involves determining the Jordan canonical form of a concrete restricted operator, which is part of Linear Algebra and Matrix decompositions and canonical forms.
The problem also involves exterior algebra and a cyclic fixed subspace, which are part of tensor and multilinear algebra and discrete group actions.
However, those tools are supporting structure for analyzing the map, while the requested object is still the canonical form of one linear transformation.
