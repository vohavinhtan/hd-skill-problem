## Steps

Step 1: Encode admissible words by cyclic run lengths

Put
$$
B_k=L_rR_r^k
=\begin{pmatrix}1+kr^2&r\\kr&1\end{pmatrix}
\qquad(k\geq1).
$$
After a cyclic rotation, every $n$-admissible word of multiplicity $q$ is uniquely represented by
$$
B_{a_1}B_{a_2}\cdots B_{a_{2q}},
\qquad
a_i\geq1,
\qquad
\sum_{i=1}^{2q}a_i=(2n+1)q.
$$
For fixed $q$ only finitely many positive compositions occur, so the two largest distinct traces exist.

Set $x=r^2$ and
$$
S=\begin{pmatrix}r&0\\1&-1\end{pmatrix}.
$$
Since
$$
B_kS
=
S\begin{pmatrix}2+kx&-1\\1&0\end{pmatrix},
$$
the matrices $B_k$ are simultaneously conjugate to
$$
D_k=\begin{pmatrix}2+kx&-1\\1&0\end{pmatrix}.
$$
Hence the trace of a cyclic word equals
$$
\Phi(a_1,\ldots,a_{2q})
=\operatorname{tr}(D_{a_1}\cdots D_{a_{2q}}).
$$

Step 2: Show that the largest two trace levels are balanced

For a string $U=(u_1,\ldots,u_\ell)$ write
$$
D(U)=D_{u_1}\cdots D_{u_\ell}
=\begin{pmatrix}p&-\mu\\ \nu&*\end{pmatrix}.
$$
If $U$ is empty take $p=1$ and $\mu=\nu=0$. For nonempty $U$ define
$$
K(\varnothing)=1,\qquad K(u_1)=2+xu_1,
$$
and
$$
K(u_1,\ldots,u_j)
=(2+xu_j)K(u_1,\ldots,u_{j-1})-K(u_1,\ldots,u_{j-2}).
$$
Multiplying the $D_{u_i}$ gives
$$
p=K(u_1,\ldots,u_\ell),\quad
\mu=K(u_1,\ldots,u_{\ell-1}),\quad
\nu=K(u_2,\ldots,u_\ell).
$$
Because $2+xu_j\geq3$, induction gives
$$
K(u_1,\ldots,u_j)>2K(u_1,\ldots,u_{j-1}),
$$
and the same inequality for reversed strings yields
$$
0\leq\mu<\frac p2,\qquad 0\leq\nu<\frac p2.
$$

Choose two cyclic entries $a\geq b+2$, and let $U,V$ be the intervening strings, with
$$
D(U)=\begin{pmatrix}p&-\mu\\ \nu&*\end{pmatrix},
\qquad
D(V)=\begin{pmatrix}P&-\mu'\\ \nu'&*\end{pmatrix}.
$$
Set
$$
E=\begin{pmatrix}1&0\\0&0\end{pmatrix},
\qquad
D_k=D_0+kxE.
$$
Then
$$
\begin{aligned}
&\Phi(a-1,U,b+1,V)-\Phi(a,U,b,V)\\
&\quad=x\operatorname{tr}(D_aUEV)-x\operatorname{tr}(EUD_bV)-x^2\operatorname{tr}(EUEV).
\end{aligned}
$$
The displayed forms of $D(U)$ and $D(V)$ give
$$
\begin{aligned}
\operatorname{tr}(D_aUEV)&=a x pP-\nu P+2pP-\mu'p,\\
\operatorname{tr}(EUD_bV)&=b x pP-\mu P+2pP-\nu'p,\\
\operatorname{tr}(EUEV)&=pP.
\end{aligned}
$$
Therefore
$$
\begin{aligned}
&\Phi(a-1,U,b+1,V)-\Phi(a,U,b,V)\\
&\qquad
=x\left[pPx(a-b-1)+P(\mu-\nu)+p(\nu'-\mu')\right].
\end{aligned}
$$
The bounds on $\mu,\nu,\mu',\nu'$ make the bracket strictly larger than
$$
pP\left(x(a-b-1)-1\right)\geq0.
$$
Thus transferring one unit from an entry at least two larger than another strictly raises the trace.

