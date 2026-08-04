## Steps

Step 1: Rewrite the two moment problems on the centered square

Put
$$
u=2x-1,\qquad v=2y-1.
$$
Both $u$ and $v$ have the uniform distribution on $[-1,1]$. Since
$x^2-x=(u^2-1)/4$ and $\mathbb E[v]=0$, the two coordinates become
$$
R=3\mathbb E[uv],\qquad S=6\mathbb E[u^2v].
$$
The changes $u\mapsto-u$ and $v\mapsto-v$ show that each moment body is
invariant under both coordinate reflections $(R,S)\mapsto(-R,S)$ and
$(R,S)\mapsto(R,-S)$.

Both classes are convex. Probability measures on the compact square are
weakly compact, and fixed marginals are weakly closed, so
$\mathcal C_\infty$ is weakly compact. If $m_2$ is planar Lebesgue measure,
$\mathcal C_2=\{\pi\in\mathcal C_\infty:\pi\leq2m_2\}$. For continuous
$\phi\geq0$, this domination passes to weak limits; hence $\mathcal C_2$
is weakly compact. Their affine continuous moment images are compact convex.

For the rearrangement argument, put $H=h(U)$ with $h$ bounded and continuous.
Divide the quantiles of $H$ and $V$ into $n$ cells
of mass $1/n$, splitting level sets by an auxiliary uniform variable.
Replacing each variable by its cell mean gives increasing lists
$a_1\leq\cdots\leq a_n$, $b_1\leq\cdots\leq b_n$ and
$$
\mathbb E[H_nV_n]=\frac1n\sum_{i,j}d_{ij}a_i b_j
$$
for a doubly stochastic matrix $D$. If $D$ is not a permutation matrix,
its positive-entry bipartite graph has an alternating cycle. Adding and
subtracting the maximal admissible mass around that cycle expresses $D$
as a convex combination of two matrices with fewer positive entries;
iteration reduces to permutations. For a permutation, uncrossing an
inversion increases the sum by
$(a_{i'}-a_i)(b_j-b_{j'})\geq0$. Hence increasing matching is optimal.
The quantile step functions converge in $L^1$, so boundedness passes this
inequality to every Borel coupling. If $F_h$ is continuous, equality is
attained by $V=2F_h(h(U))-1$.

A compact convex set is determined by its support function by strict
separation. Thus attained maxima in all directions determine each body.

Step 2: Determine the unrestricted moment body sharply

To expose the upper boundary of $\mathscr A_\infty$, maximize
$\alpha R+\beta S$ with $\beta>0$. The function whose ranks must be
coupled increasingly to $v$ is
$$
h(u)=3\alpha u+6\beta u^2.
$$
If its vertex is $t=-\alpha/(4\beta)\in[0,1]$, the increasing-rank
coupling is represented by
$$
v_t(u)=
\begin{cases}
-u,&-1\leq u\leq2t-1,\\
2(t-u)-1,&2t-1\leq u\leq t,\\
2(u-t)-1,&t\leq u\leq1.
\end{cases}
$$
Each branch is affine with slope of absolute value $1$ or $2$, and the
preimage count shows directly that $v_t(U)$ is uniform on $[-1,1]$.
The two required integrals can be audited from the three affine
branches:
$$
\begin{aligned}
R(t)=\frac32\Bigg(&-\int_{-1}^{2t-1}u^2\,du
+\int_{2t-1}^{t}u(2t-2u-1)\,du\\
&+\int_t^1u(2u-2t-1)\,du\Bigg)
=-1+(1-t)^3
\end{aligned}
$$
and
$$
\begin{aligned}
S(t)=3\Bigg(&-\int_{-1}^{2t-1}u^3\,du
+\int_{2t-1}^{t}u^2(2t-2u-1)\,du\\
&+\int_t^1u^2(2u-2t-1)\,du\Bigg)
=-3t^4+8t^3-6t^2+1.
\end{aligned}
$$
Writing $w=1-t$ yields $1+R=w^3$ and
$$
S=4w^3-3w^4
=4(1+R)-3(1+R)^{4/3}.
$$
As $t$ runs from $0$ to $1$, this traces the upper boundary from
$(0,1)$ to $(-1,0)$. The two coordinate reflections give every other
exposed boundary point; vertex positions outside this interval expose
one of its two endpoints. The rank-interchange inequality for
$\mathbb E[h(U)V]$ gives the matching support bound in every direction,
so no additional points can lie outside this curve. Consequently
$$
\mathscr A_\infty=
\left\{(r,s):|r|\leq1,\quad
|s|\leq F(|r|)\right\},
$$
where
$$
F(r)=4(1-r)-3(1-r)^{4/3}.
$$

