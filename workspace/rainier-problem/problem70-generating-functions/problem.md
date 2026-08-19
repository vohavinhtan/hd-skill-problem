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

A finite word $w=w_1\cdots w_m$ over $\{L_r,R_r\}$ is read cyclically. For $q\geq2$, call $w$ $n$-admissible of multiplicity $q$ if it contains exactly $2q$ copies of $L_r$ and $(2n+1)q$ copies of $R_r$, and no two cyclically consecutive letters are both $L_r$.

Starting at the copies of $L_r$ in cyclic order, let
$$
a_1,\ldots,a_{2q}\geq1
$$
be the numbers of consecutive copies of $R_r$ following them. Then
$$
a_1+\cdots+a_{2q}=(2n+1)q.
$$
Call an admissible word balanced if every $a_i$ belongs to $\{n,n+1\}$.

For such a word define
$$
P_r(w)=w_1w_2\cdots w_m.
$$
Let $\alpha_{n,r,q}$ be the largest value of $\operatorname{tr}P_r(w)$ among all $n$-admissible words of multiplicity $q$.

Among balanced admissible words, consider those whose cyclic gap sequence has exactly two indices $i$ for which
$$
a_i=a_{i+1},
$$
where indices are read modulo $2q$. Let $\gamma_{n,r,q}$ be the smallest trace attained by such a word.

Put
$$
T=n(n+1)r^4+(4n+2)r^2+2
$$
and define
$$
H_{n,r}(t)=\sum_{q=2}^{\infty}
\left(\alpha_{n,r,q}-\gamma_{n,r,q}\right)t^{q-2}.
$$

Determine $H_{n,r}(t)$ as an explicit reduced rational function of $t$, with denominator normalized to have constant term $1$. The final answer must be this rational function, not a recurrence, coefficient formula, or classification of extremizing words.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Discrete Mathematics and Combinatorics |
| **Sub-domain** | Generating functions |
| **Problem Type** | Symbolic derivation |
| **Answer Type** | Polynomial or rational function |

---

## Domain Explanation

This problem involves rational generating functions arising from constrained cyclic word sequences,
which are part of Discrete Mathematics and Combinatorics and Generating functions.
The problem also involves traces, products, and recurrences of small matrices,
which are part of Linear Algebra and Matrices and matrix operations.
However, the matrix calculations are auxiliary tools for deriving the coefficient sequence, while the requested object and final structural reduction are a rational generating function.
