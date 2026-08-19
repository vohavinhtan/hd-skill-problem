## Steps

Step 1: Reconstruct the normalized cubic coordinates

Write the Fermat curve projectively as
$$
C:\quad X^n+Y^n+Z^n=0,
$$
with $x=X/Z$ and $y=Y/Z$. Its function field is $L$.

Set
$$
D=x^3+y^3+1
$$
and
$$
\alpha=\frac{x^3}{D},\qquad
\beta=\frac{y^3}{D},\qquad
\gamma=\frac{1}{D}.
$$
Then
$$
\alpha+\beta+\gamma=1.
$$
The stated generators give
$$
\alpha\beta+\beta\gamma+\gamma\alpha=v
$$
and
$$
\alpha\beta\gamma=\left(\frac{xy}{D}\right)^3=u^3.
$$
Therefore $\alpha,\beta,\gamma$ are the three roots of
$$
T^3-T^2+vT-u^3.
$$

For a fixed ordering of these roots,
$$
x^3=\frac{\alpha}{\gamma},
\qquad
y^3=\frac{\beta}{\gamma},
\qquad
xy=\frac{u}{\gamma}.
$$
Choose a cube root $x$ of $\alpha/\gamma$. There are at most three choices, and then $y=u/(\gamma x)$ is forced. Hence each of the at most six orderings of $\alpha,\beta,\gamma$ gives at most three pairs $(x,y)$. It follows that
$$
[L:K_p]\leq18.
$$

Step 2: Recover the full automorphism group fixing the generators

Because $p\equiv1\pmod6$, there is a primitive cube root $\omega\in\mathbb F_p$. On $C$ consider
$$
r[X:Y:Z]=[\omega X:\omega^{-1}Y:Z],
$$
$$
c[X:Y:Z]=[Y:Z:X],
$$
and
$$
\tau[X:Y:Z]=[Y:X:Z].
$$
Each preserves $C$, since $3\mid n$. In homogeneous form the generators of $K_p$ are
$$
u=\frac{XYZ}{X^3+Y^3+Z^3}
$$
and
$$
v=\frac{X^3Y^3+Y^3Z^3+Z^3X^3}{(X^3+Y^3+Z^3)^2}.
$$
The map $r$ fixes every cube and also fixes $XYZ$. The maps $c$ and $\tau$ only permute the coordinates. Hence all three automorphisms fix $u$ and $v$.

Projectively,
$$
r^3=c^3=\tau^2=1,
\qquad
rc=cr,
$$
and
$$
\tau r\tau=r^{-1},
\qquad
\tau c\tau=c^{-1}.
$$
The subgroup
$$
E=\langle r,c\rangle
$$
has order $9$ and is isomorphic to $C_3\times C_3$. Adjoining $\tau$ gives
$$
G=E\rtimes\langle\tau\rangle,
\qquad
|G|=18.
$$
Thus $K_p\subseteq L^G$, so
$$
[L:K_p]\geq[L:L^G]=18.
$$
Together with Step 1,
$$
[L:K_p]=18
$$
and
$$
K_p=L^G.
$$

Step 3: Show that the eight nonidentity elements of order three are unramified

The Fermat curve of degree $n$ has genus
$$
g(C)=\frac{(n-1)(n-2)}{2},
$$
so
$$
2g(C)-2=n(n-3).
$$

Every nonidentity element of $E$ has order $3$.

First consider $r$ and $r^2$. Their three projective eigenlines are the coordinate points
$$
[1:0:0],\qquad[0:1:0],\qquad[0:0:1],
$$
and none lies on $C$.

Now take an element $r^i c$ with $i\in\{0,1,2\}$. A fixed projective point satisfies
$$
[\omega^iY:\omega^{-i}Z:X]=[X:Y:Z].
$$
No coordinate can vanish. For some scalar $\lambda$,
$$
\omega^iY=\lambda X,\qquad
\omega^{-i}Z=\lambda Y,\qquad
X=\lambda Z.
$$
These equations give $\lambda^3=1$, and both $Y/X$ and $Z/X$ are cube roots of unity. Since $3\mid n$,
$$
Y^n=X^n,\qquad Z^n=X^n.
$$
The Fermat equation would then give
$$
3X^n=0,
$$
which is impossible because $p\neq3$. The same argument applies to $r^ic^2$.

Therefore none of the eight nonidentity elements of $E$ fixes a point of $C$.

Step 4: Count the fixed points of the nine involutions

Every element of the coset $E\tau$ is an involution, since $\tau$ inverts $E$:
$$
(e\tau)^2=e\tau e\tau=ee^{-1}=1.
$$
All nine are conjugate. Indeed, for $h\in E$,
$$
h\tau h^{-1}=h^2\tau,
$$
and squaring is a bijection on the group $E$ of order $9$.

It is therefore enough to count the fixed points of $\tau$. A projective point fixed by
$$
\tau[X:Y:Z]=[Y:X:Z]
$$
lies either on the line $X=Y$ or on the eigenline $[1:-1:0]$.

Since $n=p-1$ is even,
$$
1+(-1)^n=2\neq0,
$$
so $[1:-1:0]$ is not on $C$.

On $X=Y$, the Fermat equation becomes
$$
2X^n+Z^n=0.
$$
Here $X\neq0$, and $Z/X$ can be any root of
$$
T^n=-2.
$$
Because $p\nmid n$, this polynomial has exactly $n$ distinct roots over the algebraic closure. Hence every involution fixes exactly $n$ points.

The nine involutions therefore contribute
$$
9n
$$
to the different.

Step 5: Apply tame Riemann-Hurwitz

The extension $L/K_p$ has degree $18$, and $p\nmid18$, so it is tame. For a tame finite group action, the different degree is the sum, over nonidentity automorphisms, of their numbers of fixed points. Steps 3 and 4 give
$$
\deg\operatorname{Diff}(L/K_p)=9n.
$$
Riemann-Hurwitz now gives
$$
n(n-3)=18(2g(K_p)-2)+9n.
$$
Therefore
$$
18(2g(K_p)-2)=n^2-12n
$$
and
$$
g(K_p)=1+\frac{n^2-12n}{36}
=\frac{(n-6)^2}{36}.
$$
Since $n=p-1$,
$$
g(K_p)=\left(\frac{p-7}{6}\right)^2.
$$

Final Answer: $\boxed{\left(\frac{p-7}{6}\right)^2}$

---

## Answer

$\left(\frac{p-7}{6}\right)^2$

---

## Classification

**Problem Type:** Symbolic derivation

**Answer Type:** Exact symbolic expression

---

## Solution Concepts

- algebraic function fields
- invariant subfields
- finite group actions
- ramification
- Riemann-Hurwitz formula
