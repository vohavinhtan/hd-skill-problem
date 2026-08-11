## Steps

Step 1: Classify the functions in $\mathcal H_n$

Let $m=3n$. The trace polynomial
$$
P(T)=T+T^2+\cdots+T^{2^{m-1}}
$$
is nonzero of degree $2^{m-1}<|K|$, so it does not vanish on all of $K$. Choose $t$ with $P(t)=1$. For $0\neq z\in K$, $w=t/z$ gives $\operatorname{Tr}(zw)=1$; hence the trace pairing is nondegenerate.

Put $B_h(a,b)=D_aD_bh(0)$. Vanishing third differences make $D_aD_bh(w)$ independent of $w$, and
$$
D_{a+a'}=D_a+D_{a'}+D_aD_{a'}
$$
makes $B_h$ alternating and $\mathbb F_2$-bilinear. Writing $a=(x,y)$ and $b=(x',y')$, the cases $y=y'=0$ and $x=x'=0$ give
$$
B_h((x,y),(x',y'))=\beta(x,y')+\beta(x',y)
$$
for an $\mathbb F_2$-bilinear $\beta$. By the nondegeneracy just proved,
$$
\beta(x,y)=\operatorname{Tr}_{K/\mathbb F_2}(x^TT(y))
$$
for a unique $\mathbb F_2$-linear $T:K^2\to K^2$. The defining condition puts each coordinate of $T(y_1,y_2)$ in $\operatorname{span}_{\mathbb F_2}\{y_1,y_2\}$. Setting one input coordinate to $0$ gives $f(z)\in\mathbb F_2z$ for each component $f$; linearity on independent $z,w$ forces the coefficients for $z,w,z+w$ to agree, so $f$ is $0$ or the identity. Hence
$$
T(y)=Cy,\qquad C\in M_2(\mathbb F_2),
$$
and $B_h(a,b)=\langle C,[a,b]\rangle$.

Set
$$
Q_C(x,y)=\operatorname{Tr}_{K/\mathbb F_2}(x^TCy).
$$
Its polar form is $B_h$. If $g=h-Q_C$, then $D_aD_bg=0$. Therefore $D_ag(w)$ is constant in $w$; with $\ell(a)=D_ag(0)$,
$$
g(w+a)+g(w)=\ell(a).
$$
Also $D_aD_{a'}g=0$ gives $\ell(a+a')=\ell(a)+\ell(a')$, so $g=g(0)+\ell$ is affine. Here $g(0)=0$. Applying the nondegenerate trace pairing coordinatewise, every linear functional on $K^2\times K^2$ is uniquely
$$
\operatorname{Tr}_{K/\mathbb F_2}(s^Tx+t^Ty).
$$
Thus
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
Every nonzero singular $X\in V$ has rank $1$. Since a Boolean $f$ has $(q^4+\sum_u(-1)^{f(u)})/2$ zeros, the required condition is equivalent, for every rank-one $X$, to
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

The kernel contains no rank-one matrix, so $\operatorname{rank}\Psi\geq2$. If the rank were $3$, its kernel would be $\langle A\rangle$ with $A$ invertible; replacing $X$ by $A^{-1}X$, take $A=I$. For rank-one $X$,
$$
\det(X+I)=\operatorname{tr}X+1.
$$
Of the nine $X=uv^T$, exactly six have $\operatorname{tr}X=v^Tu=1$, forming three pairs $\{X,X+I\}$; the other three lie in distinct cosets. Thus the image hyperplane would contain at least six rank-one points.

A hyperplane is $\operatorname{tr}(H^TX)=0$ with $H\neq0$. Left-right changes reduce rank-$1$ $H$ to $E_{11}$ and rank-$2$ $H$ to $I$. For $x_{11}=0$,
$$
X=\begin{pmatrix}0&b\\c&d\end{pmatrix},\qquad \det X=bc,
$$
so $6$ triples $(b,c,d)$ are singular, including $0$; hence there are $5$ nonzero singular matrices. For $\operatorname{tr}X=0$,
$$
X=\begin{pmatrix}a&b\\c&a\end{pmatrix},\qquad \det X=a+bc,
$$
and each of the $4$ pairs $(b,c)$ determines the unique singular value $a=bc$, giving $3$ nonzero singular matrices. Hence rank $3$ is impossible.

For nonzero $u,v\in\mathbb F_2^2$, put
$$
L_u=\{uv^T:v\in\mathbb F_2^2\},\qquad
R_v=\{uv^T:u\in\mathbb F_2^2\}.
$$
The sum of distinct $uv^T,u'v'^T$ has rank $1$ exactly when $u=u'$ or $v=v'$. Thus these are the six two-dimensional cone subspaces, with incidence graph $K_{3,3}$.

If $\Psi$ has rank $4$, it automorphically preserves or swaps the two rulings of $K_{3,3}$. In the preserving case the three left and three right factors are permuted independently, each by a unique element of $\operatorname{GL}_2(\mathbb F_2)$. Since $L_u\cap R_v=\langle uv^T\rangle$, this forces $\Psi(X)=AXB$; if the rulings swap, transpose gives $\Psi(X)=AX^TB$. Hence there are $6\cdot6+6\cdot6=72$ rank-four maps.

If $\operatorname{rank}\Psi=2$, its kernel is a two-dimensional subspace whose three nonzero elements are invertible. Put
$$
R=\begin{pmatrix}0&1\\1&1\end{pmatrix},\qquad
R^2=\begin{pmatrix}1&1\\1&0\end{pmatrix},\qquad
J=\begin{pmatrix}0&1\\1&0\end{pmatrix}.
$$
The six invertible matrices are
$$
I,\ R,\ R^2,\ J,\ JR,\ JR^2.
$$
For a line through $I$, $I+C$ must also be invertible. Here $I+J,I+JR,I+JR^2$ are singular, whereas $I+R=R^2$ and $I+R^2=R$ are invertible. Thus the only external line through $I$ is
$$
E_0=\{0,I,R,R^2\}.
$$
Left multiplication sends any external line to one through $I$, so every such line is $AE_0$. If $A\in E_0$ this is $E_0$; otherwise $A\in JE_0$ and it is
$$
E_1=JE_0=\{0,J,JR,JR^2\}.
$$
Thus exactly two external lines occur. The nine rank-one matrices occupy the three nonzero kernel cosets, so every nonzero image point is rank one; therefore the image is one of the six generator lines. Thus there are $2\cdot6\cdot6=72$ rank-two maps.

Step 4: Count the linear parts for the rank-four maps

Fix a rank-four $\Psi$ and put $Y=\Psi(X)$. A linear map $S:V\to K^2$ with $S(X)\in\operatorname{im}\Psi(X)$ becomes $\widetilde S(Y)\in\operatorname{im}Y$. Its values on $E_{11},E_{12},E_{21},E_{22}$ have the form
$$
ae_1,\ be_1,\ ce_2,\ de_2.
$$
The rank-one matrices $E_{11}+E_{21}$ and $E_{12}+E_{22}$ force $a=c$ and $b=d$, so $\widetilde S(Y)=Y\alpha$ for a unique $\alpha\in K^2$. Similarly $\widetilde T(Y)=Y^T\gamma$.

The phase identity
$$
\operatorname{Tr}_{K/\mathbb F_2}(\gamma^TY\alpha)
=\operatorname{tr}(\Psi^{-1}Y)
$$
holds on rank-one $Y$ and hence on all $V$, since the $E_{ij}$ span $V$. By Step 3 the right side has an invertible coefficient matrix, so invertible changes of $\alpha,\gamma$ reduce the equations to
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
=\begin{pmatrix}a+d&b+c+d\\0&0\end{pmatrix},
\qquad
K_0=\ker\Psi_0
=\left\{\begin{pmatrix}a&b\\a+b&a\end{pmatrix}:a,b\in\mathbb F_2\right\}.
$$
By Step 3 the two possible kernels are $K_0$ and $JK_0$, so left multiplication normalizes the kernel to $K_0$. Cone automorphisms act transitively on the six generator image lines, so postcomposition normalizes the image to $\operatorname{im}\Psi_0$. Two maps with this kernel and image differ by an automorphism of the two-dimensional quotient/image, and every such automorphism is realized by
$$
e_1v^T\longmapsto e_1v^TB,\qquad B\in\operatorname{GL}_2(\mathbb F_2).
$$
A final postcomposition therefore gives $\Psi_0$ exactly. These pre/post-compositions biject admissible linear parts: they are invertible changes of the $r_{ij}$ and $(x,y)$ variables; precomposition only replaces $\operatorname{tr}X$ by a nonzero linear functional $\tau(X)$.

Write $\ell(X)=(a+d,b+c+d)$. Since the rank-one cone spans $V$,
$$
S(X)=e_1A(X)
$$
for an arbitrary linear $A:V\to K$. Write
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
Since $\tau\neq0$, $z\neq0$. For each of the $q-1$ values of $z$, the four values $A(E_{ij})$ independently satisfy one nontrivial trace equation; by Step 1 each has $q/2$ solutions. Thus each rank-two $\Psi$ contributes
$$
D(q)=\frac{(q-1)q^4}{16}.
$$

Step 6: Apply the allowed Chebotarev theorem and assemble the two strata

At $u=0$ all elements of $\mathcal H_n$ vanish, so
$$
\Pi_{0000}=(7,7,5,5,3,3,1,1),
$$
forcing cycle type $(7,5,3,1)$; there are $16!/105$ such permutations. For a fixed one, the four cycle-sum maps from $\mathcal H_n^{16}$ to $\mathcal H_n^4$ are surjective with fiber $|\mathcal H_n|^{12}$, and the distinct cycle lengths make $\Pi_b$ determine the four signs.

Let $C$ be the set of Galois-group elements satisfying the required residue-partition condition for all $u$. Conjugation preserves each cycle length and the sign product around each cycle, so $C$ is conjugacy-stable. The Chebotarev theorem allowed in the problem gives density $|C|/|G|$.

Let $N$ be the number of valid ordered quadruples. Steps 3--5 give
$$
N=72A(q)+72D(q)
=\frac{9}{2}q^2(q-1)^2(q+2).
$$
Since $|G|=16!|\mathcal H_n|^{16}$,
$$
\begin{aligned}
\delta
&=\frac{(16!/105)|\mathcal H_n|^{12}N}{16!|\mathcal H_n|^{16}}\\
&=\frac{3(q-1)^2(q+2)}{35\cdot2^{17}q^{14}}.
\end{aligned}
$$
For $q=8$, $A(8)=168$ and $D(8)=1792$, giving $N=141120$; the explicit rank-two normal form also rules out the invertible-only count.

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
