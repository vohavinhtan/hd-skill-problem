## Steps

Step 1: Decode the metric invariants

The absolute trace pairing on $E$ is nondegenerate. Indeed, if $c\neq0$ and
$$
\operatorname{Tr}(cz)=0\qquad(z\in E),
$$
then multiplication by $c$ would force $\operatorname{Tr}$ to vanish identically. But
$$
\operatorname{Tr}(z)=z+z^2+\cdots+z^{2^{r-1}}
$$
is a nonzero polynomial of degree $2^{r-1}<2^r$, so it cannot vanish on all of $E$.

Every nonzero linear word has weight $n/2$, hence even. Every word in $\mathcal Q_s$ is the evaluation vector of a Boolean polynomial of degree at most $2$ in $2r$ binary variables. Since $2<2r$, every monomial omits at least one variable, and summing over that variable shows that the total weight is even. Thus all marked words lie in $X_n$ as stated.

For nonzero $z\in X_n$, put
$$
R(z)=d_n(0,z)-256n.
$$
Because $\operatorname{wt}(z)$ is even,
$$
128\operatorname{wt}(z)\equiv0\pmod{256}.
$$
The remainder of $R(z)$ modulo $128$ is
$$
64\lambda(z)+32\mu(z)+16\alpha_0(z)+8\alpha_1(z)+4\beta_0(z)+2\beta_1(z),
$$
which lies between $0$ and $126$ and therefore determines the six marker bits uniquely. Subtracting those bits then determines $\operatorname{wt}(z)$. Hence every isometry fixing $0$ preserves Hamming weight and each of
$$
\mathcal L,\quad \mathscr Q,\quad
\mathscr R_{6,1},\quad \mathscr R_{6,10},\quad
\mathscr R_{10,1},\quad \mathscr R_{10,34}. \tag{1}
$$

The displayed function is a metric. A nonzero element of $X_n$ has weight at least $2$, so every nonzero distance is at least
$$
256n+256,
$$
while every distance is at most
$$
256n+128n+126=384n+126.
$$
Thus for three distinct points,
$$
384n+126<512n+512,
$$
so the triangle inequality is automatic; the cases with a repeated point are immediate.

Step 2: Remove translations and reconstruct the coordinate permutation

For every $a\in X_n$, translation
$$
T_a(x)=a+x
$$
is an isometry because $d_n(x,y)$ depends only on $x+y$. For an arbitrary isometry $F$, let
$$
a=F(0),
\qquad
G=T_a\circ F.
$$
Then $G(0)=0$.

For $u\in V$, let $e_u$ be the unit word at coordinate $u$, and for $u\neq v$ put
$$
p_{uv}=e_u+e_v.
$$
These are exactly the weight-$2$ words, so $G$ permutes them. For two distinct such words,
$$
\operatorname{wt}(p_{uv}+p_{rs})
=
\begin{cases}
2,&|\{u,v\}\cap\{r,s\}|=1,\\
4,&\{u,v\}\cap\{r,s\}=\varnothing.
\end{cases} \tag{2}
$$
Hence the metric recovers the intersection graph of the $2$-subsets of $V$.

For each $u\in V$, the star
$$
\Sigma_u=\{p_{uv}:v\neq u\}
$$
is a clique of size $n-1$. Any clique with no common coordinate has size at most $3$: after choosing $\{u,v\}$ and $\{u,w\}$, any member meeting both while avoiding $u$ must be $\{v,w\}$. Since $n-1>3$, the stars are exactly the cliques of size $n-1$. Thus there is a unique permutation $\phi$ of $V$ such that
$$
G(p_{uv})=p_{\phi(u)\phi(v)}. \tag{3}
$$

