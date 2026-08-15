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

Step 2: Use the affine-word marker to force an affine coordinate map
Preserving $\mathcal A$ permutes the supports of all nonconstant affine functions, hence all affine hyperplanes of the $9$-dimensional space $V$. Intersections of affine hyperplanes give all affine subspaces, so these are preserved as well. Put $C=\phi(0)$ and $\psi(X)=\phi(X)+C$. Then $\psi(0)=0$, and the image of every linear subspace is an affine subspace containing $0$, hence a linear subspace.

For distinct nonzero $U,V$, the $2$-space they span is $\{0,U,V,U+V\}$. Its image is the $2$-space containing $0,\psi(U),\psi(V)$, whose fourth point is $\psi(U)+\psi(V)$. Thus $\psi(U+V)=\psi(U)+\psi(V)$; the cases with $U=0$, $V=0$, or $U=V$ are immediate. Hence
$$
\phi(X)=L(X)+C
$$
with $L\in\operatorname{GL}(V)$.

Step 3: Use the rank-flat marker to classify the linear part
An affine map sends a coset of $U_u$ or $W_v$ to a coset whose direction is $L(U_u)$ or $L(W_v)$. Preservation of $\mathcal R$ therefore makes $L$ permute the fourteen $3$-spaces $U_u,W_v$. Distinct spaces in one ruling meet only in $0$, while
$$
U_u\cap W_v=\{0,uv^T\}.
$$
Hence $L$ either preserves the two rulings or swaps them.

Suppose first that the rulings are preserved. Write $L(U_{e_i})=U_{a_i}$ and $L(W_{e_j})=W_{b_j}$. Since
$$
V=U_{e_1}\oplus U_{e_2}\oplus U_{e_3}
=W_{e_1}\oplus W_{e_2}\oplus W_{e_3}
$$
and $L$ is invertible, $(a_1,a_2,a_3)$ and $(b_1,b_2,b_3)$ are bases. The intersection $U_{a_i}\cap W_{b_j}$ contains the unique nonzero matrix $a_ib_j^T$; over $\mathbb F_2$ this forces
$$
L(E_{ij})=a_ib_j^T.
$$
Thus $L(X)=AXB$. If the rulings are swapped, the same argument gives $L(X)=AX^TB$. Here $A,B\in\operatorname{GL}_3(\mathbb F_2)$. Every invertible $3\times3$ matrix over $\mathbb F_2$ has determinant $1$, so in both cases
$$
\det L(X)=\det X.
$$

Step 4: Convert preservation of $\mathcal F$ into a quadratic quotient condition
Let $D(X)=\det X$. For $C=(c_{ij})\in V$, let $Q_C(X)$ be the squarefree quadratic part of $D(X+C)+D(X)$. Choosing one entry from $C$ and two from $X$ in the determinant expansion gives
$$
Q_C(X)=\sum_{i,j}c_{ij}M_{ij}(X),
$$
where $M_{ij}$ is the complementary $2\times2$ minor. Each product of entries in distinct rows and distinct columns occurs in exactly one $M_{ij}$, so the nine minors are linearly independent. Therefore $C\mapsto Q_C$ is a bijection from $V$ onto their span $\mathcal M$.

For a quadratic Boolean function $h$, put
$$
\beta_h(X,Y)=h(X+Y)+h(X)+h(Y)+h(0).
$$
The coordinate permutation induced by $\phi$ sends the truth table of $f$ to that of $f\circ\phi^{-1}$. Thus $\mathcal F$ is preserved exactly when $f\circ\phi^{-1}+f\in\mathcal A$. Composing with $\phi$ and using the $\phi$-invariance of $\mathcal A$, this is equivalent to $f\circ\phi+f\in\mathcal A$.

Using $\phi(X)=L(X)+C$ from Step 2, $\det L(X)=\det X$ from Step 3, and the fact that translating the quadratic $q$ changes it only by an affine function, the only quadratic obstruction is
$$
\beta_{q\circ L}+\beta_q\in\beta(\mathcal M).
$$
Indeed, write $C=L(H)$. Then
$$
D(LX+C)+D(LX)=D(X+H)+D(X),
$$
whose quadratic part is $Q_H$. As $C$ varies, so does $H$, and $Q_H$ runs bijectively through $\mathcal M$. The polar map is injective on squarefree homogeneous quadratics because the coefficient of $x_rx_s$ is $\beta_h(e_r,e_s)$. Consequently, for every admissible $L$ there is exactly one $H$, hence exactly one $C$, that cancels the quadratic obstruction; the remaining difference has degree at most $1$.

