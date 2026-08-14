## Steps

Step 1: Decode the metric and check the marked families

The trace pairing on $E$ is nondegenerate. Indeed, if
$$
\operatorname{Tr}(cz)=0\qquad(z\in E)
$$
with $c\neq0$, then multiplication by $c$ would imply that $\operatorname{Tr}$ vanishes identically. But
$$
\operatorname{Tr}(z)=z+z^2+\cdots+z^{2^{r-1}}
$$
is a nonzero polynomial of degree $2^{r-1}<2^r$, so it cannot vanish on all $2^r$ elements of $E$.

Every nonzero linear word has weight $n/2$, hence even. Also every word in $\mathcal Q_s$ is the evaluation vector of a Boolean polynomial in $2r$ binary variables of degree at most $2$. Its weight modulo $2$ is the sum of that polynomial over all of $\mathbb F_2^{2r}$. Every monomial occurring has degree strictly smaller than $2r$, so at least one variable is absent; summing over that variable gives an even contribution. Thus every word in every $\mathcal Q_s$ has even weight, as asserted in the statement.

For nonzero $z\in X_n$, write
$$
R(z)=d_n(0,z)-32n.
$$
Because $\operatorname{wt}(z)$ is even,
$$
16\operatorname{wt}(z)\equiv0\pmod{32}.
$$
Hence the residue of $R(z)$ modulo $32$ is exactly
$$
8\lambda(z)+4\mu(z)+2\eta(z)+\xi(z),
$$
which determines the four marker bits individually. Subtracting those bits then determines $\operatorname{wt}(z)$. Therefore every isometry fixing $0$ preserves Hamming weight and preserves each of the sets
$$
\mathcal L,\qquad \mathscr Q,\qquad \mathscr H,\qquad \mathscr C. \tag{1}
$$

The displayed function is a metric. If $x\neq y$, then $x+y$ is a nonzero even-weight word, so its weight is at least $2$. Thus every nonzero distance is at least
$$
32n+32,
$$
while every distance is at most
$$
32n+16n+15=48n+15.
$$
For three distinct points,
$$
48n+15<64n+64,
$$
so the triangle inequality is automatic; the cases with a repeated point are immediate.

Step 2: Remove translations and reconstruct a coordinate permutation

For every $a\in X_n$, translation
$$
T_a(x)=a+x
$$
is an isometry because $d_n(x,y)$ depends only on $x+y$. Given an arbitrary isometry $F$, put
$$
a=F(0),
\qquad
G=T_a\circ F.
$$
Then $G(0)=0$. It remains to classify the $0$-fixing isometries.

For $u\in V$, let $e_u$ be the unit word supported at coordinate $u$, and for $u\neq v$ put
$$
p_{uv}=e_u+e_v.
$$
These are exactly the weight-$2$ words, so $G$ permutes their set. For distinct $p_{uv}$ and $p_{rs}$, the weight decoded from their mutual distance is
$$
\operatorname{wt}(p_{uv}+p_{rs})
=
\begin{cases}
2,&|\{u,v\}\cap\{r,s\}|=1,\\
4,&\{u,v\}\cap\{r,s\}=\varnothing.
\end{cases} \tag{2}
$$
Thus the metric on the weight-$2$ shell recovers the intersection graph of the $2$-subsets of the $n$-element set $V$.

For each $u\in V$, the star
$$
\Sigma_u=\{p_{uv}:v\neq u\}
$$
is a clique of size $n-1$. Any clique with no common coordinate has size at most $3$: after choosing $\{u,v\}$ and $\{u,w\}$, any member meeting both while avoiding $u$ must be $\{v,w\}$. Since $n-1>3$, the cliques of size $n-1$ are exactly the stars. Hence there is a unique permutation $\phi$ of $V$ such that
$$
G(p_{uv})=p_{\phi(u)\phi(v)}. \tag{3}
$$

