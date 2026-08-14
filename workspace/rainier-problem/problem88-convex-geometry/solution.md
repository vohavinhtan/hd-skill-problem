## Steps

Step 1: Identify every five-point degeneracy parameter

Fix five distinct abscissas $y_1,\ldots,y_5$ and write
$$
e_1=\sum_{i=1}^5y_i,
\qquad
e_2=\sum_{1\le i<j\le5}y_iy_j,
\qquad
Q=\sum_{i=1}^5y_i^2.
$$
The corresponding five points are affinely dependent exactly when
$x^6+\lambda x^5-p(x)$, for some polynomial $p$ of degree at most $3$,
vanishes at all $y_i$. Writing
$$
\prod_{i=1}^5(x-y_i)=x^5-e_1x^4+e_2x^3-\cdots,
$$
this is equivalent to
$$
x^6+\lambda x^5-p(x)
=\prod_{i=1}^5(x-y_i)(x+c)
$$
for some $c$. The $x^5$ and $x^4$ coefficients give
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
=\frac{e_2}{e_1}-e_1
=-\frac{e_1^2+Q}{2e_1}.
\tag{2}
$$
Thus the unique degeneracy parameter of a five-set $E$ is $\Lambda(E)$.

Equivalently, after dividing the oriented determinant by its nonzero
Vandermonde factor, its sign is the sign of
$$
D_\lambda(E)
=h_2(E)+\lambda e_1(E),
\qquad
h_2(E)=\frac{e_1(E)^2+\sum_{r\in E}x_r^2}{2}>0.
\tag{3}
$$
Hence at $\lambda=0$ all five-point orientations agree with those of the
ordinary moment curve $(x,x^2,x^3,x^4)$.

Step 2: Compress the global problem to consecutive five-blocks

Put
$$
S_E=\sum_{r\in E}x_r,
\qquad
Q_E=\sum_{r\in E}x_r^2.
$$
Then
$$
2D_\lambda(E)=S_E^2+Q_E+2\lambda S_E.
\tag{4}
$$
For fixed $\lambda$, choose a five-set minimizing the right side of (4),
and among all minimizers choose one with smallest span. If it were not
consecutive, there would be an unselected sample value $z$ strictly
between its smallest and largest selected values $u<v$. If $S$ is the
selected sum, replacing $u$ by $z$ changes (4) by
$$
2(z-u)(S+\lambda+z),
\tag{5}
$$
whereas replacing $v$ by $z$ changes it by
$$
2(z-v)(S+\lambda+z).
\tag{6}
$$
The two prefactors have opposite signs, so one change is nonpositive. It
cannot be negative by minimality; if it is zero, the replacement is
another minimizer with smaller span, a contradiction. Therefore a
minimizer is consecutive.

Thus all five-point orientations retain their signs exactly when this is
true for
$$
B_k=\{k-2,k-1,k,k+1,k+2\},
\qquad 3\le k\le2m-1.
\tag{7}
$$

Step 3: Reduce the block thresholds to one unimodal function

Set
$$
C=1+2\cos(2\delta)+2\cos(4\delta),
\qquad
D=1+2\cos(4\delta)+2\cos(8\delta).
$$
Since
$$
C=\frac{\sin(5\delta)}{\sin\delta},
\qquad
D=\frac{\sin(10\delta)}{\sin(2\delta)},
$$
we have $C,D>0$. For $B_k$,
$$
S_k=C\cos(2k\delta),
\qquad
Q_k=\frac52+\frac D2\cos(4k\delta).
\tag{8}
$$
With
$$
\nu_k=|\cos(2k\delta)|,
$$
equation (3) becomes
$$
\frac{h_2(B_k)}{|S_k|}
=R(\nu_k),
\qquad
R(\nu)=a\nu+\frac b\nu,
\tag{9}
$$
where
$$
a=\frac{C^2+D}{2C},
\qquad
b=\frac{5-D}{4C}.
$$
Let $c=\cos(2\delta)$. Simplifying gives
$$
a=4c^2-1,
\qquad
\nu_*^2:=\frac ba
=\frac{(1-c^2)(4c^2+1)}{(4c^2+2c-1)(4c^2-1)}.
\tag{10}
$$
Hence $R$ decreases on $(0,\nu_*)$ and increases on
$(\nu_*,\infty)$.

