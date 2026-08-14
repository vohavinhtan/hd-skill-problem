## Steps

Step 1: Reduce every five-point orientation to one affine expression in the parameters

Fix a five-element set $E\subset R_m$ and write its distinct abscissas as $y_1,\ldots,y_5$. Put
$$
e_1=\sum_{i=1}^5y_i,
\qquad
e_2=\sum_{1\leq i<j\leq5}y_iy_j.
$$
If
$$
P(x)=\prod_{i=1}^5(x-y_i)
=x^5-e_1x^4+e_2x^3+\text{terms of degree at most }2,
$$
then modulo $P(x)$,
$$
x^5\equiv e_1x^4+\text{terms of degree at most }3
$$
and
$$
x^6\equiv(e_1^2-e_2)x^4+\text{terms of degree at most }3.
$$
Subtracting the corresponding combinations of the first four determinant columns from the last column therefore shows that the oriented $5\times5$ determinant, divided by its nonzero Vandermonde factor, has the sign of
$$
D_{\lambda,\mu}(E)
=h(E)+\lambda S(E)+\mu,
$$
where
$$
h(E)=e_1^2-e_2
=\frac{S(E)^2+Q(E)}{2}>0.
$$
Thus every normalized five-point orientation is positive at $(\lambda,\mu)=(0,0)$.

Step 2: Compress every fixed-parameter orientation minimum to five consecutive retained vertices

Fix $(\lambda,\mu)$. Since there are finitely many five-sets, choose one minimizing $D_{\lambda,\mu}$, and among all minimizers choose one whose selected abscissas have the smallest span. Suppose it is not consecutive in the retained order. Then an unselected retained abscissa $z$ lies strictly between its smallest and largest selected values $u<v$. If $S$ is the sum of the five selected values, replacing $u$ by $z$ changes $2D_{\lambda,\mu}$ by
$$
2(z-u)(S+\lambda+z),
$$
whereas replacing $v$ by $z$ changes it by
$$
2(z-v)(S+\lambda+z).
$$
The two prefactors have opposite signs, so one change is nonpositive. It cannot be negative by minimality. Hence one replacement has change $0$ and gives another minimizer with strictly smaller span, a contradiction.

Therefore, for every fixed $(\lambda,\mu)$, a global minimum of $D_{\lambda,\mu}(E)$ over all five-sets is attained by one of
$$
W_j=\{r_j,r_{j+1},r_{j+2},r_{j+3},r_{j+4}\}.
$$
This will allow the simultaneous two-parameter condition to be checked through a one-dimensional sliding family without enumerating all five-subsets.

Step 3: Locate the unique critical retained window for both dangerous corners

Set
$$
W=W_{m-3}.
$$
Because the deleted indices are $m-2,m,m+2$, the five indices in $W$ are
$$
W=\{m-3,m-1,m+1,m+3,m+4\}.
$$
Write
$$
S=S(W),
\qquad
Q=Q(W),
\qquad
h=\frac{S^2+Q}{2},
$$
and define
$$
\rho_0=\frac{h}{1+|S|}.
$$
Put $t=\delta/2$. Since $n=4m+3$,
$$
x_{m+j}=-\sin((4j-3)t).
$$
Hence
$$
\begin{aligned}
S
&=\sin(15t)+\sin(7t)-\sin t-\sin(9t)-\sin(13t)\\
&=\sin t\bigl(2\cos(14t)-2\cos(8t)-1\bigr)<0.
\end{aligned}
$$
Thus $\rho_0=h/(1-S)$.

Let
$$
z_j=x_{r_j},
$$
so $z_1>z_2>\cdots>z_{2m-2}$. For either choice $\varepsilon\in\{-1,1\}$, define
$$
A_j^{\varepsilon}=D_{\varepsilon\rho_0,-\rho_0}(W_j).
$$
If the slide from $W_j$ to $W_{j+1}$ removes $a=z_j$ and adds $b=z_{j+5}$, then
$$
h(W_{j+1})-h(W_j)=(b-a)(S(W_j)+b),
$$
so
$$
A_{j+1}^{\varepsilon}-A_j^{\varepsilon}
=(b-a)\bigl(S(W_j)+\varepsilon\rho_0+b\bigr).
$$
The quantity in parentheses is strictly decreasing with $j$, because both the window sum and the entering abscissa strictly decrease.

We now show that its sign changes exactly at $j=m-3$ for both values of $\varepsilon$. For the slide from $W_{m-4}$ to $W$, the sum of the old window and the entering value $x_{m+4}$ is
$$
\begin{aligned}
&x_{m-4}+x_{m-3}+x_{m-1}+x_{m+1}+x_{m+3}+x_{m+4}\\
&=2\sin(3t)\bigl(\cos(16t)+\cos(12t)+\cos(4t)\bigr).
\end{aligned}
$$
This is larger than $12t$. Indeed, $t\leq\pi/70$, so
$$
\cos(16t)>\frac{7}{10},
\qquad
\cos(12t)>\frac45,
\qquad
\cos(4t)>\frac9{10},
$$
and $\sin(3t)>5(3t)/6=5t/2$. The first cosine bound follows from $16t<\pi/4$ and $\sqrt2/2>7/10$; the other two follow from $\cos x>1-x^2/2$.

