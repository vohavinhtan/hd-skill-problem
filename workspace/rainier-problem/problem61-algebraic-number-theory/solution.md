## Steps

Step 1: Classify the functions in $\mathcal H_n$

For $h\in\mathcal H_n$, put $B_h(a,b)=D_aD_bh(0)$. The third-difference condition makes $D_aD_bh(w)$ independent of $w$, and the identity
$$
D_{a+a'}=D_a+D_{a'}+D_aD_{a'}
$$
then makes $B_h$ an alternating $\mathbb F_2$-bilinear form.

Write $a=(x,y)$ and $b=(x',y')$. Taking $y=y'=0$ or $x=x'=0$ gives $[a,b]=0$, hence $B_h$ vanishes on each of the two copies of $K^2$. Therefore
$$
B_h((x,y),(x',y'))=\beta(x,y')+\beta(x',y)
$$
for an $\mathbb F_2$-bilinear map $\beta$. By nondegeneracy of the absolute trace pairing,
$$
\beta(x,y)=\operatorname{Tr}_{K/\mathbb F_2}(x^TT(y))
$$
for a unique $\mathbb F_2$-linear $T:K^2\to K^2$. For fixed $y=(y_1,y_2)$, the defining vanishing condition says that $\operatorname{Tr}(x^TT(y))=0$ whenever $\operatorname{Tr}(x_i y_j)=0$ for all $i,j$. Thus each coordinate of $T(y)$ lies in $\operatorname{span}_{\mathbb F_2}\{y_1,y_2\}$. Setting one $y_j$ equal to $0$ shows that every component map $f:K\to K$ satisfies $f(z)\in\mathbb F_2z$. If $z,w$ are independent, linearity of $f(z+w)$ forces the coefficients of $z,w,z+w$ to agree, so $f$ is either $0$ or the identity. Hence
$$
T(y)=Cy,\qquad C\in M_2(\mathbb F_2).
$$
Thus
$$
B_h(a,b)=\langle C,[a,b]\rangle.
$$
With
$$
Q_C(x,y)=\operatorname{Tr}_{K/\mathbb F_2}(x^TCy),
$$
the polar form of $Q_C$ is exactly $B_h$. Since two quadratic Boolean functions with the same polar form differ by an affine function, and $h(0)=0$, we obtain
$$
\mathcal H_n=
\left\{
Q_C+\operatorname{Tr}_{K/\mathbb F_2}(s^Tx+t^Ty):
C\in V,\ s,t\in K^2
\right\}.
$$
Consequently
$$
|\mathcal H_n|=16q^4.
$$

Step 2: Translate the zero counts into a matrix-cone condition

Write
$$
r_{ij}=Q_{C_{ij}}+\operatorname{Tr}_{K/\mathbb F_2}(s_{ij}^Tx+t_{ij}^Ty),
$$
and for $X=(x_{ij})\in V$ set
$$
\Psi(X)=\sum x_{ij}C_{ij},\qquad
s_X=\sum x_{ij}s_{ij},\qquad
t_X=\sum x_{ij}t_{ij}.
$$
For $C\in V$ of rank $r$,
$$
\begin{aligned}
W(C,s,t)
&=\sum_{x,y\in K^2}(-1)^{\operatorname{Tr}(x^TCy+s^Tx+t^Ty)}\\
&=q^2\sum_{Cy=s}(-1)^{\operatorname{Tr}(t^Ty)}.
\end{aligned}
$$
This is zero unless $s\in\operatorname{im}C$ and $t\in\operatorname{im}C^T$. If both hold and $Cy_0=s$, then
$$
W(C,s,t)=q^{4-r}(-1)^{\operatorname{Tr}(t^Ty_0)}.
$$
Every nonzero singular matrix in $V$ has rank $1$. The required zero count is therefore equivalent, for every rank-one $X$, to
$$
\operatorname{rank}\Psi(X)=1,\qquad
s_X\in\operatorname{im}\Psi(X),\qquad
t_X\in\operatorname{im}\Psi(X)^T,
$$
and, for any $y_X$ with $\Psi(X)y_X=s_X$,
$$
\operatorname{Tr}_{K/\mathbb F_2}(t_X^Ty_X)=\operatorname{tr}X.
$$

Step 3: Classify the possible linear maps $\Psi$

The kernel of $\Psi$ contains no rank-one matrix. Hence $\operatorname{rank}\Psi\geq2$, because a three-dimensional kernel has seven nonzero elements but $V$ has only six invertible matrices.

Rank $3$ is impossible. Its kernel would be $\langle A\rangle$ with $A$ invertible; after replacing $X$ by $A^{-1}X$, take $A=I$. For rank-one $X$,
$$
\det(X+I)=\operatorname{tr}X+1.
$$
Writing $X=uv^T$ with $u,v\neq0$, exactly six of the nine rank-one matrices have $\operatorname{tr}X=v^Tu=1$. They form three pairs $\{X,X+I\}$, while the remaining three lie in distinct cosets, so the image hyperplane would contain at least six rank-one matrices. But any hyperplane has at most five: after left-right changes its defining coefficient has rank $1$ or $2$. The two normal forms are $x_{11}=0$, where $\det X=x_{12}x_{21}=0$ gives five nonzero singular matrices, and $\operatorname{tr}X=0$, where $x_{11}+x_{12}x_{21}=0$ gives three. This contradiction eliminates rank $3$.

If $\operatorname{rank}\Psi=2$, its kernel is a two-dimensional subspace whose three nonzero elements are invertible. There are exactly two such external lines. Indeed, for invertible $A,B$, the line through them is external exactly when $A+B$ is invertible. With $C=A^{-1}B$, this means $C$ and $I+C$ are invertible; in $\operatorname{GL}_2(\mathbb F_2)$ the only possibilities are the two elements of order $3$, which are the other two points on the same external line. Thus the six invertible matrices split into two external lines. The nine rank-one matrices occupy the three nonzero cosets of the kernel; no coset can be empty because the other two have only eight elements altogether. Hence every nonzero image element is rank one, so the image is one of the six generator lines obtained by fixing a nonzero left factor or a nonzero right factor. For each of $2$ kernels and $6$ image lines there are
$$
|\operatorname{GL}_2(\mathbb F_2)|=6
$$
isomorphisms from the quotient onto the image. Thus there are $72$ rank-two maps.

If $\Psi$ has rank $4$, it permutes the nine rank-one matrices. Their six generator lines form two rulings of three lines. A linear cone automorphism either preserves the two rulings or swaps them. Since $\operatorname{GL}_2(\mathbb F_2)\cong S_3$, the maps $X\mapsto AXB$ give $3!\,3!=36$ ruling-preserving maps, and composing with transpose gives the other $36$. Hence there are also $72$ rank-four maps.

Step 4: Count the linear parts for the rank-four maps

Fix an invertible cone automorphism $\Psi$ and put $Y=\Psi(X)$. A linear map $S:V\to K^2$ satisfying $S(X)\in\operatorname{im}\Psi(X)$ on every rank-one $X$ becomes a map $\widetilde S$ with $\widetilde S(Y)\in\operatorname{im}Y$. Writing its values on $E_{11},E_{12},E_{21},E_{22}$ as
$$
ae_1,\ be_1,\ ce_2,\ de_2,
$$
the rank-one matrices $E_{11}+E_{21}$ and $E_{12}+E_{22}$ force $a=c$ and $b=d$. Therefore
$$
\widetilde S(Y)=Y\alpha
$$
for a unique $\alpha\in K^2$. The same argument for the transpose condition gives
$$
\widetilde T(Y)=Y^T\gamma
$$
for a unique $\gamma\in K^2$.

The phase condition is
$$
\operatorname{Tr}_{K/\mathbb F_2}(\gamma^TY\alpha)
=\operatorname{tr}(\Psi^{-1}Y)
$$
for every rank-one $Y$, hence for every $Y\in V$ because the $E_{ij}$ are rank one and span $V$. From Step 3, $\Psi$ is $X\mapsto AXB$ or $X\mapsto AX^TB$. In the first case $\operatorname{tr}(\Psi^{-1}Y)$ has an invertible coefficient matrix $B^{-1}A^{-1}$, and the transpose case is the same after swapping indices. Thus invertible changes of $\alpha$ and $\gamma$ reduce the four equations to
$$
\operatorname{Tr}_{K/\mathbb F_2}(\gamma_i\alpha_j)=\delta_{ij}.
$$
Thus $\alpha_1,\alpha_2$ must be $\mathbb F_2$-independent, giving $(q-1)(q-2)$ ordered pairs. For each such pair, each $\gamma_i$ satisfies two independent trace equations, so there are $q/4$ choices for each. Hence every rank-four $\Psi$ contributes
$$
A(q)=\frac{q^2(q-1)(q-2)}{16}
$$
choices of linear parts.

Step 5: Count the linear parts for the rank-two maps

All rank-two maps are equivalent under pre- and post-composition by cone automorphisms to
$$
\Psi_0\!\begin{pmatrix}a&b\\c&d\end{pmatrix}
=
\begin{pmatrix}
a+d&b+c+d\\
0&0
\end{pmatrix}.
$$
Its kernel is the external line
$$
\left\{
\begin{pmatrix}a&b\\a+b&a\end{pmatrix}:a,b\in\mathbb F_2
\right\}.
$$
Let $J=\begin{pmatrix}0&1\\1&0\end{pmatrix}$. Left multiplication by $J$ sends this kernel to the other external line, and left-right cone automorphisms move the six generator lines transitively. Right multiplication realizes every automorphism of a fixed generator line, so this reduction loses no cases. Precomposition only replaces $\operatorname{tr}X$ by another nonzero linear functional $\tau(X)$.

Put
$$
\ell(X)=(a+d,\ b+c+d).
$$
The condition $S(X)\in\operatorname{im}\Psi_0(X)=\langle e_1\rangle$ on the nine rank-one matrices, which span $V$, gives
$$
S(X)=e_1A(X)
$$
for an arbitrary $\mathbb F_2$-linear $A:V\to K$. For $T$, the condition $T(X)\in\langle\ell(X)^T\rangle$ forces
$$
T(X)=z\ell(X)^T
$$
for one $z\in K$. A compact coefficient certificate is obtained from the rank-one matrices
$$
E_{22},\ E_{21},\ E_{21}+E_{22},\ E_{12},\ E_{12}+E_{22},\ E_{11},\ E_{11}+E_{21},
$$
which successively force the coefficient vectors of the two coordinates of $T$ to be
$$
(z,0,0,z),\qquad(0,z,z,z).
$$

For rank-one $X$, solving $\ell(X)y=A(X)$ gives the Walsh phase
$$
\operatorname{Tr}_{K/\mathbb F_2}(zA(X)).
$$
Thus
$$
\operatorname{Tr}_{K/\mathbb F_2}(zA(X))=\tau(X)
$$
on all of $V$. Since $\tau\neq0$, we need $z\neq0$. For each of the $q-1$ choices of $z$, the four values $A(E_{ij})$ independently lie in trace affine hyperplanes of size $q/2$. Therefore every rank-two $\Psi$ contributes
$$
D(q)=\frac{(q-1)q^4}{16}.
$$

Step 6: Apply Chebotarev and assemble the two strata

At $u=0$, every function in $\mathcal H_n$ vanishes, so the prescribed partition is
$$
\Pi_{0000}=(7,7,5,5,3,3,1,1).
$$
Hence the underlying permutation must have cycle type $(7,5,3,1)$, all four cycle signs being positive at $u=0$. There are
$$
\frac{16!}{7\cdot5\cdot3\cdot1}=\frac{16!}{105}
$$
such permutations. For a fixed one, the four cycle-sum functions are independent uniform elements of $\mathcal H_n$: the map from the sixteen coordinate functions to the four cycle sums is surjective with fiber $|\mathcal H_n|^{12}$. Since the four cycle lengths are distinct, the partition $\Pi_b$ identifies the four signs uniquely.

Let $N$ be the number of valid ordered quadruples. Steps 3--5 give
$$
\begin{aligned}
N
&=72A(q)+72D(q)\\
&=\frac{9}{2}q^2(q-1)^2(q+2).
\end{aligned}
$$
Chebotarev therefore gives
$$
\begin{aligned}
\delta
&=\frac{N}{105|\mathcal H_n|^4}\\
&=\frac{3(q-1)^2(q+2)}{35\cdot2^{17}q^{14}}.
\end{aligned}
$$
As a boundary check, when $q=8$ the two strata contribute $A(8)=168$ and $D(8)=1792$ choices per map, so $N=72(168+1792)=141120$, exactly the value of the closed formula. The explicit map $\Psi_0$ also certifies that the rank-two stratum is genuinely present, ruling out the tempting invertible-only count.

Final Answer: $\boxed{\frac{3(q-1)^2(q+2)}{35\cdot2^{17}q^{14}}}$

---

## Answer

$\frac{3(q-1)^2(q+2)}{35\cdot2^{17}q^{14}}$

---

## Classification

**Problem Type:** Symbolic derivation

**Answer Type:** Polynomial or rational function

---

## Solution Concepts

- quadratic Boolean functions
- Walsh transforms over finite fields
- singular matrix geometry
- local linear maps
- Chebotarev density theorem