Now let $x\in X_n$ have support $A$ and weight $k$. From the weight of $x+p_{uv}$ one recovers
$$
|A\cap\{u,v\}|
=\frac{k+2-\operatorname{wt}(x+p_{uv})}{2}. \tag{4}
$$
Because $G$ preserves all these distances and satisfies (3), the support $A'$ of $G(x)$ satisfies
$$
|A'\cap\{\phi(u),\phi(v)\}|
=|A\cap\{u,v\}| \tag{5}
$$
for every distinct $u,v$. Taking three distinct coordinates recovers each individual membership indicator from the pair-intersection numbers, so
$$
A'=\phi(A).
$$
Therefore every $0$-fixing isometry is the coordinate permutation
$$
(P_\phi x)_v=x_{\phi^{-1}(v)}. \tag{6}
$$

Step 3: The linear-word marker forces $\phi$ to be $\mathbb F_2$-linear

For
$$
\alpha=(a,b),\qquad v=(u,w),
$$
write
$$
\langle\alpha,v\rangle=\operatorname{Tr}(au+bw).
$$
This pairing on $V$ is nondegenerate by the nondegeneracy of the trace pairing proved in Step 1.

Since $P_\phi$ preserves $\mathcal L$, for every nonzero $\alpha\in V$ there is a nonzero $\beta\in V$ such that
$$
\langle\alpha,\phi^{-1}(v)\rangle
=\langle\beta,v\rangle
\qquad(v\in V). \tag{7}
$$
Putting $v=0$ and varying $\alpha$ gives $\phi^{-1}(0)=0$. For $u,v\in V$, equation (7) gives
$$
\left\langle\alpha,
\phi^{-1}(u+v)+\phi^{-1}(u)+\phi^{-1}(v)
\right\rangle=0
$$
for every $\alpha$. Nondegeneracy therefore gives
$$
\phi^{-1}(u+v)=\phi^{-1}(u)+\phi^{-1}(v).
$$
Thus $\phi$, and also
$$
R:=\phi^{-1},
$$
are $\mathbb F_2$-linear bijections of $V$.

Step 4: The full quadratic pencil forces semilinearity

