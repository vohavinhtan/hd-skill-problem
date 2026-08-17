## Steps

Step 1: Encode admissible words and force the trace maximizer to be balanced

Put $x=r^2$ and
$$
B_k=L_rR_r^k
=\begin{pmatrix}1+kx&r\\kr&1\end{pmatrix}.
$$
After a cyclic rotation, every admissible word has trace
$$
\operatorname{tr}(B_{a_1}\cdots B_{a_{2q}}),
\qquad
a_i\geq1,
\qquad
\sum_{i=1}^{2q}a_i=(2n+1)q.
$$

With
$$
S=\begin{pmatrix}r&0\\1&-1\end{pmatrix}
$$
we have
$$
B_kS
=SD_k,
\qquad
D_k=\begin{pmatrix}2+kx&-1\\1&0\end{pmatrix}.
$$
It is enough to maximize
$$
\Phi(a_1,\ldots,a_{2q})
=\operatorname{tr}(D_{a_1}\cdots D_{a_{2q}}).
$$

For a string $U=(u_1,\ldots,u_\ell)$ write
$$
D(U)=\begin{pmatrix}p&-\mu\\ \nu&*\end{pmatrix}.
$$
The continuant recurrence
$$
K(u_1,\ldots,u_j)
=(2+xu_j)K(u_1,\ldots,u_{j-1})-K(u_1,\ldots,u_{j-2})
$$
with $K(\varnothing)=1$ gives
$$
p=K(u_1,\ldots,u_\ell),
\qquad
\mu=K(u_1,\ldots,u_{\ell-1}),
\qquad
\nu=K(u_2,\ldots,u_\ell).
$$
Since every coefficient $2+xu_j$ is at least $3$, induction yields
$$
0\leq\mu<\frac p2,
\qquad
0\leq\nu<\frac p2.
$$

Take cyclic entries $a\geq b+2$ with intervening strings $U,V$, and write their corresponding leading entries as $p,P$ and off-diagonal continuants as $\mu,\nu,\mu',\nu'$. Since
$$
D_k=D_0+kx\begin{pmatrix}1&0\\0&0\end{pmatrix},
$$
expanding the affected factors gives
$$
\Phi(a-1,U,b+1,V)-\Phi(a,U,b,V)
=x\left[pPx(a-b-1)+P(\mu-\nu)+p(\nu'-\mu')\right].
$$
The continuant bounds make the bracket strictly larger than
$$
pP\left(x(a-b-1)-1\right)\geq0.
$$
Therefore transferring one unit from a gap at least two larger than another strictly increases the trace.

Repeated transfers leave only two consecutive gap sizes. Their average is $n+\frac12$, so every trace maximizer has exactly $q$ gaps equal to $n$ and $q$ equal to $n+1$.

Step 2: Identify the alternating maximum by repairing equal adjacencies

Set
$$
A=B_n,
\qquad
C=B_{n+1},
\qquad
M=AC.
$$
Then
$$
\det M=1,
\qquad
\operatorname{tr}M=T.
$$
Define
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
Since $T>2$, induction on the recurrence gives $s_j>0$ for every $j\geq1$.

For a balanced cyclic word, let $N_{XY}$ count transitions $X\to Y$, where $X,Y\in\{A,C\}$. Equality of the numbers of $A$ and $C$, together with $N_{AC}=N_{CA}$ on a cyclic word, gives
$$
N_{AA}=N_{CC}.
$$
If this common number is positive, choose an $AA$ followed cyclically by the next $CC$. The letters between them alternate, so the segment has the form
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
K_0=A(CA-AC)C
=r^2\begin{pmatrix}r^2-1&r\\r&1\end{pmatrix}.
$$
This matrix is nonzero and entrywise nonnegative.

Both terms defining $K_i$ satisfy the same second-order recurrence in $i$ with coefficient $T$. Also
$$
K_1-TK_0
=-M+AC^{-1}C^2
=0.
$$
Together with $K_0$, these initial values give
$$
K_i=s_{i+1}K_0.
$$

Replacing $A^2(CA)^iC^2$ by $M^{i+2}$ changes the cyclic trace by
$$
\operatorname{tr}(K_iZ)>0,
$$
where $Z$ is the remaining product. Every entry of $Z$ is positive, while $K_i$ is nonzero and entrywise nonnegative. Each replacement removes one $AA$ and one $CC$, so repetition ends at the alternating word $(AC)^q$. Therefore
$$
\alpha_{n,r,q}=\operatorname{tr}(M^q).
$$

Step 3: Parametrize the two-defect layer and derive its exact trace deficit

