## Steps

Step 1: Reduce every candidate facet to a four-root sign problem

Write
$$
x_r=c_r=\cos\frac{2\pi r}{n},
$$
so
$$
x_1>x_2>\cdots>x_h.
$$
Three distinct points $Q_a,Q_b,Q_c$ determine a nonvertical plane: a vertical plane would give a nonzero polynomial of degree at most $2$ vanishing at the three distinct numbers $x_a,x_b,x_c$. Hence the plane has the form
$$
z=p(x),\qquad \deg p\le2.
$$
Therefore
$$
G_F(x):=x^4-p(x)
=(x-x_a)(x-x_b)(x-x_c)(x-d_F),
\qquad
d_F=-(x_a+x_b+x_c),
\tag{1}
$$
for $F=\{a,b,c\}$, because the $x^3$ coefficient of $G_F$ is zero.

We shall use the following sign rule without changing conventions. If
$$
\lambda_1>\lambda_2>\lambda_3>\lambda_4,
$$
then the monic quartic $\prod_{i=1}^4(x-\lambda_i)$ has signs
$$
+,-,+,-,+
\tag{2}
$$
from right to left on
$$
(\lambda_1,\infty),\ (\lambda_2,\lambda_1),\
(\lambda_3,\lambda_2),\ (\lambda_4,\lambda_3),\
(-\infty,\lambda_4).
$$
Thus the plane through $Q_a,Q_b,Q_c$ supports $K_s$ exactly when all retained nonzero values $G_F(x_r)$ have the same sign. It is new exactly when $G_F(x_s)$ has the opposite sign. Notice that multiplying the plane equation by $-1$ changes every sign simultaneously; it does not permit one to relabel the two negative intervals in (2) as the only possible exceptional intervals.

Step 2: Determine the link of the deleted vertex

Put
$$
\delta=\frac{\pi}{n},\qquad x_r=\cos(2r\delta).
$$
For adjacent pairs define
$$
\begin{aligned}
S(p,q)
&=x_p+x_{p+1}+x_q+x_{q+1}\\
&=4\cos\delta\cos((p+q+1)\delta)\cos((p-q)\delta).
\end{aligned}
\tag{3}
$$
Since $|p-q|\delta<\pi/2$,
$$
S(p,q)>0\quad(p+q\le h-1),
\qquad
S(p,q)<0\quad(p+q\ge h).
\tag{4}
$$
For the endpoint pattern set
$$
T_i=x_1+x_h+x_i+x_{i+1}
=\cos(2\delta)-\cos\delta
+2\cos\delta\cos((2i+1)\delta).
\tag{5}
$$
The sequence $T_i$ is strictly decreasing. Its two values around the middle have opposite signs: if $h=2m$, they are
$$
2\sin\frac{3\delta}{2}\left(\cos\delta-\sin\frac{\delta}{2}\right)>0,
\qquad
-2\sin\frac{\delta}{2}\left(\sin\frac{3\delta}{2}+\cos\delta\right)<0,
$$
and if $h=2m+1$, they are
$$
2\sin\frac{\delta}{2}\left(\cos\delta-\sin\frac{3\delta}{2}\right)>0,
\qquad
-2\sin\frac{3\delta}{2}\left(\sin\frac{\delta}{2}+\cos\delta\right)<0.
$$

Applying the sign rule (2), every bounded interval carrying the sign opposite to the supporting sign must contain no unselected node. Hence its sample-node endpoints must be adjacent unless the fourth root $d_F$ lies inside that empty gap. Equations (4) and (5) locate $d_F$ in each possible adjacent gap and give exactly
$$
\begin{aligned}
\mathcal F_0
={}&\bigl\{\{i,i+1,h-i\}:1\le i\le\lfloor h/2\rfloor-1\bigr\}\\
&\cup\bigl\{\{i,h-i,h-i+1\}:1\le i\le\lfloor(h-1)/2\rfloor\bigr\}\\
&\cup\bigl\{\{1,i,i+1\}:2\le i\le\lfloor(h-1)/2\rfloor\bigr\}\\
&\cup\bigl\{\{i,i+1,h\}:\lceil h/2\rceil\le i\le h-2\bigr\}\\
&\cup\bigl\{\{1,\lceil h/2\rceil,h\}\bigr\}.
\end{aligned}
\tag{6}
$$
All inequalities are strict, so these faces are triangular and no fourth sample point is coplanar with one of them.

Because
$$
s\le\frac{n-3}{8}=\frac{h-1}{4},
$$
reading the occurrences of $s$ in (6) gives exactly the five facets incident to $Q_s$:
$$
\{1,s-1,s\},\quad
\{1,s,s+1\},\quad
\{s-1,s,h-s+1\},\quad
\{s,s+1,h-s\},\quad
\{s,h-s,h-s+1\}.
\tag{7}
$$
Their link cycle is
$$
1,\ s-1,\ h-s+1,\ h-s,\ s+1,\ 1.
\tag{8}
$$

Step 3: Prove that $F_1=\{1,s-1,s+1\}$ is new

