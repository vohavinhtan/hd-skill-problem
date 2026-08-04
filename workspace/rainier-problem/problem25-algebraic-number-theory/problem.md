# Normalized Math Problem

## LaTeX (Normalized)

Let $R=\mathbb Z[\alpha]$, where
$$
\alpha^{2}-\alpha+6=0.
$$
For $u=a+b\alpha\in R$, write
$$
N(u)=a^{2}+ab+6b^{2}.
$$
Use the following facts about $R$. Its ideal class group is cyclic of order $3$. The rational primes that split in $R$ are partitioned into three classes $P_0,P_+,P_-$ according as a chosen prime ideal above $p$ has class $0,+1,-1$ in this cyclic class group. The primes in $P_0$ split into principal prime ideals. The primes $2$ and $3$ split, with chosen prime ideals $\mathfrak p_2,\mathfrak p_3$ satisfying
$$
[\mathfrak p_2]=+1,\qquad [\mathfrak p_3]=-1,
$$
and
$$
(\alpha)=\mathfrak p_2\mathfrak p_3,\qquad
(1+\alpha)=\overline{\mathfrak p}_2^{\,3},\qquad
(2+\alpha)=\mathfrak p_2^{\,2}\overline{\mathfrak p}_3.
$$
Every remaining split prime belongs to exactly one of $P_0,P_+,P_-$. Every inert prime occurs in norms only to an even exponent.

Let the positive integer $n$ have the factorization
$$
n=2^{e}3^{g}
\prod_{p\in P_0}p^{a_p}
\prod_{p\in P_+}p^{b_p}
\prod_{p\in P_-}p^{c_p}
\prod_{q\in Q}q^{2f_q},
$$
where $Q$ is the set of inert primes dividing $n$. Let $\mathcal I_n$ be the set of principal ideals $I\subset R$ with $N(I)=n$.

For $I\in\mathcal I_n$, define
$$
D_1(I)=\#\{t\in\mathbb Z/n\mathbb Z:t\alpha+nR\in I/nR\},
$$
$$
D_2(I)=\#\{t\in\mathbb Z/n\mathbb Z:t(1+\alpha)+nR\in I/nR\},
$$
and
$$
D_3(I)=\#\{t\in\mathbb Z/n\mathbb Z:t(2+\alpha)+nR\in I/nR\}.
$$
Determine the multiset
$$
\mathcal M_n=\bigl\{(D_1(I),D_2(I),D_3(I)):I\in\mathcal I_n\bigr\}
$$
in terms of the displayed factorization of $n$.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Number Theory |
| **Sub-domain** | Algebraic number theory |
| **Problem Type** | Transformation between representations |
| **Answer Type** | Set or multiset of objects |

---

## Domain Explanation

This problem is classified under Number Theory / Algebraic number theory because the central objects are ideals, ideal classes, splitting of primes, principal ideal constraints, and norm factorizations in a quadratic order. The requested multiset is obtained by translating between ideal-factorization data and concrete residue-module intersection counts.