On the other hand,
$$
|S|<5t
$$
and
$$
Q<\bigl(15^2+7^2+1^2+9^2+13^2\bigr)t^2=525t^2.
$$
Since the factor multiplying $\sin t$ in the formula for $S$ has absolute value less than $3$, in fact $S^2<9t^2$, and therefore
$$
\rho_0<h<267t^2.
$$
Using $t\leq\pi/70<11/245$ gives
$$
267t<12.
$$
Thus the transition quantity before $W$ is positive even for $\varepsilon=-1$.

For the slide from $W$ to $W_{m-2}$, the entering value is
$$
x_{m+5}=-\sin(17t).
$$
Because $S<0$,
$$
S+x_{m+5}< -\sin(17t).
$$
Also $17t<1$, so
$$
\sin(17t)>\frac56(17t)=\frac{85}{6}t>267t^2>\rho_0.
$$
Hence the transition quantity after $W$ is negative even for $\varepsilon=1$.

Since the transition quantity decreases strictly with $j$, both sequences $A_j^{1}$ and $A_j^{-1}$ decrease strictly up to $W$ and increase strictly after $W$. Moreover,
$$
A_{m-3}^{1}=h+\rho_0S-\rho_0=0
$$
because $h=\rho_0(1-S)$, while
$$
A_{m-3}^{-1}=h-\rho_0S-\rho_0=-2\rho_0S>0.
$$
Therefore $W$ is the unique minimizing retained window at the corner $(\rho_0,-\rho_0)$, and the minimum there is $0$; at the corner $(-\rho_0,-\rho_0)$ every retained-window determinant is strictly positive.

Step 4: Prove that the whole open square of radius $\rho_0$ preserves every facet

By Step 2 and Step 3,
$$
D_{\rho_0,-\rho_0}(E)\geq0
$$
for every five-set $E\subset R_m$, and
$$
D_{-\rho_0,-\rho_0}(E)>0
$$
for every such $E$. Since $D_{\lambda,\mu}(E)$ is affine in $(\lambda,\mu)$ and the coefficient of $\mu$ is $1$, its minimum on the closed square
$$
|\lambda|\leq\rho_0,
\qquad
|\mu|\leq\rho_0
$$
is attained at one of these two lower corners. Hence every normalized determinant is nonnegative on the closed square and strictly positive throughout its interior.

Thus, for
$$
|\lambda|<\rho_0,
\qquad
|\mu|<\rho_0,
$$
every five-point orientation has exactly its sign at $(0,0)$. Consequently every four-set has the same side relations to all remaining vertices, so the supporting tetrahedra are unchanged:
$$
\mathcal F(\lambda,\mu)=\mathcal F(0,0).
$$

Step 5: Show that any larger square loses a facet

Let
$$
F=\{m-3,m-1,m+1,m+3\}.
$$
These are four consecutive retained vertices. At $(0,0)$ their side signs agree with those of the ordinary moment curve $(x,x^2,x^3,x^4)$, so $F$ is a facet: the polynomial with these four retained abscissas as roots has one sign at every other retained abscissa because there is no retained node between consecutive roots.

At the boundary corner $(\rho_0,-\rho_0)$, the five-set
$$
W=F\cup\{m+4\}
$$
has normalized determinant $0$. Step 3 shows that the preceding retained window
$$
W_{m-4}=F\cup\{m-4\}
$$
has strictly positive normalized determinant there. Move slightly beyond the corner along
$$
(\lambda,\mu)=(\rho_0+\eta,-\rho_0-\eta),
\qquad
\eta>0.
$$
For $W$ the normalized determinant becomes
$$
\eta(S-1)<0,
$$
while the determinant for $W_{m-4}$ remains positive for sufficiently small $\eta$. With the four rows of $F$ kept in increasing-index order, placing the test vertex $m-4$ last differs from sorted order by four row swaps, so these two determinant signs genuinely represent opposite sides of the same hyperplane through $F$. Hence $F$ is no longer supporting.

Every square of radius greater than $\rho_0$ contains such a point for sufficiently small $\eta$, so no larger radius works.

Final Answer: $\boxed{\frac{S(W_{m-3})^2+Q(W_{m-3})}{2(1+|S(W_{m-3})|)}}$

---

## Answer

$\frac{S(W_{m-3})^2+Q(W_{m-3})}{2(1+|S(W_{m-3})|)}$

---

## Classification

**Problem Type:** Optimization

**Answer Type:** Exact scalar

---

## Solution Concepts

- generalized Vandermonde determinants
- exchange argument
- robust parameter optimization
- discrete unimodality
- convex polytope facet stability
