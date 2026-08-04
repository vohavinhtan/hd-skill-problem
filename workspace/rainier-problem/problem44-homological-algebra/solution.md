## Steps

Step 1: Convert the middle homology into a finite quotient

Write $R=R_n$ and
$$
S=(\mathbb Z/2^{k}\mathbb Z)[t]/(t^n-1).
$$
Since $R$ is free as an abelian group, multiplication by $2^{k}$ is injective. Projecting a cycle $(x,y)$ to its first coordinate gives
$$
H_{r,k}\cong\ker\bigl(G:S\longrightarrow S\bigr).
$$
Indeed, the cycle equation is $2^{k}y=-Gx$, while a boundary changes the first coordinate by a multiple of $2^{k}$.

For $a,b\in S$, let $\langle a,b\rangle$ be the coefficient of $t^0$ in $ab$, with exponents reduced modulo $n$. This is a perfect pairing and
$$
\langle Ga,b\rangle=\langle a,Gb\rangle.
$$
A functional on $S/GS$ vanishes on $GS$ exactly when its representing element belongs to $\ker(G)$. Therefore $\ker(G)$ is the dual of $S/GS$. Since the dual of every cyclic group $\mathbb Z_{2^j}$ is again $\mathbb Z_{2^j}$, the two finite abelian groups have the same invariant factors. It remains to compute
$$
S/GS=(\mathbb Z/2^{k}\mathbb Z)[t]/(t^n-1,G(t)).
$$

Step 2: Separate the common roots without applying an invalid Chinese remainder split

The two relevant factorizations are
$$
G(t)=(t-1)^4(t+1)^3=(t^2-1)f(t),
$$
where
$$
f(t)=(t-1)^3(t+1)^2,
$$
and
$$
t^n-1=(t^2-1)q(t),\qquad q(t)=\sum_{j=0}^{m-1}t^{2j},\qquad m=2^{r-1}.
$$
Reduction modulo $2^{k}$ makes every odd integer invertible, so it is enough to determine the localized cokernel over $\mathcal O=\mathbb Z_{(2)}$. Multiplication by $t^2-1$ gives an injective map
$$
\mathcal O[t]/(q,f)\longrightarrow
\mathcal O[t]/\bigl((t^2-1)q,(t^2-1)f\bigr).
$$
Injectivity follows by cancelling the nonzero polynomial $t^2-1$ in the integral domain $\mathcal O[t]$. The quotient by its image is $\mathcal O[t]/(t^2-1)$, which is free of rank $2$. The resulting short exact sequence splits as a sequence of $\mathcal O$-modules, so the localized cokernel is
$$
\mathcal O^2\oplus T,\qquad T=\mathcal O[t]/(q,f).
$$
The two free summands will produce two factors of order $2^{k}$. The finite module $T$ determines every remaining factor.

Step 3: Produce an explicit presentation matrix for the finite module

Set $u=t-1$. Then
$$
f(t)=u^3(u+2)^2=u^5+4u^4+4u^3.
$$
The remainder of $q(1+u)$ modulo $f$ has the form
$$
q(1+u)\equiv a_0+a_1u+a_2u^2+a_3u^3+a_4u^4.
$$
The required jet values are
$$
q(1)=m,\qquad q'(1)=m(m-1),\qquad \frac{q''(1)}{2}=\frac{m(m-1)(4m-5)}{6},
$$
and
$$
q(-1)=m,\qquad q'(-1)=-m(m-1).
$$
The first three values determine $a_0,a_1,a_2$. Substitution of $u=-2$ into the polynomial and its derivative gives
$$
-8a_3+16a_4=2a_1-4a_2,
$$
$$
12a_3-32a_4=-2a_1+4a_2.
$$
Solving these two equations gives
$$
\begin{aligned}
a_0&=m,\\
a_1&=m(m-1),\\
a_2&=\frac{m(m-1)(4m-5)}{6},\\
a_3&=\frac{2m(m-1)(m-2)}{3},\\
a_4&=\frac{m(m-1)(m-2)}{6}.
\end{aligned}
$$
In particular, $a_3=4a_4$. Reducing powers with $u^5=-4u^4-4u^3$, multiplication by $q$ on the basis $1,u,u^2,u^3,u^4$ has matrix
$$
M=
\begin{pmatrix}
a_0&0&0&0&0\\
a_1&a_0&0&0&0\\
a_2&a_1&a_0&0&0\\
a_3&a_2-4a_4&a_1&a_0-4a_2+16a_4&-4a_1+16a_2-64a_4\\
a_4&0&a_2-4a_4&a_1-4a_2+16a_4&a_0-4a_1+12a_2-48a_4
\end{pmatrix}.
$$
This matrix presents $T$ over $\mathcal O$.

