# Normalized Math Problem

## LaTeX (Normalized)

Fix integers
$$
n\geq2,
\qquad
r\geq1,
$$
and put
$$
L_r=\begin{pmatrix}1&r\\0&1\end{pmatrix},
\qquad
R_r=\begin{pmatrix}1&0\\r&1\end{pmatrix}.
$$

A finite word $w=w_1\cdots w_m$ over $\{L_r,R_r\}$ is read cyclically, so $w_m$ and $w_1$ are consecutive. For $q\geq1$, call $w$ $n$-admissible of multiplicity $q$ if
$$
m=(2n+3)q,
$$
if $w$ contains exactly $2q$ copies of $L_r$ and $(2n+1)q$ copies of $R_r$, and if no two cyclically consecutive letters are both $L_r$.

For such a word define
$$
P_r(w)=w_1w_2\cdots w_m.
$$
For each $q\geq2$, let $\alpha_{n,r,q}$ and $\beta_{n,r,q}$ be respectively the largest and the second-largest distinct values of
$$
\operatorname{tr}P_r(w)
$$
as $w$ ranges over all $n$-admissible words of multiplicity $q$.

Two words are cyclically equivalent if one is a cyclic rotation of the other; write $[w]$ for the cyclic class of $w$. Let
$$
c_{n,r,q}
=
\#\left\{
[w]:
\begin{array}{l}
w\text{ is $n$-admissible of multiplicity }q,\\
\operatorname{tr}P_r(w)=\beta_{n,r,q}
\end{array}
\right\}.
$$
Define the generating functions
$$
G_{n,r}(t)=\sum_{q=2}^{\infty}
\left(\alpha_{n,r,q}-\beta_{n,r,q}\right)t^{q-2}
$$
and
$$
C_{n,r}(t)=\sum_{q=2}^{\infty}c_{n,r,q}t^{q-2}.
$$

Determine the ordered pair
$$
\left(G_{n,r}(t),C_{n,r}(t)\right)
$$
as explicit reduced rational functions of $t$, with each denominator normalized to have constant term $1$. The final answer must be this normalized rational-function pair, not a recurrence, coefficient formula, parametrization, or classification of extremizing words.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Linear Algebra |
| **Sub-domain** | Matrices and matrix operations |
| **Problem Type** | Symbolic derivation |
| **Answer Type** | Tuple or ordered list |

---

## Domain Explanation

The problem asks for the second spectral layer of an unbounded family of noncommuting matrix products. A complete derivation must determine the largest and second-largest traces uniformly in the multiplicity, derive the exact gap recurrence, and count all cyclic equality classes at the second level. Encoding both outputs as normalized rational generating functions makes the final answer canonical and directly checkable while preserving the underlying extremal classification work.