## Steps

Step 1: Reduce the first nonsimplicial time to consecutive five-window walls

Write
$$
q_{\alpha,s}(x)
=
x^4-s\left(
\frac{\alpha}{5}x^5+
\frac{2m+2}{15}x^6-
\frac{1}{70}x^8
\right).
$$
A hyperplane containing four or more of the lifted points cannot be vertical: a vertical hyperplane would give a nonzero cubic polynomial vanishing at four distinct first coordinates. Hence every facet hyperplane is the graph of a cubic.

For five distinct abscissas $E$, let $[E]f$ be the fourth divided difference. Five lifted points are coplanar exactly when
$$
[E]q_{\alpha,s}=0.
$$
For ordered knots, insertion gives
$$
[u_0,\ldots,u_j]f
=
\frac{z-u_0}{u_j-u_0}[u_0,z,u_1,\ldots,u_{j-1}]f+
\frac{u_j-z}{u_j-u_0}[z,u_1,\ldots,u_j]f.
$$
The two coefficients are positive. Repeated insertion therefore expresses every fourth divided difference as a convex combination of those on five consecutive elements of $X_m$.

At $s=0$ every fourth divided difference equals $[E]x^4=1$, so the oriented signs are those of the four-dimensional moment curve. As long as all consecutive fourth divided differences remain positive, every five-point determinant keeps that sign, hence the polytope remains simplicial with the same oriented matroid.

The consecutive five-windows are
$$
J_j=\{j-2,j-1,j,j+1,j+2\},
\qquad -m\leq j\leq m.
$$
Thus the first nonsimplicial event is the first zero among the quantities
$$
D_j(\alpha,s)=[J_j]q_{\alpha,s}.
$$
If a first facet contains six vertices, two adjacent consecutive windows must vanish: otherwise knot insertion would express a zero five-subset of that facet as a positive combination containing a strictly positive consecutive divided difference.

Step 2: Convert the geometry into an explicit discrete envelope

For $J_j$, expansion of
$$
\prod_{a=-2}^{2}(1-(j+a)u)^{-1}
$$
through degree $4$ gives
$$
h_1=5j,
\qquad
h_2=15j^2+5,
$$
$$
h_4=70j^4+140j^2+21,
$$
where $h_k=[J_j]x^{k+4}$. Therefore
$$
D_j(\alpha,s)=1-sB_j(\alpha),
$$
with
$$
B_j(\alpha)
=
\frac{\alpha}{5}h_1+
\frac{2m+2}{15}h_2-
\frac{1}{70}h_4.
$$
Substitution yields
$$
B_j(\alpha)
=
-j^4+2mj^2+\alpha j+
\frac{2m+2}{3}-\frac{3}{10}.
$$
It is useful to write this as
$$
B_j(\alpha)
=
M_m-(j^2-m)^2+\alpha j,
$$
where
$$
M_m
=
m^2+\frac{2m+2}{3}-\frac{3}{10}.
$$

Whenever the largest $B_j(\alpha)$ is positive, the first wall occurs at
$$
s_\alpha^{(m)}
=
\frac{1}{\max_{-m\leq j\leq m}B_j(\alpha)}.
$$
A six-vertex first facet can therefore occur only when this maximum is attained at two adjacent indices.

Step 3: Find the first adjacent double maximum

Put
$$
r=\left\lfloor\sqrt m+\frac12\right\rfloor.
$$
Since $m$ is an integer,
$$
r^2-r+1\leq m\leq r^2+r.
$$
Thus $r^2$ is the unique square closest to $m$. At $\alpha=0$,
$$
B_j(0)=M_m-(j^2-m)^2,
$$
so the only maxima are at $j=\pm r$. For every $\alpha>0$,
$$
B_{-j}(\alpha)=B_j(\alpha)-2\alpha j<B_j(\alpha)
\qquad(j>0),
$$
so the positive maximizer wins immediately.

For $j\geq0$ define the adjacent crossing value by
$$
B_j(\alpha_j)=B_{j+1}(\alpha_j).
$$
Direct subtraction gives
$$
\alpha_j
=
(2j+1)(2j^2+2j+1-2m).
$$
In particular
$$
\alpha_r>0
$$
because $m\leq r^2+r$.

For $j\geq r$,
$$
\alpha_{j+1}-\alpha_j
=
2(6j^2+12j-2m+7).
$$
Since $m\leq r^2+r\leq j^2+j$,
$$
6j^2+12j-2m+7
\geq
4j^2+10j+7>0.
$$
Hence
$$
\alpha_r<\alpha_{r+1}<\alpha_{r+2}<\cdots.
$$

