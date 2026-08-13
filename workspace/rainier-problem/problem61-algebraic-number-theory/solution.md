## Steps

Step 1: Classify the functions in $\mathcal H_n$

Let $m=3n$ and $P(T)=T+T^2+\cdots+T^{2^{m-1}}$. This nonzero polynomial has degree $2^{m-1}<|K|$, so some $t\in K$ has $P(t)\neq0$. Since $P(t)=\operatorname{Tr}_{K/\mathbb F_2}(t)\in\mathbb F_2$, we may take $P(t)=1$. For $0\neq z\in K$, $w=t/z$ gives $\operatorname{Tr}(zw)=1$; hence the trace pairing is nondegenerate.

Put $B_h(a,b)=D_aD_bh(0)$. Vanishing third differences make $D_aD_bh(w)$ independent of $w$, and $D_{a+a'}=D_a+D_{a'}+D_aD_{a'}$ makes $B_h$ alternating and $\mathbb F_2$-bilinear. Writing $a=(x,y)$ and $b=(x',y')$, the cases $y=y'=0$ and $x=x'=0$ give
$$
B_h((x,y),(x',y'))=\beta(x,y')+\beta(x',y).
$$
By trace nondegeneracy, $\beta(x,y)=\operatorname{Tr}_{K/\mathbb F_2}(x^TT(y))$ for a unique $\mathbb F_2$-linear $T:K^2\to K^2$. Fix $y=(y_1,y_2)$ and put $W=\operatorname{span}_{\mathbb F_2}\{y_1,y_2\}\subseteq K$. If $z\in W^\perp$, then with $x=(z,0)$ the defining vanishing condition gives
$$
0=\beta((z,0),y)=\operatorname{Tr}_{K/\mathbb F_2}(zT_1(y)).
$$
Hence $T_1(y)\in W^{\perp\perp}$; using $x=(0,z)$ gives $T_2(y)\in W^{\perp\perp}$. Nondegeneracy gives $\dim W^\perp=m-\dim W$, so $W^{\perp\perp}=W$. Thus each coordinate of $T(y)$ lies in $\operatorname{span}_{\mathbb F_2}\{y_1,y_2\}$. Setting one input coordinate to $0$ gives $f(z)\in\mathbb F_2z$ for each component $f$; linearity on independent $z,w$ forces the coefficients for $z,w,z+w$ to agree. Hence $T(y)=Cy$ for some $C\in M_2(\mathbb F_2)$, and $B_h(a,b)=\langle C,[a,b]\rangle$.

Set $Q_C(x,y)=\operatorname{Tr}_{K/\mathbb F_2}(x^TCy)$. If $g=h-Q_C$, then $D_aD_bg=0$, so $D_ag(w)$ is constant in $w$. With $\ell(a)=D_ag(0)$, $g(w+a)+g(w)=\ell(a)$ and $D_aD_{a'}g=0$ gives $\ell(a+a')=\ell(a)+\ell(a')$. Thus $g=g(0)+\ell$ is affine; here $g(0)=0$. Applying the trace pairing coordinatewise,
$$
\mathcal H_n=\left\{Q_C+\operatorname{Tr}_{K/\mathbb F_2}(s^Tx+t^Ty):C\in V,\ s,t\in K^2\right\},
\qquad |\mathcal H_n|=16q^4.
$$

Step 2: Translate the zero counts into a matrix-cone condition

The problem asks for an ordered quadruple of functions in $\mathcal H_n$; fix one candidate $(r_{11},r_{12},r_{21},r_{22})$ satisfying its zero-count conditions. We reserve the order $(11,12,21,22)$ for the cycle lengths $(7,5,3,1)$ in Step 6. Write
$$
r_{ij}=Q_{C_{ij}}+\operatorname{Tr}_{K/\mathbb F_2}(s_{ij}^Tx+t_{ij}^Ty)
$$
and set
$$
\Psi(X)=\sum x_{ij}C_{ij},\qquad s_X=\sum x_{ij}s_{ij},\qquad t_X=\sum x_{ij}t_{ij}.
$$
For $C\in V$ of rank $r$,
$$
W(C,s,t)=\sum_{x,y}(-1)^{\operatorname{Tr}(x^TCy+s^Tx+t^Ty)}
=q^2\sum_{Cy=s}(-1)^{\operatorname{Tr}(t^Ty)}.
$$
Thus $W=0$ unless $s\in\operatorname{im}C$ and $t\in\operatorname{im}C^T$; if $Cy_0=s$, then
$$
W(C,s,t)=q^{4-r}(-1)^{\operatorname{Tr}(t^Ty_0)}.
$$
The problem imposes zero counts only for $0\neq X$ with $\det X=0$; in $M_2(\mathbb F_2)$ these are exactly the nine rank-one matrices. Neither $X=0$ nor the six invertible $X$ is constrained, so their Walsh values play no role here. For rank-one $X$, the prescribed count forces
$$
W(\Psi(X),s_X,t_X)=2\cdot\frac{q^4+(-1)^{\operatorname{tr}X}q^3}{2}-q^4=(-1)^{\operatorname{tr}X}q^3.
$$
If $\operatorname{rank}\Psi(X)=0$, the Walsh sum is $0$ or $q^4$; if the rank is $2$, it is $0$ or has magnitude $q^2$. Hence the rank must be $1$, both image conditions hold, and for $\Psi(X)y_X=s_X$,
$$
\operatorname{Tr}_{K/\mathbb F_2}(t_X^Ty_X)=\operatorname{tr}X.
$$

Step 3: Classify the possible linear maps $\Psi$

By Step 2, $\ker\Psi$ contains no rank-one matrix. If $\operatorname{rank}\Psi\leq1$, then $\dim\ker\Psi\geq3$, so the kernel has at least $7$ nonzero elements; since $V$ has only $6$ invertible matrices, one would be rank one. Thus $\operatorname{rank}\Psi\geq2$.

If the rank were $3$, normalize its one-dimensional kernel to $\langle I\rangle$. For rank-one $X$, $\det(X+I)=\operatorname{tr}X+1$; exactly six of the nine $X=uv^T$ have $v^Tu=1$, forming three pairs $\{X,X+I\}$. Hence the image hyperplane would contain at least six rank-one points. Every hyperplane is
$$
H_D=\{X:\operatorname{tr}(D^TX)=0\},\qquad 0\neq D\in M_2(\mathbb F_2).
$$
Under $X\mapsto AXB$ the coefficient becomes $A^TDB^T$, so rank-$1$ and rank-$2$ $D$ reduce to $E_{11}$ and $I$. Thus the normal forms are $x_{11}=0$ and $\operatorname{tr}X=0$. In the first,
$$
X=\begin{pmatrix}0&b\\c&d\end{pmatrix},\quad \det X=bc,
$$
so there are five nonzero singular matrices. In the second,
$$
X=\begin{pmatrix}a&b\\c&a\end{pmatrix},\quad \det X=a+bc,
$$
and each $(b,c)$ fixes $a=bc$, giving three nonzero singular matrices. Thus rank $3$ is impossible.

For nonzero $u,v\in\mathbb F_2^2$, put
$$
L_u=\{uw^T:w\in\mathbb F_2^2\},\qquad R_v=\{wv^T:w\in\mathbb F_2^2\}.
$$
These are exactly the six two-dimensional rank-one cone subspaces: two distinct rank-one matrices sum to rank one exactly when their left or right factors agree. Their incidence graph is $K_{3,3}$, so a cone automorphism preserves or swaps the rulings. The action of $\operatorname{GL}_2(\mathbb F_2)$ on the three nonzero vectors is faithful, and both it and $S_3$ have order $6$; hence each permutation is induced uniquely. Thus ruling-preserving maps are $X\mapsto AXB$, and ruling-swapping maps are $X\mapsto AX^TB$. There are $6\cdot6+6\cdot6=72$ rank-four maps.

For rank $2$, the kernel is a two-dimensional subspace with three nonzero invertible elements. Put
$$
R=\begin{pmatrix}0&1\\1&1\end{pmatrix},\quad R^2=\begin{pmatrix}1&1\\1&0\end{pmatrix},\quad J=\begin{pmatrix}0&1\\1&0\end{pmatrix}.
$$
The six invertibles are $I,R,R^2,J,JR,JR^2$. For a line through $I$, $I+C$ must be invertible; only $C=R,R^2$ work. Thus the only external line through $I$ is $E_0=\{0,I,R,R^2\}$, and the only two external lines are $E_0$ and $JE_0$. The kernel contains three invertibles, leaving only three outside it. Each nonzero kernel coset has four elements, so each contains a nonzero singular, hence rank-one, matrix. Therefore each nonzero image point is rank one, so the image is one of the six generator lines. For a fixed kernel $K$ and image line $I$, $\Psi$ induces an isomorphism $V/K\to I$, and conversely every such isomorphism gives a valid map because no rank-one vector lies in $K$. Both spaces have dimension $2$, so there are $|\operatorname{GL}_2(\mathbb F_2)|=6$ choices. Hence there are
$$
2\cdot6\cdot6=72
$$
rank-two maps.

Step 4: Count the linear parts for the rank-four maps

Fix rank-four $\Psi$ and put $Y=\Psi(X)$. If $S(X)\in\operatorname{im}\Psi(X)$, then $\widetilde S(Y)\in\operatorname{im}Y$. Values on $E_{11},E_{12},E_{21},E_{22}$ have the form $ae_1,be_1,ce_2,de_2$; testing $E_{11}+E_{21}$ and $E_{12}+E_{22}$ gives $a=c,b=d$. Thus $\widetilde S(Y)=Y\alpha$; similarly $\widetilde T(Y)=Y^T\gamma$.

The phase identity
$$
\operatorname{Tr}_{K/\mathbb F_2}(\gamma^TY\alpha)=\operatorname{tr}(\Psi^{-1}Y)
$$
holds on the spanning rank-one matrices. If $\Psi(X)=AXB$, then the right side is $\operatorname{tr}(B^{-1}A^{-1}Y)$. If $\Psi(X)=AX^TB$, transpose invariance gives the same expression. Thus in $\operatorname{tr}(D^TY)$ the coefficient $D=(B^{-1}A^{-1})^T$ is invertible. Invertible coordinate changes reduce $D$ to $I$, giving
$$
\operatorname{Tr}_{K/\mathbb F_2}(\gamma_i\alpha_j)=\delta_{ij}.
$$
Thus $\alpha_1,\alpha_2$ are independent, giving $(q-1)(q-2)$ choices, and each $\gamma_i$ has $q/4$ choices. Every rank-four $\Psi$ contributes
$$
A(q)=\frac{q^2(q-1)(q-2)}{16}.
$$

Step 5: Count the linear parts for the rank-two maps

Let
$$
\Psi_0\!\begin{pmatrix}a&b\\c&d\end{pmatrix}=\begin{pmatrix}a+d&b+c+d\\0&0\end{pmatrix},\qquad
K_0=\ker\Psi_0=\left\{\begin{pmatrix}a&b\\a+b&a\end{pmatrix}:a,b\in\mathbb F_2\right\}.
$$
Normalize in this order. First precompose by a cone automorphism $P^{-1}$ sending the kernel to $K_0$; precomposition changes the kernel but leaves the image unchanged. Next postcompose by an invertible cone automorphism $Q$ sending that image generator line to $\operatorname{im}\Psi_0$; postcomposition changes the image but, being invertible, leaves the kernel $K_0$. The map $Q$ may be of left-right or transpose type. Now both maps have kernel $K_0$ and image $\operatorname{im}\Psi_0$; their induced isomorphisms $V/K_0\to\operatorname{im}\Psi_0$ differ by an automorphism of the image, realized by right multiplication on $e_1v^T$. A final postcomposition therefore gives $\Psi_0$ exactly.

The count is preserved explicitly. Precomposition sends $(S,T)$ bijectively to $(S\circ P^{-1},T\circ P^{-1})$ and changes the phase functional to $\tau(X)=\operatorname{tr}(P^{-1}X)$. For postcomposition $C\mapsto ACB$, send $(S,T)$ to $(AS,B^TT)$; if $Cy=S(X)$, then $ACB(B^{-1}y)=AS(X)$ and $(B^TT)^TB^{-1}y=T^Ty$. For $C\mapsto AC^TB$, send $(S,T)$ to $(AT,B^TS)$; if $Cy=S(X)$ and $C^Tx=T(X)$, then $AC^TB(B^{-1}x)=AT(X)$ and
$$
(B^TS)^TB^{-1}x=S^Tx=T^Ty.
$$
Thus the transpose case is also a bijection on admissible pairs.

Write $\ell(X)=(a+d,b+c+d)$. Then $S(X)=e_1A(X)$ for a linear $A:V\to K$. Writing
$$
T(X)=\binom{\alpha a+\beta b+\gamma c+\delta d}{\alpha'a+\beta'b+\gamma'c+\delta'd},
$$
the rank-one tests $E_{22},E_{21},E_{21}+E_{22},E_{12},E_{12}+E_{22},E_{11},E_{11}+E_{21}$ give
$$
\delta=\delta',\ \gamma=0,\ \gamma'=\delta',\ \beta=0,\ \beta'=\delta',\ \alpha'=0,\ \alpha=\gamma'.
$$
Hence $T(X)=z\ell(X)^T$. The phase condition is $\operatorname{Tr}(zA(X))=\tau(X)$. Since $\tau\neq0$, $z\neq0$; for each $z$ there are $(q/2)^4$ choices of $A$. Thus
$$
D(q)=\frac{(q-1)q^4}{16}.
$$

Step 6: Match the four cycles and apply Chebotarev

At $u=0$, $\Pi_{0000}=(7,7,5,5,3,3,1,1)$. A signed cycle of length $e$ gives two $e$-cycles when its sign product is positive and one $2e$-cycle when negative. Since all target parts are odd, every sign product is positive, and the underlying cycle lengths are $7,5,3,1$. There are
$$
\frac{16!}{7\cdot5\cdot3\cdot1}=\frac{16!}{105}
$$
such permutations.

For one such $\sigma$, denote its cycles of lengths $7,5,3,1$ by $c_{11},c_{12},c_{21},c_{22}$ respectively. For the coordinate functions $h_j(u)=\eta(\varepsilon_{u,j})\in\mathcal H_n$, define
$$
\rho_{ij}(u)=\sum_{j\in c_{ij}}h_j(u).
$$
The sign product on $c_{ij}$ is $(-1)^{\rho_{ij}(u)}$, so the signed action on the $32$ embeddings has partition $\Pi_{(\rho_{11}(u),\rho_{12}(u),\rho_{21}(u),\rho_{22}(u))}$. Hence the residue-partition requirement is exactly $\rho_{ij}=r_{ij}$ for the ordered quadruple fixed in Step 2.

For fixed $\sigma$, the map $(h_1,\ldots,h_{16})\mapsto(\rho_{11},\rho_{12},\rho_{21},\rho_{22})$ from $\mathcal H_n^{16}$ to $\mathcal H_n^4$ is surjective: on each disjoint cycle choose one coordinate to realize the prescribed sum after the other coordinates are chosen arbitrarily. Its fiber therefore has size $|\mathcal H_n|^{12}$. The admissible Galois elements form a conjugacy-stable set, so Chebotarev applies.

With $N$ the number of valid ordered quadruples,
$$
N=72A(q)+72D(q)=\frac92q^2(q-1)^2(q+2).
$$
Since $|G|=16!|\mathcal H_n|^{16}$,
$$
\delta=\frac{(16!/105)|\mathcal H_n|^{12}N}{16!|\mathcal H_n|^{16}}
=\frac{3(q-1)^2(q+2)}{35\cdot2^{17}q^{14}}.
$$

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
- linear transformations
- Chebotarev density theorem