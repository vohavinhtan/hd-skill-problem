## Steps

Step 1: Classify the functions in $\mathcal H_n$

Put $B_h(a,b)=D_aD_bh(0)$. Vanishing third differences make $D_aD_bh(w)$ independent of $w$, and
$$
D_{a+a'}=D_a+D_{a'}+D_aD_{a'}
$$
makes $B_h$ alternating and $\mathbb F_2$-bilinear. Writing $a=(x,y)$ and $b=(x',y')$, the cases $y=y'=0$ and $x=x'=0$ give
$$
B_h((x,y),(x',y'))=\beta(x,y')+\beta(x',y)
$$
for an $\mathbb F_2$-bilinear $\beta$. By nondegeneracy of the absolute trace pairing,
$$
\beta(x,y)=\operatorname{Tr}_{K/\mathbb F_2}(x^TT(y))
$$
for a unique $\mathbb F_2$-linear $T:K^2\to K^2$. The defining condition puts each coordinate of $T(y_1,y_2)$ in $\operatorname{span}_{\mathbb F_2}\{y_1,y_2\}$. Setting one input coordinate to $0$ gives $f(z)\in\mathbb F_2z$ for every component map $f$. For independent $z,w$, linearity at $z+w$ forces the three scalar coefficients to agree, so each component is $0$ or the identity. Hence
$$
T(y)=Cy,\qquad C\in M_2(\mathbb F_2),
$$
and $B_h(a,b)=\langle C,[a,b]\rangle$.

Set
$$
Q_C(x,y)=\operatorname{Tr}_{K/\mathbb F_2}(x^TCy).
$$
Its polar form is $B_h$. Let $g=h-Q_C$. Since $h,Q_C$ have vanishing third differences, $D_aD_bg(w)$ is independent of $w$ and equals its value $0$ at $w=0$. Hence $D_ag(w)$ is constant in $w$. With $\ell(a)=D_ag(0)$,
$$
g(w+a)+g(w)=\ell(a).
$$
Because $D_aD_{a'}g=0$, the same difference identity gives $\ell(a+a')=\ell(a)+\ell(a')$. Thus $g=g(0)+\ell$ is affine; here $g(0)=0$. By nondegeneracy of the trace pairing, every linear functional is uniquely
$$
\operatorname{Tr}_{K/\mathbb F_2}(s^Tx+t^Ty),
$$
so
$$
\mathcal H_n=
\left\{
Q_C+\operatorname{Tr}_{K/\mathbb F_2}(s^Tx+t^Ty):
C\in V,\ s,t\in K^2
\right\},
\qquad
|\mathcal H_n|=16q^4.
$$

Step 2: Translate the zero counts into a matrix-cone condition

Write
$$
r_{ij}=Q_{C_{ij}}+\operatorname{Tr}_{K/\mathbb F_2}(s_{ij}^Tx+t_{ij}^Ty)
$$
and, for $X=(x_{ij})\in V$, put
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
Thus $W=0$ unless $s\in\operatorname{im}C$ and $t\in\operatorname{im}C^T$; if $Cy_0=s$, then
$$
W(C,s,t)=q^{4-r}(-1)^{\operatorname{Tr}(t^Ty_0)}.
$$
Every nonzero singular $X\in V$ has rank $1$. Since a Boolean $f$ has $(q^4+\sum_u(-1)^{f(u)})/2$ zeros, the condition is equivalent, for every rank-one $X$, to
$$
\operatorname{rank}\Psi(X)=1,\qquad
s_X\in\operatorname{im}\Psi(X),\qquad
t_X\in\operatorname{im}\Psi(X)^T,
$$
and, for $\Psi(X)y_X=s_X$,
$$
\operatorname{Tr}_{K/\mathbb F_2}(t_X^Ty_X)=\operatorname{tr}X.
$$

Step 3: Classify the possible linear maps $\Psi$

The kernel contains no rank-one matrix, so $\operatorname{rank}\Psi\geq2$. If the rank were $3$, the kernel would be $\langle A\rangle$ with $A$ invertible; replacing $X$ by $A^{-1}X$, take $A=I$. For rank-one $X$,
$$
\det(X+I)=\operatorname{tr}X+1.
$$
Of the nine $X=uv^T$, exactly six have $\operatorname{tr}X=v^Tu=1$, forming three pairs $\{X,X+I\}$; the other three lie in distinct cosets. The image hyperplane would therefore contain at least six rank-one points. Yet after left-right changes any hyperplane has normal form $x_{11}=0$ or $\operatorname{tr}X=0$, containing only five or three nonzero singular matrices. Thus rank $3$ is impossible.

For nonzero $u,v\in\mathbb F_2^2$, put
$$
L_u=\{uv^T:v\in\mathbb F_2^2\},\qquad
R_v=\{uv^T:u\in\mathbb F_2^2\}.
$$
For distinct rank-one $uv^T,u'v'^T$, the sum has rank $1$ exactly when $u=u'$ or $v=v'$. Hence these are precisely the six two-dimensional cone subspaces. Same-family lines meet only in $0$, while $L_u\cap R_v=\langle uv^T\rangle$, so their incidence graph is $K_{3,3}$.

If $\Psi$ has rank $4$, it induces an automorphism of this $K_{3,3}$, hence preserves the two rulings or swaps them. In the first case it permutes the three nonzero left factors and three nonzero right factors independently. Each permutation is induced by a unique element of $\operatorname{GL}_2(\mathbb F_2)$. Since $uv^T$ is the unique nonzero point of $L_u\cap R_v$, the two permutations force $\Psi(X)=AXB$ on the spanning rank-one points. If the rulings swap, transpose gives $\Psi(X)=AX^TB$. Hence there are
$$
6\cdot6+6\cdot6=72
$$
rank-four maps.

If $\operatorname{rank}\Psi=2$, its kernel is a two-dimensional subspace whose three nonzero elements are invertible. There are exactly two such external lines: for invertible $A,B$, their span is external iff $A^{-1}B$ and $I+A^{-1}B$ are invertible, forcing $A^{-1}B$ to be one of the two order-$3$ elements of $\operatorname{GL}_2(\mathbb F_2)$. The nine rank-one matrices occupy the three nonzero kernel cosets, so the image is a generator line. Hence there are $2\cdot6\cdot6=72$ rank-two maps.

Step 4: Count the linear parts for the rank-four maps

Fix a rank-four $\Psi$ and put $Y=\Psi(X)$. A linear map $S:V\to K^2$ with $S(X)\in\operatorname{im}\Psi(X)$ becomes $\widetilde S(Y)\in\operatorname{im}Y$. Its values on $E_{11},E_{12},E_{21},E_{22}$ have the form
$$
ae_1,\ be_1,\ ce_2,\ de_2.
$$
The rank-one matrices $E_{11}+E_{21}$ and $E_{12}+E_{22}$ force $a=c$ and $b=d$, hence
$$
\widetilde S(Y)=Y\alpha
$$
for a unique $\alpha\in K^2$. Similarly $\widetilde T(Y)=Y^T\gamma$.

The phase identity
$$
\operatorname{Tr}_{K/\mathbb F_2}(\gamma^TY\alpha)
=\operatorname{tr}(\Psi^{-1}Y)
$$
holds on rank-one $Y$ and therefore on all $V$, since the $E_{ij}$ span $V$. By Step 3, $\Psi$ is $X\mapsto AXB$ or $X\mapsto AX^TB$; in either case the right side is a linear functional with invertible coefficient matrix. Invertible changes of $\alpha,\gamma$ therefore reduce the four equations to
$$
\operatorname{Tr}_{K/\mathbb F_2}(\gamma_i\alpha_j)=\delta_{ij}.
$$
Thus $\alpha_1,\alpha_2$ are $\mathbb F_2$-independent, giving $(q-1)(q-2)$ ordered pairs. For each pair, each $\gamma_i$ satisfies two independent trace equations, hence has $q/4$ choices. Each rank-four $\Psi$ contributes
$$
A(q)=\frac{q^2(q-1)(q-2)}{16}.
$$

Step 5: Count the linear parts for the rank-two maps

Let
$$
\Psi_0\!\begin{pmatrix}a&b\\c&d\end{pmatrix}
=
\begin{pmatrix}a+d&b+c+d\\0&0\end{pmatrix},
\qquad K_0=\ker\Psi_0
=\left\{\begin{pmatrix}a&b\\a+b&a\end{pmatrix}:a,b\in\mathbb F_2\right\}.
$$
The other external line is $JK_0$, where $J=\begin{pmatrix}0&1\\1&0\end{pmatrix}$; thus precomposition by left multiplication by $I$ or $J$ sends any rank-two kernel to $K_0$. By Step 3, left-right multiplication and transpose act transitively on the six generator image lines, so a cone automorphism sends $\operatorname{im}\Psi$ to $\operatorname{im}\Psi_0$. After these pre- and post-compositions, both maps have kernel $K_0$ and image $\operatorname{im}\Psi_0$, hence differ by an automorphism of the quotient $V/K_0$, equivalently by an automorphism of the two-dimensional image. Every such image automorphism extends to right multiplication by some $B\in\operatorname{GL}_2(\mathbb F_2)$ because
$$
e_1v^T\longmapsto e_1v^TB
$$
realizes all automorphisms of $\operatorname{im}\Psi_0$. A final post-composition therefore gives $\Psi_0$ exactly.

These normalizations preserve the count of admissible linear parts. Precomposition is an invertible change of the four coordinates $r_{ij}$ and replaces $\operatorname{tr}X$ by a nonzero linear functional $\tau(X)$. Postcomposition $C\mapsto ACB$ corresponds to the bijective variable change $(x,y)\mapsto(A^Tx,By)$, while $C\mapsto AC^TB$ corresponds to $(x,y)\mapsto(By,A^Tx)$; both give bijections on linear terms.

Write
$$
\ell(X)=(a+d,\ b+c+d).
$$
For the normal form, $S(X)\in\langle e_1\rangle$ on the rank-one cone, which spans $V$, so $S(X)=e_1A(X)$ for an arbitrary linear $A:V\to K$. Write
$$
T(X)=
\binom{\alpha a+\beta b+\gamma c+\delta d}
{\alpha'a+\beta'b+\gamma'c+\delta'd}.
$$
The condition $T(X)\in\langle\ell(X)^T\rangle$ gives
$$
\begin{array}{c|c|c}
X&\ell(X)&\text{constraint}\\ \hline
E_{22}&(1,1)&\delta=\delta'\\
E_{21}&(0,1)&\gamma=0\\
E_{21}+E_{22}&(1,0)&\gamma'=\delta'\\
E_{12}&(0,1)&\beta=0\\
E_{12}+E_{22}&(1,0)&\beta'=\delta'\\
E_{11}&(1,0)&\alpha'=0\\
E_{11}+E_{21}&(1,1)&\alpha=\gamma'
\end{array}
$$
so, with $z=\delta'$,
$$
T(X)=z\ell(X)^T.
$$
For rank-one $X$, the phase condition is
$$
\operatorname{Tr}_{K/\mathbb F_2}(zA(X))=\tau(X).
$$
Since $\tau\neq0$, $z\neq0$. For each of the $q-1$ values of $z$, the four values $A(E_{ij})$ independently satisfy one trace equation and each has $q/2$ choices. Thus each rank-two $\Psi$ contributes
$$
D(q)=\frac{(q-1)q^4}{16}.
$$

Step 6: Apply the allowed Chebotarev theorem and assemble the two strata

At $u=0$ all elements of $\mathcal H_n$ vanish, so
$$
\Pi_{0000}=(7,7,5,5,3,3,1,1),
$$
forcing cycle type $(7,5,3,1)$; there are $16!/105$ such permutations. For a fixed one, the four cycle-sum maps from $\mathcal H_n^{16}$ to $\mathcal H_n^4$ are surjective with fiber $|\mathcal H_n|^{12}$, and the four distinct cycle lengths make $\Pi_b$ determine the four signs uniquely.

Let $C$ be the set of Galois-group elements satisfying the required residue-partition condition for all $u$. It is conjugacy-stable because conjugation preserves each underlying cycle length and the sign product around each cycle, hence preserves every $\lambda_u$. The version of Chebotarev explicitly allowed in the problem therefore gives density $|C|/|G|$.

Let $N$ be the number of valid ordered quadruples. Steps 3--5 give
$$
\begin{aligned}
N
&=72A(q)+72D(q)\\
&=\frac{9}{2}q^2(q-1)^2(q+2).
\end{aligned}
$$
Since $|G|=16!|\mathcal H_n|^{16}$,
$$
\begin{aligned}
\delta
&=\frac{(16!/105)|\mathcal H_n|^{12}N}
{16!|\mathcal H_n|^{16}}\\
&=\frac{N}{105|\mathcal H_n|^4}
=\frac{3(q-1)^2(q+2)}{35\cdot2^{17}q^{14}}.
\end{aligned}
$$
For $q=8$, $A(8)=168$ and $D(8)=1792$, giving $N=141120$ as in the formula; the explicit rank-two normal form also defeats an invertible-only count.

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