For $s\in E$, define the alternating bilinear form
$$
B_s\bigl((u,w),(u',w')\bigr)
=\operatorname{Tr}\bigl(s(uw'+u'w)\bigr). \tag{8}
$$
For $s\neq0$, this is the polar form of every word in $\mathcal Q_s$. Distinct $s$ give distinct forms: if $B_s=B_t$, then
$$
\operatorname{Tr}((s+t)uw')=0
$$
for all $u,w'$, and the trace pairing gives $s=t$.

The difference of two quadratic functions with the same polar form is $\mathbb F_2$-linear. Hence, because $P_\phi$ preserves the union $\mathscr Q$, for each $s\in E^\times$ there is a unique $\Psi(s)\in E^\times$ such that
$$
B_s(Rx,Ry)=B_{\Psi(s)}(x,y)
\qquad(x,y\in V). \tag{9}
$$
The map $\Psi$ is a permutation of $E^\times$. Put
$$
\delta=\Psi(1).
$$

Let $T_s:V\to V$ be scalar multiplication by $s$. Then
$$
B_s(x,y)=B_1(T_sx,y). \tag{10}
$$
The form $B_1$ is nondegenerate. Let $R^*$ be the adjoint of $R$ with respect to $B_1$. Equations (9)-(10) give
$$
R^*T_sR=T_{\Psi(s)} \tag{11}
$$
for every $s\neq0$, and for $s=1$ they give
$$
R^*R=T_\delta. \tag{12}
$$
Combining (11) and (12),
$$
R^{-1}T_sR
=T_{\delta^{-1}\Psi(s)}. \tag{13}
$$
Define
$$
\sigma(0)=0,
\qquad
\sigma(s)=\delta^{-1}\Psi(s)\quad(s\neq0).
$$
Conjugation in (13) preserves sums and products of the scalar operators $T_s$, so
$$
\sigma(s+t)=\sigma(s)+\sigma(t),
\qquad
\sigma(st)=\sigma(s)\sigma(t),
\qquad
\sigma(1)=1.
$$
Thus $\sigma$ is a field automorphism of $E$.

Every field automorphism of $E$ is a Frobenius power, and here this can be seen directly from the chosen primitive element $\tau$. The element $\tau$ generates $E$ over $\mathbb F_2$, so its minimal polynomial has degree $r$. The $r$ elements
$$
\tau,\tau^2,\tau^{2^2},\ldots,\tau^{2^{r-1}}
$$
are distinct roots of that polynomial. Any $\mathbb F_2$-automorphism must send $\tau$ to one of these roots, and hence
$$
\sigma(s)=s^{2^k} \tag{14}
$$
for a unique
$$
0\leq k<r.
$$

Equation (13) says
$$
sR(x)=R(\sigma(s)x).
$$
Hence $R$ is $\sigma^{-1}$-semilinear, and therefore its inverse $\phi$ is $\sigma$-semilinear. Consequently there is a unique matrix
$$
M\in\operatorname{GL}_2(E)
$$
such that
$$
\phi(v)=M v^{2^k}, \tag{15}
$$
where the Frobenius power is applied coordinatewise.

Step 5: The subgroup and coset markers determine the determinant and the Frobenius exponent

Write
$$
M=
\begin{pmatrix}a&b\\c&e\end{pmatrix},
\qquad
\Delta=\det M=ae+bc\in E^\times. \tag{16}
$$
Since
$$
R(v)=\bigl(M^{-1}v\bigr)^{2^{r-k}},
$$
a direct calculation with (8), using invariance of the absolute trace under Frobenius, gives
$$
B_1(Rx,Ry)=B_{\Delta^{-1}}(x,y). \tag{17}
$$
Thus
$$
\delta=\Delta^{-1}. \tag{18}
$$
Together with $\Psi(s)=\delta\sigma(s)$, this gives the explicit action of the coordinate permutation on the pencil parameter:
$$
\Psi(s)=\Delta^{-1}s^{2^k}. \tag{19}
$$

The subgroup
$$
H=\langle\tau^{2^d-1}\rangle
$$
is invariant under every Frobenius automorphism. Preservation of $\mathscr H$ therefore means
$$
\Psi(H)=H.
$$
By (19), this is equivalent to
$$
\Delta^{-1}H=H,
$$
so
$$
\Delta\in H. \tag{20}
$$
Equivalently, there is a unique integer
$$
0\leq j<\frac{2^r-1}{2^d-1}
$$
such that
$$
\Delta=\tau^{(2^d-1)j}. \tag{21}
$$

Now preserve the coset marker $\mathscr C$. Since $\Delta\in H$, equation (19) gives
$$
\Psi(\tau H)=\tau H
\quad\Longleftrightarrow\quad
\tau^{2^k}H=\tau H.
$$
This is equivalent to
$$
\tau^{2^k-1}\in H,
$$
that is,
$$
2^d-1\mid 2^k-1. \tag{22}
$$
Because $0\leq k<r$ and $d\mid r$, condition (22) holds exactly when
$$
d\mid k. \tag{23}
$$
Indeed, writing $k=qd+s$ with $0\leq s<d$, one has
$$
2^k\equiv2^s\pmod{2^d-1};
$$
if $s>0$, then
$$
0<2^s-1<2^d-1,
$$
so divisibility is impossible. Therefore
$$
k\in\{0,d,2d,\ldots,r-d\}. \tag{24}
$$

Conversely, if (20) and (24) hold, then (19) preserves $E^\times$, $H$, and $\tau H$. The coordinate permutation also preserves Hamming weight and $\mathcal L$, so it preserves every term occurring in $d_n$.

Step 6: State the unique normal form and count the parameters

For an allowed matrix $M$ and allowed exponent $k$, define
$$
\Phi_{M,k}(v)=M v^{2^k}
\qquad(v\in E^2). \tag{25}
$$
Its inverse is
$$
\Phi_{M,k}^{-1}(v)
=\bigl(M^{-1}v\bigr)^{2^{r-k}}, \tag{26}
$$
where for $k=0$ the exponent $2^r$ acts as the identity on $E$.

Every isometry is uniquely of the form
$$
(F_{a,M,k}(x))_v
=a_v+x_{\Phi_{M,k}^{-1}(v)}, \tag{27}
$$
where
$$
a\in X_n,
$$
$$
k=dt,
\qquad
0\leq t<\frac rd,
$$
and
$$
M=
\begin{pmatrix}a_{11}&a_{12}\\a_{21}&a_{22}\end{pmatrix}\in\operatorname{GL}_2(E)
$$
satisfies
$$
a_{11}a_{22}+a_{12}a_{21}
=\tau^{(2^d-1)j}
$$
for some unique
$$
0\leq j<\frac{2^r-1}{2^d-1}. \tag{28}
$$
The translation parameter is $F(0)$, the coordinate permutation is recovered from the weight-$2$ shell, and the semilinear representation has unique Frobenius exponent and unique matrix, so the parameters in (27) are unique.

It remains to count the matrices. Fix a nonzero determinant value $\Delta\in E^\times$. Choose the first column of a $2\times2$ matrix arbitrarily nonzero; there are
$$
q^2-1
$$
choices. For each such first column $(u,v)^T$, the determinant equation
$$
us+vt=\Delta
$$
is one nontrivial affine linear equation in the two entries $(t,s)$ of the second column, so it has exactly $q$ solutions. Therefore the number of matrices with any fixed nonzero determinant is
$$
q(q^2-1). \tag{29}
$$
There are
$$
|H|=\frac{q-1}{2^d-1}
$$
allowed determinant values and
$$
\frac rd
$$
allowed Frobenius exponents. Finally,
$$
|X_n|=2^{n-1}.
$$
Hence
$$
|\operatorname{Iso}(X_n,d_n)|
=2^{n-1}\frac rd\frac{q-1}{2^d-1}q(q^2-1). \tag{30}
$$
Since $q=2^r$ and $n=2^{2r}$,
$$
\boxed{
|\operatorname{Iso}(X_n,d_n)|
=
2^{n+r-1}\frac rd\,
\frac{(2^r-1)(2^{2r}-1)}{2^d-1},
\qquad n=2^{2r}.
} \tag{31}
$$

Final Answer:

For
$$
\Phi_{M,k}(v)=Mv^{2^k},
$$
all isometries, and only the isometries, are
$$
\boxed{
(F_{a,M,k}(x))_v
=a_v+x_{\Phi_{M,k}^{-1}(v)},
}
$$
with the following exact and unique parameter choices:
$$
a\in X_n,
$$
$$
k\in\{0,d,2d,\ldots,r-d\},
$$
and
$$
M=
\begin{pmatrix}a_{11}&a_{12}\\a_{21}&a_{22}\end{pmatrix}\in M_2(E)
$$
with
$$
a_{11}a_{22}+a_{12}a_{21}
=\tau^{(2^d-1)j}
$$
for exactly one
$$
0\leq j<\frac{2^r-1}{2^d-1}.
$$
The determinant condition is nonzero, so such an $M$ is automatically invertible. Moreover,
$$
\boxed{
|\operatorname{Iso}(X_n,d_n)|
=
2^{n+r-1}\frac rd\,
\frac{(2^r-1)(2^{2r}-1)}{2^d-1},
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
where the parameters are exactly
$$
a\in X_n,
\qquad
k=dt\ \text{ with }\ 0\leq t<r/d,
$$
and
$$
M=
\begin{pmatrix}a_{11}&a_{12}\\a_{21}&a_{22}\end{pmatrix}
$$
satisfies
$$
a_{11}a_{22}+a_{12}a_{21}
=\tau^{(2^d-1)j}
$$
for a unique integer
$$
0\leq j<\frac{2^r-1}{2^d-1}.
$$
Each isometry has a unique triple $(a,M,k)$, and
$$
|\operatorname{Iso}(X_n,d_n)|
=
2^{n+r-1}\frac rd\,
\frac{(2^r-1)(2^{2r}-1)}{2^d-1},
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
- Frobenius automorphisms of finite fields
- multiplicative subgroup and coset stabilizers
