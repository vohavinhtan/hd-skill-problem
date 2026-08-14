## Steps

Step 1: Decode the metric invariants

The quadratic word $\mathbf q$ is not linear: if $e_1,e_{m+1}$ are the corresponding standard basis vectors of $V$, then
$$
q(e_1)=q(e_{m+1})=0,
\qquad
q(e_1+e_{m+1})=1.
$$
Hence $\mathbf q\notin\mathcal L_m$, so $\lambda(z)$ and $\theta(z)$ are never simultaneously $1$.

If $x\neq y$, then $z=x+y$ is a nonzero even-weight word, so $\operatorname{wt}(z)\geq2$. Thus every nonzero distance is at least $8n+8$ and at most $12n+2$. Consequently, for three distinct points,
$$
d_n(x,z)\leq12n+2<16n+16\leq d_n(x,y)+d_n(y,z),
$$
while the cases with repeated points are immediate. Therefore $d_n$ is a metric.

For nonzero $z\in X_n$, write
$$
D(z)=d_n(0,z)-8n
=4\operatorname{wt}(z)+2\lambda(z)+\theta(z). \tag{1}
$$
Because $2\lambda(z)+\theta(z)\in\{0,1,2\}$, the value $D(z)$ determines all three quantities separately: its parity gives $\theta(z)$, its residue modulo $4$ then gives $\lambda(z)$, and the remaining multiple of $4$ gives $\operatorname{wt}(z)$. Hence every isometry fixing $0$ preserves Hamming weight, the set $\mathcal L_m$, and the single word $\mathbf q$.

Step 2: Remove the translational part

For every $a\in X_n$, the translation
$$
T_a(x)=a+x
$$
is an isometry because the metric depends only on $x+y$. Therefore, given any isometry $F$, put
$$
a=F(0),
\qquad
G=T_a\circ F.
$$
Since the characteristic is $2$, $T_a^{-1}=T_a$, and $G(0)=0$. It is enough to classify the isometries fixing $0$.

Step 3: Reconstruct the underlying coordinate permutation

For $u\in V$, let $e_u$ denote the unit word supported at the coordinate $u$, and for distinct $u,v\in V$ put
$$
p_{uv}=e_u+e_v.
$$
These are exactly the weight-$2$ words, so $G$ permutes the set
$$
\mathcal P=\{p_{uv}:u\neq v\}.
$$
Since $m\geq3$, both the words in $\mathcal L_m$ and the word $\mathbf q$ have weight greater than $4$. Thus, for two distinct elements of $\mathcal P$, the marker terms vanish and
$$
\operatorname{wt}(p_{uv}+p_{rs})=
\begin{cases}
2,&|\{u,v\}\cap\{r,s\}|=1,\\
4,&\{u,v\}\cap\{r,s\}=\varnothing.
\end{cases} \tag{2}
$$
Hence the metric on $\mathcal P$ recovers the intersection graph of the $2$-subsets of $V$.

For each $u\in V$, the set
$$
\mathcal S_u=\{p_{uv}:v\neq u\}
$$
is a clique of size $n-1$. Conversely, any clique not having a common coordinate has size at most $3$: after two members $\{u,v\}$ and $\{u,w\}$ are chosen, any member meeting both but avoiding $u$ must be $\{v,w\}$. Since $n-1>3$, the cliques of size $n-1$ are exactly the $\mathcal S_u$. Therefore $G$ permutes these stars, so there is a unique permutation $\phi$ of $V$ such that
$$
G(p_{uv})=p_{\phi(u)\phi(v)}. \tag{3}
$$

Let $P_\phi$ be the coordinate permutation
$$
(P_\phi x)_v=x_{\phi^{-1}(v)}.
$$
After replacing $G$ by $P_\phi^{-1}G$, assume that every $p_{uv}$ is fixed. We show that then every word is fixed.

Let $z$ have support $A\subseteq V$, and put $k=|A|$. From the Hamming weight of $z+p_{uv}$ one recovers
$$
|A\cap\{u,v\}|=
\frac{k+2-\operatorname{wt}(z+p_{uv})}{2}. \tag{4}
$$
The left side is therefore preserved for every pair $u,v$. If $u,v,w$ are distinct, then
$$
\mathbf1_A(u)=
\frac{|A\cap\{u,v\}|+|A\cap\{u,w\}|-|A\cap\{v,w\}|}{2}. \tag{5}
$$
Thus all coordinate-membership indicators are recovered from the metric data. Hence an isometry fixing $0$ and every $p_{uv}$ is the identity. It follows that every $0$-fixing isometry is exactly one coordinate permutation $P_\phi$.

Step 4: Use the linear-word marker to force $\phi$ to be linear

