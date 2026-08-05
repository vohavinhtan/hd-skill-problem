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

Two words are cyclically equivalent if one is a cyclic rotation of the other; write $[w]$ for the cyclic class of $w$. Put
$$
B_k=L_rR_r^k
\qquad(k\geq1).
$$
If
$$
u=B_{a_1}B_{a_2}\cdots B_{a_s},
$$
define
$$
u^\dagger=B_{a_s}B_{a_{s-1}}\cdots B_{a_1},
\qquad
[u]^\pm=\{[u],[u^\dagger]\}.
$$
Let $\mathcal S_{n,r}$ be the set of all cyclic classes $[w]$, over all multiplicities $q\geq2$, such that
$$
\operatorname{tr}P_r(w)=\beta_{n,r,q}.
$$
Finally, define the formal power series
$$
G_{n,r}(t)=\sum_{q=2}^{\infty}
\left(\alpha_{n,r,q}-\beta_{n,r,q}\right)t^{q-2}.
$$

Determine the ordered pair
$$
\left(G_{n,r}(t),\mathcal S_{n,r}\right)
$$
in closed form as a function of $n$ and $r$.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Linear Algebra |
| **Sub-domain** | Matrices and matrix operations |
| **Problem Type** | Exhaustive enumeration |
| **Answer Type** | Tuple or ordered list |

---

## Domain Explanation

The problem asks for the second spectral layer of an unbounded family of noncommuting matrix products. A complete derivation must determine the largest and second-largest monodromy traces for every multiplicity, quantify their exact gap by a generating function, and classify all cyclic equality cases. The difficulty is therefore not a single matrix multiplication or a finite search, but a uniform extremal and near-extremal analysis of matrix words.