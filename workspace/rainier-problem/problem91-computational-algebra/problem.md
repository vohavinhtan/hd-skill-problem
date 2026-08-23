# Normalized Math Problem

## LaTeX (Normalized)

Let $G$ and $\Gamma$ be the subgroups of $\operatorname{GL}_4(\mathbb Q)$ defined by
$$
G=\langle A,B\rangle,
\qquad
\Gamma=\langle A,B,C\rangle,
$$
where
$$
A=
\begin{pmatrix}
-1&0&-3&-1\\
1&-2&0&1\\
-2&4&-3&-3\\
4&-7&5&5
\end{pmatrix},
$$
$$
B=
\begin{pmatrix}
-1&0&-4&-2\\
1&-2&0&1\\
0&0&1&0\\
2&-3&2&3
\end{pmatrix},
\qquad
C=
\begin{pmatrix}
-1&0&-4&-2\\
-1&1&-2&-1\\
0&0&1&0\\
0&0&0&1
\end{pmatrix}.
$$

Let
$$
R=\mathbb Q[x_1,x_2,x_3,x_4]^G,
\qquad
A_0=\mathbb Q[x_1,x_2,x_3,x_4]^\Gamma,
$$
with their usual grading by total degree.

Let $\Omega_{R/A_0}$ be the module of Kähler differentials of $R$ over $A_0$, graded so that
$$
\deg(df)=\deg(f)
$$
for every homogeneous $f\in R$.

Determine the exact value of
$$
\dim_{\mathbb Q}\left(\Omega_{R/A_0}\right)_{30}.
$$

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Abstract Algebra |
| **Sub-domain** | Computational algebra |
| **Problem Type** | Exact computation |
| **Answer Type** | Exact scalar |

---

## Domain Explanation

This problem involves invariant rings of explicitly generated finite matrix groups and a graded module of relative Kähler differentials,
which are part of Abstract Algebra and Computational algebra.
The problem also involves alternating polynomials, a quadratic extension of invariant rings, and Hilbert-series coefficient extraction,
which are part of invariant-theoretic algebra.
However, those structures are used to compute one exact graded dimension.

Specifically:

- The two matrix groups must first be recognized as the alternating and symmetric groups in the standard four-dimensional representation.
- The smaller invariant ring is a quadratic hypersurface extension of the larger-group invariant ring through the Vandermonde polynomial.
- The relative differential module detects the ramification relation, so its Hilbert series cannot be obtained from the invariant-ring Hilbert series alone.
