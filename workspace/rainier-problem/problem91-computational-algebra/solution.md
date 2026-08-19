## Steps

Step 1: Recover the natural invariant generators

Set
$$
s=xy,\qquad t=x^6+y^6.
$$
The stated generators satisfy
$$
u=s+t,\qquad v=\frac{s+1}{t+1}.
$$
From
$$
v(t+1)=s+1
$$
and $t=u-s$, we obtain
$$
v(u-s+1)=s+1.
$$
Therefore
$$
s=\frac{v(u+1)-1}{v+1}
$$
and
$$
t=\frac{u-v+1}{v+1}.
$$
Hence
$$
K_p=\mathbb F_p(s,t).
$$

Step 2: Identify the hidden fixed field

Because $p\equiv1\pmod{12}$, choose a primitive sixth root $\zeta\in\mathbb F_p$. On the projective Fermat curve
$$
C:\quad X^n+Y^n+Z^n=0
$$
define
$$
r[X:Y:Z]=[\zeta X:\zeta^{-1}Y:Z]
$$
and
$$
\tau[X:Y:Z]=[Y:X:Z].
$$
They satisfy
$$
r^6=\tau^2=1,\qquad \tau r\tau=r^{-1},
$$
so
$$
H=\langle r,\tau\rangle
$$
is dihedral of order $12$.

On the affine chart $Z=1$, both $s=xy$ and $t=x^6+y^6$ are fixed by $r$ and $\tau$. Thus
$$
K_p\subseteq L^H.
$$

Conversely, put
$$
A=x^6,\qquad B=y^6.
$$
Since
$$
A+B=t,\qquad AB=s^6,
$$
the elements $A,B$ are roots of
$$
T^2-tT+s^6.
$$
Thus there are at most two possibilities for $A$. After $A$ is chosen, $x$ has at most six possibilities from $x^6=A$, and then
$$
y=\frac{s}{x}
$$
is forced. Hence
$$
[L:K_p]\leq12.
$$
The subgroup $H$ already supplies $12$ distinct $K_p$-automorphisms of $L$, so
$$
[L:K_p]\geq12.
$$
Therefore
$$
[L:K_p]=12
$$
and
$$
K_p=L^H.
$$

Step 3: Compute the genus of the covering curve

The smooth plane Fermat curve $C$ has degree $n$, so
$$
g(C)=\frac{(n-1)(n-2)}{2}.
$$
Therefore
$$
2g(C)-2=n(n-3).
$$
Since $p\nmid12$, the quotient map
$$
C\longrightarrow C/H
$$
is tame.

Step 4: Count the fixed points of the nontrivial rotations

For $1\leq j\leq5$, the automorphism $r^j$ has projective eigenvalues
$$
\zeta^j,\qquad \zeta^{-j},\qquad1.
$$
For $j=1,2,4,5$ these are three distinct eigenvalues, so a fixed projective point must be one of the coordinate points. None of the coordinate points lies on $C$. Hence these four rotations have no fixed points.

For $j=3$,
$$
r^3[X:Y:Z]=[-X:-Y:Z].
$$
Its fixed locus consists of the line $Z=0$ together with the point $[0:0:1]$. The isolated point is not on $C$. On $Z=0$, the curve equation is
$$
X^n+Y^n=0.
$$
Since $p\nmid n$, this has exactly $n$ distinct projective solutions over the algebraic closure. Thus
$$
\#\operatorname{Fix}(r^3)=n.
$$

The total rotational contribution to the different is therefore
$$
n.
$$

Step 5: Count the fixed points of the reflections and apply Riemann-Hurwitz

The six remaining nonidentity elements are
$$
r^j\tau,\qquad 0\leq j\leq5.
$$
Each is an involution. A fixed point of $r^j\tau$ lies either on its $+1$ eigenspace
$$
X=\zeta^jY
$$
or on its $-1$ eigenline
$$
[\zeta^j:-1:0].
$$
Because $6\mid n$ and $n$ is even, the isolated point would give
$$
(\zeta^j)^n+(-1)^n=2\neq0,
$$
so it is not on $C$.

On the fixed line $X=\zeta^jY$, the Fermat equation becomes
$$
2Y^n+Z^n=0.
$$
This has exactly $n$ distinct projective solutions. Hence every reflection fixes exactly $n$ points.

The six reflections contribute
$$
6n.
$$
Together with Step 4,
$$
\deg\operatorname{Diff}(L/K_p)=7n.
$$
Tame Riemann-Hurwitz gives
$$
n(n-3)=12(2g(K_p)-2)+7n.
$$
Thus
$$
12(2g(K_p)-2)=n(n-10)
$$
and
$$
g(K_p)=1+\frac{n(n-10)}{24}.
$$
Since $n=p-1$,
$$
g(K_p)=\frac{p^2-12p+35}{24}
=\frac{(p-5)(p-7)}{24}.
$$

Final Answer: $\boxed{\frac{(p-5)(p-7)}{24}}$

---

## Answer

$\frac{(p-5)(p-7)}{24}$

---

## Classification

**Problem Type:** Symbolic derivation

**Answer Type:** Exact symbolic expression

---

## Solution Concepts

- algebraic function fields
- invariant subfields
- dihedral group actions
- tame ramification
- Riemann-Hurwitz formula
