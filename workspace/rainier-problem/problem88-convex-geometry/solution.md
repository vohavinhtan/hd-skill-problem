## Steps

Step 1: Derive the critical parameter of every five-point set

Fix a five-element set $E$ and write its distinct abscissas as $y_1,\ldots,y_5$. Put
$$
e_1=\sum_{i=1}^5 y_i,\qquad
e_2=\sum_{1\leq i<j\leq5}y_iy_j,\qquad
Q=\sum_{i=1}^5 y_i^2.
$$
Let
$$
P(x)=\prod_{i=1}^5(x-y_i)
=x^5-e_1x^4+e_2x^3+\text{terms of degree at most }2.
$$
The five points indexed by $E$ are affinely dependent exactly when there is a polynomial $p$ of degree at most $3$ such that
$$
x^6+\lambda x^5-p(x)=P(x)(x+c)
$$
for some real $c$. Comparing the coefficients of $x^5$ and $x^4$ gives
$$
c-e_1=\lambda,\qquad e_2-ce_1=0.
$$
If $e_1=0$, then $e_2=-Q/2<0$, so these equations are inconsistent. If $e_1\neq0$, then
$$
\lambda=\frac{e_2}{e_1}-e_1
=-\frac{e_1^2+Q}{2e_1}
=\Lambda(E).
$$

We also need the sign, not only the zero. Modulo $P(x)$,
$$
x^5\equiv e_1x^4+\text{terms of degree at most }3,
$$
and multiplying the relation for $P(x)$ by $x$ gives
$$
x^6\equiv (e_1^2-e_2)x^4+\text{terms of degree at most }3.
$$
Therefore, after dividing the oriented $5\times5$ determinant by its nonzero Vandermonde factor, its sign is the sign of
$$
D_\lambda(E)=h_2(E)+\lambda e_1(E),
\qquad
h_2(E)=e_1(E)^2-e_2(E)
=\frac{e_1(E)^2+\sum_{r\in E}x_r^2}{2}>0.
$$
Thus every normalized five-point orientation is positive at $\lambda=0$.

Step 2: Compress the global orientation condition to consecutive five-blocks

For a five-set $E$, write
$$
S_E=\sum_{r\in E}x_r,\qquad
Q_E=\sum_{r\in E}x_r^2.
$$
Step 1 gives
$$
2D_\lambda(E)=S_E^2+Q_E+2\lambda S_E.
$$
For fixed $\lambda$, choose a five-set minimizing the right-hand side, and among all minimizers choose one whose selected sample values have the smallest span. Suppose it is not consecutive. Then an unselected sample value $z$ lies strictly between its smallest and largest selected values $u<v$. If $S$ is the selected sum, replacing $u$ by $z$ changes the displayed quantity by
$$
2(z-u)(S+\lambda+z),
$$
whereas replacing $v$ by $z$ changes it by
$$
2(z-v)(S+\lambda+z).
$$
Since $z-u>0$ and $z-v<0$, one change is nonpositive. It cannot be negative by minimality. Hence one replacement has change $0$, producing another minimizer with strictly smaller span, a contradiction.

Therefore a global minimizer is always a consecutive block
$$
B_k=\{k-2,k-1,k,k+1,k+2\},
\qquad
3\leq k\leq2m-1.
$$
Consequently all normalized five-point orientations are positive exactly when $D_\lambda(B_k)>0$ for every such $k$.

Step 3: Express all consecutive-block thresholds through one unimodal function

Set
$$
C=1+2\cos(2\delta)+2\cos(4\delta),\qquad
D=1+2\cos(4\delta)+2\cos(8\delta).
$$
The finite cosine-sum formulas give
$$
C=\frac{\sin(5\delta)}{\sin\delta}>0,\qquad
D=\frac{\sin(10\delta)}{\sin(2\delta)}>0.
$$
For $B_k$,
$$
S_k=C\cos(2k\delta),
\qquad
Q_k=\frac52+\frac D2\cos(4k\delta).
$$
With
$$
\nu_k=|\cos(2k\delta)|,
$$
we have $\cos(4k\delta)=2\nu_k^2-1$, and hence
$$
\begin{aligned}
\frac{h_2(B_k)}{|S_k|}
&=\frac{S_k^2+Q_k}{2|S_k|}\\
&=\frac{C\nu_k}{2}
+\frac{D\nu_k}{2C}
+\frac{5-D}{4C\nu_k}\\
&=R(\nu_k),
\end{aligned}
$$
where
$$
R(\nu)=a\nu+\frac b\nu,\qquad
a=\frac{C^2+D}{2C},\qquad
b=\frac{5-D}{4C}.
$$

