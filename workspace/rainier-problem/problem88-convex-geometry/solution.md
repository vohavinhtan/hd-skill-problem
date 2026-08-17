## Steps

Step 1: Reduce the first nonsimplicial time to consecutive five-window walls

Write
$$
A(x)=\lambda+\frac12-(x^2-\lambda)^2-x,
\qquad
B_\alpha(x)=\alpha x-x^2.
$$
Since
$$
A(x)=-x^4+2\lambda x^2-x+c,
$$
the polynomial multiplying $s^2$ in the definition of $\Delta^4H_{\alpha,s}^{(m)}$ is $A(x)B_\alpha(x)$. Therefore
$$
\frac{\Delta^4H_{\alpha,s}^{(m)}(x)}{24}
=
(1-sA(x))(1-sB_\alpha(x)).
$$

For
$$
J_j=\{j,j+1,j+2,j+3,j+4\},
\qquad
-m\leq j\leq m+1,
$$
equal spacing gives
$$
D_j(\alpha,s):=[J_j]H_{\alpha,s}^{(m)}
=
\frac{\Delta^4H_{\alpha,s}^{(m)}(j)}{24}
=
(1-sA(j))(1-sB_\alpha(j)).
$$
The polynomial $H_{\alpha,s}^{(m)}$ is well defined because $\Delta^4$ maps polynomials of degree at most $10$, modulo cubics, bijectively onto polynomials of degree at most $6$, and the four prescribed values fix the cubic ambiguity.

For ordered knots, knot insertion gives
$$
[u_0,\ldots,u_j]f
=
\frac{z-u_0}{u_j-u_0}[u_0,z,u_1,\ldots,u_{j-1}]f+
\frac{u_j-z}{u_j-u_0}[z,u_1,\ldots,u_j]f.
$$
Both coefficients are positive, so every fourth divided difference on five points of $X_m$ is a convex combination of consecutive $D_j$. At $s=0$ they all equal $1$, so the polytope has the oriented matroid of the degree-$4$ moment curve and is simplicial.

If all consecutive $D_j$ are positive, every five-point divided difference is positive, so no facet can contain five vertices. If $J_j$ is the first consecutive window with $D_j=0$, take
$$
T=\{j,j+1,j+2,j+3\}.
$$
For every $y\in X_m\setminus T$, knot insertion gives
$$
[T\cup\{y\}]H_{\alpha,s}^{(m)}\geq0,
$$
and
$$
\prod_{x\in T}(y-x)\geq0.
$$
Thus the interpolation remainder
$$
H_{\alpha,s}^{(m)}(y)-I_TH_{\alpha,s}^{(m)}(y)
=
[T\cup\{y\}]H_{\alpha,s}^{(m)}
\prod_{x\in T}(y-x)
$$
has one sign on $X_m$, so the critical five points lie on a supporting hyperplane. The first nonsimplicial time is therefore the first positive zero of a consecutive $D_j$.

A factor $1-sA(j)$ has a positive zero at $1/A(j)$ exactly when $A(j)>0$, and the same statement holds for $B_\alpha(j)$. Since
$$
A(-m)=2m+\frac12>0,
$$
one obtains
$$
s_\alpha^{(m)}
=
\frac{1}{\max\{\max_jA(j),\max_jB_\alpha(j)\}}.
$$
A six-vertex first facet requires two adjacent consecutive windows to vanish at this first time.

Step 2: Determine the fixed competing envelope

For $k\geq0$ set
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
If $k<m$, then $k(k+1)<m(m+1)=\lambda$, so the second factor is a negative odd integer and $F(k+1)>F(k)$. At $k=m$ it equals $1$, giving
$$
F(m+1)-F(m)=-2m<0.
$$
For $k>m$ that factor is positive and increases with $k$, so the difference remains negative. Therefore $F$ has its unique maximum at $k=m$.

Also
$$
A(k)=A(-k)-2k<A(-k)
\qquad(k>0).
$$
Therefore $A(j)$ has its unique global maximum over the allowed window indices at $j=-m$. Its value is
$$
M_A=A(-m)
=
m(m+1)+\frac12-m^2+m
=
2m+\frac12.
$$

Step 3: Find the least adjacent double maximum of the moving envelope

For fixed $\alpha>0$,
$$
B_\alpha(j)=\alpha j-j^2
$$
is strictly concave in the integer variable $j$. The adjacent values at $q$ and $q+1$ are equal exactly when
$$
\alpha q-q^2=\alpha(q+1)-(q+1)^2,
$$
which gives
$$
\alpha=2q+1.
$$
At this parameter their common value is $q(q+1)$, and these are the two global maxima of $B_\alpha$. For non-odd $\alpha$, the integer maximizer is unique.

Let
$$
p=
\left\lceil\frac{\sqrt{8m+5}-1}{2}\right\rceil.
$$
This is the least nonnegative integer satisfying
$$
p(p+1)\geq2m+1.
$$
Therefore
$$
(p-1)p\leq2m<2m+\frac12<p(p+1).
$$
Also $p\leq m$ for $m\geq8$, since $m(m+1)>2m+1$.

