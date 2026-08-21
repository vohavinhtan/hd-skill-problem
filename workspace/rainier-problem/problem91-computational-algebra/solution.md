## Steps

Step 1: Recover the hidden translation quotient

Put
$$
w=y^p-y.
$$
Then
$$
w^p+w
=
y^{p^2}-y
=
z^m-z^{-m}.
$$
Hence
$$
M=\mathbb F_{p^2}(z,w)
$$
is an Artin-Schreier function field.

For each $c\in\mathbb F_p$, define
$$
\sigma_c(z)=z,
\qquad
\sigma_c(y)=y+c.
$$
Since $c^{p^2}=c$, every $\sigma_c$ preserves the defining equation of $L$. Also
$$
(y+c)^p-(y+c)=y^p-y,
$$
so every $\sigma_c$ fixes $z$ and $w$.

The element $y$ satisfies
$$
T^p-T-w=0
$$
over $M$, so
$$
[L:M]\leq p.
$$
The $p$ distinct translations $\sigma_c$ fix $M$, giving
$$
[L:M]\geq p.
$$
Therefore
$$
[L:M]=p
$$
and $M$ is exactly the fixed field of the translation subgroup.

Step 2: Reconstruct the dihedral action encoded by $u$ and $v$

Choose $\lambda\in\mathbb F_p^\times$ of order $2d$. Since $d$ is odd,
$$
\lambda^d=-1.
$$
Write
$$
A=3\cdot2^s+1,
$$
so $m=Ad$. The integer $A$ is odd, hence
$$
\lambda^m=(\lambda^d)^A=-1.
$$

Define automorphisms of $M$ by
$$
\rho(z,w)=(\lambda z,-w),
$$
$$
\tau(z,w)=(z^{-1},-w).
$$
Under either map,
$$
z^m-z^{-m}
$$
changes sign, as does
$$
w^p+w.
$$
Thus both maps preserve $M$.

They satisfy
$$
\rho^{2d}=\tau^2=1,
\qquad
\tau\rho\tau=\rho^{-1}.
$$
Hence
$$
G=\langle\rho,\tau\rangle
$$
is dihedral of order $4d$.

Put
$$
t=z^d.
$$
Then
$$
u=(t+t^{-1})^2,
\qquad
v=w(t-t^{-1}).
$$
Under $\rho$,
$$
t\mapsto-t,\qquad w\mapsto-w,
$$
and under $\tau$,
$$
t\mapsto t^{-1},\qquad w\mapsto-w.
$$
Therefore $u$ and $v$ are fixed by $G$, so
$$
K_p\subseteq M^G.
$$

Step 3: Prove that the stated generators give the full fixed field

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
so adjoining $z$ costs degree at most $d$. Also
$$
w=\frac{v}{t-t^{-1}}.
$$
Hence
$$
[M:K_p]\leq4d.
$$

The group $G$ contains $4d$ distinct automorphisms fixing $K_p$, so
$$
[M:K_p]\geq4d.
$$
Consequently
$$
[M:K_p]=4d
$$
and
$$
K_p=M^G.
$$

Together with Step 1, the full field $L$ has a hidden tower
$$
L\supset M\supset K_p
$$
of degrees $p$ and $4d$.

Step 4: Compute the genus of the Artin-Schreier intermediate curve

The rational function
$$
z^m-z^{-m}
$$
has exactly two poles, at $z=0$ and $z=\infty$, each of order $m$.

Since
$$
m=3(p-1)+d,
$$
we have
$$
m\equiv d-3\pmod p.
$$
The hypothesis $d>3$ and $d<p$ gives
$$
p\nmid m.
$$

Thus each pole is totally ramified in the degree-$p$ Artin-Schreier extension
$$
M/\mathbb F_{p^2}(z)
$$
and has different exponent
$$
(p-1)(m+1).
$$
Riemann-Hurwitz gives
$$
2g(M)-2
=
-2p+2(p-1)(m+1)
=
2m(p-1)-2.
$$
Therefore
$$
g(M)=m(p-1).
$$
There is a unique point of $M$ above each of $z=0$ and $z=\infty$.

Step 5: Count the fixed points of rotations and reflections

The extension $M/K_p$ has degree $4d$, which is prime to $p$, so it is tame.

For
$$
1\leq j\leq2d-1,
$$
the rotation $\rho^j$ acts on the base by
$$
z\mapsto\lambda^jz.
$$
Its only fixed base points are $0$ and $\infty$. By Step 4 each has a unique point above it, so every nonidentity rotation fixes exactly two points. The rotations contribute
$$
2(2d-1)=4d-2.
$$

Now consider the reflections
$$
g_j=\rho^j\tau,
\qquad
0\leq j\leq2d-1.
$$
They act by
$$
g_j(z)=\frac{\lambda^j}{z},
\qquad
g_j(w)=(-1)^{j+1}w.
$$
A fixed base point satisfies
$$
z^2=\lambda^j,
$$
so each reflection has two fixed base points.

At such a point,
$$
t^2=z^{2d}=\lambda^{jd}=(-1)^j.
$$

If $j$ is even, then $t^2=1$. Since $A$ is odd,
$$
z^m-z^{-m}=t^A-t^{-A}=0.
$$
The reflection sends $w$ to $-w$, so a fixed point must have
$$
w=0.
$$
Each even reflection therefore fixes exactly two points.

If $j$ is odd, then $t^2=-1$. Because $s\geq2$,
$$
A=3\cdot2^s+1\equiv1\pmod4.
$$
Hence
$$
t^A=t,
\qquad
t^{-A}=-t,
$$
and
$$
z^m-z^{-m}=2t\neq0.
$$
Now $g_j$ fixes $w$. The Artin-Schreier equation above each fixed base point has exactly $p$ distinct solutions, all fixed by $g_j$. Thus each odd reflection fixes exactly $2p$ points.

There are $d$ even reflections and $d$ odd reflections. The reflection contribution is
$$
2d+2pd.
$$
The full tame different contribution is therefore
$$
R=2pd+6d-2.
$$

Step 6: Apply Riemann-Hurwitz to the dihedral quotient

Riemann-Hurwitz for $M/K_p$ gives
$$
2m(p-1)-2
=
4d(2g(K_p)-2)+2pd+6d-2.
$$
Since
$$
m=(3\cdot2^s+1)d,
$$
we obtain
$$
4d(2g(K_p)-2)
=
2d\left((3\cdot2^s+1)(p-1)-p-3\right).
$$
The expression in parentheses is
$$
3\cdot2^s(p-1)-4.
$$
Therefore
$$
2g(K_p)-2
=
3\cdot2^{s-1}(p-1)-2.
$$
It follows that
$$
g(K_p)=3\cdot2^{s-2}(p-1).
$$

Final Answer: $\boxed{3\cdot2^{s-2}(p-1)}$

---

## Answer

$3\cdot2^{s-2}(p-1)$

---

## Classification

**Problem Type:** Symbolic derivation

**Answer Type:** Exact symbolic expression

---

## Solution Concepts

- invariant subfields
- Artin-Schreier extensions
- dihedral group actions
- tame ramification
- Riemann-Hurwitz formula