Put $c=\cos(2\delta)$. Since
$$
C=4c^2+2c-1,\qquad
D=16c^4-12c^2+1,
$$
we obtain
$$
a=4c^2-1,
\qquad
b=\frac{(1-c^2)(4c^2+1)}{4c^2+2c-1}.
$$
Hence $R$ decreases before and increases after the unique point $\nu_*>0$ satisfying
$$
\nu_*^2=\frac ba
=\frac{(1-c^2)(4c^2+1)}
{(4c^2+2c-1)(4c^2-1)}.
$$

Since $m\geq6$, we have $\delta\leq\pi/27$, so
$$
c=\cos(2\delta)>1-2\delta^2
\geq1-\frac{2\pi^2}{27^2}
>1-\frac{20}{729}
>\frac{97}{100}.
$$
For $97/100<c<1$,
$$
\frac13<
\frac{4c^2+1}{(4c^2+2c-1)(4c^2-1)}
<\frac38.
$$
For the left inequality, the cross-multiplied difference is
$$
-2(c-1)(8c^3+12c^2+2c+1)>0.
$$
For the right inequality, the required numerator equals
$$
48c^4+24c^3-56c^2-6c-5
=5-2(1-c)(24c^3+36c^2+8c+5)>0,
$$
because $1-c<3/100$, the last parenthesis is $<73$, and
$$
2\cdot\frac{3}{100}\cdot73=\frac{219}{50}<5.
$$

Also $2\delta<1/4$, so
$$
\sin(2\delta)>
2\delta\left(1-\frac{(2\delta)^2}{6}\right)
>\frac{39}{20}\delta,
\qquad
\sin(2\delta)<2\delta.
$$
Thus
$$
\frac54\delta^2<\nu_*^2<\frac32\delta^2.
$$
Finally,
$$
\sin\frac{\delta}{2}\sin\frac{5\delta}{2}<\frac54\delta^2,
\qquad
\sin^2\frac{3\delta}{2}>\frac32\delta^2,
$$
where the second inequality follows from
$$
\sin\frac{3\delta}{2}>
\frac56\cdot\frac{3\delta}{2}
=\frac54\delta.
$$
Therefore
$$
\sin\frac{\delta}{2}\sin\frac{5\delta}{2}
<\nu_*^2
<\sin^2\frac{3\delta}{2}.
$$

Step 4: Identify the nearest lower and upper degeneracy parameters

Because $n=4m+3$, the sign of $\cos(2k\delta)$ changes between $k=m$ and $k=m+1$, and
$$
\nu_m=\sin\frac{3\delta}{2},\qquad
\nu_{m+1}=\sin\frac{\delta}{2},\qquad
\nu_{m+2}=\sin\frac{5\delta}{2}.
$$
For $k\leq m$, $\nu_k\geq\nu_m>\nu_*$, so Step 3 shows that $R(\nu_k)$ is smallest at $k=m$. Since $S_k>0$ on this side,
$$
D_\lambda(B_k)>0
\quad\Longleftrightarrow\quad
\lambda>\Lambda(B_k),
$$
and the strongest lower constraint is
$$
\lambda>\Lambda(B_m).
$$

