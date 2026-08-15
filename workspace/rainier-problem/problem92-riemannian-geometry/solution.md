## Steps

Step 1: Identify the deck group, its center, and the quotient in the final condition

Using $BAB^{-1}=A^{-1}$, every word can be written uniquely as $A^mB^n$ because
$$
A^mB^n(x,y)=\left((-1)^n x+m,\ y+na\right).
$$
If $A^mB^n$ is central, commuting with $A$ gives $n=2k$, and commuting with $B$ then gives $m=0$. Hence
$$
Z_a=\langle B^2\rangle.
$$
Modulo $Z_a$, every coset has a unique representative $A^mB^{\epsilon}Z_a$ with $\epsilon\in\{0,1\}$. Therefore
$$
\Gamma_a/Z_a=\langle \overline A,\overline B:\overline B^2=e,\ \overline B\overline A\overline B=\overline A^{-1}\rangle
$$
is the infinite dihedral group. The reflection subgroups $\langle\overline B\rangle$ and $\langle\overline{AB}\rangle$ are distinct, intersect in $\{Z_a\}$, and generate the quotient because
$$
\overline{AB}\,\overline B=\overline A.
$$

Step 2: Determine the shortest-displacement subgroup modulo the center

Translate $\widetilde p_u=(u,0)$ to the origin. Its orbit is
$$
(m,2ka),\qquad (m-2u,(2k+1)a),\qquad m,k\in\mathbb Z.
$$
With $c=\min\{2u,1-2u\}$, the least squared displacement among nontrivial even-row points is
$$
\min\{1,4a^2\},
$$
from $A^{\pm1}$ or $B^{\pm2}$, while the least squared odd-row displacement is
$$
c^2+a^2.
$$
The odd displacement is no larger than the central displacement $2a$ exactly when
$$
c^2+a^2\leq4a^2
\quad\Longleftrightarrow\quad
a\geq\frac{c}{\sqrt{3}},
$$
and it is no larger than the horizontal displacement $1$ exactly when
$$
c^2+a^2\leq1
\quad\Longleftrightarrow\quad
a\leq\sqrt{1-c^2}.
$$
Thus for $a<\frac{c}{\sqrt{3}}$ only the central elements $B^{\pm2}$ are shortest, so $\overline N_a(u)=\{Z_a\}$.

Assume $u\ne\frac14$. For $u<\frac14$ the nearest odd labels are $B^{\pm1}$ modulo $Z_a$; for $u>\frac14$ they are $AB^{\pm1}$. Hence
$$
\overline N_a(u)=
\begin{cases}
\{Z_a\},&0<a<\frac{c}{\sqrt{3}},\\
\langle\overline B\rangle,&\frac{c}{\sqrt{3}}\leq a<\sqrt{1-c^2},\ u<\frac14,\\
\langle\overline{AB}\rangle,&\frac{c}{\sqrt{3}}\leq a<\sqrt{1-c^2},\ u>\frac14,\\
\Gamma_a/Z_a,&a=\sqrt{1-c^2},\\
\langle\overline A\rangle,&a>\sqrt{1-c^2}.
\end{cases}
$$
At $a=\frac{c}{\sqrt{3}}$ the central elements also tie and do not change the quotient subgroup. At $a=\sqrt{1-c^2}$ the odd displacement and $A^{\pm1}$ both have length $1$, while $2a>1$ because $c\leq\frac12$; therefore the relevant reflection together with $\overline A$ generates the whole quotient. For larger $a$, $c^2+a^2>1$ and $2a>1$, so only $A^{\pm1}$ are shortest modulo the center.

If $u=\frac14$, then $c=\frac12$ and both odd reflection classes tie. Therefore
$$
\overline N_a\left(\frac14\right)=
\begin{cases}
\{Z_a\},&0<a<\frac{c}{\sqrt{3}},\\
\Gamma_a/Z_a,&\frac{c}{\sqrt{3}}\leq a\leq\sqrt{1-c^2},\\
\langle\overline A\rangle,&a>\sqrt{1-c^2}.
\end{cases}
$$

Step 3: Exhaust the Dirichlet inequalities and determine the farthest subgroup modulo the center

