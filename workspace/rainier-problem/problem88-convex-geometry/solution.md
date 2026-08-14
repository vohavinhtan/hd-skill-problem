## Steps

Step 1: Reduce every candidate plane to a moving fourth root

Write
$$
x_r=\cos(2r\delta),
$$
so
$$
x_1>x_2>\cdots>x_h.
$$
For a triple $F=\{a,b,c\}$, the plane through $Q_a(\lambda),Q_b(\lambda),Q_c(\lambda)$ is not vertical: otherwise its equation would give a nonzero polynomial of degree at most $2$ in $x$ vanishing at the three distinct numbers $x_a,x_b,x_c$. Hence it has the form
$$
z=p(x),\qquad \deg p\le 2.
$$
Therefore
$$
G_F(x)
=
x^4+\lambda x^3-p(x)
=
(x-x_a)(x-x_b)(x-x_c)(x-d_F),
\tag{1}
$$
and comparison of the $x^3$-coefficients gives
$$
d_F=-\lambda-(x_a+x_b+x_c).
\tag{2}
$$

All nonzero values $G_F(x_r)$ for $r\notin F\cup\{s,t\}$ have one sign exactly when the plane supports $K_{\{s,t\}}(\lambda)$. If it is jointly new, then $G_F(x_s)$ and $G_F(x_t)$ must both have the opposite sign: reinserting $Q_t$ must destroy support for $K_{\{s\}}(\lambda)$, and reinserting $Q_s$ must destroy support for $K_{\{t\}}(\lambda)$. Conversely, when these signs are strict, the plane contains no additional retained sample point and the corresponding triangle is jointly new.

Step 2: Show that only four triples can ever be jointly new

Since
$$
s\le \frac{h-1}{4},
$$
we have
$$
t-s=h-2s\ge 2s+1>1.
\tag{3}
$$
Thus $x_s$ and $x_t$ are separated by retained sample nodes.

Along the strictly ordered nodes $x_1>\cdots>x_h$, the sign of the quartic in (1) changes only when a root is crossed. For $x_s$ to be the only wrong-sign sample in its local block, there must be a root in each adjacent gap beside $x_s$; the same is true for $x_t$. Hence four sign boundaries are required. Three of them are the selected sample roots $x_a,x_b,x_c$, while the remaining one is $d_F$. Therefore one deleted node is bracketed by its two selected neighbours and the other by one selected neighbour together with $d_F$.

The only possibilities are
$$
\begin{array}{c|c}
F&\text{required position of }d_F\\ \hline
F_A=\{s-1,s+1,t-1\}&x_t>d_F>x_{t+1}\\
F_B=\{s-1,s+1,t+1\}&x_{t-1}>d_F>x_t\\
F_C=\{s-1,t-1,t+1\}&x_s>d_F>x_{s+1}\\
F_D=\{s+1,t-1,t+1\}&x_{s-1}>d_F>x_s.
\end{array}
\tag{4}
$$
The inequalities are strict because equality would put a fourth sample point on the plane, so the intersection would not be the required triangular facet.

Step 3: Convert the four root placements into four parameter intervals

Set
$$
C=x_{s-1}+x_{s+1},
$$
and define
$$
\begin{aligned}
U&=C+x_{t-1}+x_{t+1},&
V&=C+x_t+x_{t+1},\\
R&=C+x_{t-1}+x_t,&
W&=x_{s-1}+x_s+x_{t-1}+x_{t+1},\\
Z&=x_s+x_{s+1}+x_{t-1}+x_{t+1}.
\end{aligned}
\tag{5}
$$
Using (2), the four rows of (4) are respectively equivalent to
$$
\begin{aligned}
F_A&:\quad -R<\lambda<-U,\\
F_B&:\quad -U<\lambda<-V,\\
F_C&:\quad -W<\lambda<-U,\\
F_D&:\quad -U<\lambda<-Z.
\end{aligned}
\tag{6}
$$
For example, for $F_B$,
$$
d_F=-\lambda-(C+x_{t+1}),
$$
and $x_{t-1}>d_F>x_t$ is exactly
$$
-U<\lambda<-V.
$$
The other three rows follow directly from their two adjacent-gap inequalities.

Step 4: Locate the four intervals relative to $0$

Recall $t=h-s$ and $A=2s\delta$. Since
$$
x_{h-s+k}=-\cos\bigl((2s+1-2k)\delta\bigr),
\tag{7}
$$
we obtain
$$
C=2\cos A\cos(2\delta).
$$
Hence
$$
\begin{aligned}
U
&=
2\cos(2\delta)\bigl(\cos A-\cos(A+\delta)\bigr)>0,\\
V
&=
2\cos A\bigl(\cos(2\delta)-\cos\delta\bigr)<0,\\
Z
&=
2\cos(A+\delta)\bigl(\cos\delta-\cos(2\delta)\bigr)>0.
\end{aligned}
\tag{8}
$$
Indeed, $0<A<\pi/4$, so all displayed cosine factors are positive, and cosine is strictly decreasing on the relevant interval.

Moreover,
$$
R-U=x_t-x_{t+1}>0,
\qquad
W-U=x_s-x_{s+1}>0,
\qquad
U-Z=x_{s-1}-x_s>0.
\tag{9}
$$
Therefore
$$
R>U>Z>0>V,
\qquad
W>U.
\tag{10}
$$

Now (6) and (10) completely order the possible changes. The intervals for $F_A$ and $F_C$ lie entirely to the left of $-U$. The interval for $F_D$ is
$$
(-U,-Z),
$$
while the interval for $F_B$ is
$$
(-U,-V).
$$
Thus at $\lambda=0$ the only jointly new facet is $F_B$. For
$$
-Z<\lambda<-V,
$$
$F_B$ remains jointly new and none of $F_A,F_C,F_D$ is jointly new. Immediately to the left of $-Z$, $F_D$ is also jointly new; immediately to the right of $-V$, $F_B$ is no longer jointly new. Hence this is the largest open interval containing $0$ on which $\mathcal J(\lambda)$ is constant.

Step 5: Substitute the two critical values

From (8),
$$
-Z
=
-2\cos(A+\delta)\bigl(\cos\delta-\cos(2\delta)\bigr),
$$
and
$$
-V
=
2\cos A\bigl(\cos\delta-\cos(2\delta)\bigr).
$$

Final Answer: $\boxed{(-2\cos(A+\delta)(\cos\delta-\cos(2\delta)),2\cos A(\cos\delta-\cos(2\delta)))}$

---

## Answer

$(-2\cos(A+\delta)(\cos\delta-\cos(2\delta)),2\cos A(\cos\delta-\cos(2\delta)))$

---

## Classification

**Problem Type:** Parameter identification

**Answer Type:** Interval or region description

---

## Solution Concepts

- supporting planes of convex hulls
- quartic root-order sign analysis
- parametric face stability
- trigonometric gap identities
- simultaneous vertex deletion