Let $x\in X_n$ have support $A$ and weight $k$. From the weight of $x+p_{uv}$ one recovers
$$
|A\cap\{u,v\}|
=\frac{k+2-\operatorname{wt}(x+p_{uv})}{2}. \tag{4}
$$
The support $A'$ of $G(x)$ therefore satisfies
$$
|A'\cap\{\phi(u),\phi(v)\}|
=|A\cap\{u,v\}| \tag{5}
$$
for every distinct $u,v$. Taking three distinct coordinates recovers each individual membership indicator, so $A'=\phi(A)$. Hence every $0$-fixing isometry is exactly the coordinate permutation
$$
(P_\phi x)_v=x_{\phi^{-1}(v)}. \tag{6}
$$

Step 3: The linear marker forces $\phi$ to be $\mathbb F_2$-linear

For
$$
\alpha=(a,b),\qquad v=(u,w),
$$
write
$$
\langle\alpha,v\rangle=\operatorname{Tr}(au+bw).
$$
This pairing on $V$ is nondegenerate by Step 1.

Since $P_\phi$ preserves $\mathcal L$, for every nonzero $\alpha\in V$ there is a nonzero $\beta\in V$ such that
$$
\langle\alpha,\phi^{-1}(v)\rangle
=\langle\beta,v\rangle
\qquad(v\in V). \tag{7}
$$
Putting $v=0$ and varying $\alpha$ gives $\phi^{-1}(0)=0$. Applying (7) to $u+v$ and using additivity on the right gives
$$
\left\langle\alpha,
\phi^{-1}(u+v)+\phi^{-1}(u)+\phi^{-1}(v)
\right\rangle=0
$$
for every $\alpha$, so nondegeneracy implies
$$
\phi^{-1}(u+v)=\phi^{-1}(u)+\phi^{-1}(v).
$$
Thus $\phi$ is an $\mathbb F_2$-linear bijection.

Step 4: The full quadratic pencil forces an $E$-semilinear action