Step 5: Encode the quotient class by two coupled linear maps
Every $2\times2$ minor vanishes on every rank-one $3$-space. Conversely, let $\beta$ be an alternating bilinear form vanishing on all $U_u$ and $W_v$. Restricting to $U_{e_i}$ and $W_{e_j}$ kills coefficients joining two entries in the same row or the same column. For distinct rows $i,k$ and columns $j,l$, restriction to $U_{e_i+e_k}$ gives
$$
\beta(E_{ij},E_{kl})=\beta(E_{il},E_{kj}).
$$
Thus the two cross-terms in each $2\times2$ rectangle have one common coefficient, exactly the polar of the corresponding complementary minor. Hence $\beta\in\beta(\mathcal M)$. Therefore the quotient class from Step 4 is determined exactly by its restrictions to the two rulings.

For $r=(r_1,r_2,r_3)^T$, define
$$
\Omega_r(y,z)=\det[r,y,z].
$$
Since
$$
\Omega_r(y,z)
=r_1(y_2z_3+y_3z_2)+r_2(y_3z_1+y_1z_3)+r_3(y_1z_2+y_2z_1),
$$
the vector $r$ records the three coefficients of an alternating bilinear form.

Substituting $X=uv^T$ into the given $q$ gives
$$
\begin{aligned}
q(uv^T)
={}&u_1v_1v_2+u_2v_1v_3+u_3(v_1v_2+v_2v_3)\\
&+u_2u_3v_1+u_1u_2(v_2+v_3).
\end{aligned}
$$
For fixed $u$, only the first line contributes to the quadratic polar in the variable $v$; for fixed $v$, only the second line contributes to the quadratic polar in the variable $u$. Hence
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

Step 6: Reduce the zero stabilizer to a three-element centralizer
For $L(X)=AXB$,
$$
L(uv^T)=(Au)(B^Tv)^T.
$$
Because $\det B=1$,
$$
\Omega_r(B^Ty,B^Tz)
=\det[r,B^Ty,B^Tz]
=\det[B^{-T}r,y,z]
=\Omega_{B^{-T}r}(y,z).
$$
Likewise $\Omega_r(Ay,Az)=\Omega_{A^{-1}r}(y,z)$. Therefore equality of the two ruling-restriction maps from Step 5 is equivalent to
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
Thus $A$ is uniquely determined by $B$, and the non-transpose stabilizer is in bijection with the centralizer of $K$ in $\operatorname{GL}_3(\mathbb F_2)$.

Now
$$
\ker K=\langle(0,1,1)^T\rangle,
\qquad
\operatorname{im}K=\{(a,0,c)^T:a,c\in\mathbb F_2\},
$$
and these subspaces are complementary. Every invertible matrix commuting with $K$ preserves both. It fixes the unique nonzero vector of $\ker K$. On $\operatorname{im}K$, the map $K$ cycles the three nonzero vectors
$$
e_1\mapsto e_3\mapsto e_1+e_3\mapsto e_1.
$$
If $G$ commutes with $K$, the image $G(e_1)$ can be any one of these three vectors, and then commutation determines $G$ on the whole $K$-orbit. Thus there are at most three such restrictions. Conversely, the three powers of this $3$-cycle extend by the identity on $\ker K$ to invertible maps commuting with $K$. Hence the non-transpose stabilizer has exactly $3$ elements.

For a transpose-type map $L(X)=AX^TB$, a $U$-space is sent to a $W$-space and a $W$-space to a $U$-space. The same pullback calculation gives the necessary equations
$$
A^{-1}SB^T=R,
\qquad
B^{-T}RA=S.
$$
The first is impossible because its left side has rank $2$ while $R$ has rank $3$. Thus no transpose-type element is admissible. By Step 4 each of the three admissible linear parts has exactly one coordinate-translation part, so the zero-word stabilizer has size $3$.

Step 7: Restore code translations and count
The even-weight code on $n=512$ coordinates has
$$
|X_n|=2^{511}.
$$
Every isometry is uniquely a code translation followed by one of the three zero-fixing isometries from Step 6. Therefore
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
