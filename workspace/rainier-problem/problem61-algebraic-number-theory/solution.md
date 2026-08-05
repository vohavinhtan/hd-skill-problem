## Steps

Step 1: Classify the functions in $\mathcal H_n$
For $h\in\mathcal H_n$, put
$$
B_h(a,b)=D_aD_bh(0).
$$
The vanishing of all third differences makes $D_aD_bh(x)$ independent of $x$. The identity
$$
D_{a+a'}=D_a+D_{a'}+D_aD_{a'}
$$
then shows that $B_h$ is $\mathbb F_2$-bilinear; also $B_h(a,a)=0$, so it is alternating.

If $[a,b]=0$, the second defining condition applies, hence $B_h(a,b)=0$. In particular, $B_h$ vanishes on each coordinate axis. Thus
$$
B_h((x,y),(x',y'))=\beta(x,y')+\beta(x',y)
$$
for an $\mathbb F_2$-bilinear map $\beta:K\times K\to\mathbb F_2$. By nondegeneracy of the trace pairing, $\beta(x,y)=\operatorname{Tr}(xT(y))$ for a unique $\mathbb F_2$-linear $T:K\to K$. Since $(x,y)$ and $(tx,ty)$ are $K$-dependent,
$$
0=B_h((x,y),(tx,ty))
=\operatorname{Tr}\bigl(x(T(ty)+tT(y))\bigr).
$$
This holds for every $x$, so $T(ty)=tT(y)$ and $T(y)=ey$ for some $e\in K$. Therefore
$$
B_h(a,b)=\operatorname{Tr}(e[a,b]).
$$

Let $E^\perp=\{z\in K:\operatorname{Tr}(ez)=0\text{ for every }e\in E\}$. Every $z\in K$ occurs as a bracket, so the remaining condition says that the coefficient of $B_h$ lies in $(E^\perp)^\perp=E$. For $e\in E$, set $Q_e(x,y)=\operatorname{Tr}(exy)$. Functions with the same polar form differ by an affine function, hence
$$
\mathcal H_n=
\{Q_e+\operatorname{Tr}(sx+ty)+c:
e\in E,\ s,t\in K,\ c\in\mathbb F_2\}.
$$
Consequently
$$
|\mathcal H_n|=8\cdot q^2\cdot2=16q^2.
$$

Step 2: Identify the required signed cycle type
Let
$$
n_b=\#\{u\in U:(r_1(u),r_2(u),r_3(u))=b\},
\qquad b\in\mathbb F_2^3.
$$
The seven zero-count conditions are equivalent to
$$
\sum_{u\in U}(-1)^{a_1r_1(u)+a_2r_2(u)+a_3r_3(u)}
=q(-1)^{1+a_1+a_2+a_3}
$$
for every $a\neq0$. Fourier inversion on $\mathbb F_2^3$ gives
$$
n_{111}=\frac{q(q-7)}{8},
\qquad
n_b=\frac{q(q+1)}{8}\quad(b\neq111).
$$
Since $q\geq8$, all eight bit patterns occur.

In particular $\Pi_{111}=(8,4,2)$ occurs. In the signed action, a negative cycle of length $d$ gives one cycle of length $2d$, while a positive cycle gives two cycles of length $d$. Hence $(8,4,2)$ forces the underlying permutation to have cycle type $(4,2,1)$, with all three cycle signs negative. Ordering these cycles by lengths $4,2,1$, their sign functions must be $r_1,r_2,r_3$, because the other seven prescribed partitions give exactly the other seven sign triples.

There are $7!/(4\cdot2)=630$ permutations of type $(4,2,1)$. For a fixed one, the map from the seven coordinate functions to the three cycle sums has fiber
$$
|\mathcal H_n|^{(4-1)+(2-1)}=|\mathcal H_n|^4.
$$
If $N$ is the number of valid ordered triples $(r_1,r_2,r_3)$, Chebotarev therefore gives
$$
\delta=\frac{630|\mathcal H_n|^4N}{7!|\mathcal H_n|^7}
=\frac{N}{8|\mathcal H_n|^3}.
$$

Step 3: Convert the seven balance conditions to line equations
Write
$$
r_i=Q_{e_i}+\operatorname{Tr}(s_ix+t_iy)+c_i.
$$
For $e\neq0$,
$$
\sum_{x,y\in K}(-1)^{Q_e(x,y)+\operatorname{Tr}(sx+ty)+c}
=q(-1)^{c+\operatorname{Tr}(st/e)},
$$
because the sum over $y$ vanishes unless $x=t/e$, when it equals $q$. Therefore every nonzero combination of the $r_i$ can have Walsh magnitude $q$ only if
$$
a_1e_1+a_2e_2+a_3e_3\neq0
\qquad(a\neq0).
$$
Thus $(e_1,e_2,e_3)$ is an ordered $\mathbb F_2$-basis of $E$, giving
$$
|\operatorname{GL}(3,2)|=(8-1)(8-2)(8-4)=168
$$
choices.

Fix such a basis and identify $a\in\mathbb F_2^3$ with $e=\sum a_ie_i\in E$. The triples $(s_i)$ and $(t_i)$ become arbitrary $\mathbb F_2$-linear maps $S,T:E\to K$. Put
$$
\phi(e)=\operatorname{Tr}\left(\frac{S(e)T(e)}{e}\right)
\qquad(e\in E^\times).
$$
Let $C(e)=\sum a_ic_i$ and $\lambda(e)=a_1+a_2+a_3$. The required Walsh sign is equivalent to
$$
C(e)+\phi(e)=1+\lambda(e)
\qquad(e\neq0).
$$
Since $C$ and $\lambda$ are linear, the constants $c_i$ exist uniquely exactly when $1+\phi$ is the restriction of a linear functional on $E$. This happens exactly when, on every two-dimensional subspace $L\subset E$,
$$
\sum_{e\in L\setminus\{0\}}\phi(e)=1.
$$
Indeed, the three nonzero elements of $L$ are $x,y,x+y$, and the displayed equation is precisely the additivity of $1+\phi$. Let $M$ be the number of pairs of linear maps $(S,T)$ satisfying these seven line equations. Then
$$
N=168M.
$$

Step 4: Express $M$ through a rank character sum
Identify $E$ with $\mathbb F_2^3$ using a fixed basis, and let $v(e)$ be the coordinate column of $e$. The incidence vector of a line $\ker(\ell)\setminus\{0\}$ is the function $1+\ell$ on $E^\times$. All rows therefore lie in the four-dimensional space of affine functions. Their sum is the constant function $1$, because every point lies on three lines, and their pairwise sums generate the three-dimensional space of linear functions. Hence the row space $\mathcal C$ is exactly the affine-function space. Its sixteen words are
$$
0,\quad 7\text{ lines},\quad 7\text{ line complements},\quad E^\times,
$$
with weights $0,3,4,7$.

For $c\in\mathcal C$, define
$$
\Gamma(c)=\sum_{e\in c}\frac{v(e)v(e)^T}{e}\in M_3(E).
$$
If $s,t\in K^3$ are the coordinate vectors of $S,T$, then
$$
\sum_{e\in c}\phi(e)=\operatorname{Tr}\bigl(s^T\Gamma(c)t\bigr).
$$
The character sum over all $s,t$ is
$$
\sum_{s,t\in K^3}(-1)^{\operatorname{Tr}(s^T\Gamma(c)t)}
=q^{6-\operatorname{rank}\Gamma(c)}.
$$
For fixed $s$, the sum over $t$ is $q^3$ exactly when $\Gamma(c)^Ts=0$, and is zero otherwise.

Filtering the four independent line equations gives
$$
M=\frac1{16}\sum_{c\in\mathcal C}
(-1)^{|c|}q^{6-\operatorname{rank}\Gamma(c)}.
$$
The sign is well defined because each generating line has three points, so the parity of the selected equations equals the parity of the resulting support.

Step 5: Certify the ranks in the character sum
Write $E=\mathbb F_2(\omega)$ with $\omega^3=\omega+1$, using the basis $(1,\omega,\omega^2)$. Multiplication by $\lambda\in E^\times$ sends lines to lines and
$$
\Gamma(\lambda c)=\lambda^{-1}M_\lambda\Gamma(c)M_\lambda^T,
$$
where $M_\lambda$ is the matrix of multiplication by $\lambda$. A nonidentity $\lambda\in E^\times$ has minimal polynomial of degree $3$, so multiplication by $\lambda$ has no proper nonzero invariant $\mathbb F_2$-subspace. Thus $E^\times$ acts transitively on the seven lines, and it suffices to treat
$$
L_0=\{1,\omega,1+\omega\}.
$$
Using $\omega^{-1}=\omega^2+1$ and $(1+\omega)^{-1}=\omega^2+\omega$ in the definition of $\Gamma$ gives
$$
\Gamma(L_0)
=(\omega^2+\omega+1)
\begin{pmatrix}1\\ \omega^2+1\\ 0\end{pmatrix}
\begin{pmatrix}1&\omega^2+1&0\end{pmatrix},
$$
so every line has rank $1$.

The inverses of
$$
1,\omega,1+\omega,\omega^2,\omega^2+1,\omega^2+\omega,\omega^2+\omega+1
$$
are respectively
$$
1,\omega^2+1,\omega^2+\omega,\omega^2+\omega+1,\omega,\omega+1,\omega^2.
$$
Substitution in the seven-term definition of $\Gamma$ yields
$$
\Gamma(E^\times)=
\begin{pmatrix}
1&\omega&\omega^2+\omega\\
\omega&\omega^2&\omega^2+\omega+1\\
\omega^2+\omega&\omega^2+\omega+1&\omega
\end{pmatrix}
=
\begin{pmatrix}1\\ \omega\\ \omega^2+\omega\end{pmatrix}
\begin{pmatrix}1&\omega&\omega^2+\omega\end{pmatrix},
$$
so it also has rank $1$.

Finally $\Gamma(E^\times\setminus L_0)=\Gamma(E^\times)+\Gamma(L_0)$. Its image is contained in the span of the two displayed column vectors, so its rank is at most $2$. The minor in rows and columns $1,3$ equals
$$
(\omega^2+\omega)\omega+(\omega^2+\omega)^2=\omega^2+1\neq0,
$$
so its rank is $2$. Multiplication by $E^\times$ carries this conclusion to all seven line complements.

Step 6: Complete the count and check the boundary case
The rank and weight classes from Steps 4 and 5 give
$$
\begin{aligned}
M
&=\frac{q^6-7q^5+7q^4-q^5}{16}\\
&=\frac{q^4(q-1)(q-7)}{16}.
\end{aligned}
$$
Using $N=168M$ and $|\mathcal H_n|=16q^2$ in the Chebotarev proportion from Step 2,
$$
\begin{aligned}
\delta
&=\frac{168M}{8(16q^2)^3}\\
&=\frac{21(q-1)(q-7)}{65536q^2}.
\end{aligned}
$$
The smallest case $q=8$ has $n_{111}=1$, so the cycle-type argument still applies at the boundary. An independent exhaustive check over the $8^6$ pairs of linear maps $E\to E$ gives $M=1792$, agreeing with $8^4(8-1)(8-7)/16$. Dependent polar coefficients are impossible because one nonzero combination would then be affine, whose Walsh sum is $0$ or $\pm q^2$ rather than $\pm q$.

Final Answer: $\boxed{\frac{21(q-1)(q-7)}{65536q^2}}$

---

## Answer

$\frac{21(q-1)(q-7)}{65536q^2}$

---

## Classification

**Problem Type:** Symbolic derivation

**Answer Type:** Polynomial or rational function

---

## Solution Concepts

- quadratic Boolean functions
- finite-field trace pairing
- Walsh transform
- Fano plane incidence code
- Chebotarev density theorem