For $k\geq m+2$, $|\cos(2k\delta)|$ increases with $k$, so $\nu_k\geq\nu_{m+2}>\nu_*$. Only $B_{m+1}$ and $B_{m+2}$ can therefore minimize $R$ on the negative-sum side. Their difference is
$$
R(\nu_{m+2})-R(\nu_{m+1})
=(\nu_{m+2}-\nu_{m+1})
\left(
a-\frac{b}{\nu_{m+1}\nu_{m+2}}
\right).
$$
Step 3 gives
$$
\frac ba=\nu_*^2>
\nu_{m+1}\nu_{m+2},
$$
so the difference is negative. Since $S_k<0$ on this side,
$$
D_\lambda(B_k)>0
\quad\Longleftrightarrow\quad
\lambda<\Lambda(B_k),
$$
and the strongest upper constraint is
$$
\lambda<\Lambda(B_{m+2}).
$$
Combining this with Step 2, every five-point orientation has its $\lambda=0$ sign exactly for
$$
\Lambda(B_m)<\lambda<\Lambda(B_{m+2}).
$$

Step 5: Convert orientation stability into facet stability and prove maximality

Inside the interval from Step 4, every five-point determinant has the same sign as at $\lambda=0$. For any four-set $F$, adjoining one remaining vertex at a time therefore gives exactly the same side of the affine hyperplane through $F$ as at $\lambda=0$. Hence the supporting tetrahedra, and therefore $\mathcal F(\lambda)$, are unchanged throughout that interval.

At $\lambda=0$, four consecutive vertices form a facet. Indeed, for consecutive abscissas $x_j,x_{j+1},x_{j+2},x_{j+3}$, the polynomial
$$
\prod_{r=j}^{j+3}(x-x_r)
$$
has the same sign at every other sample node because no unselected sample lies between two consecutive selected roots.

The lower endpoint really destroys a facet. Let
$$
F_-=\{m-2,m-1,m,m+1\},
\qquad
B_m=F_-\cup\{m+2\}.
$$
Put $v=\sin(3\delta/2)$ and $c=\cos(2\delta)$. From Step 3,
$$
S_{B_m}=Cv,\qquad
\Lambda(B_m)=-av-\frac bv,
\qquad
C-a=2c.
$$
At $\lambda=\Lambda(B_m)$,
$$
S_{B_m}+\lambda+x_{2m+1}
=2cv-\frac bv-\cos\delta<0,
$$
because
$$
2cv<3\delta\leq\frac{\pi}{9}<\frac12<\cos\delta.
$$
Replacing $x_{m+2}$ by $x_{2m+1}$ changes $2D_\lambda$ by
$$
2(x_{2m+1}-x_{m+2})
\left(S_{B_m}+\lambda+x_{2m+1}\right)>0.
$$
Thus the determinant for $B_m$ changes sign immediately to the left of the endpoint while the determinant using $F_-\cup\{2m+1\}$ stays positive. The two vertices then lie on opposite sides of the hyperplane through $F_-$, so $F_-$ ceases to be a facet.

For the upper endpoint let
$$
F_+=\{m+1,m+2,m+3,m+4\},
\qquad
B_{m+2}=F_+\cup\{m\}.
$$
Put $u=\sin(5\delta/2)$. Then
$$
S_{B_{m+2}}=-Cu,\qquad
\Lambda(B_{m+2})=au+\frac bu,
$$
and at $\lambda=\Lambda(B_{m+2})$,
$$
S_{B_{m+2}}+\lambda+x_1
=c(1-2u)+\frac bu>0
$$
because $c>0$, $b>0$, and
$$
u=\sin\frac{5\delta}{2}
\leq\sin\frac{5\pi}{54}<\sin\frac{\pi}{6}=\frac12.
$$
Replacing $x_m$ by $x_1$ therefore gives a strictly positive normalized determinant while the determinant for $B_{m+2}$ changes sign immediately to the right. Hence $F_+$ also loses its supporting property. No larger open interval containing $0$ can preserve the facet family.

Final Answer: $\boxed{\left(\Lambda(\{m-2,m-1,m,m+1,m+2\}),\Lambda(\{m,m+1,m+2,m+3,m+4\})\right)}$

---

## Answer

$\left(\Lambda(\{m-2,m-1,m,m+1,m+2\}),\Lambda(\{m,m+1,m+2,m+3,m+4\})\right)$

---

## Classification

**Problem Type:** Parameter identification

**Answer Type:** Interval or region description

---

## Solution Concepts

- generalized Vandermonde determinants
- affine dependence thresholds
- exchange argument
- unimodal extremization
- convex polytope facet stability
