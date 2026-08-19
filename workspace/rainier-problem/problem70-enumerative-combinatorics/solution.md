## Steps

Step 1: Encode admissible words and derive the continuant normal form

Put $x=r^2$ and
$$
B_k=L_rR_r^k=\begin{pmatrix}1+kx&r\\kr&1\end{pmatrix}.
$$
After a cyclic rotation, every admissible word has trace
$$
\operatorname{tr}(B_{a_1}\cdots B_{a_{2q}}),
\qquad
a_i\geq1,
\qquad
\sum_{i=1}^{2q}a_i=(2n+1)q.
$$

Write
$$
B_k=B_0+kN,
\qquad
N=\begin{pmatrix}x&0\\r&0\end{pmatrix}.
$$
We seek a basis in which the $k$-dependent part is $xE_{11}$, so the affine family has companion form. The matrix $N$ has eigenvector
$$
u=\begin{pmatrix}r\\1\end{pmatrix}
$$
with eigenvalue $x$, while $\ker N$ is spanned by $v=(0,c)^T$. Also
$$
B_0u=\begin{pmatrix}2r\\1\end{pmatrix}=2u-\frac1c\,v.
$$
Normalize the second basis vector so that the coefficient of $v$ is $1$. This forces $c=-1$, hence
$$
v=\begin{pmatrix}0\\-1\end{pmatrix},
\qquad
B_0u=2u+v,
\qquad
B_0v=-u.
$$
Thus, with
$$
S=\begin{pmatrix}r&0\\1&-1\end{pmatrix},
$$
we obtain
$$
B_kS=SD_k,
\qquad
D_k=\begin{pmatrix}2+kx&-1\\1&0\end{pmatrix},
$$
so it is enough to maximize
$$
\Phi(a_1,\ldots,a_{2q})=\operatorname{tr}(D_{a_1}\cdots D_{a_{2q}}).
$$

For a nonempty string $U=(u_1,\ldots,u_\ell)$ put $c_j=2+xu_j$ and define its continuant by
$$
K(U)=\det\begin{pmatrix}
c_1&1&&0\\
1&c_2&\ddots&\\
&\ddots&\ddots&1\\
0&&1&c_\ell
\end{pmatrix},
\qquad
K(\varnothing)=1.
$$
Expansion at either end gives
$$
K(u_1,\ldots,u_j)=c_jK(u_1,\ldots,u_{j-1})-K(u_1,\ldots,u_{j-2})
$$
and
$$
K(u_1,\ldots,u_j)=c_1K(u_2,\ldots,u_j)-K(u_3,\ldots,u_j).
$$
Multiplying the $D_{u_j}$ gives
$$
D(U)=\begin{pmatrix}p&-\mu\\ \nu&*\end{pmatrix},
\qquad
p=K(U),
\qquad
\mu=K(u_1,\ldots,u_{\ell-1}),
\qquad
\nu=K(u_2,\ldots,u_\ell).
$$
For $U=\varnothing$, set $D(U)=I$, $p=1$, and $\mu=\nu=0$.

We now prove the bounds used in smoothing. For any nonempty string $W=(w_1,\ldots,w_m)$, let $K_j=K(w_1,\ldots,w_j)$, with $K_0=1$. Since every $2+xw_j\geq3$, the case $j=1$ gives $K_1\geq3>2K_0$. If $K_{j-1}>2K_{j-2}>0$, then
$$
K_j=(2+xw_j)K_{j-1}-K_{j-2}
>3K_{j-1}-\frac12K_{j-1}
>2K_{j-1}>0.
$$
Hence $K(W)>2K(w_1,\ldots,w_{m-1})$. Applying the same argument to the recurrence from the first end gives
$$
K(W)>2K(w_2,\ldots,w_m).
$$
Therefore, for every nonempty $U$,
$$
0<\mu<\frac p2,
\qquad
0<\nu<\frac p2,
$$
while the empty-string convention gives the corresponding weak inequalities with $\mu=\nu=0$.

