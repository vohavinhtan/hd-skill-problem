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
If $e_1=0$, then
$$
e_2=-\frac Q2<0,
$$
so (1) is impossible. If $e_1\ne0$, then
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
Thus the unique degeneracy parameter for the five-set $E$ is precisely
$\Lambda(E)$.

More generally, the oriented $5\times5$ determinant for these points is,
up to the nonzero Vandermonde factor in the $y_i$,
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

Step 2: Reduce the global sign problem to consecutive five-blocks

For a five-set $E$, write
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

We claim that, for each fixed $\lambda$, the minimum of the right side of
(4) over all five-subsets is attained by five consecutive nodes.
Suppose a minimizing five-set is not consecutive. Then there are two
selected values $u<v$ with an unselected node $z$ strictly between them.
Let $S$ be the sum of the five selected values. Replacing $u$ by $z$
changes the right side of (4) by
$$
2(z-u)(S+\lambda+z),
\tag{5}
$$
whereas replacing $v$ by $z$ changes it by
$$
2(z-v)(S+\lambda+z).
\tag{6}
$$
Because $z-u>0$ and $z-v<0$, one of (5), (6) is nonpositive. If it is
zero, choose the replacement that reduces the number of skipped sample
nodes inside the selected span. Iterating produces a consecutive
five-set with no larger value. Thus
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

Step 3: Compute the threshold of a consecutive block

Put
$$
C=1+2\cos(2\delta)+2\cos(4\delta),
\qquad
D=1+2\cos(4\delta)+2\cos(8\delta).
$$
Since $5\delta<\pi$ and $10\delta<\pi$, both constants are positive.
For the block $B_k$, the cosine-sum identities give
$$
S_k:=\sum_{r\in B_k}x_r
=C\cos(2k\delta),
\tag{8}
$$
and
$$
Q_k:=\sum_{r\in B_k}x_r^2
=\frac52+\frac D2\cos(4k\delta).
\tag{9}
$$
Let
$$
u_k=\left|\cos(2k\delta)\right|.
$$
From (8), (9),
$$
\frac{h_2(B_k)}{|S_k|}
=a\nu_k+\frac b{\nu_k},
\tag{10}
$$
where
$$
a=\frac{C^2+D}{2C},
\qquad
b=\frac{5-D}{4C}.
$$

Set $c=\cos(2\delta)$. Direct simplification gives
$$
a=4c^2-1
$$
and
$$
\nu_*^2:=\frac ba
=
\frac{(1-c^2)(4c^2+1)}
{(4c^2+2c-1)(4c^2-1)}.
\tag{11}
$$
Thus the right side of (10) decreases for $0<\nu<\nu_*$ and increases
for $\nu>\nu_*$.

We now locate $\nu_*$. Since
$$
c=\cos(2\delta)>1-2\delta^2
\ge1-\frac{2\pi^2}{27^2}
>\frac{97}{100},
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
The same fraction is less than $3/8$: after cross-multiplication it is
enough to check
$$
48c^4+24c^3-56c^2-6c-5>0.
$$
This polynomial is increasing on $[97/100,1]$ and at $97/100$ equals
$$
\frac{5548793}{6250000}>0.
$$
Since $2\delta<1/4$,
$$
\sin(2\delta)>
2\delta\left(1-\frac1{96}\right)
>\frac{39}{20}\delta.
$$
Using (11), (12), and $\sin(2\delta)<2\delta$ gives
$$
\frac54\delta^2<\nu_*^2<\frac32\delta^2.
\tag{13}
$$
Also, with $3\delta/2<1/4$,
$$
\sin\frac{3\delta}{2}>\frac56\cdot\frac{3\delta}{2}
=\frac54\delta,
$$
so
$$
\sin^2\frac{3\delta}{2}>\frac32\delta^2.
$$
Finally,
$$
\sin\frac{\delta}{2}\sin\frac{5\delta}{2}
<\frac{\delta}{2}\frac{5\delta}{2}
=\frac54\delta^2.
\tag{14}
$$

Step 4: Find the two first sign changes

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

For $k\le m$ we have
$$
\nu_k\ge\nu_m=\sin\frac{3\delta}{2}>\nu_*
$$
by (13), (14). Hence (10) is smallest on the positive-sum side exactly
at $k=m$. Therefore the strongest lower bound is
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
and $\nu_k\ge\nu_{m+2}>\nu_*$ for $k\ge m+2$. Thus only $m+1$ and
$m+2$ need comparison. From (10),
$$
R(\nu_{m+2})-R(\nu_{m+1})
=
(\nu_{m+2}-\nu_{m+1})
\left(
a-\frac{b}{\nu_{m+1}\nu_{m+2}}
\right).
$$
By (13), (14),
$$
\frac ba=\nu_*^2
>
\nu_{m+1}\nu_{m+2},
$$
so the difference is negative. Therefore the strongest upper bound is
$$
\lambda<
\Lambda(B_{m+2})
=
\Lambda(\{m,m+1,m+2,m+3,m+4\}).
\tag{17}
$$
Equations (7), (16), and (17) show that every five-point orientation is
unchanged throughout
$$
I=
\left(
\Lambda(B_m),
\Lambda(B_{m+2})
\right).
\tag{18}
$$

Step 5: Pass from orientations to facets and prove maximality

For a fixed four-set $F$, the signs of the five-point determinants
obtained by adjoining each remaining vertex tell exactly on which side of
the affine hyperplane through $F$ that vertex lies. Therefore, while all
five-point determinant signs agree with their values at $\lambda=0$, the
family $\mathcal F(\lambda)$ is unchanged. Hence (18) lies inside the
desired stability interval.

At $\lambda=0$ these side signs agree with those of the ordinary moment
curve. For four consecutive nodes, the polynomial
$$
q(x)=\prod_{r=j}^{j+3}(x-x_r)
$$
has the same sign at every other sample node, because there is no sample
node between two consecutive selected roots. Thus every four consecutive
vertices form a facet of $K(0)$.

At the left endpoint the five consecutive vertices indexed by $B_m$
become affinely dependent, and immediately to the left the determinant
for the four-set
$$
\{m-2,m-1,m,m+1\}
$$
with the vertex $m+2$ has the opposite sign from its value at $0$. Since
(16) is the first global sign change, the remaining side signs have not
all reversed with it; this supporting tetrahedron is therefore lost.
Likewise, immediately to the right of the upper endpoint, the vertex $m$
crosses the hyperplane through
$$
\{m+1,m+2,m+3,m+4\},
$$
so that facet is lost. Thus no larger open interval containing $0$ can
have the same facet family.

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
