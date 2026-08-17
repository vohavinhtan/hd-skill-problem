## Steps

Step 1: Recover the hidden factorization of every consecutive wall

For
$$
A(x)=\lambda+\frac12-(x^2-\lambda)^2-x,
\qquad
B_\alpha(x)=\alpha x-x^2,
$$
one has
$$
A(x)=-x^4+2\lambda x^2-x+c.
$$
Expanding $A(x)B_\alpha(x)$ gives
$$
x^6-\alpha x^5-2\lambda x^4+(2\lambda\alpha+1)x^3
-(\alpha+c)x^2+\alpha cx.
$$
Hence the defining finite-difference equation factors as
$$
\frac{\Delta^4H_{\alpha,s}^{(m)}(x)}{24}
=
(1-sA(x))(1-sB_\alpha(x)).
$$

The polynomial $H_{\alpha,s}^{(m)}$ exists uniquely because $\Delta^4$ maps polynomials of degree at most $10$, modulo cubics, bijectively onto polynomials of degree at most $6$, and the four prescribed values remove the cubic ambiguity.

For
$$
J_j=\{j,j+1,j+2,j+3,j+4\},
\qquad
-m\leq j\leq m+1,
$$
equal spacing gives
$$
[J_j]H_{\alpha,s}^{(m)}
=
\frac{\Delta^4H_{\alpha,s}^{(m)}(j)}{24}
=
(1-sA(j))(1-sB_\alpha(j)).
$$
Write this quantity as $D_j(\alpha,s)$.

Repeated knot insertion expresses every fourth divided difference on five points of $X_m$ as a convex combination of consecutive ones. At $s=0$ all $D_j$ equal $1$, so the oriented matroid is that of the degree-$4$ moment curve and the polytope is simplicial. Therefore the first nonsimplicial time is the first positive zero among the $D_j$.

Consequently
$$
s_\alpha^{(m)}
=
\frac{1}{
\max\left(
\max_j A(j),
\max_j B_\alpha(j)
\right)
},
$$
whenever the displayed maximum is positive.

Step 2: Solve the fixed nonlocal obstruction

For $k\geq0$ put
$$
F(k)=A(-k)
=
\lambda+\frac12-(k^2-\lambda)^2+k.
$$
Then
$$
F(k+1)-F(k)
=
1-(2k+1)(2k^2+2k+1-2\lambda).
$$
Since $\lambda=m(m+1)$, for $k<m$ one has
$$
k(k+1)<\lambda,
$$
so the odd integer
$$
2k^2+2k+1-2\lambda
$$
is negative and therefore $F(k+1)>F(k)$. At $k=m$ that odd integer equals $1$, hence
$$
F(m+1)-F(m)=-2m<0.
$$
It remains positive thereafter, so $F$ decreases for $k\geq m$.

Also
$$
A(k)=A(-k)-2k<A(-k)
\qquad(k>0).
$$
Thus $A$ has the unique global maximum on the allowed window indices at
$$
j=-m.
$$
Its value is
$$
A(-m)
=
m(m+1)+\frac12-m^2+m
=
2m+\frac12.
$$
Denote this fixed obstruction height by
$$
M_A=2m+\frac12.
$$

Step 3: Find when the moving envelope first produces an adjacent double maximum above the obstruction

For fixed $\alpha>0$,
$$
B_\alpha(j)=\alpha j-j^2
$$
is a strictly concave quadratic in the integer variable $j$. Two adjacent integers $q,q+1$ tie exactly when
$$
\alpha q-q^2=\alpha(q+1)-(q+1)^2,
$$
which gives
$$
\alpha=2q+1.
$$
At that value the common maximum of $B_\alpha$ is
$$
q(q+1).
$$
For non-odd $\alpha$, the integer maximizer of $B_\alpha$ is unique.

Let $p$ be the least nonnegative integer satisfying
$$
p(p+1)\geq2m+1.
$$
Equivalently,
$$
p=
\left\lceil
\frac{\sqrt{8m+5}-1}{2}
\right\rceil.
$$
Then
$$
(p-1)p\leq2m
$$
while
$$
p(p+1)\geq2m+1>2m+\frac12=M_A.
$$

At every earlier adjacent tie $\alpha=2q+1$ with $q<p$,
$$
\max_jB_\alpha(j)=q(q+1)\leq2m<M_A.
$$
Thus the first wall is still the unique $A$-wall at $j=-m$, so no six-vertex first facet occurs.

Between two adjacent-tie parameters, $B_\alpha$ has a unique maximizing index. Even if its maximum overtakes $M_A$, the first event then consists of a single five-window. At the isolated crossover with $M_A$, the $A$-maximizer is $-m$ and the $B$-maximizer is nonnegative, so the two critical windows are not adjacent and cannot form one six-vertex facet.