Take cyclic entries $a\geq b+2$ with intervening strings $U,V$, allowing either string to be empty. Write their corresponding data as $p,\mu,\nu$ and $P,\mu',\nu'$. Since
$$
D_k=D_0+kx\begin{pmatrix}1&0\\0&0\end{pmatrix},
$$
multiplication gives
$$
\Phi(a-1,U,b+1,V)-\Phi(a,U,b,V)
=x\left[pPx(a-b-1)+P(\mu-\nu)+p(\nu'-\mu')\right].
$$
The bounds imply
$$
P(\mu-\nu)>-\frac{pP}{2},
\qquad
p(\nu'-\mu')>-\frac{pP}{2},
$$
so the bracket is strictly larger than
$$
pP\left(x(a-b-1)-1\right)\geq0.
$$
Thus transferring one unit from a gap at least two larger than another strictly increases the trace. Repeated transfers leave only two consecutive gap sizes. Their average is $n+\frac12$, so every trace maximizer has exactly $q$ gaps equal to $n$ and $q$ equal to $n+1$.

Step 2: Identify the alternating maximum by repairing equal adjacencies

Set
$$
A=B_n,
\qquad
C=B_{n+1},
\qquad
M=AC.
$$
Then $\det M=1$ and $\operatorname{tr}M=T$. Define
$$
s_0=0,
\qquad
s_1=1,
\qquad
s_{j+1}=Ts_j-s_{j-1}.
$$
Cayley-Hamilton gives
$$
M^j=s_jM-s_{j-1}I.
$$
Since $T>2$, the recurrence gives $s_j>0$ for $j\geq1$.

For a balanced cyclic word, let $N_{XY}$ count transitions $X\to Y$, where $X,Y\in\{A,C\}$. Equality of the numbers of $A$ and $C$, together with $N_{AC}=N_{CA}$ on a cycle, gives $N_{AA}=N_{CC}$. If this common number is positive, choose an $AA$ followed cyclically by the next $CC$. The letters between them alternate, so the segment is
$$
A^2(CA)^iC^2
$$
for some $i\geq0$.

Define
$$
K_i=M^{i+2}-A^2(CA)^iC^2.
$$
For $i=0$,
$$
K_0=A(CA-AC)C=r^2\begin{pmatrix}r^2-1&r\\r&1\end{pmatrix}.
$$
This matrix is nonzero and entrywise nonnegative. Both terms defining $K_i$ satisfy the recurrence with coefficient $T$, because $M$ and $CA$ have determinant $1$ and trace $T$. Moreover,
$$
K_1-TK_0=(M^3-TM^2)+A^2(TI-CA)C^2
=-M+A^2(CA)^{-1}C^2
=-M+AC=0.
$$
Thus
$$
K_i=s_{i+1}K_0.
$$

Replacing $A^2(CA)^iC^2$ by $M^{i+2}$ changes the cyclic trace by $\operatorname{tr}(K_iZ)$, where $Z$ is the remaining product. If $Z\neq I$, every entry of $Z$ is positive, so $\operatorname{tr}(K_iZ)>0$. If $Z=I$, then
$$
\operatorname{tr}(K_i)=s_{i+1}\operatorname{tr}(K_0)=s_{i+1}r^4>0.
$$
Each replacement removes one $AA$ and one $CC$, so repetition ends at $(AC)^q$. Therefore
$$
\alpha_{n,r,q}=\operatorname{tr}(M^q).
$$

Step 3: Parametrize the two-defect layer and derive its trace deficit

