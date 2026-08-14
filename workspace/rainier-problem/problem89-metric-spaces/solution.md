## Steps

Step 1: Decode the metric and recover a coordinate permutation
Every word in $\mathcal A$ has weight $0$, $256$, or $512$, and every word in $\mathcal R$ has weight $8$. A word in $\mathcal F$ is the truth table of a Boolean polynomial of degree at most $3<9$; every monomial of degree $d<9$ is $1$ on $2^{9-d}$ inputs, so its total parity is even. Hence all marked words lie in $X_n$. For nonzero $z\in X_n$, the marker contribution is at most $14<16$, so $d(0,z)$ determines $\operatorname{wt}(z)$ and all three marker bits. Every nonzero distance lies between $32n+32$ and $48n+14$, so the triangle inequality is automatic.

Since $d(x,y)$ depends only on $x+y$, every translation $x\mapsto x+b$ with $b\in X_n$ is an isometry. After removing one translation, an isometry fixes $0$ and preserves Hamming weight. The weight-$2$ words are $p_{PQ}=e_P+e_Q$ with $P,Q\in V$. Two such words have sum of weight $2$ exactly when their supports meet. The stars $\{p_{PQ}:Q\ne P\}$ are cliques of size $n-1$, while a clique with no common coordinate has size at most $3$. Thus the stars, and hence the coordinates, are recovered uniquely. If $x$ has support $S$, then
$$
|S\cap\{P,Q\}|=\frac{\operatorname{wt}(x)+2-\operatorname{wt}(x+p_{PQ})}{2},
$$
so the whole support of $x$ is recovered from its distances to weight-$2$ words. Therefore every zero-fixing isometry is induced by a unique permutation $\phi$ of $V$:
$$
(P_{\phi}x)_X=x_{\phi^{-1}(X)}.
$$

Step 2: The affine-word marker forces an affine map on $V$
Preserving $\mathcal A$ means that $\phi$ permutes all affine hyperplanes of the $9$-dimensional space $V$. Their intersections, hence all affine subspaces, are preserved. Put $C=\phi(0)$ and $\psi(X)=\phi(X)+C$. Then $\psi$ fixes $0$ and preserves linear subspaces.

For distinct nonzero $U,V$, the $2$-space they span is $\{0,U,V,U+V\}$. Its image is the $2$-space containing $0,\psi(U),\psi(V)$, whose fourth point is $\psi(U)+\psi(V)$. Thus $\psi(U+V)=\psi(U)+\psi(V)$, and the remaining cases are immediate. Hence
$$
\phi(X)=L(X)+C
$$
with $L\in\operatorname{GL}(V)$.

Step 3: The rank-flat marker forces a two-sided matrix action
An affine map sends a coset of $U_u$ or $W_v$ to a coset whose direction is $L(U_u)$ or $L(W_v)$. Preservation of $\mathcal R$ therefore makes $L$ permute the fourteen $3$-spaces $U_u,W_v$. Distinct spaces in one ruling meet only in $0$, while
$$
U_u\cap W_v=\{0,uv^T\}.
$$
Hence $L$ either preserves the two rulings or swaps them.

Suppose first that the rulings are preserved. Write $L(U_{e_i})=U_{a_i}$ and $L(W_{e_j})=W_{b_j}$. Since $V=U_{e_1}\oplus U_{e_2}\oplus U_{e_3}=W_{e_1}\oplus W_{e_2}\oplus W_{e_3}$ and $L$ is invertible, $(a_1,a_2,a_3)$ and $(b_1,b_2,b_3)$ are bases. The one-dimensional intersections give $L(E_{ij})=a_ib_j^T$, so $L(X)=AXB$. If the rulings are swapped, the same argument gives $L(X)=AX^TB$. Here $A,B\in\operatorname{GL}_3(\mathbb F_2)$, and every invertible $3\times3$ matrix over $\mathbb F_2$ has determinant $1$. Thus
$$
\det L(X)=\det X
$$
in both cases.

Step 4: Convert preservation of $\mathcal F$ into a quadratic quotient condition
Let $D(X)=\det X$. For $C\in V$, let $Q_C(X)$ be the squarefree quadratic part of $D(X+C)+D(X)$. Choosing one entry from $C$ and two from $X$ in the determinant expansion gives
$$
Q_C(X)=\sum_{i,j}c_{ij}M_{ij}(X),
$$
where $M_{ij}$ is the complementary $2\times2$ minor. Each product of entries in distinct rows and distinct columns occurs in exactly one $M_{ij}$, so the nine minors are linearly independent. Thus $C\mapsto Q_C$ is a bijection from $V$ onto their span $\mathcal M$.

