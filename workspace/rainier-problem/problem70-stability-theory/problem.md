# Normalized Math Problem

## LaTeX (Normalized)

Fix an integer $n\geq2$ and put
$$
L=\begin{pmatrix}1&1\\0&1\end{pmatrix},
\qquad
R=\begin{pmatrix}1&0\\1&1\end{pmatrix}.
$$

A finite word $w=w_1\cdots w_m$ over $\{L,R\}$ is read cyclically, so $w_m$ and $w_1$ are consecutive. For $q\geq1$, call $w$ $n$-admissible of multiplicity $q$ if
$$
m=(2n+3)q,
$$
if $w$ contains exactly $2q$ copies of $L$ and $(2n+1)q$ copies of $R$, and if no two cyclically consecutive letters are both $L$.

For $c>0$, an $n$-admissible word $w=w_1\cdots w_m$, and $z_0\in\mathbb R^2$, define the periodic switched system
$$
z_{j+1}=c\,w_{1+(j\bmod m)}z_j
\qquad(j\geq0),
$$
where each letter acts by the corresponding matrix above. Define
$$
c_n=\sup\left\{c>0:
\lim_{j\to\infty}z_j=0
\text{ for every multiplicity }q,
\text{ every }n\text{-admissible }w,
\text{ and every }z_0\in\mathbb R^2
\right\}.
$$

Two finite words are cyclically equivalent if one is a cyclic rotation of the other; write $[w]$ for the equivalence class of $w$. For a nonempty word $v$, set
$$
\langle v\rangle=\{[v^r]:r\geq1\}.
$$
Let $\mathcal E_n$ be the set of all cyclic classes $[w]$, over all multiplicities, for which at $c=c_n$ there exists $z_0\neq0$ such that the corresponding orbit does not converge to $0$.

Determine the ordered pair
$$
(c_n,\mathcal E_n)
$$
in closed form as a function of $n$.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Differential Equations and Dynamical Systems |
| **Sub-domain** | Stability theory |
| **Problem Type** | Parameter identification |
| **Answer Type** | Tuple or ordered list |

---

## Domain Explanation

The problem asks for the exact robust stability radius of a discrete-time switched linear system under an unbounded family of periodic switching constraints, together with a complete classification of the marginally stable switching laws. Determining the pair requires controlling the maximal spectral growth of noncommuting products over every admissible multiplicity and proving the equality cases, rather than checking finitely many prescribed periods or applying local eigenvalue analysis to a single matrix.
