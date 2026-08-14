## Steps

Step 1: Identify every five-point degeneracy parameter

Fix five distinct indices and write their corresponding abscissas as
$y_1,\ldots,y_5$. Let
$$
e_1=\sum_{i=1}^5y_i,
\qquad
e_2=\sum_{1\le i<j\le5}y_iy_j,
\qquad
Q=\sum_{i=1}^5y_i^2.
$$
The five points are affinely dependent exactly when there is a polynomial
$p$ of degree at most $3$ such that
$$
x^6+\lambda x^5-p(x)
$$
vanishes at all $y_i$. If
$$
P(x)=\prod_{i=1}^5(x-y_i)
=x^5-e_1x^4+e_2x^3-\cdots,
$$
this is equivalent to
$$
x^6+\lambda x^5-p(x)=P(x)(x+c)
$$
for some real $c$. Comparing the coefficients of $x^5$ and $x^4$ gives
$$
c-e_1=\lambda,
\qquad
e_2-ce_1=0.
\tag{1}
$$
If $e_1=0$, then $e_2=-Q/2<0$, so (1) is impossible. If $e_1\ne0$,
then
$$
\lambda
=
\frac{e_2}{e_1}-e_1
=
-\frac{e_1^2-e_2}{e_1}
=
-\frac{e_1^2+Q}{2e_1}.
\tag{2}
$$
Thus the unique degeneracy parameter for the five-set $E$ is exactly
$\Lambda(E)$.

The oriented $5\times5$ determinant for these points is, up to the
nonzero Vandermonde factor in the $y_i$,
$$
D_\lambda(E)
=
h_2(E)+\lambda e_1(E),
\qquad
h_2(E)=e_1(E)^2-e_2(E)
=\frac{e_1(E)^2+\sum_{r\in E}x_r^2}{2}>0.
\tag{3}
$$
Hence at $\lambda=0$ every five-point orientation has the same sign as
for the ordinary moment curve $(x,x^2,x^3,x^4)$.

Step 2: Compress the global sign problem to consecutive five-blocks

For a five-set $E$, put
$$
S_E=\sum_{r\in E}x_r,
\qquad
Q_E=\sum_{r\in E}x_r^2.
$$
By (3),
$$
2D_\lambda(E)=S_E^2+Q_E+2\lambda S_E.
\tag{4}
$$
For fixed $\lambda$, choose among all five-sets minimizing the right side
of (4) one whose selected sample values have the smallest span. We claim
that this minimizing set is consecutive. Otherwise there is an unselected
sample value $z$ strictly between its smallest selected value $u$ and its
largest selected value $v$. Let $S$ be the sum of the five selected
values. Replacing $u$ by $z$ changes (4) by
$$
2(z-u)(S+\lambda+z),
\tag{5}
$$
whereas replacing $v$ by $z$ changes it by
$$
2(z-v)(S+\lambda+z).
\tag{6}
$$
Since $z-u>0$ and $z-v<0$, one of (5), (6) is nonpositive. It cannot be
negative, by minimality of the original five-set. Hence one replacement
has change $0$; it is another minimizer, but replacing either extreme by
an interior sample value strictly shortens the selected span, a
contradiction. Thus a minimizing five-set is consecutive.

Consequently
$$
D_\lambda(E)>0\quad\text{for every five-set }E
$$
if and only if it holds for every block
$$
B_k=\{k-2,k-1,k,k+1,k+2\},
\qquad
3\le k\le2m-1.
\tag{7}
$$

Step 3: Compute and order the consecutive-block thresholds

Put
$$
C=1+2\cos(2\delta)+2\cos(4\delta),
\qquad
D=1+2\cos(4\delta)+2\cos(8\delta).
$$
The identities $C=\sin(5\delta)/\sin\delta$ and
$D=\sin(10\delta)/\sin(2\delta)$ show that $C,D>0$. For $B_k$,
$$
S_k:=\sum_{r\in B_k}x_r=C\cos(2k\delta),
\tag{8}
$$
and
$$
Q_k:=\sum_{r\in B_k}x_r^2
=\frac52+\frac D2\cos(4k\delta).
\tag{9}
$$
Set
$$
\nu_k=|\cos(2k\delta)|,
\qquad
R(\nu)=a\nu+\frac b\nu,
$$
where
$$
a=\frac{C^2+D}{2C},
\qquad
b=\frac{5-D}{4C}.
$$
Then
$$
\frac{h_2(B_k)}{|S_k|}=R(\nu_k).
\tag{10}
$$

Let $c=\cos(2\delta)$. Algebra gives
$$
a=4c^2-1,
\qquad
\nu_*^2:=\frac ba
=
\frac{(1-c^2)(4c^2+1)}
{(4c^2+2c-1)(4c^2-1)}.
\tag{11}
$$
Thus $R$ decreases on $(0,\nu_*)$ and increases on $(\nu_*,\infty)$.

