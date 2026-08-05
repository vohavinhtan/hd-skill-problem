## Steps

Step 1: Encode admissible words by cyclic run lengths

Put $x=r^2$. After a cyclic rotation, every $n$-admissible word of multiplicity $q$ has the form
$$
B_{a_1}B_{a_2}\cdots B_{a_{2q}},
\qquad
a_i\geq1,
\qquad
\sum_{i=1}^{2q}a_i=(2n+1)q.
$$
Thus the extrema exist because only finitely many positive compositions occur for a fixed $q$.

Let
$$
S=\begin{pmatrix}r&0\\1&-1\end{pmatrix}.
$$
The identity
$$
B_kS=S\begin{pmatrix}2+kx&-1\\1&0\end{pmatrix}
$$
shows that traces are unchanged if every $B_k$ is replaced by
$$
D_k=\begin{pmatrix}2+kx&-1\\1&0\end{pmatrix}.
$$
Write
$$
\Phi(a_1,\ldots,a_{2q})=\operatorname{tr}(D_{a_1}\cdots D_{a_{2q}}).
$$

Step 2: Prove that the two largest trace levels use only the run lengths $n$ and $n+1$

For a string $U=(u_1,\ldots,u_\ell)$, write
$$
D(U)=D_{u_1}\cdots D_{u_\ell}
=\begin{pmatrix}p&-\mu\\ \nu&*\end{pmatrix}.
$$
If $U$ is empty, take $p=1$ and $\mu=\nu=0$. If $U$ is nonempty, multiplication gives
$$
p=K(u_1,\ldots,u_\ell),\quad
\mu=K(u_1,\ldots,u_{\ell-1}),\quad
\nu=K(u_2,\ldots,u_\ell),
$$
where
$$
K(\varnothing)=1,\qquad K(u_1)=2+xu_1,
$$
and, for $j\geq2$,
$$
K(u_1,\ldots,u_j)=(2+xu_j)K(u_1,\ldots,u_{j-1})-K(u_1,\ldots,u_{j-2}).
$$
Since $2+xu_j\geq3$, induction gives $K(u_1,\ldots,u_j)>2K(u_1,\ldots,u_{j-1})$. Reversing the string gives
$$
0\leq\mu<\frac p2,\qquad 0\leq\nu<\frac p2.
$$

Select two run lengths $a\geq b+2$. Let the two intervening cyclic strings be $U,V$, with
$$
D(U)=\begin{pmatrix}p&-\mu\\ \nu&*\end{pmatrix},
\qquad
D(V)=\begin{pmatrix}P&-\mu'\\ \nu'&*\end{pmatrix}.
$$
Since
$$
D_k=D_0+kx\begin{pmatrix}1&0\\0&0\end{pmatrix},
$$
bilinearity in the two selected factors yields
$$
\begin{aligned}
&\Phi(a-1,U,b+1,V)-\Phi(a,U,b,V)\\
&\qquad=x\left[pPx(a-b-1)+P(\mu-\nu)+p(\nu'-\mu')\right].
\end{aligned}
$$
The bounds above make the bracket strictly larger than
$$
pP\left(x(a-b-1)-1\right)\geq0.
$$
Hence transferring one unit from any run at least two larger than another strictly increases the trace. Every maximizer therefore has $q$ runs equal to $n$ and $q$ runs equal to $n+1$.

An unbalanced word cannot attain the second-largest trace. Smoothing produces a larger word; if that word is not maximal, it is a nonmaximal trace strictly above the original one. Suppose instead that one smoothing produces the maximal alternating word. Reversing that smoothing changes two target entries of types $(n,n)$, $(n+1,n+1)$, or $(n,n+1)$. In the first two cases, smooth the exceptional low entry with an ordinary high entry at a different position; the result is balanced but nonalternating. In the mixed case, smooth the entry $n+2$ with a different ordinary entry $n$; the result still contains $n-1$. Such a different position exists because $q\geq2$. Thus a larger nonmaximal word always exists.

Step 3: Determine the maximal balanced word and reduce the second layer to one defect pair

Return to the positive matrices and set
$$
A=B_n,\qquad C=B_{n+1},\qquad M=AC,
$$
so
$$
d=\operatorname{tr}M=n(n+1)r^4+(4n+2)r^2+2.
$$
Define
$$
s_0=0,\qquad s_1=1,\qquad s_{j+1}=ds_j-s_{j-1}.
$$
Since $\det M=1$, the identity $M^2=dM-I$ gives
$$
M^j=s_jM-s_{j-1}I.
$$

