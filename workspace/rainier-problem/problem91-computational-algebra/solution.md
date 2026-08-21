## Steps

Step 1: Construct the hidden dihedral action

Choose $\lambda\in\mathbb F_p^\times$ of order $2d$. Since $d$ is odd,
$$
\lambda^d=-1.
$$
Put
$$
m=(2^s+1)d.
$$
Because $2^s+1$ is odd,
$$
\lambda^m=-1.
$$

Define
$$
\rho(z,y)=(\lambda z,-y),
\qquad
\tau(z,y)=(z^{-1},-y).
$$
Under $\rho$,
$$
z^m-z^{-m}\mapsto-(z^m-z^{-m}),
$$
which agrees with the change
$$
y^p-y\mapsto-(y^p-y).
$$
The same is true under $\tau$. Hence both maps are automorphisms of $L$.

They satisfy
$$
\rho^{2d}=\tau^2=1,
\qquad
\tau\rho\tau=\rho^{-1}.
$$
Thus
$$
H=\langle\rho,\tau\rangle
$$
is a dihedral group of order $4d$.

Let
$$
t=z^d.
$$
Under $\rho$,
$$
t\mapsto-t,
\qquad
y\mapsto-y,
$$
while under $\tau$,
$$
t\mapsto t^{-1},
\qquad
y\mapsto-y.
$$
Therefore
$$
u=(t+t^{-1})^2
$$
and
$$
v=y(t-t^{-1})
$$
are fixed by $H$. Hence
$$
K_p\subseteq L^H.
$$

Step 2: Prove that the two generators give the full fixed field

From
$$
u=(t+t^{-1})^2
$$
we obtain
$$
t^4+(2-u)t^2+1=0.
$$
Thus
$$
[K_p(t):K_p]\leq4.
$$

Once $t$ is known, $z$ satisfies
$$
z^d=t,
$$
so adjoining $z$ costs degree at most $d$. Finally,
$$
y=\frac{v}{t-t^{-1}},
$$
so $y$ is already determined after $t$ and $z$ are known. Therefore
$$
[L:K_p]\leq4d.
$$

The group $H$ contains $4d$ distinct automorphisms fixing $K_p$, giving
$$
[L:K_p]\geq4d.
$$
Consequently
$$
[L:K_p]=4d
$$
and
$$
K_p=L^H.
$$

Step 3: Compute the genus of the Artin-Schreier curve

The rational function
$$
z^m-z^{-m}
$$
has exactly two poles, at $z=0$ and $z=\infty$, each of order $m$.

Since
$$
m=(2^s+1)d
$$
and $m<p+(p-1)$ with neither factor divisible by $p$, we have
$$
p\nmid m.
$$
A pole of a function of the form $w^p-w$ has order divisible by $p$. Hence the defining right side is not of that form, so
$$
[L:\mathbb F_p(z)]=p.
$$

Each of the two poles is totally ramified and has different exponent
$$
(p-1)(m+1).
$$
Riemann-Hurwitz gives
$$
2g(L)-2
=
-2p+2(p-1)(m+1)
=
2m(p-1)-2.
$$
Thus
$$
g(L)=m(p-1).
$$
There is one point of the smooth projective curve of $L$ above $z=0$ and one above $z=\infty$.

Step 4: Count fixed points of rotations and the two reflection types

Because $4d\mid p-1$, the extension $L/K_p$ is tame.

For
$$
1\leq j\leq2d-1,
$$
the rotation $\rho^j$ acts on the base by
$$
z\mapsto\lambda^jz.
$$
Its only fixed base points are $0$ and $\infty$. By Step 3, each has a unique point above it. Hence every nonidentity rotation fixes exactly two points. Their total contribution is
$$
2(2d-1)=4d-2.
$$

Now consider
$$
g_j=\rho^j\tau,
\qquad
0\leq j\leq2d-1.
$$
It acts by
$$
g_j(z)=\frac{\lambda^j}{z},
\qquad
g_j(y)=(-1)^{j+1}y.
$$
A fixed base point satisfies
$$
z^2=\lambda^j,
$$
so there are exactly two such points.

At either one, put $t=z^d$. Then
$$
t^2=(z^2)^d=\lambda^{jd}=(-1)^j.
$$

If $j$ is even, then $t^2=1$. Since $2^s+1$ is odd,
$$
z^m-z^{-m}=t^{2^s+1}-t^{-(2^s+1)}=0.
$$
Also $g_j(y)=-y$. The fixed condition forces $y=0$, so each even reflection fixes exactly two points.

If $j$ is odd, then $t^2=-1$. Because $s\geq2$,
$$
2^s+1\equiv1\pmod4.
$$
Hence
$$
t^{2^s+1}=t,
\qquad
t^{-(2^s+1)}=-t,
$$
so the right side equals $2t\neq0$. Now $g_j(y)=y$. The Artin-Schreier fiber over each fixed base point consists of $p$ distinct points, all fixed by $g_j$. Thus each odd reflection fixes exactly $2p$ points.

Among the $2d$ reflections there are $d$ even indices and $d$ odd indices. Their total contribution is
$$
2d+2pd.
$$
Therefore
$$
R=(4d-2)+(2d+2pd)=2pd+6d-2.
$$

Step 5: Apply Riemann-Hurwitz to the dihedral quotient

Riemann-Hurwitz for the tame degree-$4d$ quotient gives
$$
2m(p-1)-2
=
4d(2g(K_p)-2)+2pd+6d-2.
$$
Using
$$
m=(2^s+1)d,
$$
we obtain
$$
4d(2g(K_p)-2)
=
2d\left((2^s+1)(p-1)-p-3\right).
$$
The expression in parentheses simplifies to
$$
2^s(p-1)-4.
$$
Therefore
$$
2g(K_p)-2
=
2^{s-1}(p-1)-2.
$$
Hence
$$
g(K_p)=2^{s-2}(p-1).
$$

Final Answer: $\boxed{2^{s-2}(p-1)}$

---

## Answer

$2^{s-2}(p-1)$

---

## Classification

**Problem Type:** Symbolic derivation

**Answer Type:** Exact symbolic expression

---

## Solution Concepts

- algebraic function fields
- dihedral group actions
- invariant subfields
- Artin-Schreier ramification
- Riemann-Hurwitz formula