We need only locate $\nu_*$. Since $m\ge6$, we have
$\delta\le\pi/27$, and therefore
$$
c>1-2\delta^2>\frac{97}{100}.
$$
For $97/100<c<1$,
$$
\frac13
<\frac{4c^2+1}{(4c^2+2c-1)(4c^2-1)}
<\frac38.
\tag{11}
$$
For the left inequality, after cross-multiplication the difference is
$$
-2(c-1)(8c^3+12c^2+2c+1)>0.
$$
For the right inequality, the required numerator is
$$
48c^4+24c^3-56c^2-6c-5
=5-2(1-c)(24c^3+36c^2+8c+5)>0,
$$
because $1-c<3/100$ and the last parenthesis is $<73$.

Now $2\delta<1/4$, so
$$
\sin(2\delta)>2\delta\left(1-\frac1{96}\right)>\frac{39}{20}\delta,
$$
while $\sin(2\delta)<2\delta$. From (10), (11),
$$
\frac54\delta^2<\nu_*^2<\frac32\delta^2.
\tag{12}
$$
Also
$$
\sin\frac{\delta}{2}\sin\frac{5\delta}{2}<\frac54\delta^2,
\qquad
\sin^2\frac{3\delta}{2}>\frac32\delta^2,
\tag{13}
$$
the second inequality following from
$\sin(3\delta/2)>(5/6)(3\delta/2)=5\delta/4$. Hence
$$
\sin\frac{\delta}{2}\sin\frac{5\delta}{2}
<\nu_*^2
<\sin^2\frac{3\delta}{2}.
\tag{14}
$$

Step 4: Find the first lower and upper degeneracies

Because $n=4m+3$,
$$
\nu_m=\sin\frac{3\delta}{2},
\qquad
\nu_{m+1}=\sin\frac{\delta}{2},
\qquad
\nu_{m+2}=\sin\frac{5\delta}{2}.
\tag{15}
$$
For $k\le m$, $\nu_k\ge\nu_m>\nu_*$, so $R(\nu_k)$ is smallest on
the positive-sum side at $k=m$. Therefore
$$
\lambda>\Lambda(B_m).
\tag{16}
$$
On the negative-sum side, $\nu_k\ge\nu_{m+2}>\nu_*$ for $k\ge m+2$,
so only $B_{m+1}$ and $B_{m+2}$ require comparison. From (9),
$$
R(\nu_{m+2})-R(\nu_{m+1})
=(\nu_{m+2}-\nu_{m+1})
\left(a-\frac{b}{\nu_{m+1}\nu_{m+2}}\right)<0
$$
by (14). Thus the strongest upper bound is
$$
\lambda<\Lambda(B_{m+2}).
\tag{17}
$$
Consequently every five-point orientation agrees with its value at $0$
precisely for
$$
\Lambda(B_m)<\lambda<\Lambda(B_{m+2}).
\tag{18}
$$

Step 5: Pass from orientation stability to facet stability

For a fixed four-set $F$, the oriented determinants obtained by adjoining
one remaining vertex at a time tell which side of the affine hyperplane
through $F$ contains that vertex. Hence (18) preserves every supporting
relation and therefore preserves $\mathcal F(\lambda)$.

At $\lambda=0$ the orientation signs are those of the ordinary moment
curve. In particular, four consecutive vertices form a facet, because
$$
\prod_{r=j}^{j+3}(x-x_r)
$$
has one sign at every other sample node.

Each endpoint of (18) really changes the facet family. At the left
endpoint, the five vertices in $B_m$ become affinely dependent and the
vertex $m+2$ crosses the hyperplane through
$$
\{m-2,m-1,m,m+1\}.
$$
Writing $v=\sin(3\delta/2)$ and $c=\cos(2\delta)$, we have
$S_{B_m}=Cv$, $\Lambda(B_m)=-av-b/v$, and $C-a=2c$. Thus
$$
S_{B_m}+\Lambda(B_m)+x_{2m+1}
=2cv-\frac bv-\cos\delta<0,
$$
because $2cv<3\delta<\cos\delta$. Hence the vertex $2m+1$ remains
strictly on its old side while $m+2$ crosses, so this facet is lost.

At the right endpoint put $u=\sin(5\delta/2)$. Then
$S_{B_{m+2}}=-Cu$, $\Lambda(B_{m+2})=au+b/u$, and
$$
S_{B_{m+2}}+\Lambda(B_{m+2})+x_1
=c(1-2u)+\frac bu>0
$$
because $u<1/2$. Thus the vertex $1$ remains on its old side while the
vertex $m$ crosses the hyperplane through
$$
\{m+1,m+2,m+3,m+4\},
$$
so that facet is lost. Therefore the interval in (18) is maximal.

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