At
$$
\alpha_m=2p+1,
$$
the unique global maxima among all $A(j)$ and $B_{\alpha_m}(j)$ are
$$
B_{\alpha_m}(p)
=
B_{\alpha_m}(p+1)
=
p(p+1),
$$
because this integer is strictly larger than $M_A$. Hence this is the least parameter at which the first wall is an adjacent double wall.

Step 4: Prove that the first double wall is one unique six-vertex supporting facet

Put
$$
s_*=\frac1{p(p+1)}.
$$
At $(\alpha_m,s_*)$,
$$
D_p=D_{p+1}=0,
$$
and every other consecutive divided difference is strictly positive.

The two critical windows are
$$
J_p=\{p,p+1,p+2,p+3,p+4\},
$$
$$
J_{p+1}=\{p+1,p+2,p+3,p+4,p+5\}.
$$
Their shared four points determine a unique cubic hyperplane. Since both fourth divided differences vanish, that same hyperplane contains the two remaining endpoints. Therefore its six contact coordinates are
$$
C_m=\{p,p+1,p+2,p+3,p+4,p+5\}.
$$

Take the shared four-set
$$
T=\{p+1,p+2,p+3,p+4\}.
$$
For $y\in X_m\setminus C_m$, knot insertion gives
$$
[T\cup\{y\}]H_{\alpha_m,s_*}^{(m)}>0.
$$
Such a $y$ lies outside the interval spanned by $T$, so
$$
\prod_{x\in T}(y-x)>0.
$$
The interpolation remainder
$$
H_{\alpha_m,s_*}^{(m)}(y)
-I_TH_{\alpha_m,s_*}^{(m)}(y)
=
[T\cup\{y\}]H_{\alpha_m,s_*}^{(m)}
\prod_{x\in T}(y-x)
$$
is strictly positive. Hence the common hyperplane is supporting and contains exactly those six vertices.

Any other nonsimplicial facet would contain a zero five-point divided difference. Since the only zero consecutive differences are $D_p,D_{p+1}$, knot insertion forces every zero five-set to lie inside $C_m$, hence in the same hyperplane. The six-vertex facet is unique and every other facet is tetrahedral.

Step 5: Determine the local circuit flip

Let
$$
y_1<y_2<y_3<y_4<y_5<y_6
$$
be the elements of $C_m$, and let $\ell$ be the critical supporting cubic. Differentiate with respect to $s$. For $j=p,p+1$,
$$
D_j(s)=(1-sA(j))(1-sp(p+1)),
$$
so at $s=s_*$
$$
D_j'(s_*)
=
-p(p+1)\left(1-\frac{A(j)}{p(p+1)}\right)<0.
$$
Knot insertion then implies that the fourth divided difference of
$\partial_sH_{\alpha_m,s}^{(m)}|_{s=s_*}$ is negative on every five-subset of $C_m$.

Let
$$
T=C_m\setminus\{y_j,y_k\},
\qquad j<k.
$$
For $s=s_*+\delta$, the residual at either omitted critical vertex has, to first order in $\delta$, the sign opposite to
$$
\delta\prod_{x\in T}(y-x).
$$
All residuals outside $C_m$ remain positive for sufficiently small $|\delta|$.

For $\delta<0$, both omitted products must therefore be positive. Their signs are
$$
(-1)^{5-j},
\qquad
(-1)^{6-k},
$$
so the admissible omitted pairs are
$$
(1,2),(1,4),(1,6),(3,4),(3,6),(5,6).
$$
There are $6$ tetrahedral facets.

For $\delta>0$, both products must be negative, giving
$$
(2,3),(2,5),(4,5).
$$
There are $3$ tetrahedral facets.

Substituting the explicit value of $p$ gives the requested pair.

Final Answer: $\boxed{\left(\left\{k+\left\lceil\frac{\sqrt{8m+5}-1}{2}\right\rceil:0\leq k\leq5\right\},\,2\left\lceil\frac{\sqrt{8m+5}-1}{2}\right\rceil+1\right)}$

---

## Answer

$\left(\left\{k+\left\lceil\frac{\sqrt{8m+5}-1}{2}\right\rceil:0\leq k\leq5\right\},\,2\left\lceil\frac{\sqrt{8m+5}-1}{2}\right\rceil+1\right)$

---

## Classification

**Problem Type:** Optimization

**Answer Type:** Tuple or ordered list

---

## Solution Concepts

- finite differences
- divided differences
- discrete upper envelopes
- supporting hyperplanes
- circuit flips