We need only coarse but strict bounds on $\nu_*$. Since
$$
c>1-2\delta^2
\ge1-\frac{2\pi^2}{27^2}
>1-\frac{20}{729}>rac{97}{100},
$$
we have
$$
\frac{4c^2+1}{(4c^2+2c-1)(4c^2-1)}>\frac13,
\tag{12}
$$
because the difference after cross-multiplication is
$$
-2(c-1)(8c^3+12c^2+2c+1)>0.
$$
The same fraction is less than $3/8$. After cross-multiplication this is
$$
P(c):=48c^4+24c^3-56c^2-6c-5>0.
$$
For $c\ge97/100$,
$$
P'(c)=2(96c^3+36c^2-56c-3)>0,
$$
and
$$
P(97/100)=\frac{5548793}{6250000}>0.
$$
Since $2\delta<1/4$,
$$
\sin(2\delta)>
2\delta\left(1-\frac1{96}\right)
>\frac{39}{20}\delta.
$$
Combining this with (11), (12), and $\sin(2\delta)<2\delta$ yields
$$
\frac54\delta^2<\nu_*^2<\frac32\delta^2.
\tag{13}
$$
Also $3\delta/2<1/4$, so
$$
\sin\frac{3\delta}{2}>\frac56\cdot\frac{3\delta}{2}=\frac54\delta,
$$
and hence
$$
\sin^2\frac{3\delta}{2}>\frac32\delta^2.
$$
Finally,
$$
\sin\frac{\delta}{2}\sin\frac{5\delta}{2}
<\frac54\delta^2.
\tag{14}
$$

Step 4: Determine the first lower and upper degeneracies

Because $n=4m+3$,
$$
\cos(2m\delta)=\sin\frac{3\delta}{2}>0,
\qquad
\cos(2(m+1)\delta)=-\sin\frac{\delta}{2}<0,
$$
and
$$
\cos(2(m+2)\delta)=-\sin\frac{5\delta}{2}<0.
\tag{15}
$$
For $k\le m$,
$$
\nu_k\ge\nu_m=\sin\frac{3\delta}{2}>\nu_*,
$$
so $R(\nu_k)$ is smallest on the positive-sum side exactly at $k=m$.
Thus the strongest lower bound is
$$
\lambda>
\Lambda(B_m)
=
\Lambda(\{m-2,m-1,m,m+1,m+2\}).
\tag{16}
$$

On the negative-sum side,
$$
\nu_{m+1}=\sin\frac{\delta}{2},
\qquad
\nu_{m+2}=\sin\frac{5\delta}{2},
$$
and $\nu_k\ge\nu_{m+2}>\nu_*$ for $k\ge m+2$. Hence only the first two
negative blocks need comparison. From the definition of $R$,
$$
R(\nu_{m+2})-R(\nu_{m+1})
=
(\nu_{m+2}-\nu_{m+1})
\left(a-\frac{b}{\nu_{m+1}\nu_{m+2}}\right).
$$
By (13), (14),
$$
\frac ba=\nu_*^2>\nu_{m+1}\nu_{m+2},
$$
so this difference is negative. Therefore the strongest upper bound is
$$
\lambda<
\Lambda(B_{m+2})
=
\Lambda(\{m,m+1,m+2,m+3,m+4\}).
\tag{17}
$$
By Step 2, every five-point orientation agrees with its value at $0$
precisely throughout
$$
I=
\left(\Lambda(B_m),\Lambda(B_{m+2})\right).
\tag{18}
$$

Step 5: Convert orientation stability into facet stability and show maximality

For a fixed four-set $F$, adjoining a fifth vertex and taking the oriented
$5\times5$ determinant tells on which side of the affine hyperplane
through $F$ that vertex lies. Therefore (18) preserves every side
relation and hence preserves $\mathcal F(\lambda)$.

At $\lambda=0$ these side signs are the same as for the ordinary moment
curve. Four consecutive vertices therefore form a facet: for consecutive
abscissas $x_j,x_{j+1},x_{j+2},x_{j+3}$, the polynomial
$$
\prod_{r=j}^{j+3}(x-x_r)
$$
has one sign at every other sample node.

It remains to see that each endpoint really destroys such a facet. Let
$v=\sin(3\delta/2)$ and $c=\cos(2\delta)$. For $B_m$ we have
$S_{B_m}=Cv$ and, by (10),
$$
\Lambda(B_m)=-av-\frac bv.
$$
Since $C-a=2c$, at the left endpoint
$$
S_{B_m}+\Lambda(B_m)+x_{2m+1}
=2cv-\frac bv-\cos\delta<0,
$$
because $2cv<3\delta<\cos\delta$. Replacing the vertex $m+2$ in
$B_m$ by the vertex $2m+1$ therefore gives a strictly positive value in
(4), while the determinant for $B_m$ changes sign immediately to the
left. Hence the facet
$$
\{m-2,m-1,m,m+1\}
$$
loses its supporting property there.

For the right endpoint put $u=\sin(5\delta/2)$. Then
$S_{B_{m+2}}=-Cu$ and
$$
\Lambda(B_{m+2})=au+\frac bu.
$$
Again using $C-a=2c$,
$$
S_{B_{m+2}}+\Lambda(B_{m+2})+x_1
=c(1-2u)+\frac bu>0,
$$
because $u<1/2$. Thus, when the vertex $m$ crosses the hyperplane through
$$
\{m+1,m+2,m+3,m+4\},
$$
the vertex $1$ remains strictly on its old side, so this facet is lost.
Therefore (18) is the largest possible open stability interval.

Final Answer:
$$
\boxed{
\left(
\Lambda(\{m-2,m-1,m,m+1,m+2\}),
\Lambda(\{m,m+1,m+2,m+3,m+4\})
\right)
}.
$$

---

## Answer

$\left(\Lambda(\{m-2,m-1,m,m+1,m+2\}),\Lambda(\{m,m+1,m+2,m+3,m+4\})\right)$

---

## Classification

**Problem Type:** Parameter identification

**Answer Type:** Interval or region description

---

## Solution Concepts

- generalized moment-curve orientations
- five-point affine-dependence thresholds
- gap-compression by an exchange identity
- trigonometric block extremization
- facet stability in four-dimensional convex hulls