A balanced word with exactly two equal adjacent gap pairs has one $AA$ and one $CC$. Up to cyclic rotation it is
$$
W_{i,j}=A^2(CA)^iC^2(AC)^j,
\qquad
i,j\geq0,
\qquad
i+j=q-2.
$$
By Step 2,
$$
\alpha_{n,r,q}-\operatorname{tr}W_{i,j}
=\operatorname{tr}(K_iM^j)
=s_{i+1}\operatorname{tr}(K_0M^j).
$$
Put $h_j=\operatorname{tr}(K_0M^j)$. Cayley-Hamilton gives
$$
h_{j+1}=Th_j-h_{j-1}.
$$
Also $h_0=\operatorname{tr}K_0=r^4$. Since $K_0=M^2-A^2C^2$,
$$
\operatorname{tr}(K_0M^{-1})
=\operatorname{tr}M-\operatorname{tr}(A^2C^2M^{-1})
=\operatorname{tr}M-\operatorname{tr}(AC)
=0.
$$
Because $M+M^{-1}=TI$, multiplying by $K_0$ and taking traces gives $h_1=Tr^4$. The recurrence then gives
$$
h_j=r^4s_{j+1}.
$$
Hence
$$
\alpha_{n,r,q}-\operatorname{tr}W_{i,j}=r^4s_{i+1}s_{j+1}.
$$

Step 4: Determine the defect separation that minimizes the trace

Let
$$
Q=\begin{pmatrix}T&-1\\1&0\end{pmatrix}.
$$
Induction gives
$$
Q^k=\begin{pmatrix}s_{k+1}&-s_k\\s_k&-s_{k-1}\end{pmatrix}.
$$
Since $\det Q=1$, comparison of the $(2,1)$ entry in $Q^{-a}Q^{b-1}=Q^{b-a-1}$ gives
$$
s_{a+1}s_{b-1}-s_as_b=s_{b-a-1}>0
$$
for $1\leq a<b-1$. Thus, at fixed $a+b$, moving the two indices one step toward each other strictly increases $s_as_b$. By Step 3, the smallest trace occurs when $i+1$ and $j+1$ are as equal as possible. Writing
$$
m_q=\alpha_{n,r,q}-\gamma_{n,r,q},
$$
we get
$$
m_{2k}=r^4s_k^2,
\qquad
m_{2k+1}=r^4s_ks_{k+1}.
$$

Step 5: Collapse the parity formulas to one recurrence

From the $(2,1)$ entry of $Q^aQ^b=Q^{a+b}$,
$$
s_{a+b}=s_as_{b+1}-s_{a-1}s_b.
$$
Therefore
$$
m_{2k}-m_{2k-2}
=r^4(s_k^2-s_{k-1}^2)
=r^4s_{2k-1}
$$
and
$$
m_{2k+1}-m_{2k-1}
=r^4(s_ks_{k+1}-s_{k-1}s_k)
=r^4s_{2k}.
$$
With $m_0=m_1=0$,
$$
m_q-m_{q-2}=r^4s_{q-1}
\qquad(q\geq2).
$$

Step 6: Sum the extremal deficits

The recurrence for $s_j$ gives
$$
\sum_{j=1}^{\infty}s_jt^{j-1}=\frac{1}{1-Tt+t^2}.
$$
Using Step 5,
$$
H_{n,r}(t)=t^2H_{n,r}(t)+\frac{r^4}{1-Tt+t^2}.
$$
Therefore
$$
H_{n,r}(t)=\frac{r^4}{(1-t^2)(1-Tt+t^2)}.
$$
Because $T>2$, the quadratic factor is nonzero at $t=\pm1$, so the fraction is reduced and its denominator has constant term $1$.

Final Answer: $\boxed{\frac{r^4}{(1-t^2)(1-Tt+t^2)}}$

---

## Answer

$\frac{r^4}{(1-t^2)(1-Tt+t^2)}$

---

## Classification

**Problem Type:** Symbolic derivation

**Answer Type:** Polynomial or rational function

---

## Solution Concepts

- cyclic word enumeration
- change of basis
- continuant recurrence
- extremal smoothing
- rational generating functions
