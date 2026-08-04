# Normalized Math Problem

## LaTeX (Normalized)

Let $n\geq12$ be divisible by $4$, and put $m=n/2$. Let $\mathbf 1_m$ be the all-one column vector in $\mathbb R^m$. Let $I_n$ be the $n\times n$ identity matrix. Let $D$ be the diagonal matrix whose first $m$ diagonal entries are $1$ and whose last $m$ diagonal entries are $-1$. Let $R$ be the reversal matrix, so $R_{ij}=1$ when $i+j=n+1$ and $R_{ij}=0$ otherwise. Let $p$ be the all-one column vector in $\mathbb R^n$, and set
$$
q=Dp.
$$
Define $t,a\in\mathbb R^m$ and $s\in\mathbb R^n$ by
$$
t_i=2i-m-1,\qquad a_i=(-1)^i,\qquad s_i=t_i,\qquad s_{m+i}=t_i\quad (1\leq i\leq m).
$$
Put
$$
T=\frac{m(m^2-1)}{3},
$$
and define $u,v\in\mathbb R^m$ by
$$
u_i=(T-2t_i^2)\left(\frac{1}{m-2}+\frac{t_i}{m^2-1}\right)+ma_i-2t_i,
$$
$$
v_i=(T-2t_i^2)\left(\frac{1}{m-2}-\frac{t_i}{m^2-1}\right)-ma_i+2t_i
\qquad (1\leq i\leq m).
$$
For a real matrix $X$, write
$$
\|X\|_F^2=\sum_{i=1}^{n}\sum_{j=1}^{n}X_{ij}^2.
$$
Among all real $n\times n$ matrices $X$ satisfying
$$
DX-XD=10R+6DR,\qquad Xp=4p+3q+s,\qquad p^{T}X=4p^{T}-7q^{T}+s^{T},
$$
$$
X^2 p=\begin{bmatrix}u+\mathbf 1_m-t\\ v-11\mathbf 1_m+3t\end{bmatrix},\qquad
p^{T}X^2=\begin{bmatrix}u-t-19\mathbf 1_m\\ v+3t+9\mathbf 1_m\end{bmatrix}^{T},
$$
and also satisfying the internal zero conditions
$$
X_{ij}=0\quad\text{if }1\leq i,j\leq m\text{ and }(j=i\text{ or }j=m+1-i),
$$
$$
X_{m+i,m+j}=0\quad\text{if }1\leq i,j\leq m\text{ and }(j=i\text{ or }j=m+1-i),
$$
determine the unique matrix with the smallest value of $\|X\|_F$.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Linear Algebra |
| **Sub-domain** | Inner product spaces |
| **Problem Type** | Optimization |
| **Answer Type** | Matrix |

---

## Domain Explanation

This problem asks for a Frobenius-norm projection onto an affine space of matrices with support restrictions and a second-iterate constraint.
The reversal matrix, the two deleted internal matchings, and the checkerboard mode add a discrete support pattern, which is a secondary combinatorial feature.
However, the decisive machinery is the inner-product projection and the equality case for the norm gap, so Linear Algebra and inner product spaces remain the primary classification.
