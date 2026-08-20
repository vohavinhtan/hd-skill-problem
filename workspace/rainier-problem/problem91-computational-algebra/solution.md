## Steps

Step 1: Reconstruct the hidden finite group from the generators

Write the Fermat curve projectively as
$$
C:\quad X^n+Y^n+Z^n=0.
$$
Since $p\equiv31\pmod{60}$, the integer $n$ is divisible by $6$. Put
$$
N=\frac{n}{6}.
$$
Then $N$ is odd.

Choose a primitive sixth root $\zeta\in\mathbb F_p$. Let $D$ be the group of projective diagonal maps
$$
[X:Y:Z]\mapsto[\zeta^aX:\zeta^bY:\zeta^cZ]
$$
such that
$$
a+b+c\equiv0\pmod3.
$$
Two triples differing by $(k,k,k)$ give the same projective map. There are $72$ triples satisfying the congruence and each projective class has $6$ representatives, so
$$
|D|=12.
$$

Coordinate permutations normalize $D$, because they preserve the congruence on $a+b+c$. Hence
$$
H=D\rtimes S_3
$$
has order
$$
|H|=72.
$$

In homogeneous form,
$$
u=
\frac{X^6Y^6+Y^6Z^6+Z^6X^6}
{(X^6+Y^6+Z^6)^2},
$$
$$
v=
\frac{(XYZ)^2}{X^6+Y^6+Z^6}.
$$
Both functions are invariant under coordinate permutations. A diagonal element of $D$ multiplies $(XYZ)^2$ by
$$
\zeta^{2(a+b+c)}=1,
$$
and fixes every sixth power. Therefore
$$
K_p\subseteq L^H.
$$

Step 2: Prove that the stated generators give the full fixed field

Set
$$
S=X^6+Y^6+Z^6
$$
and
$$
\alpha=\frac{X^6}{S},
\qquad
\beta=\frac{Y^6}{S},
\qquad
\gamma=\frac{Z^6}{S}.
$$
Then
$$
\alpha+\beta+\gamma=1,
$$
$$
\alpha\beta+\beta\gamma+\gamma\alpha=u,
$$
and
$$
\alpha\beta\gamma=v^3.
$$
Thus $\alpha,\beta,\gamma$ are the roots of
$$
T^3-T^2+uT-v^3.
$$
Over $K_p$ there are at most six possible orderings of these three roots.

On the affine chart $Z=1$,
$$
\frac{\alpha}{\gamma}=x^6,
\qquad
\frac{\beta}{\gamma}=y^6,
\qquad
\frac{v}{\gamma}=x^2y^2.
$$
After an ordering of $\alpha,\beta,\gamma$ is fixed, choose $x$ from the six roots of $x^6=\alpha/\gamma$. Then $y^2$ is forced by
$$
y^2=\frac{v}{\gamma x^2},
$$
so there are at most two choices for $y$. Hence each ordering yields at most twelve pairs $(x,y)$, and
$$
[L:K_p]\leq6\cdot12=72.
$$
The group $H$ supplies $72$ distinct $K_p$-automorphisms of $L$, so
$$
[L:K_p]\geq72.
$$
Therefore
$$
[L:K_p]=72
$$
and
$$
K_p=L^H.
$$

Step 3: Compute the genus after quotienting by the diagonal subgroup

Let
$$
M=L^D.
$$
The Fermat curve has genus
$$
g(C)=\frac{(n-1)(n-2)}2,
$$
so
$$
2g(C)-2=n(n-3).
$$
Because $p\nmid12$, the extension $L/M$ is tame.

Represent an element of $D$ on the chart $Z=1$ by
$$
d_{r,s}[X:Y:Z]=[\zeta^rX:\zeta^sY:Z],
\qquad
r+s\equiv0\pmod3.
$$
A nonidentity diagonal map can fix a point of $C$ only if two of the eigenvalues
$$
\zeta^r,\qquad\zeta^s,\qquad1
$$
are equal, since no coordinate point lies on $C$.

The three possible equalities are $r=0$, $s=0$, and $r=s$. Under
$$
r+s\equiv0\pmod3,
$$
the only nonidentity possibilities are
$$
(r,s)=(0,3),\qquad(3,0),\qquad(3,3).
$$
Each fixes one coordinate line, and that line meets $C$ in exactly $n$ distinct points. The other eight nonidentity elements of $D$ have no fixed points.

