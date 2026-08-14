## Steps

Step 1: Convert supporting planes into quartic sign tests

Write $x_r=c_r$. Since
$$
x_1>x_2>\cdots>x_h,
$$
three distinct points $Q_a,Q_b,Q_c$ determine a plane that is not vertical: a vertical plane would give a nonzero polynomial of degree at most $2$ vanishing at the three distinct numbers $x_a,x_b,x_c$. Hence the plane has the form
$$
z=p(x),
\qquad
\deg p\leq 2.
$$
Because $x_a^4=p(x_a)$, $x_b^4=p(x_b)$, and $x_c^4=p(x_c)$, the monic quartic $x^4-p(x)$ has roots $x_a,x_b,x_c$. Its $x^3$ coefficient is $0$, so its fourth root is
$$
d_F=-(x_a+x_b+x_c).
$$
Thus, for $F=\{a,b,c\}$,
$$
G_F(x)
=
x^4-p(x)
=
(x-x_a)(x-x_b)(x-x_c)(x-d_F).
\tag{1}
$$
The plane through $Q_a,Q_b,Q_c$ supports $K_s$ exactly when all values
$$
G_F(x_r),
\qquad
r\notin F\cup\{s\},
$$
have one sign. It is new exactly when $G_F(x_s)$ has the opposite sign, because then the deleted point $Q_s$ lies strictly on the other side of that plane.

Step 2: Determine the five old facets incident to $Q_s$

Put
$$
\delta=\frac{\pi}{n},
\qquad
x_r=\cos(2r\delta).
$$
To locate the fourth root in (1), the useful adjacent-gap sums are
$$
\begin{aligned}
S(p,q)
&=
x_p+x_{p+1}+x_q+x_{q+1}\\
&=
4\cos\delta\,
\cos((p+q+1)\delta)\,
\cos((p-q)\delta).
\end{aligned}
\tag{2}
$$
Since $|p-q|\delta<\frac{\pi}{2}$, equation (2) gives
$$
S(p,q)>0\quad\text{if }p+q\leq h-1,
\qquad
S(p,q)<0\quad\text{if }p+q\geq h.
\tag{3}
$$
For the endpoint pattern, define
$$
T_i=x_1+x_h+x_i+x_{i+1}
=
\cos(2\delta)-\cos\delta
+
2\cos\delta\cos((2i+1)\delta).
\tag{4}
$$
This decreases strictly with $i$. If $h$ is even, its two central values are
$$
2\sin\frac{3\delta}{2}
\left(\cos\delta-\sin\frac{\delta}{2}\right)>0,
\qquad
-2\sin\frac{\delta}{2}
\left(\sin\frac{3\delta}{2}+\cos\delta\right)<0.
$$
If $h$ is odd, they are
$$
2\sin\frac{\delta}{2}
\left(\cos\delta-\sin\frac{3\delta}{2}\right)>0,
\qquad
-2\sin\frac{3\delta}{2}
\left(\sin\frac{\delta}{2}+\cos\delta\right)<0.
$$

The sign of the quartic in (1) alternates whenever one crosses a simple root. Therefore every interval on which its sign is opposite to the supporting sign must contain no unselected node $x_r$. Using (3) to decide the gap containing $d_F$, and (4) for the unique endpoint transition, gives the complete facet list of $K$:
$$
\begin{aligned}
\mathcal F_0
={}&
\bigl\{\{i,i+1,h-i\}:1\leq i\leq\lfloor h/2\rfloor-1\bigr\}\\
&\cup
\bigl\{\{i,h-i,h-i+1\}:1\leq i\leq\lfloor(h-1)/2\rfloor\bigr\}\\
&\cup
\bigl\{\{1,i,i+1\}:2\leq i\leq\lfloor(h-1)/2\rfloor\bigr\}\\
&\cup
\bigl\{\{i,i+1,h\}:\lceil h/2\rceil\leq i\leq h-2\bigr\}\\
&\cup
\bigl\{\{1,\lceil h/2\rceil,h\}\bigr\}.
\end{aligned}
\tag{5}
$$
Here the inequalities in (3) and (4) are strict, so the supporting faces in (5) are triangular.