Let $N_{XY}$ denote the number of cyclic transitions from $X$ to $Y$. The equal counts of $A$ and $C$, together with $N_{AC}=N_{CA}$, imply
$$
N_{AA}=N_{CC}.
$$
Call this common number $h$. If $h>0$, choose the last $AA$ before the next $CC$. The intervening letters alternate, so the corresponding segment is
$$
A^2(CA)^iC^2
$$
for some $i\geq0$. Put
$$
K_i=M^{i+2}-A^2(CA)^iC^2.
$$
For $K=K_0$, the displayed matrices satisfy the exact identity
$$
K=M^2-A^2C^2
=r^2\begin{pmatrix}r^2-1&r\\r&1\end{pmatrix}.
$$
Moreover $A(CA)^i=M^iA$, so both terms defining $K_i$ satisfy the recurrence with coefficient $d$. For the second initial value,
$$
\begin{aligned}
K_1-dK_0
&=(M^3-dM^2)-A(MA-dA)C^2\\
&=-M-A(-C^{-1})C^2=0,
\end{aligned}
$$
where $CA-dI=-(CA)^{-1}$. Consequently
$$
K_i=s_{i+1}K.
$$
The matrix $K$ is nonzero and entrywise nonnegative. Replacing
$$
A^2(CA)^iC^2
\quad\text{by}\quad
(AC)^{i+2}
$$
therefore increases the cyclic trace by $\operatorname{tr}(K_iZ)>0$, where $Z$ is the remaining positive context; if $Z=I$, the increase is $\operatorname{tr}K_i>0$.

Repeated replacement proves that the unique maximal cyclic class is the alternating class $(AC)^q$. If $h\geq2$, one replacement leaves a nonalternating word, so such a word cannot lie on the second trace level. Hence every second maximizer has exactly one $AA$ and one $CC$.

Step 4: Compute the exact second trace level and all equality classes

A balanced cyclic word with exactly one defect pair is, up to cyclic rotation,
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
=s_{i+1}\operatorname{tr}(KM^j).
$$
Let $h_j=\operatorname{tr}(KM^j)$. The relation $M^2=dM-I$ gives
$$
h_{j+1}=dh_j-h_{j-1}.
$$
Also
$$
h_0=\operatorname{tr}K=r^4.
$$
Because $M+M^{-1}=dI$ and
$$
\begin{aligned}
\operatorname{tr}(KM^{-1})
&=\operatorname{tr}M-\operatorname{tr}(A^2C^2M^{-1})\\
&=\operatorname{tr}M-\operatorname{tr}(AC)=0,
\end{aligned}
$$
we have $h_1=dr^4$. Hence
$$
h_j=r^4s_{j+1}
$$
and therefore
$$
\alpha_{n,r,q}-\operatorname{tr}W_{i,j}
=r^4s_{i+1}s_{j+1}.
$$

For $1\leq a<b-1$, induction on $b$ from the recurrence and the base $b=a+1$ gives
$$
s_{a+1}s_{b-1}-s_as_b=s_{b-a-1}>0.
$$
Thus, with $(i+1)+(j+1)=q$, the product $s_{i+1}s_{j+1}$ is smallest exactly when $i=0$ or $j=0$. It follows that
$$
\alpha_{n,r,q}-\beta_{n,r,q}=r^4s_{q-1},
$$
and the second-maximizing classes are exactly
$$
\left[B_n^2B_{n+1}^2(B_nB_{n+1})^{q-2}\right]^\pm.
$$

Step 5: Sum the gaps and verify the boundary cases

The recurrence and initial values imply
$$
\sum_{m=1}^{\infty}s_mt^{m-1}
=\frac{1}{1-dt+t^2}.
$$
Therefore
$$
G_{n,r}(t)
=r^4\sum_{q=2}^{\infty}s_{q-1}t^{q-2}
=\frac{r^4}{1-\left(n(n+1)r^4+(4n+2)r^2+2\right)t+t^2}.
$$
For $q=2$, the two balanced cyclic classes are $ACAC$ and $A^2C^2$, and their trace gap is $\operatorname{tr}K=r^4$, agreeing with the constant term. For $q=3$, the recurrence gives the gap $dr^4$, and the two orientations in the displayed reversal family give all one-defect classes with minimal loss. The smoothing argument excludes every unbalanced composition, while the defect replacement excludes every balanced word with at least two defect pairs.

Final Answer: $\boxed{(\frac{r^4}{1-(n(n+1)r^4+(4n+2)r^2+2)t+t^2},\bigcup_{q\geq2}[B_n^2B_{n+1}^2(B_nB_{n+1})^{q-2}]^\pm)}$

---

## Answer

$(\frac{r^4}{1-(n(n+1)r^4+(4n+2)r^2+2)t+t^2},\bigcup_{q\geq2}[B_n^2B_{n+1}^2(B_nB_{n+1})^{q-2}]^\pm)$

---

## Classification

**Problem Type:** Exhaustive enumeration

**Answer Type:** Tuple or ordered list

---

## Solution Concepts

- cyclic matrix products
- continuant recurrences
- smoothing inequalities
- defect repair identity
- generating functions