For $s\in E$, define
$$
B_s\bigl((u,w),(u',w')\bigr)
=\operatorname{Tr}\bigl(s(uw'+u'w)\bigr). \tag{8}
$$
For $s\neq0$, this is the polar form of every word in $\mathcal Q_s$. Distinct $s$ give distinct forms: if $B_s=B_t$, then
$$
\operatorname{Tr}((s+t)uw')=0
$$
for all $u,w'$, hence $s=t$ by nondegeneracy of the trace pairing.

Put
$$
R=\phi^{-1}.
$$
Since $P_\phi$ preserves the full union $\mathscr Q$, for each $s\in E^\times$ there is a unique $\Psi(s)\in E^\times$ such that
$$
B_s(Rx,Ry)=B_{\Psi(s)}(x,y)
\qquad(x,y\in V). \tag{9}
$$
Let $T_s$ denote scalar multiplication by $s$ on $V$. Since
$$
B_s(x,y)=B_1(T_sx,y), \tag{10}
$$
and $B_1$ is nondegenerate, if $R^*$ is the $B_1$-adjoint of $R$, then
$$
R^*T_sR=T_{\Psi(s)}. \tag{11}
$$
Writing
$$
\delta=\Psi(1),
$$
we get
$$
R^*R=T_\delta. \tag{12}
$$
Combining (11) and (12),
$$
R^{-1}T_sR=T_{\delta^{-1}\Psi(s)}. \tag{13}
$$
Define
$$
\sigma(0)=0,
\qquad
\sigma(s)=\delta^{-1}\Psi(s)\quad(s\neq0).
$$
Conjugation preserves sums and products of the scalar operators, so
$$
\sigma(s+t)=\sigma(s)+\sigma(t),
\qquad
\sigma(st)=\sigma(s)\sigma(t),
\qquad
\sigma(1)=1.
$$
Thus $\sigma$ is a field automorphism of $E$.

Since $E=\mathbb F_{2^r}$ and $\tau$ is primitive, every $\mathbb F_2$-automorphism is a unique Frobenius power
$$
\sigma(s)=s^{2^k},
\qquad
0\leq k<r. \tag{14}
$$
Indeed, the conjugates of $\tau$ over $\mathbb F_2$ are the distinct elements
$$
\tau,\tau^2,\ldots,\tau^{2^{r-1}},
$$
and the image of $\tau$ determines the automorphism.

Equation (13) now gives
$$
sR(x)=R(s^{2^k}x),
$$
so $R$ is $2^{r-k}$-semilinear and $\phi$ is $2^k$-semilinear. Therefore there is a unique
$$
M\in\operatorname{GL}_2(E)
$$
such that
$$
\phi(v)=Mv^{2^k}. \tag{15}
$$

Write
$$
M=\begin{pmatrix}a&b\\c&e\end{pmatrix},
\qquad
\Delta=\det M=ae+bc\in E^\times. \tag{16}
$$
Since
$$
R(v)=\bigl(M^{-1}v\bigr)^{2^{r-k}},
$$
a direct substitution into (8), using invariance of the absolute trace under Frobenius, gives
$$
\Psi(s)=\Delta^{-1}s^{2^k}. \tag{17}
$$
This is the induced action on the quadratic-pencil parameter.

Step 5: A cyclic-orbit stabilizer lemma

Fix an integer $m\geq3$ and put
$$
N_m=2^m-1.
$$
In the cyclic group $\mathbb Z/N_m\mathbb Z$, set
$$
C_m=\{2^i:0\leq i<m\}. \tag{18}
$$
For every integer $k$, multiplication by $2^k$ permutes $C_m$.

We need the following elementary fact.

**Lemma.** If
$$
x\longmapsto 2^k x+b
$$
is an affine permutation of $\mathbb Z/N_m\mathbb Z$ carrying $C_m$ onto itself, then
$$
b\equiv0\pmod{N_m}.
$$

To prove it, compose with multiplication by $2^{-k}$ modulo $N_m$. It is enough to show that no nonzero translation preserves $C_m$. Represent the elements of $C_m$ in increasing order as
$$
1,2,4,\ldots,2^{m-1}.
$$
Their cyclic successive gaps are
$$
1,2,4,\ldots,2^{m-2},2^{m-1}, \tag{19}
$$
all distinct. A translation preserving $C_m$ induces a cyclic shift of this ordered gap sequence. Since all gaps are distinct, the only possible shift is the zero shift, and then the translation fixes $1$, so it is zero. This proves the lemma.

For an integer $c$, let
$$
C_{m,c}=c+C_m\subseteq\mathbb Z/N_m\mathbb Z. \tag{20}
$$
The affine map
$$
f_{k,h}(x)=2^k x-h \tag{21}
$$
preserves $C_{m,c}$ exactly when
$$
h\equiv(2^k-1)c\pmod{N_m}. \tag{22}
$$
Indeed, after subtracting $c$, its action becomes
$$
y\longmapsto2^k y+\bigl(2^kc-h-c\bigr),
$$
and the lemma forces the translation term to vanish.

Step 6: Apply the four orbit markers and solve the coupled congruences

Write the determinant as
$$
\Delta=\tau^h,
\qquad
h\in\mathbb Z/(q-1)\mathbb Z. \tag{23}
$$
For $m\in\{6,10\}$, the quotient $E^\times/H_m$ is cyclic of order
$$
N_m=2^m-1,
$$
and the set $\Omega_{m,c}$ corresponds exactly to the residue set $C_{m,c}$ from (20). By (17), on exponent classes modulo $N_m$ the pencil parameter transforms as
$$
j\longmapsto2^k j-h. \tag{24}
$$
Therefore preservation of $\mathscr R_{m,c}$ is equivalent to (22).

For the two $m=6$ markers, with $N_6=63$, we obtain
$$
h\equiv2^k-1\pmod{63}, \tag{25}
$$
$$
h\equiv10(2^k-1)\pmod{63}. \tag{26}
$$
Subtracting gives
$$
63\mid9(2^k-1),
$$
so
$$
7\mid2^k-1.
$$
The multiplicative order of $2$ modulo $7$ is $3$, hence
$$
3\mid k. \tag{27}
$$
Conversely, if $3\mid k$, then $7\mid2^k-1$, so (25) and (26) agree. Thus the two $m=6$ markers are equivalent to (27) together with (25).

For the two $m=10$ markers, with $N_{10}=1023$, we obtain
$$
h\equiv2^k-1\pmod{1023}, \tag{28}
$$
$$
h\equiv34(2^k-1)\pmod{1023}. \tag{29}
$$
Subtracting gives
$$
1023\mid33(2^k-1).
$$
Since
$$
1023=33\cdot31,
$$
we get
$$
31\mid2^k-1.
$$
The multiplicative order of $2$ modulo $31$ is $5$, so
$$
5\mid k. \tag{30}
$$
Conversely, if $5\mid k$, then (28) and (29) agree. Thus the two $m=10$ markers are equivalent to (30) together with (28).

Combining (27) and (30),
$$
15\mid k. \tag{31}
$$
Since $0\leq k<r$ and $30\mid r$, the allowed exponents are exactly
$$
k\in\{0,15,30,\ldots,r-15\}. \tag{32}
$$
There are $r/15$ such values.

The remaining determinant congruences are
$$
h\equiv2^k-1\pmod{63},
\qquad
h\equiv2^k-1\pmod{1023}. \tag{33}
$$
Their common modulus is
$$
L=\operatorname{lcm}(63,1023)
=\frac{63\cdot1023}{3}
=21483. \tag{34}
$$
Hence
$$
h\equiv2^k-1\pmod{21483}. \tag{35}
$$
Because $21483$ divides $2^{30}-1$ and $30\mid r$, it divides $q-1$. Thus (35) is equivalent to
$$
\Delta
=\tau^{\,2^k-1+21483j} \tag{36}
$$
for a unique integer
$$
0\leq j<\frac{q-1}{21483}. \tag{37}
$$
Equivalently,
$$
\det M\in\tau^{\,2^k-1}\langle\tau^{21483}\rangle. \tag{38}
$$
This is the required coupling between the Frobenius exponent and the determinant coset.

Conversely, if (32) and (38) hold, then (35), hence all four congruences (25), (26), (28), (29), hold. By the cyclic-orbit lemma, all four marked parameter sets are preserved. The semilinear coordinate map also preserves $\mathcal L$ and the full pencil $\mathscr Q$, so it preserves every marker and therefore the metric.

Step 7: State the normal form and count the isometries

For admissible $M$ and $k$, define
$$
\Phi_{M,k}(v)=Mv^{2^k}
\qquad(v\in E^2). \tag{39}
$$
Then
$$
\Phi_{M,k}^{-1}(v)
=\bigl(M^{-1}v\bigr)^{2^{r-k}}, \tag{40}
$$
where $2^r$ acts as the identity when $k=0$.

Every isometry is uniquely of the form
$$
(F_{a,M,k}(x))_v
=a_v+x_{\Phi_{M,k}^{-1}(v)}, \tag{41}
$$
with
$$
a\in X_n,
$$
$$
k=15t,
\qquad
0\leq t<\frac r{15}, \tag{42}
$$
and
$$
M=\begin{pmatrix}a_{11}&a_{12}\\a_{21}&a_{22}\end{pmatrix}\in M_2(E)
$$
satisfying
$$
a_{11}a_{22}+a_{12}a_{21}
=\tau^{\,2^k-1+21483j} \tag{43}
$$
for exactly one integer
$$
0\leq j<\frac{q-1}{21483}. \tag{44}
$$
The determinant in (43) is nonzero, so $M$ is automatically invertible. Uniqueness follows because $a=F(0)$, the weight-$2$ shell determines the coordinate permutation, and a semilinear map $Mv^{2^k}$ has unique $k\in[0,r)$ and unique $M$.

It remains to count matrices. For a fixed nonzero determinant $\Delta$, choose the first column of a $2\times2$ matrix arbitrarily nonzero; there are
$$
q^2-1
$$
choices. For each first column, the determinant equation for the second column is one nontrivial affine linear equation in two variables, hence has exactly $q$ solutions. Therefore exactly
$$
q(q^2-1) \tag{45}
$$
matrices have any prescribed nonzero determinant.

For each allowed $k$, equation (43) permits exactly
$$
\frac{q-1}{21483} \tag{46}
$$
values of the determinant. There are $r/15$ allowed values of $k$, and
$$
|X_n|=2^{n-1}.
$$
Thus
$$
|\operatorname{Iso}(X_n,d_n)|
=2^{n-1}\frac r{15}\frac{q-1}{21483}q(q^2-1). \tag{47}
$$
Since $q=2^r$ and $n=2^{2r}$,
$$
\boxed{
|\operatorname{Iso}(X_n,d_n)|
=
2^{n+r-1}\frac r{15}\,
\frac{(2^r-1)(2^{2r}-1)}{21483},
\qquad n=2^{2r}.
} \tag{48}
$$

Final Answer:

Let
$$
\Phi_{M,k}(v)=Mv^{2^k}.
$$
Then all isometries, and only the isometries, are
$$
\boxed{
(F_{a,M,k}(x))_v
=a_v+x_{\Phi_{M,k}^{-1}(v)},
}
$$
with the exact and unique parameter choices
$$
a\in X_n,
$$
$$
k\in\{0,15,30,\ldots,r-15\},
$$
and
$$
M=\begin{pmatrix}a_{11}&a_{12}\\a_{21}&a_{22}\end{pmatrix}\in M_2(E)
$$
satisfying
$$
\boxed{
\det M
=a_{11}a_{22}+a_{12}a_{21}
=\tau^{\,2^k-1+21483j}
}
$$
for exactly one
$$
0\leq j<\frac{2^r-1}{21483}.
$$
Equivalently,
$$
\det M\in\tau^{\,2^k-1}\langle\tau^{21483}\rangle.
$$
Moreover,
$$
\boxed{
|\operatorname{Iso}(X_n,d_n)|
=
2^{n+r-1}\frac r{15}\,
\frac{(2^r-1)(2^{2r}-1)}{21483},
\qquad n=2^{2r}.
}
$$

---

## Answer

Let
$$
\Phi_{M,k}(v)=Mv^{2^k}\qquad(v\in E^2).
$$
Then
$$
\operatorname{Iso}(X_n,d_n)
=
\left\{
F_{a,M,k}:
(F_{a,M,k}(x))_v
=a_v+x_{\Phi_{M,k}^{-1}(v)}
\right\},
$$
where
$$
a\in X_n,
\qquad
k=15t\ \text{ with }\ 0\leq t<r/15,
$$
and
$$
M=\begin{pmatrix}a_{11}&a_{12}\\a_{21}&a_{22}\end{pmatrix}
$$
satisfies
$$
a_{11}a_{22}+a_{12}a_{21}
=\tau^{\,2^k-1+21483j}
$$
for a unique integer
$$
0\leq j<\frac{2^r-1}{21483}.
$$
Each isometry has a unique triple $(a,M,k)$, and
$$
|\operatorname{Iso}(X_n,d_n)|
=
2^{n+r-1}\frac r{15}\,
\frac{(2^r-1)(2^{2r}-1)}{21483},
\qquad n=2^{2r}.
$$

---

## Classification

**Problem Type:** Exhaustive enumeration

**Answer Type:** Set or multiset of objects

---

## Solution Concepts

- finite metric isometry reconstruction
- weight-two shell and star reconstruction
- quadratic polar-form pencils
- semilinear reconstruction from scalar conjugation
- Frobenius action on cyclic quotient parameters
- shifted Frobenius-orbit stabilizers
- coupled congruences modulo $63$ and $1023$
