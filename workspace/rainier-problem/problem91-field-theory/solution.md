## Steps

Step 1: Separate the tame cyclotomic layer

Choose
$$
\alpha^p=p,
\qquad
\beta^p=1+p,
$$
and let $\zeta$ be a primitive $p$th root of unity.

The roots of the first factor are
$$
\zeta^i\alpha,
\qquad
0\leq i<p.
$$
Hence their ratios show that the splitting field contains $\zeta$. Conversely, after adjoining $\zeta,\alpha,\beta$, both factors split. Therefore
$$
L_p=M(\alpha,\beta),
\qquad
M=\mathbb Q_p(\zeta).
$$

Put
$$
\lambda=\zeta-1.
$$
The polynomial
$$
\Phi_p(1+T)
=
\frac{(1+T)^p-1}{T}
$$
is Eisenstein over $\mathbb Q_p$. Hence
$$
[M:K]=p-1,
$$
the extension $M/K$ is totally ramified, and $\lambda$ is a uniformizer of $M$. Normalize
$$
v_M(\lambda)=1.
$$
Then
$$
v_M(p)=p-1.
$$

Since $p\nmid p-1$, the extension is tame, so
$$
d(M/K)=p-2.
$$

Step 2: Show that the two wild directions are independent

Because $\mu_p\subset M$, adjoining a $p$th root of an element depends only on its class in
$$
M^\times/M^{\times p}.
$$

We claim that the classes of
$$
p
\qquad\text{and}\qquad
1+p
$$
are independent.

First, $1+p$ is not a $p$th power in $M$. If
$$
\beta^p=1+p
$$
and
$$
z=\beta-1,
$$
then
$$
(1+z)^p=1+p,
$$
so
$$
z^p+\binom p{p-1}z^{p-1}+\cdots+\binom p1z-p=0.
$$
For $1\leq j<p$,
$$
v_M\left(\binom pj\right)=p-1.
$$
Thus the Newton polygon has the single segment joining
$$
(0,p-1)
\qquad\text{to}\qquad
(p,0).
$$
Its slope is
$$
-\frac{p-1}{p}.
$$
If the polynomial had a factor of degree $d<p$, the valuation of its constant term would be
$$
\frac{d(p-1)}p,
$$
which cannot be integral. Hence the polynomial is irreducible and
$$
[M(\beta):M]=p.
$$

Now suppose
$$
p^a(1+p)^b\in M^{\times p},
\qquad
0\leq a,b<p.
$$
Taking valuations gives
$$
p\mid a(p-1).
$$
Therefore
$$
a=0.
$$
If $b\ne0$, choose integers $c,d$ with
$$
bc=1+pd.
$$
Then $(1+p)^b\in M^{\times p}$ would imply
$$
1+p
=
\frac{\left((1+p)^b\right)^c}{\left((1+p)^d\right)^p}
\in M^{\times p},
$$
contradicting the preceding paragraph. Hence
$$
a=b=0.
$$

Therefore
$$
[L_p:M]=p^2,
\qquad
\operatorname{Gal}(L_p/M)\cong C_p^2.
$$

Step 3: Compute the break of every quotient involving the class of $p$

Let
$$
1\leq a<p,
\qquad
0\leq b<p,
$$
and consider
$$
N=M(\theta),
\qquad
\theta^p=p^a(1+p)^b.
$$
The right side has valuation
$$
a(p-1),
$$
which is prime to $p$. Thus $N/M$ is totally ramified of degree $p$.

Normalize $v_N$ integrally. Then
$$
v_N(\lambda)=p,
\qquad
v_N(\theta)=a(p-1).
$$
Choose integers $r,s$ such that
$$
pr+a(p-1)s=1.
$$
Modulo $p$, this identity shows
$$
s\not\equiv0\pmod p.
$$
Hence
$$
\varpi=\lambda^r\theta^s
$$
has valuation $1$ and is a uniformizer of $N$.

Every nontrivial automorphism of $N/M$ has the form
$$
\sigma_c(\theta)=\zeta^c\theta,
\qquad
c\in\mathbb F_p^\times.
$$
Therefore
$$
\sigma_c(\varpi)-\varpi
=
(\zeta^{cs}-1)\varpi.
$$
Since $cs\not\equiv0\pmod p$,
$$
v_N(\zeta^{cs}-1)=v_N(\lambda)=p.
$$
Thus
$$
v_N(\sigma_c(\varpi)-\varpi)=p+1.
$$

So every such cyclic quotient has lower ramification break
$$
p
$$
and conductor exponent
$$
p+1.
$$

Step 4: Compute the exceptional break coming from $1+p$

Now take
$$
N_0=M(\beta),
\qquad
\beta^p=1+p,
$$
and put
$$
z=\beta-1.
$$
The Newton polygon in Step 2 gives
$$
v_{N_0}(z)=p-1,
$$
while
$$
v_{N_0}(\lambda)=p.
$$
Therefore
$$
\varpi_0=\frac{\lambda}{z}
$$
is a uniformizer.

For
$$
\sigma_c(\beta)=\zeta^c\beta,
\qquad
c\ne0,
$$
we have
$$
\sigma_c(z)-z
=
(\zeta^c-1)\beta.
$$
Since $\beta$ is a unit,
$$
v_{N_0}(\sigma_c(z)-z)=p.
$$
Also
$$
v_{N_0}(\sigma_c(z))=v_{N_0}(z)=p-1.
$$
Hence
$$
v_{N_0}\left(\sigma_c(\varpi_0)-\varpi_0\right)
=
p+p-2(p-1)
=
2.
$$

Thus this unique projective degree-$p$ direction has lower break
$$
1
$$
and conductor exponent
$$
2.
$$

Step 5: Sum the conductors and descend to $\mathbb Q_p$

The character group of
$$
G=\operatorname{Gal}(L_p/M)\cong C_p^2
$$
has $p^2-1$ nontrivial characters.

The single projective character direction corresponding to the class of $1+p$ contains
$$
p-1
$$
nontrivial characters, all of conductor $2$.

Every other projective direction contains a nonzero coefficient of the class of $p$. By Step 3 its conductor is $p+1$. Hence there are
$$
p^2-p
$$
characters of conductor $p+1$.

For a finite abelian local extension, the regular representation is the direct sum of its characters, so the conductor-discriminant formula gives
$$
d(L_p/M)
=
\sum_{\chi\ne1}f(\chi).
$$
Therefore
$$
d(L_p/M)
=
2(p-1)+(p^2-p)(p+1).
$$
Expanding,
$$
d(L_p/M)=p^3+p-2.
$$

Finally, the tower formula for differents gives
$$
d(L_p/K)
=
d(L_p/M)
+
e(L_p/M)d(M/K).
$$
Using
$$
e(L_p/M)=p^2
$$
and Step 1,
$$
d_p
=
p^3+p-2+p^2(p-2).
$$
Thus
$$
d_p=2p^3-2p^2+p-2.
$$

Final Answer: $\boxed{2p^3-2p^2+p-2}$

---

## Answer

$2p^3-2p^2+p-2$

---

## Classification

**Problem Type:** Exact computation

**Answer Type:** Exact scalar

---

## Solution Concepts

- p-adic local fields
- cyclotomic extensions
- wild ramification
- ramification breaks
- conductor-discriminant formula
