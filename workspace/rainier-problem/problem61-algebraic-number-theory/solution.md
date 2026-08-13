## Steps

Step 1: Classify $\mathcal H_n$

Let $m=3n$ and $P(T)=T+T^2+\cdots+T^{2^{m-1}}$. Since $P$ is nonzero of degree $<|K|$, some $t\in K$ has $P(t)=\operatorname{Tr}(t)=1$. Thus for $0\neq z\in K$, choosing $w=t/z$ gives $\operatorname{Tr}(zw)=1$; the trace pairing is nondegenerate.

Put $B_h(a,b)=D_aD_bh(0)$. Third differences vanish, so $D_aD_bh$ is constant; $D_{a+a'}=D_a+D_{a'}+D_aD_{a'}$ makes $B_h$ alternating and bilinear. Hence
$$
B_h((x,y),(x',y'))=\beta(x,y')+\beta(x',y),
$$
with $\beta(x,y)=\operatorname{Tr}(x^TT(y))$ for a unique linear $T:K^2\to K^2$. Fix $y=(y_1,y_2)$ and $W=\operatorname{span}_{\mathbb F_2}\{y_1,y_2\}$. If $z\in W^\perp$, take $x=(z,0)$ and $a=(x,0),b=(0,y)$. Then
$$
\langle C,xy^T\rangle=\sum c_{ij}\operatorname{Tr}(x_i y_j)=0
$$
for every $C=(c_{ij})\in V$, so $\operatorname{Tr}(zT_1(y))=0$. Thus $T_1(y)\in W^{\perp\perp}$; similarly $T_2(y)\in W^{\perp\perp}$. Nondegeneracy gives $W^{\perp\perp}=W$.

Write $T_i(y_1,y_2)=f_{i1}(y_1)+f_{i2}(y_2)$. Setting one input to $0$ gives $f(z)\in\mathbb F_2z$. For independent $z,w$, linearity at $z+w$ forces the coefficients of $z,w,z+w$ to agree, so each $f$ is $0$ or the identity. Hence $T(y)=Cy$ for $C\in V$, and $B_h(a,b)=\langle C,[a,b]\rangle$.

Let $Q_C(x,y)=\operatorname{Tr}(x^TCy)$; its polar form is $B_h$. If $g=h-Q_C$, then $D_aD_bg=0$, so $D_ag$ is constant. Writing $\ell(a)=D_ag(0)$ gives $g(w+a)+g(w)=\ell(a)$ and $\ell(a+a')=\ell(a)+\ell(a')$. Since $g(0)=0$, $g=\ell$. Therefore
$$
\mathcal H_n=\{Q_C+\operatorname{Tr}(s^Tx+t^Ty):C\in V,\ s,t\in K^2\},
\qquad |\mathcal H_n|=16q^4.
$$

Step 2: Convert the zero counts to Walsh conditions

Fix a candidate ordered quadruple $(r_{11},r_{12},r_{21},r_{22})\in\mathcal H_n^4$; in Step 6 the order $(11,12,21,22)$ will match cycle lengths $(7,5,3,1)$. Write
$$
r_{ij}=Q_{C_{ij}}+\operatorname{Tr}(s_{ij}^Tx+t_{ij}^Ty),
$$
and set $\Psi(X)=\sum x_{ij}C_{ij}$, $S(X)=s_X=\sum x_{ij}s_{ij}$, $T(X)=t_X=\sum x_{ij}t_{ij}$. If $C\in V$ has rank $r$,
$$
W(C,s,t)=\sum_{x,y}(-1)^{\operatorname{Tr}(x^TCy+s^Tx+t^Ty)}
=q^2\sum_{Cy=s}(-1)^{\operatorname{Tr}(t^Ty)}.
$$
Thus $W=0$ unless $s\in\operatorname{im}C$ and $t\in\operatorname{im}C^T$; if so and $Cy_0=s$,
$$
W(C,s,t)=q^{4-r}(-1)^{\operatorname{Tr}(t^Ty_0)}.
$$
The prompt constrains only $0\neq X$ with $\det X=0$, exactly the nine rank-one matrices; $X=0$ and the six invertible $X$ impose nothing. For rank-one $X$ the required count gives
$$
W(\Psi(X),s_X,t_X)=2\#\{u:r_X(u)=0\}-q^4=(-1)^{\operatorname{tr}X}q^3.
$$
Rank $0$ would give $0$ or $q^4$, and rank $2$ gives $0$ or magnitude $q^2$. Hence $\Psi(X)$ has rank $1$, $s_X\in\operatorname{im}\Psi(X)$, $t_X\in\operatorname{im}\Psi(X)^T$, and, if $\Psi(X)y_X=s_X$,
$$
\operatorname{Tr}(t_X^Ty_X)=\operatorname{tr}X.
$$

Step 3: Classify $\Psi$

No rank-one matrix lies in $\ker\Psi$. If $\operatorname{rank}\Psi\leq1$, then $\ker\Psi$ has at least $7$ nonzero elements, but $V$ has only $6$ invertibles, contradiction. Thus the rank is at least $2$.

Rank $3$ is impossible. Its nonzero kernel generator is invertible, so left multiplication normalizes the kernel to $\langle I\rangle$. For rank-one $X$, $\det(X+I)=\operatorname{tr}X+1$; six rank-one $X$ form three pairs $\{X,X+I\}$ and the other three lie in distinct kernel cosets, so the image hyperplane contains at least six rank-one points. Every hyperplane is
$$
H_D=\{X:\operatorname{tr}(D^TX)=0\},\qquad D\neq0.
$$
Under $Y=AXB$, its coefficient becomes $A^{-T}DB^{-T}$, so $D$ reduces to $E_{11}$ or $I$. For $x_{11}=0$, $\det\begin{pmatrix}0&b\\c&d\end{pmatrix}=bc$, giving five nonzero singular matrices. For $\operatorname{tr}X=0$, $X=\begin{pmatrix}a&b\\c&a\end{pmatrix}$ and $\det X=a+bc$, giving three. Contradiction.

For nonzero $u,v\in\mathbb F_2^2$, let
$$
L_u=\{uw^T:w\in\mathbb F_2^2\},\qquad R_v=\{wv^T:w\in\mathbb F_2^2\}.
$$
These are exactly the six two-dimensional rank-one subspaces: two distinct rank-one matrices sum to rank one exactly when their left or right factors agree. Their incidence graph is $K_{3,3}$. A rank-four $\Psi$ permutes the nine cone points, so it preserves or swaps the rulings. The faithful action of $\operatorname{GL}_2(\mathbb F_2)$ on the three nonzero vectors has order $6=|S_3|$, so each ruling permutation is induced uniquely. Thus, for $A,B\in\operatorname{GL}_2(\mathbb F_2)$,
$$
\Psi(X)=AXB\quad\text{or}\quad AX^TB,
$$
giving $36+36=72$ rank-four maps.

For rank $2$, the kernel is a two-dimensional external line. Put
$$
R=\begin{pmatrix}0&1\\1&1\end{pmatrix},\quad
R^2=\begin{pmatrix}1&1\\1&0\end{pmatrix},\quad
J=\begin{pmatrix}0&1\\1&0\end{pmatrix}.
$$
The six invertibles are $I,R,R^2,J,JR,JR^2$. Any external line can be left-normalized to one through $I$; only $C=R,R^2$ work: $I+R=R^2$, $I+R^2=R$, while $I+J,I+JR,I+JR^2$ are singular. Thus the unique such line is $E_0=\{0,I,R,R^2\}$. Since the six invertibles split as $E_0\setminus\{0\}$ and $JE_0\setminus\{0\}$, the only external lines are $E_0$ and $JE_0$.

The kernel contains three invertibles, leaving only three outside it. Each nonzero coset has four elements, hence contains a rank-one matrix. Therefore every nonzero image point is rank one, so the image is one of the six $L_u,R_v$. For fixed $K,I$, valid maps are exactly the isomorphisms $V/K\to I$: rank-one $X$ lie outside $K$ and nonzero points of $I$ have rank one. There are $|\operatorname{GL}_2(\mathbb F_2)|=6$ such isomorphisms. Thus there are
$$
2\cdot6\cdot6=72
$$
rank-two maps.

Step 4: Count the rank-four linear parts

Fix rank-four $\Psi$, put $Y=\Psi(X)$, $\widetilde S=S\circ\Psi^{-1}$ and $\widetilde T=T\circ\Psi^{-1}$. If $\widetilde S(Y)\in\operatorname{im}Y$, with $e_1=(1,0)^T,e_2=(0,1)^T$, its values on $E_{11},E_{12},E_{21},E_{22}$ are $ae_1,be_1,ce_2,de_2$; testing $E_{11}+E_{21}$ and $E_{12}+E_{22}$ gives $a=c,b=d$. Hence $\widetilde S(Y)=Y\alpha$; similarly $\widetilde T(Y)=Y^T\gamma$.

The phase condition is
$$
\operatorname{Tr}(\gamma^TY\alpha)=\operatorname{tr}(\Psi^{-1}Y).
$$
For either $\Psi(X)=AXB$ or $AX^TB$, the right side equals $\operatorname{tr}(B^{-1}A^{-1}Y)=\operatorname{tr}(D^TY)$ with $D=(B^{-1}A^{-1})^T$ invertible. Thus
$$
\operatorname{Tr}(\gamma_i\alpha_j)=D_{ij}.
$$
Replacing $\gamma$ by $D^{-1}\gamma$ reduces this bijectively to $\operatorname{Tr}(\gamma_i\alpha_j)=\delta_{ij}$. Hence $\alpha_1,\alpha_2$ are independent: $(q-1)(q-2)$ choices. Their two trace functionals are independent by trace nondegeneracy, so each $\gamma_i$ satisfying two equations has $q/4$ choices. Therefore each rank-four $\Psi$ contributes
$$
A(q)=\frac{q^2(q-1)(q-2)}{16}.
$$

Step 5: Count the rank-two linear parts

Let
$$
\Psi_0\!\begin{pmatrix}a&b\\c&d\end{pmatrix}
=\begin{pmatrix}a+d&b+c+d\\0&0\end{pmatrix},\quad
K_0=\ker\Psi_0=\left\{\begin{pmatrix}a&b\\a+b&a\end{pmatrix}:a,b\in\mathbb F_2\right\}=JE_0.
$$
First precompose by $P^{-1}$ with $P(\ker\Psi)=K_0$; only the kernel changes. Then Step 3 lets us postcompose by a cone automorphism $Q$ sending the image line to $\operatorname{im}\Psi_0$; kernel $K_0$ stays fixed. Finally right multiplication on $e_1v^T$ adjusts the induced isomorphism $V/K_0\to\operatorname{im}\Psi_0$, giving $\Psi_0$.

These operations preserve counts. Precomposition sends $(S,T)$ to $(S\circ P^{-1},T\circ P^{-1})$ and replaces $\operatorname{tr}X$ by $\tau(X)=\operatorname{tr}(P^{-1}X)\neq0$. For $C\mapsto ACB$, use $(S,T)\mapsto(AS,B^TT)$: from $Cy=S,C^Tx=T$, the vectors $B^{-1}y,A^{-T}x$ verify both image conditions and the phase is unchanged. For $C\mapsto AC^TB$, use $(S,T)\mapsto(AT,B^TS)$: $B^{-1}x,A^{-T}y$ verify both image conditions and
$$
(B^TS)^TB^{-1}x=S^Tx=T^Ty.
$$
Thus both types give bijections.

Write $\ell(X)=(a+d,b+c+d)$, so $\Psi_0(X)=e_1\ell(X)$. Since the rank-one basis $E_{ij}$ spans $V$, $S(X)=e_1A(X)$ for a linear $A:V\to K$. Write
$$
T(X)=\binom{\alpha a+\beta b+\gamma c+\delta d}{\alpha'a+\beta'b+\gamma'c+\delta'd}.
$$
The rank-one tests $E_{22},E_{21},E_{21}+E_{22},E_{12},E_{12}+E_{22},E_{11},E_{11}+E_{21}$ give
$$
\delta=\delta',\ \gamma=0,\ \gamma'=\delta',\ \beta=0,\ \beta'=\delta',\ \alpha'=0,\ \alpha=\gamma',
$$
hence $T(X)=z\ell(X)^T$. The phase condition is $\operatorname{Tr}(zA(X))=\tau(X)$. Since both sides are linear and $E_{ij}$ is a rank-one basis, this is equivalent to four trace equations. Thus $z\neq0$, and for each of its $q-1$ values every $A(E_{ij})$ has $q/2$ choices by Step 1. Hence
$$
D(q)=\frac{(q-1)q^4}{16}.
$$

Step 6: Match cycles and apply Chebotarev

At $u=0$, the target is $\Pi_{0000}=(7,7,5,5,3,3,1,1)$. A signed $e$-cycle gives two $e$-cycles for positive sign product and one $2e$-cycle for negative sign product. Hence the underlying cycle lengths are $7,5,3,1$, all positive. As the lengths are distinct, arranging the letters and dividing by cyclic rotations gives
$$
\frac{16!}{7\cdot5\cdot3}=\frac{16!}{105}
$$
such permutations.

Name the cycles of lengths $7,5,3,1$ by $c_{11},c_{12},c_{21},c_{22}$. With $h_j(u)=\eta(\varepsilon_{u,j})$, set
$$
\rho_{ij}(u)=\sum_{j\in c_{ij}}h_j(u).
$$
The cycle sign product is $(-1)^{\rho_{ij}(u)}$, so the embedding action has partition $\Pi_{(\rho_{11},\rho_{12},\rho_{21},\rho_{22})}$. Since $7,5,3,1,14,10,6,2$ are distinct, $b\mapsto\Pi_b$ is injective; hence the residue condition is exactly $\rho_{ij}=r_{ij}$.

For fixed $\sigma$, $(h_j)\mapsto(\rho_{ij})$ maps $\mathcal H_n^{16}$ onto $\mathcal H_n^4$: choose one coordinate on each cycle last. Every fiber has size $|\mathcal H_n|^{12}$. Conjugation preserves cycle lengths and cycle-sign products, so the admissible set is conjugacy-stable. Put $G=\operatorname{Gal}(L/\mathbb Q)$. Then $|G|=16!|\mathcal H_n|^{16}$ because $\sigma$ and the $16$ functions $h_j$ are independent choices. Chebotarev gives, with
$$
N=72A(q)+72D(q)=\frac92q^2(q-1)^2(q+2),
$$
the density
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