Step 3: Determine the density-constrained moment body sharply

In the $(u,v)$ coordinates, a density bounded by $2$ in the original
square becomes a joint Lebesgue density $g$ satisfying
$$
0\leq g\leq\frac12,\qquad
\int_{-1}^{1}g(u,v)\,dv=\int_{-1}^{1}g(u,v)\,du=\frac12.
$$
For the coordinates $(R,2S)$, a supporting functional has cost
$$
h(u)v,\qquad h(u)=3\alpha u+12\beta u^2.
$$
Assume $\beta>0$ and let $t=-\alpha/(8\beta)\in[-1/2,1/2]$. The interval
$$
I_t=\left[t-\frac12,t+\frac12\right]
$$
has length $1$ and consists of the lower half of the values of the
quadratic $h$. Define
$$
g_t(u,v)=\frac12\mathbf 1_{I_t\times[-1,0]}(u,v)
+\frac12\mathbf 1_{([-1,1]\setminus I_t)\times[0,1])}(u,v).
$$
Its two marginals are $1/2$, so it is feasible. If $c$ is the common
value of $h$ at the two endpoints of $I_t$, then
$(h(u)-c)v$ is nonnegative exactly on the two rectangles on which
$g_t=1/2$. Hence, for every feasible $g$,
$$
(h(u)-c)v\bigl(g_t(u,v)-g(u,v)\bigr)\geq0
$$
pointwise. Integration proves that $g_t$ maximizes the supporting
functional; the term containing $cv$ integrates to zero because the
$v$-marginal is fixed.

The conditional mean of $v$ under $g_t$ is $-1/2$ on $I_t$ and $1/2$
off $I_t$. Since
$$
\int_{t-1/2}^{t+1/2}u\,du=t,\qquad
\int_{t-1/2}^{t+1/2}u^2\,du=t^2+\frac1{12},
$$
the two boundary coordinates are
$$
R(t)=-\frac32t,\qquad
2S(t)=\frac32-6t^2
=\frac32-\frac83R(t)^2.
$$
At $t=\pm1/2$ one obtains the two endpoints $(\mp3/4,0)$; the remaining
directions and the lower boundary follow from the coordinate
reflections. If the vertex of $h$ lies to the right of $1/2$, its
lower-half sublevel set is the endpoint interval $[0,1]$; if it lies to
the left of $-1/2$, that set is $[-1,0]$. Thus the same pointwise
certificate yields the two endpoint normal cones as well. It proves
sharpness in every supporting direction, so
$$
\mathscr A_2=
\left\{(r,s):|r|\leq\frac34,\quad
|s|\leq G(|r|)\right\},
$$
where
$$
G(r)=\frac32-\frac83r^2.
$$
In particular,
$$
\mathscr K=
\left\{(r,s):|r|\leq\frac34,\quad
|s|\leq\min\{F(|r|),G(|r|)\}\right\}.
$$
The two analytic boundaries genuinely contribute. Indeed, on writing
$w=(1-r)^{1/3}$, the equation $F(r)=G(r)$ becomes
$$
16w^6-18w^4-8w^3+7=0.
$$
Its derivative is
$$
24w^2(w-1)(4w^2+4w+1),
$$
so there is exactly one crossing for $0<r<3/4$. At $r=0$ one has
$F(0)=1<G(0)=3/2$, while $G(3/4)=0<F(3/4)$; hence the active boundary
is $F$ near $r=0$ and $G$ near $r=3/4$.

Step 4: Construct an ellipse contained in both moment bodies

Set
$$
A=\frac{3(3+\sqrt5)}{32}
$$
and consider the centered ellipse
$$
\mathcal E_*=
\left\{(r,s):\frac{r^2}{A}+s^2\leq1\right\}.
$$
Write $e(r)=\sqrt{1-r^2/A}$ for its upper boundary. First, for
$0\leq r\leq1$,
$$
F(r)-(1-r^2)
=(1-r)\left(2+(1-r)-3(1-r)^{1/3}\right).
$$
Putting $q=(1-r)^{1/3}$ factors the last parenthesis as
$$
2+q^3-3q=(q-1)^2(q+2)\geq0.
$$
Also $A<1/2$, and therefore
$$
(1-r^2)^2-e(r)^2
=r^2\left(\frac1A-2+r^2\right)\geq0.
$$
Thus $e(r)\leq1-r^2\leq F(r)$ wherever the ellipse is defined, proving
$\mathcal E_*\subseteq\mathscr A_\infty$.