For a quadratic Boolean function $h$, put
$$
\beta_h(X,Y)=h(X+Y)+h(X)+h(Y)+h(0).
$$
The coordinate permutation induced by $\phi$ sends the truth table of $f$ to that of $f\circ\phi^{-1}$. Since $\mathcal A$ is $\phi$-invariant, preserving $\mathcal F$ is equivalent to $f\circ\phi+f\in\mathcal A$. Using $\phi(X)=L(X)+C$, $\det L(X)=\det X$, and the fact that translating $q$ changes it only by an affine function, this is equivalent to
$$
\beta_{q\circ L}+\beta_q\in\beta(\mathcal M).
$$
Writing $C=L(H)$ shows that the quadratic determinant defect is $Q_H$, which runs bijectively through $\mathcal M$. The polar map is injective on squarefree homogeneous quadratics because the coefficient of $x_rx_s$ is $\beta_h(e_r,e_s)$. Hence every admissible $L$ has exactly one translation part $C$.

Step 5: Encode the quotient class by two coupled linear maps
Every $2\times2$ minor vanishes on every rank-one $3$-space. Conversely, if an alternating bilinear form vanishes on all $U_u$ and $W_v$, then restrictions to $U_{e_i}$ and $W_{e_j}$ kill same-row and same-column coefficients, while restriction to $U_{e_i+e_k}$ equates the two coefficients in each $2\times2$ rectangle. Hence it lies in $\beta(\mathcal M)$. Therefore the quotient class in Step 4 is determined exactly by the restrictions to the two rulings.

For $r=(r_1,r_2,r_3)^T$, define
$$
\Omega_r(y,z)=\det[r,y,z].
$$
This identifies alternating bilinear forms on $\mathbb F_2^3$ with vectors $r$. For $X=uv^T$, the quadratic part in the varying $v$ on $U_u$ is
$$
u_1v_1v_2+u_2v_1v_3+u_3(v_1v_2+v_2v_3),
$$
while the quadratic part in the varying $u$ on $W_v$ is
$$
v_1u_2u_3+(v_2+v_3)u_1u_2.
$$
Therefore
$$
\beta_q|_{U_u}=\Omega_{Ru},
\qquad
\beta_q|_{W_v}=\Omega_{Sv},
$$
where
$$
R=\begin{pmatrix}0&0&1\\0&1&0\\1&0&1\end{pmatrix},
\qquad
S=\begin{pmatrix}1&0&0\\0&0&0\\0&1&1\end{pmatrix}.
$$
Thus $\operatorname{rank}R=3$ and $\operatorname{rank}S=2$.

Step 6: Reduce the stabilizer to the centralizer of one matrix
For $L(X)=AXB$,
$$
L(uv^T)=(Au)(B^Tv)^T.
$$
Since $\Omega_r(B^Ty,B^Tz)=\Omega_{B^{-T}r}(y,z)$, equality of the two ruling-restriction maps from Step 5 is equivalent to
$$
B^{-T}RA=R,
\qquad
A^{-1}SB^T=S.
$$
The first equation gives $A=R^{-1}B^TR$. Substituting this into the second and putting
$$
K=RS=\begin{pmatrix}0&1&1\\0&0&0\\1&1&1\end{pmatrix}
$$
gives
$$
KB^T=B^TK.
$$
Hence $A$ is uniquely determined by $B$, and the non-transpose stabilizer is the centralizer of $K$ in $\operatorname{GL}_3(\mathbb F_2)$.

Now
$$
\ker K=\langle(0,1,1)^T\rangle,
\qquad
\operatorname{im}K=\{(a,0,c)^T:a,c\in\mathbb F_2\},
$$
and these subspaces are complementary. Any invertible matrix commuting with $K$ preserves both. On $\ker K$ it fixes the unique nonzero vector. On $\operatorname{im}K$, the map $K$ cycles the three nonzero vectors
$$
e_1\mapsto e_3\mapsto e_1+e_3\mapsto e_1.
$$
An invertible linear map of this $2$-space commuting with that cycle is one of its three powers. Therefore the non-transpose stabilizer has exactly $3$ elements.

For a transpose-type map the two restriction maps are interchanged. Their ranks would therefore have to agree, contradicting $\operatorname{rank}R=3$ and $\operatorname{rank}S=2$. Thus there are no transpose-type elements. By Step 4 each of the three admissible linear parts has exactly one coordinate-translation part, so the zero-word stabilizer has size $3$.

Step 7: Restore code translations and count
The even-weight code on $n=512$ coordinates has $|X_n|=2^{511}$. Every isometry is uniquely a code translation followed by one of the three zero-fixing isometries. Therefore
$$
|\operatorname{Iso}(X_n,d)|=3\cdot2^{511}.
$$
Final Answer: $\boxed{3\cdot2^{511}}$

---

## Answer

$3\cdot2^{511}$

---

## Classification

**Problem Type:** Exact computation

**Answer Type:** Exact scalar

---

## Solution Concepts

- affine Boolean functions
- rank one matrix geometry
- quadratic form polarizations
- determinant finite differences
- matrix centralizers
