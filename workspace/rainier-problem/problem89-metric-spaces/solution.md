## Steps

Step 1: Decode the metric and recover a coordinate permutation
Every word in $\mathcal A$ has weight $0$, $256$, or $512$, and every word in $\mathcal R$ has weight $8$. A word in $\mathcal F$ is the truth table of a Boolean polynomial of degree at most $3<9$; every monomial of degree $d<9$ is $1$ on $2^{9-d}$ inputs, so its total parity is even. Hence all marked words lie in $X_n$. For nonzero $z\in X_n$, the marker contribution is at most $14<16$, so $d(0,z)$ determines $\operatorname{wt}(z)$ and all three marker bits. Every nonzero distance lies between $32n+32$ and $48n+14$, so the triangle inequality is automatic.

Since $d(x,y)$ depends only on $x+y$, every translation $x\mapsto x+b$ with $b\in X_n$ is an isometry. After removing one translation, an isometry fixes $0$ and preserves Hamming weight. The weight-$2$ words are $p_{PQ}=e_P+e_Q$ with $P,Q\in V$. Two such words have sum of weight $2$ exactly when their supports meet. The stars $\{p_{PQ}:Q\ne P\}$ are cliques of size $n-1$, while a clique with no common coordinate has size at most $3$. Thus the stars, and hence the coordinates, are recovered uniquely. If $x$ has support $S$, then
$$
|S\cap\{P,Q\}|=\frac{\operatorname{wt}(x)+2-\operatorname{wt}(x+p_{PQ})}{2},
$$
so the whole support of $x$ is recovered from its distances to weight-$2$ words. Therefore every zero-fixing isometry is induced by a unique permutation $\phi$ of $V$:
$$
(P_\phi x)_X=x_{\phi^{-1}(X)}.
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

If the rulings are preserved, the images of the three coordinate $U$-spaces and three coordinate $W$-spaces give bases $a_1,a_2,a_3$ and $b_1,b_2,b_3$, and the one-dimensional intersections give $L(E_{ij})=a_ib_j^T$. Thus $L(X)=AXB$. If the rulings are swapped, $L(X)=AX^TB$. Here $A,B\in\operatorname{GL}_3(\mathbb F_2)$. Since every invertible $3\times3$ matrix over $\mathbb F_2$ has determinant $1$,
$$
\det L(X)=\det X
$$
in both cases.

Step 4: Translate the cubic coset into a quotient of quadratic forms
Let $D(X)=\det X$. For $C\in V$, let $Q_C(X)$ be the homogeneous quadratic part of $D(X+C)+D(X)$. Expanding the determinant gives
$$
Q_C(X)=\sum_{i,j}c_{ij}M_{ij}(X),
$$
where $M_{ij}$ is the complementary $2\times2$ minor. Each product of entries in distinct rows and distinct columns occurs in exactly one $M_{ij}$, so the nine minors are linearly independent. Thus $C\mapsto Q_C$ is a bijection from $V$ onto their span $\mathcal M$.

For a quadratic Boolean function $h$, write
$$
\beta_h(X,Y)=h(X+Y)+h(X)+h(Y)+h(0).
$$
This alternating bilinear form ignores affine summands. Write $\phi^{-1}(X)=L(X)+C$. Because $D(LX)=D(X)$, and translating $q$ changes it only by an affine function, preservation of $\mathcal F$ is equivalent to
$$
\beta_{q\circ L}+\beta_q\in\beta(\mathcal M).
$$
Indeed, if $C=L(H)$ then $D(LX+C)+D(LX)=D(X+H)+D(X)$, so as $C$ varies the quadratic determinant defect runs bijectively through $\mathcal M$. Therefore every admissible $L$ has exactly one translation part $C$ for which $f\circ\phi^{-1}+f$ is affine.

Step 5: Recover the quotient class from its restrictions to the two rulings
Every $2\times2$ minor vanishes on each rank-one $3$-space, so every form in $\beta(\mathcal M)$ restricts to zero on every $U_u$ and $W_v$. Conversely, let $\beta$ be an alternating bilinear form with all these restrictions zero. Restriction to $U_{e_i}$ and $W_{e_j}$ kills coefficients joining two entries in one row or one column. Restriction to $U_{e_i+e_k}$ then forces the two remaining coefficients in every $2\times2$ rectangle to be equal. Hence $\beta$ is a linear combination of the polars of the $2\times2$ minors. Thus the class modulo $\beta(\mathcal M)$ is determined exactly by the restrictions to the two rulings.

Put
$$
a(u)=u_1u_2+u_1u_3+u_2u_3.
$$
For $X=uv^T$, the definition of $q$ gives $q(X)=a(u)a(v)$. If $X=uv^T$ and $Y=uw^T$ lie in $U_u$, then
$$
\beta_q(X,Y)=a(u)\bigl(a(v+w)+a(v)+a(w)\bigr).
$$
The form in parentheses is nonzero, for example at $(v,w)=(e_1,e_2)$. Hence $\beta_q|_{U_u}$ is nonzero exactly when $a(u)=1$, and the same statement holds for $W_v$. Among the seven nonzero vectors,
$$
S=\{u:a(u)=1\}=\mathbb F_2^3\setminus\{0,e_1,e_2,e_3\}.
$$

Step 6: Count the admissible affine coordinate maps
For $L(X)=AXB$, the ruling restrictions from Step 5 are preserved exactly when
$$
A(S)=S,\qquad B^T(S)=S.
$$
The same condition holds for $L(X)=AX^TB$, with the two rulings interchanged. Preserving $S$ is equivalent to permuting its complement $\{e_1,e_2,e_3\}$, so its stabilizer in $\operatorname{GL}_3(\mathbb F_2)$ consists of the six permutation matrices.

Hence there are $6^2=36$ admissible maps of type $AXB$ and another $36$ of transpose type. The two types are disjoint because one preserves the rulings and the other swaps them. Step 4 gives exactly one affine translation part for each linear map, so the zero-word stabilizer has
$$
72
$$
elements.

Step 7: Restore code translations and count
The even-weight code on $n=512$ coordinates has $|X_n|=2^{511}$. Every isometry is uniquely a code translation followed by one of the $72$ zero-fixing isometries. Therefore
$$
|\operatorname{Iso}(X_n,d)|=72\cdot2^{511}=9\cdot2^{514}.
$$
Final Answer: $\boxed{9\cdot2^{514}}$

---

## Answer

$9\cdot2^{514}$

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
- orbit stabilizer counting