Because $G=P_\phi$ preserves $\mathcal L_m$, for every nonzero $\alpha\in V$ there is a nonzero $\beta\in V$ such that
$$
\alpha\cdot\phi^{-1}(v)=\beta\cdot v
\qquad(v\in V). \tag{6}
$$
At $v=0$, equation (6) gives
$$
\alpha\cdot\phi^{-1}(0)=0
$$
for every nonzero $\alpha$, so $\phi^{-1}(0)=0$. Taking $\alpha$ successively to be the standard basis vectors shows that every coordinate function of $\phi^{-1}$ is a linear functional of $v$. Therefore $\phi^{-1}$, and hence $\phi$, is linear.

Thus there is a unique matrix
$$
A\in\operatorname{GL}(2m,2)
$$
with
$$
\phi(v)=Av. \tag{7}
$$

Step 5: Resolve the quadratic marker into explicit block conditions

The coordinate permutation induced by $A$ sends the quadratic word to
$$
(P_A\mathbf q)_v=q(A^{-1}v).
$$
Since $\theta$ singles out $\mathbf q$, preservation of $\theta$ is equivalent to
$$
q(Av)=q(v)
\qquad(v\in V). \tag{8}
$$

Write $v=(u,w)$ with $u,w\in\mathbb F_2^m$ and write $A$ in $m\times m$ blocks as
$$
A=
\begin{pmatrix}
P&Q\\
R&S
\end{pmatrix}.
$$
Then
$$
q(Av)
=(Pu+Qw)^T(Ru+Sw),
$$
so
$$
q(Av)
=u^T P^TRu
+u^T(P^TS+R^TQ)w
+w^TQ^TSw. \tag{9}
$$
Over $\mathbb F_2$, a matrix $M$ satisfies $x^TMx=0$ for every $x$ exactly when $M$ is symmetric with zero diagonal. Therefore (8) is equivalent to the three explicit conditions
$$
P^TR\text{ is symmetric with zero diagonal}, \tag{10}
$$
$$
Q^TS\text{ is symmetric with zero diagonal}, \tag{11}
$$
and
$$
P^TS+R^TQ=I_m. \tag{12}
$$
These equations also imply
$$
A^T
\begin{pmatrix}0&I_m\\I_m&0\end{pmatrix}
A
=
\begin{pmatrix}0&I_m\\I_m&0\end{pmatrix},
$$
so $A$ is automatically invertible.

Conversely, if the four blocks satisfy (10)-(12), then (9) gives $q(Av)=q(v)$ for all $v$. Such an $A$ sends every linear word $\ell_\alpha$ to another linear word, fixes $\mathbf q$, and permutes coordinates, hence preserves every term in the definition of $d_n$.

Combining this with translations, every isometry is uniquely of the form
$$
F_{a,A}(x)_v
=a_v+x_{A^{-1}v}, \tag{13}
$$
where $a\in X_n$ and $A$ has block form above satisfying (10)-(12). Uniqueness follows from $a=F(0)$ and from the unique action on the weight-$2$ shell.

Step 6: Count the admissible matrices from hyperbolic bases

For $x=(u,w)$ and $y=(u',w')$, the polar form of $q$ is
$$
B(x,y)=q(x+y)+q(x)+q(y)
=u\cdot w'+u'\cdot w. \tag{14}
$$
It is nondegenerate.

Call $(e,f)$ a hyperbolic pair if
$$
q(e)=q(f)=0,
\qquad
B(e,f)=1.
$$
An ordered hyperbolic basis is a basis
$$
e_1,f_1,\ldots,e_m,f_m
$$
with
$$
q(e_i)=q(f_i)=0,
\quad
B(e_i,e_j)=B(f_i,f_j)=0,
\quad
B(e_i,f_j)=\delta_{ij}. \tag{15}
$$
Every admissible matrix sends the standard hyperbolic basis to an ordered hyperbolic basis. Conversely, (15) gives
$$
q\left(\sum_i a_i e_i+\sum_i b_i f_i\right)=\sum_i a_i b_i,
$$
so every ordered hyperbolic basis determines a unique admissible matrix. It remains to count these bases.

First count the zeros of $q$. If $u=0$, all $2^m$ choices of $w$ give $q(u,w)=0$. If $u\neq0$, exactly $2^{m-1}$ choices of $w$ satisfy $u\cdot w=0$. Hence
$$
Z_m:=|\{x:q(x)=0\}|
=2^m+(2^m-1)2^{m-1}
=2^{2m-1}+2^{m-1}. \tag{16}
$$
Thus the number of nonzero singular vectors is
$$
S_m=Z_m-1
=(2^{m-1}+1)(2^m-1). \tag{17}
$$