Therefore every maximizer has exactly $q$ entries equal to $n$ and $q$ entries equal to $n+1$. An unbalanced composition cannot be second-maximal either. One smoothing raises its trace. If the smoothed word is not maximal, this already gives a larger nonmaximal trace. Suppose instead that one smoothing produces the maximal alternating word. Reversing that smoothing changes two target entries of types $(n,n)$, $(n+1,n+1)$, or $(n,n+1)$. In the first two cases, smooth the exceptional low entry with an ordinary high entry at a different position; the result is balanced but nonalternating. In the mixed case, smooth the entry $n+2$ with a different ordinary entry $n$; the result still contains $n-1$. Such a different position exists because $q\geq2$. Thus in every case there is a larger nonmaximal trace, so the first two trace levels are attained among balanced words.

Step 3: Identify the maximum and reduce the second level to one defect pair

Put
$$
A=B_n,\qquad C=B_{n+1},\qquad M=AC,
$$
so
$$
d=\operatorname{tr}M
=n(n+1)r^4+(4n+2)r^2+2.
$$
Define
$$
s_0=0,\qquad s_1=1,\qquad s_{j+1}=ds_j-s_{j-1}.
$$
Here $d\geq18$, so induction gives $s_j>0$ for every $j\geq1$. Since $\det M=1$, Cayley-Hamilton gives
$$
M^j=s_jM-s_{j-1}I.
$$

For a balanced cyclic word let $N_{XY}$ count transitions $X\to Y$. Equal numbers of $A$ and $C$, together with $N_{AC}=N_{CA}$, imply
$$
N_{AA}=N_{CC}.
$$
Call this common number $h$. If $h>0$, choose an $AA$ followed cyclically by the next $CC$. The intervening letters alternate, so the segment is
$$
A^2(CA)^iC^2
$$
for some $i\geq0$. Define
$$
K_i=M^{i+2}-A^2(CA)^iC^2.
$$
For $i=0$,
$$
K_0=ACAC-AACC=A(CA-AC)C.
$$
From the explicit matrices $A$ and $C$,
$$
CA-AC
=r^2\begin{pmatrix}-1&r\\0&1\end{pmatrix},
\qquad
(CA-AC)C
=\begin{pmatrix}-r^2&0\\(n+1)r^3&r^2\end{pmatrix}.
$$
Multiplication by $A$ now gives
$$
K_0
=r^2\begin{pmatrix}r^2-1&r\\r&1\end{pmatrix},
$$
which is nonzero and entrywise nonnegative. Moreover $A(CA)^i=M^iA$. Both $M$ and $CA$ have determinant $1$ and trace $d$, so Cayley-Hamilton shows that $M^{i+2}$ and $A^2(CA)^iC^2$ satisfy the same recurrence in $i$ with coefficient $d$. Also
$$
K_1-dK_0
=(M^3-dM^2)-A(MA-dA)C^2
=-M+A C^{-1}C^2=0,
$$
because $M^2-dM=-I$ and $MA-dA=A(CA-dI)=-C^{-1}$. Hence
$$
K_i=s_{i+1}K_0.
$$
Replacing $A^2(CA)^iC^2$ by $(AC)^{i+2}$ raises the cyclic trace by
$$
\operatorname{tr}(K_iZ)>0,
$$
where $Z$ is the remaining product; all entries of $Z$ are positive, while $K_i$ is nonzero and nonnegative.

Repeated replacement shows that the unique maximal cyclic class is $(AC)^q$. If $h\geq2$, one replacement leaves at least one defect pair, hence leaves a nonmaximal balanced word of larger trace. Therefore every second-maximizer has exactly one $AA$ and one $CC$.

Step 4: Compute the second trace level and count its cyclic classes

