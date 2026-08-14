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

Step 5: Use the quadratic marker to determine the exact matrix condition

The coordinate permutation induced by $A$ sends the quadratic word to
$$
(P_A\mathbf q)_v=q(A^{-1}v).
$$
Since $\theta$ singles out $\mathbf q$, preservation of $\theta$ is equivalent to
$$
P_A\mathbf q=\mathbf q,
$$
that is,
$$
q(A^{-1}v)=q(v)
\qquad(v\in V).
$$
Equivalently,
$$
q(Av)=q(v)
\qquad(v\in V). \tag{8}
$$

Conversely, if $A\in\operatorname{GL}(2m,2)$ satisfies (8), then $P_A$ preserves Hamming weight, sends every linear word $\ell_\alpha$ to another linear word, and fixes $\mathbf q$. Therefore it preserves all terms in the definition of $d_n$. Combining this with translations, every isometry is uniquely of the form
$$
F_{a,A}(x)_v
=a_v+x_{A^{-1}v}, \tag{9}
$$
where
$$
a\in X_n,
\qquad
A\in\operatorname{GL}(2m,2),
\qquad
q(Av)=q(v)\ \text{for all }v\in V.
$$
Uniqueness follows from $a=F(0)$ and from the unique action on the weight-$2$ shell.

Step 6: Count the admissible matrices without using a group-order formula

Write an element of $V$ as $(u,w)$ with $u,w\in\mathbb F_2^m$, so
$$
q(u,w)=u\cdot w.
$$
Its polar form is
$$
B(x,y)=q(x+y)+q(x)+q(y).
$$
For $x=(u,w)$ and $y=(u',w')$,
$$
B(x,y)=u\cdot w'+u'\cdot w, \tag{10}
$$
which is nondegenerate.

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
B(e_i,f_j)=\delta_{ij}. \tag{11}
$$
Every matrix satisfying (8) sends the standard hyperbolic basis to an ordered hyperbolic basis. Conversely, (11) gives
$$
q\left(\sum_i a_i e_i+\sum_i b_i f_i\right)=\sum_i a_i b_i,
$$
so every ordered hyperbolic basis determines a unique matrix satisfying (8). We therefore count such bases.

First count the zeros of $q$. If $u=0$, all $2^m$ choices of $w$ give $q(u,w)=0$. If $u\neq0$, exactly $2^{m-1}$ choices of $w$ satisfy $u\cdot w=0$. Hence
$$
Z_m:=|\{x:q(x)=0\}|
=2^m+(2^m-1)2^{m-1}
=2^{2m-1}+2^{m-1}. \tag{12}
$$
Thus the number of nonzero singular vectors is
$$
S_m=Z_m-1
=(2^{m-1}+1)(2^m-1). \tag{13}
$$

Fix a nonzero singular vector $e$. Since $B$ is nondegenerate, choose $h$ with $B(e,h)=1$. If $q(h)=1$, replace $h$ by $h+e$; then
$$
q(h+e)=q(h)+q(e)+B(h,e)=0.
$$
So at least one singular $f_0$ with $B(e,f_0)=1$ exists. Put
$$
U=\langle e,f_0\rangle^\perp.
$$
Every $f$ satisfying $B(e,f)=1$ has a unique expression
$$
f=f_0+c e+u,
\qquad c\in\mathbb F_2,\ u\in U.
$$
Because $e,f_0$ are singular and $U$ is orthogonal to their span,
$$
q(f)=c+q(u).
$$
For each $u\in U$, exactly one choice $c=q(u)$ makes $f$ singular. Since $\dim U=2m-2$, the number of possible partners $f$ is therefore
$$
2^{2m-2}. \tag{14}
$$

The plane $\langle e,f\rangle$ has three zeros and one nonzero value of $q$. If $Z_U$ denotes the number of zeros of $q$ on its orthogonal complement, then
$$
Z_m=3Z_U+(2^{2m-2}-Z_U),
$$
so by (12)
$$
Z_U=2^{2m-3}+2^{m-2}=Z_{m-1}. \tag{15}
$$
Thus the same counting argument repeats on the orthogonal complement. If $G_m$ is the number of ordered hyperbolic bases in dimension $2m$, then
$$
G_m=S_m\,2^{2m-2}G_{m-1},
\qquad
G_1=2. \tag{16}
$$
Using (13),
$$
G_m
=2^{m(m-1)}\prod_{j=1}^m(2^{j-1}+1)(2^j-1)
$$
and hence
$$
G_m
=2^{1+m(m-1)}(2^m-1)
\prod_{j=1}^{m-1}(2^{2j}-1). \tag{17}
$$

Finally,
$$
|X_n|=2^{n-1}.
$$
Each translation parameter $a$ and each admissible matrix $A$ occur independently and uniquely, so
$$
|\operatorname{Iso}(X_n,d_n)|
=2^{n-1}G_m
=2^{n+m(m-1)}(2^m-1)
\prod_{j=1}^{m-1}(2^{2j}-1). \tag{18}
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
A\in\operatorname{GL}(2m,2),\
q(Av)=q(v)\ \forall v\in\mathbb F_2^{2m}
\right\},
}
$$
with the pair $(a,A)$ unique for every isometry, and
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

For $n=2^{2m}$,
$$
\left\{
F_{a,A}:\
(F_{a,A}(x))_v=a_v+x_{A^{-1}v},\
\ a\in X_n,\
A\in\operatorname{GL}(2m,2),\
\sum_{i=1}^m(Av)_i(Av)_{m+i}
=
\sum_{i=1}^m v_i v_{m+i}
\ \text{for every }v\in\mathbb F_2^{2m}
\right\},
$$
with unique parameters $(a,A)$, and
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
- hyperbolic-basis enumeration