Let
$$
d_1=-(x_1+x_{s-1}+x_{s+1}).
$$
Since $x_h=-\cos\delta$,
$$
x_1+x_{s-1}+x_{s+1}+x_h
=\cos(2\delta)\bigl(1+2\cos(2s\delta)\bigr)-\cos\delta.
\tag{9}
$$
Now $2s\delta<\pi/4$ and $2\delta<\pi/3$, so
$$
\cos(2s\delta)>\frac{\sqrt2}{2},\qquad
\cos(2\delta)>\frac12.
$$
Consequently the right side of (9) is larger than
$$
\frac{1+\sqrt2}{2}-1>0,
$$
and therefore
$$
d_1<x_h.
\tag{10}
$$
The four roots of $G_{F_1}$ are thus ordered as
$$
x_1>x_{s-1}>x_{s+1}>d_1,
$$
while the sample nodes satisfy the sharper chain
$$
x_1>x_{s-1}>x_s>x_{s+1}>\cdots>x_h>d_1.
\tag{11}
$$
By (2), $G_{F_1}(x_s)>0$. Every retained nonroot with index $2\le r\le s-2$ lies in $(x_{s-1},x_1)$, where $G_{F_1}<0$, and every retained nonroot with $r\ge s+2$ lies in $(d_1,x_{s+1})$, where again $G_{F_1}<0$. Hence
$$
G_{F_1}(x_s)>0,
\qquad
G_{F_1}(x_r)<0\quad(r\notin F_1\cup\{s\}).
\tag{12}
$$
Thus the plane through $F_1$ supports $K_s$ and strictly separates $Q_s$; $F_1$ is a new facet.

Step 4: Prove that the other two proposed facets are new

Set
$$
F_2=\{s-1,s+1,h-s\},
\qquad
d_2=-(x_{s-1}+x_{s+1}+x_{h-s}).
$$
Let $A=2s\delta$. Since $x_{h-s}=-\cos(A+\delta)$,
$$
\begin{aligned}
x_{s-1}+x_{s+1}+2x_{h-s}
&=2\cos A\cos(2\delta)-2\cos(A+\delta)\\
&=2\sin\delta\cos A
\left(\tan A-\frac{\sin(3\delta/2)}{\cos(\delta/2)}\right).
\end{aligned}
\tag{13}
$$
Here $0<A<\pi/4$ and $A\ge6\delta$. Also
$$
\frac{\sin(3\delta/2)}{\cos(\delta/2)}<3\delta<6\delta\le A<\tan A,
$$
so (13) is positive. On the other hand,
$$
x_{s-1}+x_{s+1}+x_{h-s}+x_{h-s+1}
=2\cos A\bigl(\cos(2\delta)-\cos\delta\bigr)<0.
\tag{14}
$$
Therefore
$$
x_{h-s}>d_2>x_{h-s+1}.
\tag{15}
$$
The root order is
$$
x_{s-1}>x_{s+1}>x_{h-s}>d_2.
$$
By (2), $x_s$ lies in the negative interval $(x_{s+1},x_{s-1})$. Every retained nonroot lies either above $x_{s-1}$, between $x_{s+1}$ and $x_{h-s}$, or below $d_2$, all positive intervals; the other negative interval $(d_2,x_{h-s})$ contains no sample node by (15). Hence $F_2$ is new.

Now set
$$
F_3=\{s-1,h-s,h-s+1\},
\qquad
d_3=-(x_{s-1}+x_{h-s}+x_{h-s+1}).
$$
Equation (4) with $(p,q)=(s-1,h-s)$ gives
$$
x_{s-1}+x_s+x_{h-s}+x_{h-s+1}>0,
$$
while (14) gives
$$
x_{s-1}+x_{s+1}+x_{h-s}+x_{h-s+1}<0.
$$
Thus
$$
x_s>d_3>x_{s+1}.
\tag{16}
$$
The four roots now satisfy
$$
x_{s-1}>d_3>x_{h-s}>x_{h-s+1}.
$$
By (2), the only sample node in the negative interval $(d_3,x_{s-1})$ is $x_s$, while the other negative interval $(x_{h-s+1},x_{h-s})$ contains no sample node because its endpoints are consecutive. All retained nonroots therefore have the opposite sign from $x_s$, so $F_3$ is new.

Step 5: Prove exhaustion by the vertex-deletion patch

Every facet of $K$ avoiding $Q_s$ remains a facet of $K_s$, because its original supporting plane still supports the smaller convex hull and still contains the same three affinely independent retained vertices. On the boundary sphere $\partial K$, the union of all facets avoiding $Q_s$ is a closed disk whose boundary is exactly the link cycle (8); its complementary open disk is the star of $Q_s$ with the five incident triangles (7).

The three new facets $F_1,F_2,F_3$ have pairwise disjoint relative interiors and form the triangulated disk
$$
\operatorname{conv}\{1,s-1,s+1\}
\cup
\operatorname{conv}\{s-1,s+1,h-s\}
\cup
\operatorname{conv}\{s-1,h-s,h-s+1\},
$$
whose boundary is again precisely the cycle (8). Steps 3 and 4 place this whole disk in $\partial K_s$. Gluing it to the unchanged old-facet disk produces a closed polyhedral $2$-sphere contained in the boundary sphere $\partial K_s$. Since a proper collection of facets of a convex $3$-polytope has nonempty boundary edges, while this union has none, it must equal all of $\partial K_s$. Hence there is no fourth new facet.

Therefore
$$
\boxed{\mathcal N_{n,s}=\{\{1,s-1,s+1\},\{s-1,s+1,h-s\},\{s-1,h-s,h-s+1\}\}}.
$$

---

## Answer

$\{\{1,s-1,s+1\},\{s-1,s+1,h-s\},\{s-1,h-s,h-s+1\}\}$

---

## Classification

**Problem Type:** Exhaustive enumeration

**Answer Type:** Set or multiset of objects

---

## Solution Concepts

- supporting planes of convex polytopes
- quartic root-order sign analysis
- trigonometric gap identities
- vertex links and deletion patches
- exhaustive facet replacement