For the second body, $G(r)\geq1$ when $r^2\leq3/16$, so the desired
inequality is immediate there. When $0\leq G(r)\leq1$, put $y=G(r)$.
Then
$$
r^2=\frac9{16}-\frac38y
$$
and $e(r)\leq G(r)$ is equivalent to
$$
A\leq\frac{r^2}{1-G(r)^2}
=\frac{3(3-2y)}{16(1-y^2)}.
$$
The derivative of the last expression has the sign of
$$
-2+6y-2y^2.
$$
Its unique minimum on $[0,1]$ is attained at
$$
y_0=\frac{3-\sqrt5}{2},
$$
where
$$
3-2y_0=\sqrt5,\qquad
1-y_0^2=\frac{3\sqrt5-5}{2},\qquad
\frac{3(3-2y_0)}{16(1-y_0^2)}=A.
$$
Hence
$\mathcal E_*\subseteq\mathscr A_2$, and consequently
$\mathcal E_*\subseteq\mathscr K$.

Step 5: Prove that no ellipse in the intersection has larger area

Uniqueness and the two coordinate reflections force the maximizing
ellipse to be centered at the origin with coordinate axes.
Write its semiaxes as $a,b>0$:
$$
\frac{r^2}{a^2}+\frac{s^2}{b^2}\leq1.
$$
The vertical section of $\mathscr K$ at $r=0$ gives $b\leq1$, and its
horizontal extent gives $a\leq3/4$.

Define
$$
y_0=\frac{3-\sqrt5}{2},\qquad
d=y_0^2=\frac{7-3\sqrt5}{2},\qquad
c=\frac{3\sqrt5}{16}.
$$
Then $G(\sqrt c)=y_0$, and
$$
\frac{c}{1-d}=\frac{3(3+\sqrt5)}{32}=A.
$$
If $a<\sqrt c$, then $(ab)^2<c<A$. Suppose $a\geq\sqrt c$ and put
$z=b^2\leq1$. Containment in $\mathscr A_2$ at $r=\sqrt c$ gives
$$
b\sqrt{1-\frac{c}{a^2}}\leq y_0.
$$
For $z>d$, this rearranges to
$$
a^2\leq\frac{cz}{z-d}.
$$
Together with $a^2\leq9/16$, it yields
$$
(ab)^2\leq z\min\left\{\frac9{16},\frac{cz}{z-d}\right\}.
$$
The two entries of the minimum agree at
$$
z_0=\frac{9d}{9-16c}=\frac{3(3-\sqrt5)}4.
$$
If $0<z\leq z_0$, including the case $z\leq d$, then
$$
(ab)^2\leq\frac9{16}z_0
=\frac{27(3-\sqrt5)}{64}<A.
$$
The strict inequality has the explicit positive difference
$$
A-\frac{27(3-\sqrt5)}{64}
=\frac{3(11\sqrt5-21)}{64}>0.
$$
If $z_0\leq z\leq1$, then $z_0>2d$ and
$$
\frac{d}{dz}\left(\frac{cz^2}{z-d}\right)
=\frac{cz(z-2d)}{(z-d)^2}>0.
$$
Here
$$
z_0-2d=\frac{9\sqrt5-19}{4}>0,
$$
so the derivative is positive throughout the stated interval.
Consequently
$$
(ab)^2\leq\frac{cz^2}{z-d}
\leq\frac{c}{1-d}=A.
$$
Equality requires $z=1$ and $a^2=A$. Thus every ellipse in
$\mathscr K$ has area at most $\pi\sqrt A$, while $\mathcal E_*$ attains
that area. This also provides the required equality certificate rather
than merely a stationary-point calculation.

Step 6: Express the maximizing ellipse in the requested matrix form

The maximizing ellipse is centered at $(0,0)$ and has equation
$$
\frac{r^2}{A}+s^2\leq1,\qquad
A=\frac{3(3+\sqrt5)}{32}.
$$
Since
$$
\frac1A=\frac{8(3-\sqrt5)}3,
$$
its defining matrix is
$$
Q_*=\begin{pmatrix}
\frac{8(3-\sqrt5)}3&0\\
0&1
\end{pmatrix}.
$$
Final Answer: $\boxed{\left((0,0),\begin{pmatrix}\frac{8(3-\sqrt5)}3&0\\0&1\end{pmatrix}\right)}$

---

## Answer

$\left((0,0),\begin{pmatrix}\frac{8(3-\sqrt5)}3&0\\0&1\end{pmatrix}\right)$

---

## Classification

**Problem Type:** Optimization

**Answer Type:** Tuple or ordered list

---

## Concepts (1-5)

- Sharp rearrangement for couplings with fixed marginals
- Capacity-constrained transport under a density bound
- Support functions of convex moment bodies
- Exact containment of an ellipse by boundary inequalities
- Equality-case analysis for maximum-area ellipses
