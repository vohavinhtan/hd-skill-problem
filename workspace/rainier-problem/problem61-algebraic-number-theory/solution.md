## Steps

Step 1: Classify the functions in $\mathcal H_n$

Let $m=3n$ and $P(T)=T+T^2+\cdots+T^{2^{m-1}}$. This nonzero polynomial has degree $2^{m-1}<|K|$, so some $t\in K$ has $P(t)\neq0$. Since $P(t)=\operatorname{Tr}_{K/\mathbb F_2}(t)\in\mathbb F_2$, we may take $P(t)=1$. For $0\neq z\in K$, $w=t/z$ gives $\operatorname{Tr}(zw)=1$; hence the trace pairing is nondegenerate.

Put $B_h(a,b)=D_aD_bh(0)$. Vanishing third differences make $D_aD_bh(w)$ independent of $w$, and $D_{a+a'}=D_a+D_{a'}+D_aD_{a'}$ makes $B_h$ alternating and $\mathbb F_2$-bilinear. Writing $a=(x,y)$ and $b=(x',y')$, the cases $y=y'=0$ and $x=x'=0$ give
$$
B_h((x,y),(x',y'))=\beta(x,y')+\beta(x',y).
$$
By trace nondegeneracy, $\beta(x,y)=\operatorname{Tr}_{K/\mathbb F_2}(x^TT(y))$ for a unique $\mathbb F_2$-linear $T:K^2\to K^2$. The defining vanishing condition puts each coordinate of $T(y_1,y_2)$ in $\operatorname{span}_{\mathbb F_2}\{y_1,y_2\}$. Setting one input coordinate to $0$ gives $f(z)\in\mathbb F_2z$ for each component $f$; linearity on independent $z,w$ forces the coefficients for $z,w,z+w$ to agree. Hence $T(y)=Cy$ for some $C\in M_2(\mathbb F_2)$, and $B_h(a,b)=\langle C,[a,b]\rangle$.

Set $Q_C(x,y)=\operatorname{Tr}_{K/\mathbb F_2}(x^TCy)$. If $g=h-Q_C$, then $D_aD_bg=0$, so $D_ag(w)$ is constant in $w$. With $\ell(a)=D_ag(0)$, $g(w+a)+g(w)=\ell(a)$ and $D_aD_{a'}g=0$ gives $\ell(a+a')=\ell(a)+\ell(a')$. Thus $g=g(0)+\ell$ is affine; here $g(0)=0$. Applying the trace pairing coordinatewise,
$$
\mathcal H_n=\left\{Q_C+\operatorname{Tr}_{K/\mathbb F_2}(s^Tx+t^Ty):C\in V,\ s,t\in K^2\right\},
\qquad |\mathcal H_n|=16q^4.
$$

Step 2: Translate the zero counts into a matrix-cone condition

Write $r_{ij}=Q_{C_{ij}}+\operatorname{Tr}_{K/\mathbb F_2}(s_{ij}^Tx+t_{ij}^Ty)$ and set
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
For rank-one $X$, the prescribed zero count forces
$$
W(\Psi(X),s_X,t_X)=2\cdot\frac{q^4+(-1)^{\operatorname{tr}X}q^3}{2}-q^4=(-1)^{\operatorname{tr}X}q^3.
$$
If $\operatorname{rank}\Psi(X)=0$, the Walsh sum is $0$ or $q^4$; if the rank is $2$, it is $0$ or has magnitude $q^2$. Hence the rank must be $1$, both image conditions must hold, and for $\Psi(X)y_X=s_X$ the sign condition is
$$
\operatorname{Tr}_{K/\mathbb F_2}(t_X^Ty_X)=\operatorname{tr}X.
$$

Step 3: Classify the possible linear maps $\Psi$

By Step 2, $\ker\Psi$ contains no rank-one matrix. If $\operatorname{rank}\Psi\leq1$, then $\dim\ker\Psi\geq3$, so the kernel has at least $7$ nonzero elements; since $V$ has only $6$ invertible matrices, one would be nonzero singular, hence rank one. Thus $\operatorname{rank}\Psi\geq2$.

If the rank were $3$, normalize its one-dimensional kernel to $\langle I\rangle$. For rank-one $X$, $\det(X+I)=\operatorname{tr}X+1$; exactly six of the nine $X=uv^T$ have $v^Tu=1$, forming three pairs $\{X,X+I\}$. Hence the image hyperplane would contain at least six rank-one points. A hyperplane has normal form $x_{11}=0$ or $\operatorname{tr}X=0$. In the first,
$$
X=\begin{pmatrix}0&b\\c&d\end{pmatrix},\quad \det X=bc,
$$
so six triples are singular, giving five nonzero singular matrices. In the second,
$$
X=\begin{pmatrix}a&b\\c&a\end{pmatrix},\quad \det X=a+bc,
$$
and each $(b,c)$ fixes $a=bc$, giving three nonzero singular matrices. Thus rank $3$ is impossible.

For nonzero $u,v\in\mathbb F_2^2$, the six spaces $L_u=\{uv^T:v\in\mathbb F_2^2\}$ and $R_v=\{uv^T:u\in\mathbb F_2^2\}$ are exactly the two-dimensional rank-one cone subspaces: two distinct rank-one matrices sum to rank one exactly when their left or right factors agree. Their incidence graph is $K_{3,3}$. A rank-four $\Psi$ preserves or swaps the two rulings. Independent permutations of the three left and three right factors are induced by unique elements of $\operatorname{GL}_2(\mathbb F_2)$, so $\Psi(X)=AXB$ or $AX^TB$. Hence there are $6\cdot6+6\cdot6=72$ rank-four maps.

For rank $2$, the kernel is a two-dimensional subspace with three nonzero invertible elements. Put
$$
R=\begin{pmatrix}0&1\\1&1\end{pmatrix},\quad R^2=\begin{pmatrix}1&1\\1&0\end{pmatrix},\quad J=\begin{pmatrix}0&1\\1&0\end{pmatrix}.
$$
The six invertibles are $I,R,R^2,J,JR,JR^2$. For a line through $I$, $I+C$ must be invertible; $I+J,I+JR,I+JR^2$ are singular, while $I+R=R^2$ and $I+R^2=R$. Thus the only external line through $I$ is $E_0=\{0,I,R,R^2\}$. Left multiplication sends any external line to one through $I$, so the only two are $E_0$ and $JE_0=\{0,J,JR,JR^2\}$. The three nonzero kernel cosets all contain rank-one matrices, so the image is one of the six generator lines. Therefore there are $2\cdot6\cdot6=72$ rank-two maps.

Step 4: Count the linear parts for the rank-four maps

Fix rank-four $\Psi$ and put $Y=\Psi(X)$. If $S(X)\in\operatorname{im}\Psi(X)$, then $\widetilde S(Y)\in\operatorname{im}Y$. Writing its values on $E_{11},E_{12},E_{21},E_{22}$ as $ae_1,be_1,ce_2,de_2$, the rank-one matrices $E_{11}+E_{21}$ and $E_{12}+E_{22}$ force $a=c$ and $b=d$. Thus $\widetilde S(Y)=Y\alpha$; similarly $\widetilde T(Y)=Y^T\gamma$.

The phase identity
$$
\operatorname{Tr}_{K/\mathbb F_2}(\gamma^TY\alpha)=\operatorname{tr}(\Psi^{-1}Y)
$$
holds on the spanning rank-one matrices. By Step 3 the right side has an invertible coefficient matrix, so invertible changes of $\alpha,\gamma$ reduce the equations to $\operatorname{Tr}(\gamma_i\alpha_j)=\delta_{ij}$. Thus $\alpha_1,\alpha_2$ are independent, giving $(q-1)(q-2)$ choices, and each $\gamma_i$ has $q/4$ choices. Every rank-four $\Psi$ contributes
$$
A(q)=\frac{q^2(q-1)(q-2)}{16}.
$$

Step 5: Count the linear parts for the rank-two maps

Let
$$
\Psi_0\!\begin{pmatrix}a&b\\c&d\end{pmatrix}=\begin{pmatrix}a+d&b+c+d\\0&0\end{pmatrix},\qquad
K_0=\ker\Psi_0=\left\{\begin{pmatrix}a&b\\a+b&a\end{pmatrix}:a,b\in\mathbb F_2\right\}.
$$
By Step 3, left multiplication normalizes either possible kernel to $K_0$, and cone automorphisms normalize any generator image line to $\operatorname{im}\Psi_0$. After this, both maps have kernel $K_0$ and image $\operatorname{im}\Psi_0$, hence differ by an automorphism of $V/K_0\cong\operatorname{im}\Psi_0$; right multiplication on $e_1v^T$ realizes every such automorphism. Thus every rank-two $\Psi$ reduces to $\Psi_0$.

The count is preserved explicitly. For a domain cone automorphism $P$, replacing $\Psi$ by $\Psi\circ P^{-1}$ sends $(S,T)$ bijectively to $(S\circ P^{-1},T\circ P^{-1})$ and changes the phase functional to $\tau(X)=\operatorname{tr}(P^{-1}X)$. For postcomposition $C\mapsto ACB$, send $(S,T)$ to $(AS,B^TT)$; if $Cy=S(X)$, then $ACB(B^{-1}y)=AS(X)$ and $(B^TT)^TB^{-1}y=T^Ty$. For $C\mapsto AC^TB$, send $(S,T)$ to $(AT,B^TS)$; if $Cy=S(X)$ and $C^Tx=T(X)$, then $B^{-1}x$ solves the new image equation and
$$
(B^TS)^TB^{-1}x=S^Tx=T^Ty.
$$
Thus admissible pairs are in bijection.

Write $\ell(X)=(a+d,b+c+d)$. Then $S(X)=e_1A(X)$ for a linear $A:V\to K$. Writing
$$
T(X)=\binom{\alpha a+\beta b+\gamma c+\delta d}{\alpha'a+\beta'b+\gamma'c+\delta'd},
$$
the rank-one tests $E_{22},E_{21},E_{21}+E_{22},E_{12},E_{12}+E_{22},E_{11},E_{11}+E_{21}$ give respectively
$$
\delta=\delta',\ \gamma=0,\ \gamma'=\delta',\ \beta=0,\ \beta'=\delta',\ \alpha'=0,\ \alpha=\gamma'.
$$
Hence $T(X)=z\ell(X)^T$. The phase condition is $\operatorname{Tr}(zA(X))=\tau(X)$. Since $\tau\neq0$, $z\neq0$; for each of the $q-1$ values of $z$, each $A(E_{ij})$ satisfies one nontrivial trace equation and has $q/2$ choices by Step 1. Thus
$$
D(q)=\frac{(q-1)q^4}{16}.
$$

Step 6: Apply the allowed Chebotarev theorem and assemble the two strata

At $u=0$, $\Pi_{0000}=(7,7,5,5,3,3,1,1)$. A signed cycle of length $e$ gives two $e$-cycles when its sign product is positive and one $2e$-cycle when negative: after one turn the sign is unchanged or flipped. Since all target parts are odd, every sign product is positive, and pairing equal parts forces underlying cycle lengths $7,5,3,1$. Because the lengths are distinct, arranging the $16$ letters and quotienting by cyclic rotations gives
$$
\frac{16!}{7\cdot5\cdot3\cdot1}=\frac{16!}{105}
$$
such permutations.

For a fixed permutation, the four cycle-sum maps from $\mathcal H_n^{16}$ to $\mathcal H_n^4$ are surjective with fiber $|\mathcal H_n|^{12}$, and the distinct lengths make $\Pi_b$ determine the four signs. The admissible Galois elements form a conjugacy-stable set $C$ because conjugation preserves cycle lengths and cycle-sign products. Chebotarev therefore gives density $|C|/|G|$.

With $N$ the number of valid ordered quadruples,
$$
N=72A(q)+72D(q)=\frac{9}{2}q^2(q-1)^2(q+2).
$$
Since $|G|=16!|\mathcal H_n|^{16}$,
$$
\delta=\frac{(16!/105)|\mathcal H_n|^{12}N}{16!|\mathcal H_n|^{16}}
=\frac{3(q-1)^2(q+2)}{35\cdot2^{17}q^{14}}.
$$
For $q=8$, $A(8)=168$ and $D(8)=1792$, giving $N=141120$; the rank-two normal form rules out the invertible-only count.

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