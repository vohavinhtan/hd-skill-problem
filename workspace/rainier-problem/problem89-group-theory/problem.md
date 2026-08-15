# Normalized Math Problem

## LaTeX (Normalized)

Let $r\geq3$, let $E=\mathbb F_{2^r}$, and let
$$
V=\operatorname{End}_{\mathbb F_2}(E).
$$
For $a\in E$, write $M_a(x)=ax$, let $F(x)=x^2$, and let $I$ be the identity map of $E$.

Let $G$ be the group of all affine $\mathbb F_2$-maps $g:V\to V$ satisfying
$$
\operatorname{rank}(g(X)-g(Y))=\operatorname{rank}(X-Y)
\qquad(X,Y\in V).
$$
Fix a primitive element $\alpha\in E^\times$ and set
$$
H=\left\langle
X\mapsto M_\alpha X M_{\alpha^{-1}},\quad
X\mapsto FXF^{-1},\quad
X\mapsto X+I
\right\rangle\leq G.
$$
Determine $|N_G(H)|$ as a closed formula in $r$.

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

The problem asks for the normalizer of a naturally generated affine subgroup of a finite rank-isometry group. The decisive structure is group-theoretic: rank-one preservers, semilinear conjugation, derived subgroups, affine translations, and subgroup normalizers.