Every balanced cyclic word with exactly one $AA$ and one $CC$ is, up to cyclic rotation,
$$
W_{i,j}=A^2(CA)^iC^2(AC)^j,
\qquad
i,j\geq0,
\qquad
i+j=q-2.
$$
Since $\alpha_{n,r,q}=\operatorname{tr}(M^q)$, the defect identity gives
$$
\alpha_{n,r,q}-\operatorname{tr}W_{i,j}
=s_{i+1}\operatorname{tr}(K_0M^j).
$$
Put $h_j=\operatorname{tr}(K_0M^j)$. The identity $M^2=dM-I$ gives
$$
h_{j+1}=dh_j-h_{j-1}.
$$
Also
$$
h_0=\operatorname{tr}K_0=r^4.
$$
Since $M+M^{-1}=dI$ and cyclicity of trace gives
$$
\operatorname{tr}(K_0M^{-1})
=\operatorname{tr}M-\operatorname{tr}(A^2C^2M^{-1})
=\operatorname{tr}M-\operatorname{tr}(AC)=0,
$$
we get $h_1=dr^4$. Therefore
$$
h_j=r^4s_{j+1}
$$
and
$$
\alpha_{n,r,q}-\operatorname{tr}W_{i,j}
=r^4s_{i+1}s_{j+1}.
$$

For $j\geq1$ put
$$
Q^j=
\begin{pmatrix}d&-1\\1&0\end{pmatrix}^{j}
=
\begin{pmatrix}s_{j+1}&-s_j\\s_j&-s_{j-1}\end{pmatrix}.
$$
Since $\det Q=1$, the $(2,1)$ entry of $Q^{-a}Q^{b-1}=Q^{b-a-1}$ gives, for $1\leq a<b-1$,
$$
s_{a+1}s_{b-1}-s_as_b=s_{b-a-1}>0.
$$
Thus among positive indices with
$$
(i+1)+(j+1)=q,
$$
the product $s_{i+1}s_{j+1}$ is minimal exactly at $(i,j)=(0,q-2)$ or $(q-2,0)$. Hence
$$
\alpha_{n,r,q}-\beta_{n,r,q}=r^4s_{q-1}.
$$

It remains to count cyclic classes. In a one-defect word the occurrences $AA$ and $CC$ are unique. Starting at the unique $AA$ and moving in the fixed cyclic direction, the integer $i$ in $W_{i,j}$ is therefore invariant under cyclic rotation. Hence the two minimizing words $W_{0,q-2}$ and $W_{q-2,0}$ are cyclically equivalent only when $q-2=0$. Consequently
$$
c_{n,r,2}=1,\qquad c_{n,r,q}=2\quad(q\geq3).
$$

Step 5: Sum the two generating functions

From
$$
s_{j+1}=ds_j-s_{j-1},\qquad s_0=0,\qquad s_1=1,
$$
we obtain
$$
\sum_{m=1}^{\infty}s_mt^{m-1}
=\frac{1}{1-dt+t^2}.
$$
Therefore
$$
G_{n,r}(t)
=r^4\sum_{q=2}^{\infty}s_{q-1}t^{q-2}
=
\frac{r^4}
{1-\left(n(n+1)r^4+(4n+2)r^2+2\right)t+t^2}.
$$
The class count from Step 4 gives
$$
C_{n,r}(t)
=1+2t+2t^2+\cdots
=\frac{1+t}{1-t}.
$$
Both denominators have constant term $1$, and both fractions are reduced: $1-t$ does not divide $1+t$, while the first numerator is the nonzero constant $r^4$.

For $q=2$, the formulas give gap $r^4$ and one second-extremal cyclic class; for $q=3$, they give gap $dr^4$ and two classes, agreeing with the direct one-defect description.

Final Answer: $\boxed{\left(\frac{r^4}{1-\left(n(n+1)r^4+(4n+2)r^2+2\right)t+t^2},\frac{1+t}{1-t}\right)}$

---

## Answer

$\left(\frac{r^4}{1-\left(n(n+1)r^4+(4n+2)r^2+2\right)t+t^2},\frac{1+t}{1-t}\right)$

---

## Classification

**Problem Type:** Symbolic derivation

**Answer Type:** Tuple or ordered list

---

## Solution Concepts

- cyclic matrix products
- smoothing inequalities
- defect repair identity
- continuant recurrence
- rational generating functions