Riemann-Hurwitz gives
$$
n(n-3)=12(2g(M)-2)+3n.
$$
Thus
$$
2g(M)-2=\frac{n(n-6)}{12}.
$$
Since $n=6N$,
$$
2g(M)-2=3N(N-1).
$$

Step 4: Count fixed points of the transpositions on the intermediate quotient

The quotient group $H/D$ is $S_3$. Let $\tau$ be the transposition exchanging $X$ and $Y$.

For any $\sigma\in S_3$,
$$
12\,\#\operatorname{Fix}_M(\sigma)
=
\sum_{d\in D}\#\operatorname{Fix}_C(d\sigma).
$$
To see this, count pairs $(P,d)$ satisfying $d\sigma(P)=P$. A $\sigma$-fixed $D$-orbit contributes
$$
|\operatorname{Orb}_D(P)|\,|\operatorname{Stab}_D(P)|=|D|=12,
$$
while a nonfixed orbit contributes nothing.

For
$$
d_{r,s}\tau[X:Y:Z]=[\zeta^rY:\zeta^sX:Z],
$$
the two eigenvalues on the $X,Y$ block have square
$$
\zeta^{r+s}.
$$

If
$$
r+s\equiv0\pmod6,
$$
the block eigenvalues are $1$ and $-1$. The $1$-eigenspace together with the $Z$-axis is a projective line. On that line the Fermat equation becomes
$$
2X^n+Z^n=0,
$$
so $d_{r,s}\tau$ fixes exactly $n$ points.

If
$$
r+s\equiv3\pmod6,
$$
the block eigenvalues $\lambda$ satisfy
$$
\lambda^2=-1.
$$
There are two eigenlines in $Z=0$. Since $n=6N$ and $N$ is odd,
$$
\lambda^n=(\lambda^2)^{3N}=-1.
$$
Both eigenlines therefore lie on
$$
X^n+Y^n=0,
$$
so $d_{r,s}\tau$ fixes exactly two points.

Among the twelve elements of $D$, six have $r+s\equiv0\pmod6$ and six have $r+s\equiv3\pmod6$. Hence
$$
12\,\#\operatorname{Fix}_M(\tau)=6n+12.
$$
Therefore every transposition of $S_3$ fixes
$$
\frac n2+1=3N+1
$$
points of $M$.

Step 5: Eliminate ramification from the three-cycles and finish

Let $c$ be the coordinate cycle
$$
c[X:Y:Z]=[Y:Z:X].
$$
For $d_{r,s}\in D$, a fixed eigenline of $d_{r,s}c$ has a scalar $\lambda$ satisfying
$$
\lambda^3=\zeta^{r+s}.
$$
All three coordinates on such an eigenline are nonzero.

Because $3\mid n$,
$$
\lambda^n=(\lambda^3)^{n/3}
=
\zeta^{(r+s)2N}.
$$
The condition $r+s\equiv0\pmod3$ makes this equal to $1$. The three coordinate $n$-th powers on every eigenline are therefore equal. The Fermat equation would give
$$
3X^n=0,
$$
which is impossible because $p\neq3$.

Thus every element of the cosets $Dc$ and $Dc^2$ has no fixed point on $C$. By the counting identity in Step 4, the two three-cycles have no fixed points on $M$.

The tame extension
$$
M/K_p
$$
has degree $6$. Its three transpositions each fix $3N+1$ points, while its two three-cycles fix none. Riemann-Hurwitz gives
$$
3N(N-1)
=
6(2g(K_p)-2)+3(3N+1).
$$
Therefore
$$
6(2g(K_p)-2)=3(N^2-4N-1),
$$
so
$$
g(K_p)=\frac{N^2-4N+3}{4}
=
\frac{(N-1)(N-3)}4.
$$
Since
$$
N=\frac{p-1}{6},
$$
we obtain
$$
g(K_p)=\frac{(p-7)(p-19)}{144}.
$$

Final Answer: $\boxed{\frac{(p-7)(p-19)}{144}}$

---

## Answer

$\frac{(p-7)(p-19)}{144}$

---

## Classification

**Problem Type:** Symbolic derivation

**Answer Type:** Exact symbolic expression

---

## Solution Concepts

- algebraic function fields
- invariant subfields
- finite group actions
- orbit-stabilizer counting
- Riemann-Hurwitz formula