Put $d=1-c$. After reflecting the shifted $x$-coordinate when $u>\frac14$, the full orbit has the form
$$
(m,2ka),\qquad (m-c,(2k+1)a),\qquad m,k\in\mathbb Z,
$$
with $0\leq c\leq\frac12$. The offsets $-c,d$ represent $\overline B,\overline{AB}$ for $u<\frac14$, and the classes are interchanged for $u>\frac14$.

For a fixed lift $z=(x,y)$, squared distances to the even and odd orbit points are
$$
(x-m)^2+(y-2ka)^2,
$$
$$
(x-m+c)^2+(y-(2k+1)a)^2.
$$
As $|m|+|k|\to\infty$, at least one of $|m|$ or $|k|$ tends to infinity, so each expression tends to infinity. Hence for every $R$ only finitely many orbit points have distance at most $R$ from $z$, and the distance to the orbit attains its minimum. Consequently
$$
d_{K_a}(p_u,\pi(z))=\min_{g\in\Gamma_a}\|z-g\widetilde p_u\|.
$$
Applying a minimizing $g^{-1}$ places the lift in the Dirichlet cell; after translating $\widetilde p_u$ to $0$, its quotient distance is its Euclidean norm. Thus farthest points are norm-maximizers of the Dirichlet cell, and active equalities give exactly the minimizing orbit labels used in $F_a(u)$.

For an orbit vector $v$, its Dirichlet inequality is $2(x,y)\cdot v\leq\|v\|^2$. Let $P$ be the intersection of the inequalities from
$$
(\pm1,0),\quad(0,\pm2a),\quad(-c,\pm a),\quad(d,\pm a).
$$
Then $|x|\leq\frac12$ and $|y|\leq a$. For every even vector $(m,2ka)$ and every $(x,y)\in P$,
$$
2mx+4kay\leq |m|+4|k|a^2\leq m^2+4k^2a^2,
$$
so every even inequality is implied.

For the odd rows $y=\pm a$, fix $s\in\{\pm1\}$. If $m\geq2$, write $m-c=d+n$ with $n\geq1$. From the inequality for $(d,sa)$ and $x\leq\frac12$,
$$
2(d+n)x+2say\leq d^2+a^2+n\leq(d+n)^2+a^2.
$$
If $m\leq-1$, write $m-c=-c-n$ with $n\geq1$. From the inequality for $(-c,sa)$ and $x\geq-\frac12$,
$$
2(-c-n)x+2say\leq c^2+a^2+n\leq(c+n)^2+a^2.
$$
The last inequality is an equality only when $c=0,n=1$. Thus every horizontal translate in the rows $y=\pm a$ is implied by the two nearest translates. If $j$ is odd with $|j|\geq3$, put $s=\operatorname{sgn}(j)$ and $r=m-c$. Using the already implied inequality for $(r,sa)$ and $sy\leq a$,
$$
2rx+2jay\leq r^2+a^2+2(|j|-1)a^2<r^2+j^2a^2.
$$
Hence all farther odd rows are strictly redundant. Therefore the full Dirichlet cell $D$ equals $P$.

The only possible omitted odd equality is $c=0,m=-1,|j|=1$; then $c(1-c)=0$, and the farthest subgroup below is already the whole quotient. Strict convexity of squared norm shows every norm-maximizer of $P$ is a vertex.

The upper oblique sides are
$$
L_c(x)=\frac{c}{a}x+\frac{a^2+c^2}{2a},
\qquad
L_d(x)=-\frac{d}{a}x+\frac{a^2+d^2}{2a}.
$$
They meet at
$$
T=\left(\frac{d-c}{2},\frac{a^2+cd}{2a}\right),
$$
which lies at or below $y=a$ exactly when $a^2\geq cd=c(1-c)$.

If $a^2\geq cd$, with $b=\frac{a^2-cd}{2a}$ the vertices are
$$
\left(-\frac12,\pm b\right),\quad
\left(\frac12,\pm b\right),\quad
\left(\frac{d-c}{2},\pm\frac{a^2+cd}{2a}\right),
$$
and their squared radii agree because
$$
\left(\frac{d-c}{2}\right)^2+\left(\frac{a^2+cd}{2a}\right)^2
=\frac14+\left(\frac{a^2-cd}{2a}\right)^2.
$$
At $T$ the origin and both upper odd sites are nearest, so both reflection classes occur and
$$
\overline F_a(u)=\Gamma_a/Z_a
\qquad\text{for }a^2\geq c(1-c).
$$