Because
$$
3\leq s\leq\frac{n-3}{8},
$$
the index $s$ lies strictly before the middle ranges in (5). Reading off the terms of (5) that contain $s$, the five incident facets are exactly
$$
\begin{aligned}
&\{1,s-1,s\},
&&\{1,s,s+1\},\\
&\{s-1,s,h-s+1\},
&&\{s,s+1,h-s\},\\
&\{s,h-s,h-s+1\}.
\end{aligned}
\tag{6}
$$
After deleting $Q_s$, these five triangles leave a pentagonal boundary with cyclic vertex order
$$
1,\ s-1,\ h-s+1,\ h-s,\ s+1.
\tag{7}
$$

Step 3: Verify the three replacement supporting triangles

Consider
$$
F_1=\{1,s-1,s+1\},
\quad
F_2=\{s-1,s+1,h-s\},
\quad
F_3=\{s-1,h-s,h-s+1\}.
\tag{8}
$$

For $F_1$, its fourth root is
$$
d_1=-(x_1+x_{s-1}+x_{s+1}).
$$
Since $x_h=-\cos\delta$,
$$
x_1+x_{s-1}+x_{s+1}+x_h
=
\cos(2\delta)\bigl(1+2\cos(2s\delta)\bigr)-\cos\delta.
\tag{9}
$$
The bound $2s\delta<\frac{\pi}{4}$ gives $\cos(2s\delta)>\frac{\sqrt2}{2}$, while $2\delta<\frac{\pi}{3}$ gives $\cos(2\delta)>\frac12$. Hence the right side of (9) is positive, so
$$
d_1<x_h.
\tag{10}
$$
The only positive interval of $G_{F_1}$ containing a node between two selected roots is then $(x_{s+1},x_{s-1})$, and its only unselected node is $x_s$. Thus $F_1$ supports $K_s$ and cuts off $Q_s$.

For $F_2$, let
$$
d_2=-(x_{s-1}+x_{s+1}+x_{h-s}).
$$
Set $A=2s\delta$. First,
$$
\begin{aligned}
x_{s-1}+x_{s+1}+2x_{h-s}
&=
2\cos A\cos(2\delta)-2\cos(A+\delta)\\
&=
2\sin\delta\cos A
\left(
\tan A-\frac{\sin(3\delta/2)}{\cos(\delta/2)}
\right).
\end{aligned}
\tag{11}
$$
Here $0<A<\frac{\pi}{4}$ and $A\geq6\delta$. Since $\tan A>A$, $\sin x<x$, and $\cos(\delta/2)>\frac12$,
$$
\tan A>A\geq6\delta
>
\frac{\sin(3\delta/2)}{\cos(\delta/2)}.
$$
Thus the quantity in (11) is positive. Also
$$
x_{s-1}+x_{s+1}+x_{h-s}+x_{h-s+1}
=
2\cos A\bigl(\cos(2\delta)-\cos\delta\bigr)<0.
\tag{12}
$$
Equations (11) and (12) give
$$
x_{h-s}>d_2>x_{h-s+1}.
\tag{13}
$$
Hence the two negative intervals of $G_{F_2}$ contain, respectively, only the deleted node $x_s$ and no node at all. Therefore $F_2$ is a new facet.

For $F_3$, let
$$
d_3=-(x_{s-1}+x_{h-s}+x_{h-s+1}).
$$
Using (3) with $p=s-1$ and $q=h-s$ gives
$$
x_{s-1}+x_s+x_{h-s}+x_{h-s+1}>0,
$$
while (12) gives
$$
x_{s-1}+x_{s+1}+x_{h-s}+x_{h-s+1}<0.
$$
Therefore
$$
x_s>d_3>x_{s+1}.
\tag{14}
$$
Again, one negative interval contains only $x_s$ and the other lies between the adjacent selected nodes $x_{h-s}$ and $x_{h-s+1}$. Thus $F_3$ is a new facet.

Step 4: Prove exhaustion

Every facet of $K$ not containing $Q_s$ remains supported after $Q_s$ is deleted. By (6), the only part of the boundary that can change is the pentagonal opening (7). The three triangles in (8) have pairwise disjoint relative interiors and triangulate that pentagon:
$$
\{1,s-1,s+1\},
\qquad
\{s-1,s+1,h-s\},
\qquad
\{s-1,h-s,h-s+1\}.
$$
Step 3 shows that all three are actual supporting facets of $K_s$. Since their union already fills the entire changed boundary region, no additional new triangular facet can occur.

Final Answer: $\boxed{\{\{1,s-1,s+1\},\{s-1,s+1,h-s\},\{s-1,h-s,h-s+1\}\}}$

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
- quartic sign analysis
- trigonometric gap identities
- vertex deletion and facet replacement