Step 4: Certify the complete Smith profile

Let $h=2^{r-2}=m/2$ and write $b_i=a_i/h$. The coefficients needed below are
$$
\begin{aligned}
b_0&=2,\\
b_1&=2(m-1),\\
b_2&=\frac{(m-1)(4m-5)}{3},\\
b_3&=\frac{4(m-1)(m-2)}{3},\\
b_4&=\frac{(m-1)(m-2)}{3}.
\end{aligned}
$$
Every entry of $M$ is divisible by $h$. Put $N=M/h$ and select rows $3,4,5$ and columns $1,2,3$. The resulting submatrix is
$$
P=
\begin{pmatrix}
b_2&b_1&b_0\\
b_3&b_2-4b_4&b_1\\
b_4&0&b_2-4b_4
\end{pmatrix},
$$
and expansion along the first row gives
$$
\begin{aligned}
\det P
&=b_2(b_2-4b_4)^2-b_1b_3(b_2-4b_4)+b_1^2b_4-b_0b_4(b_2-4b_4)\\
&=\frac{(m-1)^2(m+1)}{3}.
\end{aligned}
$$
This determinant is odd because $m$ is a power of $2$, so $P$ is invertible over $\mathcal O$.

After moving these three rows to the top, write $N$ in block form
$$
\begin{pmatrix}
P&B\\
C&0
\end{pmatrix}.
$$
Here
$$
B=
\begin{pmatrix}
0&0\\
b_0-4b_2+16b_4&-4b_1+16b_2-64b_4\\
b_1-4b_2+16b_4&b_0-4b_1+12b_2-48b_4
\end{pmatrix}
$$
and
$$
C=
\begin{pmatrix}
b_0&0&0\\
b_1&b_0&0
\end{pmatrix}.
$$
Block row and column operations split off $P$. Substitution of the displayed $b_i$ into $-CP^{-1}B$ gives the exact Schur complement
$$
-CP^{-1}B=
\begin{pmatrix}
0&\dfrac{24}{m^2-1}\\
-\dfrac{4}{m-1}&\dfrac{16}{m-1}
\end{pmatrix}.
$$
Both denominators are odd. The gcd of the four entries has $2$-adic valuation $2$, while the determinant
$$
\frac{96}{(m^2-1)(m-1)}
$$
has valuation $5$. The two Smith exponents of the Schur complement are therefore $2$ and $3$. Together with the three unit factors from $P$,
$$
N\sim\operatorname{diag}(1,1,1,2^2,2^3)
$$
over $\mathcal O$. Multiplying back by $h=2^{r-2}$ shows that the finite module $T$ has cyclic factors of orders
$$
2^{r-2},\quad 2^{r-2},\quad 2^{r-2},\quad 2^r,\quad 2^{r+1}.
$$

Step 5: Reassemble the homology and check the valuation count

The two free summands over $\mathcal O$ become two copies of $\mathbb Z_{2^{k}}$ after reduction modulo $2^{k}$. Since $k\geq r+2$, none of the five finite factors is truncated. The invariant factors are therefore ordered by divisibility as
$$
2^{r-2},\ 2^{r-2},\ 2^{r-2},\ 2^r,\ 2^{r+1},\ 2^k,\ 2^k.
$$
As an independent check, the finite presentation matrix satisfies
$$
v_2(\det M)=5(r-2)+5=5(r-1),
$$
which agrees with
$$
3(r-2)+r+(r+1)=5(r-1).
$$
For the boundary value $r=4$, the finite Smith exponents are $(2,2,2,4,5)$, not $(2,3,3,4,4)$. This rules out the tempting approach that separates $t=1$ and $t=-1$ by a Chinese remainder argument, since their difference is not a unit at the prime $2$.

Final Answer: $\boxed{\mathbb Z_{2^{r-2}}^{3}\oplus\mathbb Z_{2^{r}}\oplus\mathbb Z_{2^{r+1}}\oplus\mathbb Z_{2^{k}}^{2}}$

---

## Answer

$\mathbb Z_{2^{r-2}}^{3}\oplus\mathbb Z_{2^{r}}\oplus\mathbb Z_{2^{r+1}}\oplus\mathbb Z_{2^{k}}^{2}$

---

## Classification

**Problem Type:** Canonicalization or normalization

**Answer Type:** Canonical form

---

## Concepts (1-5)

- Middle homology of a two-generator chain complex
- Duality from a perfect group-ring pairing
- Localization at the prime two
- Smith normal form from a Schur complement
- Repeated-root interaction in polynomial quotients
