# Normalized Math Problem

## LaTeX (Normalized)

Let $r\geq3$, let $E=\mathbb F_{2^r}$, and let
$$
V=\operatorname{End}_{\mathbb F_2}(E).
$$
For $a\in E$, write $M_a(x)=ax$. Let $\operatorname{Tr}:E\to\mathbb F_2$ be the absolute trace, and for $X\in V$ let $X^\dagger$ denote the adjoint with respect to the pairing $(x,y)\mapsto\operatorname{Tr}(xy)$.

Let $G$ be the group of all affine $\mathbb F_2$-maps $g:V\to V$ satisfying
$$
\operatorname{rank}(g(X)-g(Y))
=
\operatorname{rank}(X-Y)
\qquad(X,Y\in V).
$$
Fix a primitive element $\alpha\in E^\times$ and define
$$
\rho(X)=M_\alpha X M_{\alpha^{-1}}.
$$
Determine
$$
\left|N_G(\langle\rho\rangle)\right|
$$
as a closed formula in $r$.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Abstract Algebra |
| **Sub-domain** | Group theory |
| **Problem Type** | Symbolic derivation |
| **Answer Type** | Exact symbolic expression |

---

## Domain Explanation

The problem asks for the normalizer of a cyclic subgroup inside an affine rank-isometry group. Its decisive structure is group-theoretic: rank-one preservers, a Singer cycle, Frobenius conjugacy, and a subgroup normalizer. The rank metric supplies the natural action but is not the primary object of study.