Fix a nonzero singular vector $e$. Since $B$ is nondegenerate, choose $h$ with $B(e,h)=1$. If $q(h)=1$, replace $h$ by $h+e$; then
$$
q(h+e)=q(h)+q(e)+B(h,e)=0.
$$
So a singular $f_0$ with $B(e,f_0)=1$ exists. The plane
$$
H=\langle e,f_0\rangle
$$
has $B$-matrix
$$
\begin{pmatrix}0&1\\1&0\end{pmatrix},
$$
so it is nondegenerate. Consequently
$$
V=H\oplus U,
\qquad
U=H^\perp,
$$
and the restriction of $B$ to $U$ is again nondegenerate.

Every $f$ satisfying $B(e,f)=1$ has a unique expression
$$
f=f_0+c e+u,
\qquad c\in\mathbb F_2,\ u\in U.
$$
Because $e,f_0$ are singular and $U$ is orthogonal to $H$,
$$
q(f)=c+q(u).
$$
For each $u\in U$, exactly one choice $c=q(u)$ makes $f$ singular. Since $\dim U=2m-2$, the number of singular partners of $e$ is therefore
$$
2^{2m-2}. \tag{18}
$$

For any chosen hyperbolic pair $(e,f)$, its orthogonal complement is nondegenerate of dimension $2m-2$. The plane $\langle e,f\rangle$ has three zeros and one vector on which $q$ equals $1$. If $Z_U$ denotes the number of zeros of $q$ on the orthogonal complement, then
$$
Z_m=3Z_U+(2^{2m-2}-Z_U),
$$
so by (16)
$$
Z_U=2^{2m-3}+2^{m-2}=Z_{m-1}. \tag{19}
$$
Thus, after removing any first hyperbolic pair, the remaining nondegenerate quadratic space has exactly the same dimension-and-zero-count data needed for the next stage. Repeating the preceding counting argument gives a recursion without invoking any classification theorem for quadratic forms.

If $G_m$ denotes the number of ordered hyperbolic bases in dimension $2m$, then
$$
G_m=S_m\,2^{2m-2}G_{m-1},
\qquad
G_1=2. \tag{20}
$$
Using (17),
$$
G_m
=2^{m(m-1)}\prod_{j=1}^m(2^{j-1}+1)(2^j-1)
$$
and hence
$$
G_m
=2^{1+m(m-1)}(2^m-1)
\prod_{j=1}^{m-1}(2^{2j}-1). \tag{21}
$$

Finally,
$$
|X_n|=2^{n-1}.
$$
Each translation parameter $a$ and each admissible matrix occur independently and uniquely, so
$$
|\operatorname{Iso}(X_n,d_n)|
=2^{n-1}G_m
=2^{n+m(m-1)}(2^m-1)
\prod_{j=1}^{m-1}(2^{2j}-1). \tag{22}
$$

Final Answer:
$$
\boxed{
\operatorname{Iso}(X_n,d_n)
=
\left\{
F_{a,A}:\
(F_{a,A}(x))_v=a_v+x_{A^{-1}v},\
\ a\in X_n,\
A=\begin{pmatrix}P&Q\\R&S\end{pmatrix},\
P^TR\text{ and }Q^TS\text{ symmetric with zero diagonal},\
P^TS+R^TQ=I_m
\right\}.
}
$$
The pair $(a,A)$ is unique for every isometry, and
$$
\boxed{
|\operatorname{Iso}(X_n,d_n)|
=
2^{n+m(m-1)}(2^m-1)
\prod_{j=1}^{m-1}(2^{2j}-1),
\qquad n=2^{2m}.
}
$$

---

## Answer

For $n=2^{2m}$, every isometry occurs uniquely as
$$
(F_{a,A}(x))_v=a_v+x_{A^{-1}v},
$$
where $a\in X_n$ and
$$
A=\begin{pmatrix}P&Q\\R&S\end{pmatrix},
\qquad P,Q,R,S\in M_m(\mathbb F_2),
$$
satisfies
$$
P^TR=(P^TR)^T,\qquad \operatorname{diag}(P^TR)=0,
$$
$$
Q^TS=(Q^TS)^T,\qquad \operatorname{diag}(Q^TS)=0,
$$
and
$$
P^TS+R^TQ=I_m.
$$
These conditions make $A$ invertible. The exact number of isometries is
$$
|\operatorname{Iso}(X_n,d_n)|
=
2^{n+m(m-1)}(2^m-1)
\prod_{j=1}^{m-1}(2^{2j}-1).
$$

---

## Classification

**Problem Type:** Exhaustive enumeration

**Answer Type:** Set or multiset of objects

---

## Solution Concepts

- finite metric isometry reconstruction
- weight-two shell and star reconstruction
- binary simplex-code invariance
- quadratic forms over $\mathbb F_2$
- explicit block-matrix isometry constraints
- hyperbolic-basis enumeration