Now assume $0<c\leq\frac12$ and $a^2<cd$. Define
$$
x_c=\frac{a^2-c^2}{2c},\quad x_d=\frac{d^2-a^2}{2d},\quad
R_c=\frac{a^2+c^2}{2c},\quad R_d=\frac{a^2+d^2}{2d}.
$$
The six vertices are
$$
(-R_c,0),\ (x_c,a),\ (x_d,a),\ (R_d,0),\ (x_d,-a),\ (x_c,-a),
$$
with radii $R_c,R_d$ and
$$
R_d-R_c=\frac{(d-c)(cd-a^2)}{2cd}.
$$
Since $a^2<cd$, both radii are $<\frac12$. Thus omitted noncentral even sites cannot become active there; farther odd rows are strict, and omitted translates in $y=\pm a$ are strict for $c>0$.

If $u\ne\frac14$, then $d>c$, so only the $d$-side vertices are farthest. At $(R_d,0)$ the active sites are $0,(d,a),(d,-a)$; at $(x_d,\pm a)$ they are $0,(d,\pm a),(0,\pm2a)$. Modulo $Z_a$, every noncentral difference is the wide-offset reflection class, giving
$$
\overline F_a(u)=
\begin{cases}
\langle\overline{AB}\rangle,&u<\frac14,\\
\langle\overline B\rangle,&u>\frac14.
\end{cases}
$$
If $u=\frac14$, then $c=d$, both triples are farthest and both reflection classes occur, so $\overline F_a(\frac14)=\Gamma_a/Z_a$ for every $a>0$.

Step 4: Combine the subgroup conditions away from the exceptional line

Assume $u\ne\frac14$. If $a^2\geq c(1-c)$, Step 3 gives $\overline F_a(u)=\Gamma_a/Z_a$. Trivial intersection would require $\overline N_a(u)=\{Z_a\}$, hence $a<\frac{c}{\sqrt{3}}$ by Step 2. But for $0<c\leq\frac12$,
$$
c(1-c)>\frac{c^2}{3},
$$
so $a\geq\sqrt{c(1-c)}$ implies $a>\frac{c}{\sqrt{3}}$; for $c=0$ the latter inequality is impossible. Thus this regime contributes nothing.

If $a^2<c(1-c)$, then $a<\frac12<\sqrt{1-c^2}$. If $a<\frac{c}{\sqrt{3}}$, Step 2 gives $\overline N_a(u)=\{Z_a\}$ and the join is only $\overline F_a(u)$. If instead
$$
\frac{c}{\sqrt{3}}\leq a<\sqrt{c(1-c)},
$$
then $\overline N_a(u)$ is the small-offset reflection and $\overline F_a(u)$ is the wide-offset reflection. By Step 1 they generate $\Gamma_a/Z_a$ and intersect in $\{Z_a\}$. The lower boundary is included because its extra shortest elements are central; the upper boundary is excluded because $\overline F_a(u)$ becomes the whole quotient there.

Step 5: Resolve the exceptional line and the endpoints

At $u=\frac14$, one has $2c=1$ and Step 3 gives $\overline F_a(u)=\Gamma_a/Z_a$ for every $a>0$. Thus trivial intersection is equivalent to $\overline N_a(u)=\{Z_a\}$, which by Step 2 is exactly
$$
0<a<\frac{c}{\sqrt{3}}=\frac{1}{2\sqrt{3}}.
$$
At equality both reflection classes become shortest, so the endpoint is excluded. At $u=0$ or $u=\frac12$, $c=0$, so the generic interval is empty. Since $0\leq c\leq\frac12$, $2c<1$ is equivalent to $u\ne\frac14$, and $2c=1$ to $u=\frac14$.

Final Answer: $\boxed{\{(a,u):(2c<1\land\frac{c}{\sqrt{3}}\leq a<\sqrt{c(1-c)})\lor(2c=1\land0<a<\frac{c}{\sqrt{3}})\}}$

---

## Answer

$\{(a,u):(2c<1\land\frac{c}{\sqrt{3}}\leq a<\sqrt{c(1-c)})\lor(2c=1\land0<a<\frac{c}{\sqrt{3}})\}$

---

## Classification

**Problem Type:** Symbolic derivation

**Answer Type:** Interval or region description

---

## Solution Concepts

- klein bottle deck group
- dirichlet voronoi cell
- quotient by the center
- farthest point geometry
- subgroup generation and intersection