# Normalized Math Problem

## LaTeX (Normalized)

Let $p$ be an odd prime, let $n\geq2$, put $N=pn$, and let
$$
S=\mathbb F_p[\alpha]/(\alpha^N).
$$
For $f\in S$, write $f'$ for its formal derivative with respect to $\alpha$. This is well-defined on $S$ because $p\mid N$.

Let
$$
V=S\times S,
$$
regarded as a $2N$-dimensional vector space over $\mathbb F_p$. Define two $\mathbb F_p$-linear maps $\Sigma,\Delta:V\to V$ by
$$
\Sigma(q,z)=(\alpha^2z,q)
$$
and
$$
\Delta(q,z)=(-\alpha z-\alpha^2z',-q')
$$
for $q,z\in S$.

Let $C_n(p)$ be the number of $\mathbb F_p$-linear subspaces $W\leq V$ satisfying
$$
\Sigma(W)\subseteq W
$$
and
$$
\Delta(W)\subseteq W.
$$
Determine $C_n(p)$ exactly as a function of $p$ and $n$.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Linear Algebra |
| **Sub-domain** | Vectors and vector spaces |
| **Problem Type** | Exact computation |
| **Answer Type** | Exact scalar |

---

## Domain Explanation

This problem involves common invariant subspaces of two linear transformations on a finite-dimensional vector space, which are part of Linear Algebra and Vectors and vector spaces.
The problem also involves quotient rings, ideals, and derivations, which are part of Abstract Algebra.
However, these algebraic structures arise only in the solution as a way to organize the invariant-subspace conditions, while the objects being counted are vector subspaces preserved by linear maps.
