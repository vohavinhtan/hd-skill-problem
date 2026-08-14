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

Suppose first that the rulings are preserved. Write $L(U_{e_i})=U_{a_i}$ and $L(W_{e_j})=W_{b_j}$. Since $V=U_{e_1}\oplus U_{e_2}\oplus U_{e_3}=W_{e_1}\oplus W_{e_2}\oplus W_{e_3}$ and $L$ is invertible, $(a_1,a_2,a_3)$ and $(b_1,b_2,b_3)$ are bases. The one-dimensional intersections then give $L(E_{ij})=a_ib_j^T$, so $L(X)=AXB$. If the rulings are swapped, the same argument gives $L(X)=AX^TB$. Here $A,B\in\operatorname{GL}_3(\mathbb F_2)$. Since every invertible $3\times3$ matrix over $\mathbb F_2$ has determinant $1$,
$$
\det L(X)=\det X
$$
in both cases.

Step 4: Translate the cubic coset into a quotient of quadratic forms
Let $D(X)=\det X$. For $C\in V$, let $Q_C(X)$ be the squarefree quadratic part of $D(X+C)+D(X)$. Choosing one entry from $C$ and two from $X$ in the determinant expansion gives
$$
Q_C(X)=\sum_{i,j}c_{ij}M_{ij}(X),
$$
where $M_{ij}$ is the complementary $2\times2$ minor. Each product of entries in distinct rows and distinct columns occurs in exactly one $M_{ij}$, so the nine minors are linearly independent. Thus $C\mapsto Q_C$ is a bijection from $V$ onto their span $\mathcal M$.

For a quadratic Boolean function $h$, write
$$
\beta_h(X,Y)=h(X+Y)+h(X)+h(Y)+h(0).
$$
This alternating bilinear form ignores affine summands. The coordinate permutation induced by $\phi$ sends the truth table of $f$ to that of $f\circ\phi^{-1}$. Since $\mathcal A$ is $\phi$-invariant, preservation of $\mathcal F$ is equivalent to $f\circ\phi^{-1}+f\in\mathcal A$, or equivalently after composition with $\phi$, to $f\circ\phi+f\in\mathcal A$. Using $\phi(X)=L(X)+C$, $\det L(X)=\det X$, and the fact that translating $q$ changes it only by an affine function, the quadratic obstruction is
$$
\beta_{q\circ L}+\beta_q\in\beta(\mathcal M).
$$
Indeed, writing $C=L(H)$ gives
$$
D(LX+C)+D(LX)=D(X+H)+D(X),
$$
whose quadratic part is $Q_H$. As $C$ varies, so does $H$, and $Q_H$ runs bijectively through $\mathcal M$. The polar map is injective on squarefree homogeneous quadratic forms because the coefficient of $x_rx_s$ is recovered as $\beta_h(e_r,e_s)$. Hence an admissible $L$ determines a unique $H$, therefore a unique $C$, and the remaining difference has degree at most $1$, exactly as required.

Step 5: Recover the quotient class from its restrictions to the two rulings
Every $2\times2$ minor vanishes on each rank-one $3$-space, so every form in $\beta(\mathcal M)$ restricts to zero on every $U_u$ and $W_v$. Conversely, let $\beta$ be an alternating bilinear form with all these restrictions zero. Restriction to $U_{e_i}$ and $W_{e_j}$ kills coefficients joining two entries in one row or one column. For rows $i\ne k$ and columns $j\ne l$, restriction to $U_{e_i+e_k}$ gives
$$
\beta(E_{ij},E_{kl})=\beta(E_{il},E_{kj}).
$$
Thus each $2\times2$ rectangle contributes one common coefficient, exactly the polar of its complementary minor. Hence $\beta$ is a linear combination of the polars of the nine minors, so the class modulo $\beta(\mathcal M)$ is determined exactly by the restrictions to the two rulings.

Put
$$
a(u)=u_1u_2+u_1u_3+u_2u_3,
\qquad
c(v)=v_1v_2.
$$
For $X=uv^T$, the definition of $q$ gives $q(X)=a(u)c(v)$. On $U_u$,
$$
\beta_q(uv^T,uw^T)=a(u)\bigl(c(v+w)+c(v)+c(w)\bigr),
$$
while on $W_v$,
$$
\beta_q(uv^T,wv^T)=c(v)\bigl(a(u+w)+a(u)+a(w)\bigr).
$$
Both parenthesized polar forms are nonzero, for instance at $(e_1,e_2)$. Therefore the nonzero restrictions occur on
$$
S=\mathbb F_2^3\setminus\{0,e_1,e_2,e_3\}
$$
in the $U$-ruling and on
$$
T=\{(1,1,0),(1,1,1)\}
$$
in the $W$-ruling. Thus there are four nonzero $U$-restrictions and two nonzero $W$-restrictions.

Step 6: Count the admissible affine coordinate maps
For $L(X)=AXB$,
$$
L(uv^T)=(Au)(B^Tv)^T.
$$
Hence equality of the $U$-restrictions from Step 5 gives, for every nonzero $u$,
$$
a(Au)\,\beta_{c\circ B^T}=a(u)\,\beta_c.
$$
Because $B$ is invertible, $\beta_{c\circ B^T}$ is nonzero. Thus the zero and nonzero cases force $a(Au)=a(u)$ for all $u$, equivalently $A(S)=S$; choosing any $u\in S$ also gives $\beta_{c\circ B^T}=\beta_c$. Likewise equality of the $W$-restrictions gives
$$
c(B^Tv)\,\beta_{a\circ A}=c(v)\,\beta_a.
$$
Since $\beta_{a\circ A}$ is nonzero, this forces $c(B^Tv)=c(v)$ for all $v$, equivalently $B^T(T)=T$. Conversely, these two setwise conditions preserve the Boolean functions $a$ and $c$ themselves, hence both displayed restriction identities. Therefore they are necessary and sufficient.

Since a linear map fixes $0$, preserving $S$ is equivalent to permuting the three vectors $e_1,e_2,e_3$, so there are exactly $6$ possibilities for $A$. Also
$$
|\operatorname{GL}_3(\mathbb F_2)|=(2^3-1)(2^3-2)(2^3-4)=168.
$$
Any two distinct nonzero vectors are linearly independent over $\mathbb F_2$, so $\operatorname{GL}_3(\mathbb F_2)$ is transitive on the $\binom72=21$ unordered pairs of distinct nonzero vectors. Hence the stabilizer of $T$ has size $168/21=8$. There are therefore
$$
6\cdot8=48
$$
admissible maps of type $AXB$.

A transpose-type map sends every $U$-space to a $W$-space and conversely. It would therefore exchange the two restriction-support sizes, but Step 5 gives sizes $4$ and $2$. Hence no map of type $AX^TB$ is admissible. Step 4 gives exactly one affine translation part for each of the $48$ linear maps, so the zero-word stabilizer has $48$ elements.

Step 7: Restore code translations and count
The even-weight code on $n=512$ coordinates has $|X_n|=2^{511}$. Every isometry is uniquely a code translation followed by one of the $48$ zero-fixing isometries. Therefore
$$
|\operatorname{Iso}(X_n,d)|=48\cdot2^{511}=3\cdot2^{515}.
$$
Final Answer: $\boxed{3\cdot2^{515}}$

---

## Answer

$3\cdot2^{515}$

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