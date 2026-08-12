# Normalized Math Problem

## LaTeX (Normalized)

Let $m\geq1$ and put $n=30m+7$. Let $f\in\mathbb Q[y]$ be monic of degree $n$, and suppose its splitting field $K$ satisfies
$$
\operatorname{Gal}(K/\mathbb Q)\cong S_n
$$
through its action on the roots $y_1,\ldots,y_n$ of $f$. Write $\Delta$ for the discriminant of $f$.

Let $a,c\in\mathbb Q^\times$ satisfy
$$
(-1)^n f(-a)=c^3,
$$
and suppose that $-3\Delta$ is not a square in $\mathbb Q$.

Assume there is a prime $p\equiv1\pmod3$ such that the coefficients of $f$ and the number $a$ are $p$-integral, meaning their denominators are not divisible by $p$, and
$$
p\nmid \Delta f(-a).
$$
Suppose further that
$$
f(y)\equiv(y-r)(y-s)h(y)\pmod p,
$$
where $r,s\in\mathbb F_p$ are distinct, $h\in\mathbb F_p[y]$ is irreducible of degree $n-2$, and $a+r$ is not a cube in $\mathbb F_p^\times$.

Define
$$
P(x)=f(x^3-a),
\qquad
Q(x)=p^n f\left(\frac{x^3}{p}-a\right),
$$
and let $L$ be the splitting field of $P(x)Q(x)$ over $\mathbb Q$. Then $K\subseteq L$. For $\sigma\in\operatorname{Gal}(L/\mathbb Q)$, let $\pi_\sigma\in S_n$ be the permutation induced by the restriction of $\sigma$ to $K$.

Determine, as a closed formula in $m$, the number of automorphisms $\sigma\in\operatorname{Gal}(L/\mathbb Q)$ satisfying all three conditions below:

1. The permutation $\pi_\sigma$ has one cycle of length $7$, exactly $5m$ cycles of length $2$, and exactly $5m$ cycles of length $4$.
2. On the $3n$ roots of $P$, the automorphism $\sigma$ has exactly three cycles of length $7$, exactly $3m$ cycles of length $6$, exactly $6m$ cycles of length $2$, exactly $3m$ cycles of length $12$, and exactly $6m$ cycles of length $4$.
3. On the $3n$ roots of $Q$, the automorphism $\sigma$ has exactly one cycle of length $21$, exactly $3m$ cycles of length $6$, exactly $6m$ cycles of length $2$, exactly $3m$ cycles of length $12$, and exactly $6m$ cycles of length $4$.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Abstract Algebra |
| **Sub-domain** | Galois theory |
| **Problem Type** | Symbolic derivation |
| **Answer Type** | Exact symbolic expression |

---

## Domain Explanation

This problem involves splitting fields, Galois automorphisms, and restrictions to a symmetric Galois group, which are part of Abstract Algebra and Galois theory.
The problem also involves counting permutations with prescribed cycle structures, which are part of Discrete Mathematics.
However, the permutation count is secondary because the main difficulty is determining which root permutations can arise from compatible field automorphisms.