A balanced word having exactly two equal adjacent gap pairs has one $AA$ and one $CC$. Up to cyclic rotation it is
$$
W_{i,j}=A^2(CA)^iC^2(AC)^j,
\qquad
i,j\geq0,
\qquad
i+j=q-2.
$$
Using the defect identity from Step 2,
$$
\alpha_{n,r,q}-\operatorname{tr}W_{i,j}
=\operatorname{tr}(K_iM^j)
=s_{i+1}\operatorname{tr}(K_0M^j).
$$

Put
$$
h_j=\operatorname{tr}(K_0M^j).
$$
Cayley-Hamilton gives
$$
h_{j+1}=Th_j-h_{j-1}.
$$
From the displayed formula for $K_0$,
$$
h_0=\operatorname{tr}K_0=r^4.
$$
Also
$$
\operatorname{tr}(K_0M^{-1})
=\operatorname{tr}M-\operatorname{tr}(A^2C^2M^{-1})
=0,
$$
because $M^{-1}=C^{-1}A^{-1}$ and cyclicity of trace reduces the second term to $\operatorname{tr}(AC)$. Since $\det M=1$ and $\operatorname{tr}M=T$, Cayley-Hamilton also gives
$$
M+M^{-1}=TI.
$$
Taking the trace after multiplication by $K_0$ yields
$$
h_1=Tr^4.
$$
The recurrence with $h_0=r^4$ and $h_1=Tr^4$ gives
$$
h_j=r^4s_{j+1}.
$$
Every two-defect word therefore satisfies
$$
\alpha_{n,r,q}-\operatorname{tr}W_{i,j}
=r^4s_{i+1}s_{j+1}.
$$

Step 4: Determine which defect separation produces the smallest trace

Let
$$
Q=\begin{pmatrix}T&-1\\1&0\end{pmatrix}.
$$
Induction gives
$$
Q^k=
\begin{pmatrix}
s_{k+1}&-s_k\\
s_k&-s_{k-1}
\end{pmatrix}.
$$
Since $\det Q=1$, comparison of the $(2,1)$ entry in
$$
Q^{-a}Q^{b-1}=Q^{b-a-1}
$$
gives
$$
s_{a+1}s_{b-1}-s_as_b=s_{b-a-1}
$$
whenever $1\leq a<b-1$. The right side is positive.

For fixed $a+b=q$, moving the two indices one step toward each other strictly increases $s_as_b$. Since
$$
\alpha_{n,r,q}-\operatorname{tr}W_{i,j}
=r^4s_{i+1}s_{j+1},
$$
the smallest trace occurs when $i+1$ and $j+1$ are as equal as possible. If
$$
m_q=\alpha_{n,r,q}-\gamma_{n,r,q},
$$
then
$$
m_{2k}=r^4s_k^2
$$
and
$$
m_{2k+1}=r^4s_ks_{k+1}.
$$

Step 5: Collapse the parity formulas to one recurrence

Multiplying the matrices $Q^aQ^b=Q^{a+b}$ and comparing their $(2,1)$ entries gives
$$
s_{a+b}=s_as_{b+1}-s_{a-1}s_b.
$$
For even indices,
$$
m_{2k}-m_{2k-2}
=r^4\left(s_k^2-s_{k-1}^2\right)
=r^4s_{2k-1}.
$$
For odd indices,
$$
m_{2k+1}-m_{2k-1}
=r^4\left(s_ks_{k+1}-s_{k-1}s_k\right)
=r^4s_{2k}.
$$
With $m_0=m_1=0$, both identities combine to
$$
m_q-m_{q-2}=r^4s_{q-1}
\qquad(q\geq2).
$$

Step 6: Sum the extremal deficits

The recurrence
$$
s_{j+1}=Ts_j-s_{j-1},
\qquad
s_0=0,
\qquad
s_1=1
$$
gives
$$
\sum_{j=1}^{\infty}s_jt^{j-1}
=\frac{1}{1-Tt+t^2}.
$$
Therefore
$$
\sum_{q=2}^{\infty}r^4s_{q-1}t^{q-2}
=\frac{r^4}{1-Tt+t^2}.
$$

From Step 5,
$$
m_q=m_{q-2}+r^4s_{q-1}.
$$
Multiplying by $t^{q-2}$ and summing over $q\geq2$ gives
$$
H_{n,r}(t)
=t^2H_{n,r}(t)+\frac{r^4}{1-Tt+t^2}.
$$
Therefore
$$
H_{n,r}(t)
=\frac{r^4}{(1-t^2)(1-Tt+t^2)}.
$$
Because $T>2$, the quadratic factor is nonzero at $t=1$ and $t=-1$, so the fraction is reduced and its denominator has constant term $1$.

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

- cyclic matrix products
- smoothing inequalities
- continuant recurrence
- defect separation
- rational generating functions