For every earlier adjacent tie $\alpha=2q+1$ with $q<p$, the $B$-envelope has height
$$
q(q+1)\leq2m<M_A,
$$
so the first wall is still the unique $A$-wall at $j=-m$. Between adjacent-tie parameters, $B_\alpha$ has a unique maximizer. If its height equals $M_A$, the critical $A$-window is $J_{-m}$ while the critical $B$-window has nonnegative index. Since $m\geq8$, these windows are not adjacent and cannot form one six-vertex facet.

At
$$
\alpha_m=2p+1,
$$
the adjacent values
$$
B_{\alpha_m}(p)=B_{\alpha_m}(p+1)=p(p+1)
$$
are strictly larger than $M_A$. They are the only global maxima among all $A(j)$ and $B_{\alpha_m}(j)$. This is the least parameter at which the first wall is an adjacent double wall.

Step 4: Show that the double wall is the unique six-vertex facet

Put
$$
s_*=\frac{1}{p(p+1)}.
$$
At $(\alpha_m,s_*)$,
$$
D_p=D_{p+1}=0,
$$
and every other consecutive fourth divided difference is positive. The critical windows are
$$
J_p=\{p,p+1,p+2,p+3,p+4\},
$$
$$
J_{p+1}=\{p+1,p+2,p+3,p+4,p+5\}.
$$
Their shared four vertices determine one cubic hyperplane, and the two zero divided differences put both remaining endpoints on that hyperplane. Its six contact coordinates are
$$
C_m=\{p,p+1,p+2,p+3,p+4,p+5\}.
$$

Take
$$
T=\{p+1,p+2,p+3,p+4\}.
$$
For $y\in X_m\setminus C_m$, the five-set $T\cup\{y\}$ contains a point outside $J_p\cup J_{p+1}$. Its knot-insertion expansion contains at least one positive consecutive fourth divided difference and no negative one, so
$$
[T\cup\{y\}]H_{\alpha_m,s_*}^{(m)}>0.
$$
Such $y$ lies outside the interval spanned by $T$, so
$$
\prod_{x\in T}(y-x)>0.
$$
The interpolation remainder
$$
H_{\alpha_m,s_*}^{(m)}(y)-I_TH_{\alpha_m,s_*}^{(m)}(y)
=
[T\cup\{y\}]H_{\alpha_m,s_*}^{(m)}
\prod_{x\in T}(y-x)
$$
is positive. The common hyperplane is supporting and contains exactly the six vertices indexed by $C_m$.

Any four of these vertices are affinely independent because their first three coordinates lie on the cubic moment curve. A second nonsimplicial facet would contain a zero five-point divided difference. Since only $D_p$ and $D_{p+1}$ vanish, the positive-combination formula in Step 1 forces every zero five-set to lie inside $C_m$, hence in the same hyperplane. The six-vertex facet is unique and every other facet is tetrahedral.

Step 5: Count the local circuit flip and state the pair

Order the elements of $C_m$ as
$$
y_1<y_2<y_3<y_4<y_5<y_6,
$$
and let $\ell$ be the critical supporting cubic. For any four-set $T\subset C_m$, uniqueness of cubic interpolation gives
$$
I_TH_{\alpha_m,s_*}^{(m)}=\ell.
$$
For $j=p,p+1$,
$$
D_j(s)=(1-sA(j))(1-sp(p+1)),
$$
so
$$
D_j'(s_*)
=
-p(p+1)\left(1-\frac{A(j)}{p(p+1)}\right)<0,
$$
because $A(j)<M_A<p(p+1)$. Every five-subset of $C_m$ has a fourth divided difference obtained by positive knot insertion from $D_p,D_{p+1}$, so its derivative at $s_*$ is negative.

Let
$$
T=C_m\setminus\{y_j,y_k\},
\qquad j<k.
$$
At an omitted critical vertex $y$, differentiation of the interpolation remainder gives
$$
\left.\frac{\partial}{\partial s}
\left(
H_{\alpha_m,s}^{(m)}(y)-I_TH_{\alpha_m,s}^{(m)}(y)
\right)\right|_{s=s_*}
=
[T\cup\{y\}]
\left.\frac{\partial H_{\alpha_m,s}^{(m)}}{\partial s}\right|_{s=s_*}
\prod_{x\in T}(y-x).
$$
The divided-difference factor is negative, so the derivative has the sign opposite to the product. Residuals outside $C_m$ are positive at $s_*$ by Step 4 and remain positive for sufficiently small perturbations.

The two omitted product signs are
$$
(-1)^{5-j},
\qquad
(-1)^{6-k}.
$$
For $s<s_*$ both products must be positive. The admissible omitted pairs are
$$
(1,2),(1,4),(1,6),(3,4),(3,6),(5,6),
$$
so there are $6$ tetrahedral facets. For $s>s_*$ both products must be negative. The admissible pairs are
$$
(2,3),(2,5),(4,5),
$$
so there are $3$.

Since $\alpha_m=2p+1$, the six contact coordinates are equivalently
$$
C_m=\{j\in X_m:\alpha_m-1\leq2j\leq\alpha_m+9\}.
$$

Final Answer: $\boxed{(\{j\in X_m:\alpha_m-1\leq2j\leq\alpha_m+9\},2\lceil\frac{\sqrt{8m+5}-1}{2}\rceil+1)}$

---

## Answer

$(\{j\in X_m:\alpha_m-1\leq2j\leq\alpha_m+9\},2\lceil\frac{\sqrt{8m+5}-1}{2}\rceil+1)$

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