If $j<r$, then $B_r(0)>B_j(0)$ and the slope of $B_r-B_j$ as a function of $\alpha$ is $r-j>0$. Hence
$$
B_r(\alpha)>B_j(\alpha)
\qquad(\alpha>0,\ j<r).
$$
If $0<\alpha<\alpha_r$, then for every $j\geq r$,
$$
B_j(\alpha)-B_{j+1}(\alpha)
=
\alpha_j-\alpha>0.
$$
Thus $B_r(\alpha)$ is the unique global maximum for
$$
0<\alpha<\alpha_r.
$$
At $\alpha=\alpha_r$,
$$
B_r=B_{r+1},
$$
and the preceding inequalities show that these are the only two global maxima.

Therefore no smaller positive parameter can produce a six-vertex first facet, while $\alpha_r$ does. Consequently
$$
\alpha_m
=
(2r+1)(2r^2+2r+1-2m).
$$

Step 4: Prove that the double wall gives exactly one six-vertex facet

Set
$$
\alpha_*=\alpha_m,
\qquad
B_*=B_r(\alpha_*)=B_{r+1}(\alpha_*),
\qquad
s_*=\frac1{B_*}.
$$
The number $B_*$ is positive. Indeed $r^2<2m$ for $m\geq8$, so
$$
m^2-(r^2-m)^2=r^2(2m-r^2)>0,
$$
and the remaining terms in $B_r(\alpha_*)$ are positive.

At $s=s_*$,
$$
D_r=D_{r+1}=0,
$$
while every other consecutive $D_j$ is strictly positive. Their union is
$$
C_m=\{r-2,r-1,r,r+1,r+2,r+3\}.
$$
Let
$$
T=\{r-1,r,r+1,r+2\}.
$$
The cubic through the four lifted points indexed by $T$ also contains $r-2$ and $r+3$, because the two adjacent fourth divided differences vanish.

For any $y\in X_m\setminus C_m$, knot insertion makes
$$
[T\cup\{y\}]q_{\alpha_*,s_*}>0.
$$
Moreover $y$ lies outside the interval $[r-1,r+2]$, so
$$
\prod_{x\in T}(y-x)>0.
$$
The interpolation remainder
$$
q_{\alpha_*,s_*}(y)-I_Tq_{\alpha_*,s_*}(y)
=
[T\cup\{y\}]q_{\alpha_*,s_*}
\prod_{x\in T}(y-x)
$$
is therefore strictly positive. The common hyperplane is supporting and meets the polytope exactly at the six points whose first coordinates lie in $C_m$.

Any four of these points are affinely independent because their first three coordinates lie on the cubic moment curve. Hence the contact set is a facet. A second nonsimplicial facet would contain a zero five-set. Since only $D_r,D_{r+1}$ vanish, knot insertion forces every zero five-set to lie inside $C_m$, so it belongs to the same supporting hyperplane. Thus the six-vertex facet is unique and every other facet is tetrahedral.

Step 5: Determine the local circuit flip

Order the six elements of $C_m$ as
$$
y_1<y_2<y_3<y_4<y_5<y_6.
$$
Let $\ell$ be the critical supporting cubic. For any four-set $T\subset C_m$, uniqueness of cubic interpolation gives
$$
I_Tq_{\alpha_*,s_*}=\ell.
$$
Since $q_{\alpha_*,s}$ depends linearly on $s$,
$$
q_{\alpha_*,s}-I_Tq_{\alpha_*,s}
=
\left(1-\frac{s}{s_*}\right)(x^4-I_Tx^4)
+
\frac{s}{s_*}(q_{\alpha_*,s_*}-\ell).
$$
At either omitted critical vertex the second term vanishes, while
$$
y^4-I_Tx^4(y)
=
\prod_{x\in T}(y-x).
$$

If
$$
T=C_m\setminus\{y_j,y_k\},
\qquad j<k,
$$
the two omitted product signs are
$$
(-1)^{5-j},
\qquad
(-1)^{6-k}.
$$
For $s<s_*$ both must be positive, which occurs for
$$
(1,2),(1,4),(1,6),(3,4),(3,6),(5,6).
$$
Hence there are $6$ tetrahedral facets supported entirely on $C_m$.

For $s>s_*$ the factor $1-s/s_*$ reverses sign, so both products must be negative. This occurs for
$$
(2,3),(2,5),(4,5),
$$
giving $3$ tetrahedral facets.

With
$$
r=\left\lfloor\sqrt m+\frac12\right\rfloor,
$$
the required pair follows.

Final Answer: $\boxed{\left.\left(\{r-2,r-1,r,r+1,r+2,r+3\},(2r+1)(2r^2+2r+1-2m)\right)\right|_{r=\left\lfloor\sqrt m+\frac12\right\rfloor}}$

---

## Answer

$\left.\left(\{r-2,r-1,r,r+1,r+2,r+3\},(2r+1)(2r^2+2r+1-2m)\right)\right|_{r=\left\lfloor\sqrt m+\frac12\right\rfloor}$

---

## Classification

**Problem Type:** Optimization

**Answer Type:** Tuple or ordered list

---

## Solution Concepts

- divided differences
- moment curve
- discrete upper envelopes
- nearest-square optimization
- circuit flips
