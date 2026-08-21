## Steps

Step 1: Reconstruct the group hidden by the generators

Let $C$ be the smooth projective Fermat curve
$$
X^n+Y^n+Z^n=0.
$$
Choose a primitive ninth root $\zeta\in\mathbb F_p$.

Let $D$ consist of the projective diagonal transformations
$$
[X:Y:Z]\mapsto[\zeta^aX:\zeta^bY:\zeta^cZ]
$$
for which
$$
a+b+c\equiv0\pmod3.
$$
Subtracting $c$ from all three exponents gives the unique affine representative
$$
[X:Y:Z]\mapsto[\zeta^rX:\zeta^sY:Z],
\qquad
r+s\equiv0\pmod3.
$$
There are $9$ choices for $r$ and $3$ choices for $s$, so
$$
|D|=27.
$$

The condition on $a+b+c$ is symmetric in the coordinates, so $S_3$ normalizes $D$. Set
$$
H=D\rtimes S_3.
$$
Then
$$
|H|=27\cdot6=162.
$$

In homogeneous coordinates the two given functions are
$$
u=
\frac{X^9Y^9+Y^9Z^9+Z^9X^9}
{(X^9+Y^9+Z^9)^2},
$$
$$
v=
\frac{(XYZ)^3}{X^9+Y^9+Z^9}.
$$
Every coordinate permutation fixes them. A diagonal element fixes every ninth power, while the numerator of $v$ is multiplied by
$$
\zeta^{3(a+b+c)}=1.
$$
Therefore
$$
K_p\subseteq L^H.
$$

Step 2: Prove that the stated generators give the full fixed field

Put
$$
S=X^9+Y^9+Z^9
$$
and
$$
\alpha=\frac{X^9}{S},
\qquad
\beta=\frac{Y^9}{S},
\qquad
\gamma=\frac{Z^9}{S}.
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
Hence $\alpha,\beta,\gamma$ are the roots of
$$
T^3-T^2+uT-v^3.
$$
There are at most six possible orderings of these roots.

On the chart $Z=1$,
$$
x^9=\frac{\alpha}{\gamma},
\qquad
y^9=\frac{\beta}{\gamma},
\qquad
(xy)^3=\frac{v}{\gamma}.
$$
After an ordering is chosen, there are at most nine choices for $x$. Once $x$ is chosen,
$$
y^3=\frac{v}{\gamma x^3},
$$
so there are at most three choices for $y$. Therefore
$$
[L:K_p]\leq6\cdot9\cdot3=162.
$$
The group $H$ supplies $162$ distinct automorphisms fixing $K_p$, so
$$
[L:K_p]\geq162.
$$
Consequently
$$
[L:K_p]=162
$$
and
$$
K_p=L^H.
$$

Step 3: Count the fixed points of the nonidentity diagonal elements

The Fermat curve has genus
$$
g(C)=\frac{(n-1)(n-2)}2,
$$
so
$$
2g(C)-2=n(n-3).
$$
Since $p\nmid162$, the quotient by $H$ is tame.

Use the affine representative
$$
d_{r,s}[X:Y:Z]=[\zeta^rX:\zeta^sY:Z],
\qquad
r+s\equiv0\pmod3.
$$
A nonidentity diagonal element can fix a point of $C$ only when two of its three eigenvalues are equal, because no coordinate point lies on $C$.

The condition $\zeta^r=1$ gives
$$
r=0,\qquad s\in\{3,6\},
$$
so there are two nonidentity elements fixing the line $Y,Z$. Similarly, two elements satisfy $s=0$ and fix the line $X,Z$.

Finally,
$$
\zeta^r=\zeta^s
$$
means $r=s$. Together with $r+s\equiv0\pmod3$, this gives
$$
r=s\in\{3,6\},
$$
so two further elements fix the line $X,Y$.

Each coordinate line meets $C$ in exactly $n$ distinct points because $p\nmid n$. Hence the six ramified diagonal elements contribute
$$
6n.
$$

Step 4: Count the fixed points of the transposition cosets

Consider the transposition exchanging $X$ and $Y$. An element of its coset has the form
$$
g_{r,s}[X:Y:Z]=[\zeta^rY:\zeta^sX:Z],
\qquad
r+s\equiv0\pmod3.
$$
On the $X,Y$ block its eigenvalues satisfy
$$
\lambda^2=\zeta^{r+s}.
$$

If
$$
r+s\equiv0\pmod9,
$$
the eigenvalues are $1$ and $-1$. The $1$-eigenspace together with the $Z$-axis forms a projective line. Its intersection with $C$ has exactly $n$ points. The isolated $-1$ eigenline lies in $Z=0$, where the Fermat equation would give
$$
X^n+Y^n=2X^n\neq0
$$
because $n$ is even. Thus such an element fixes exactly $n$ points.

If
$$
r+s\not\equiv0\pmod9,
$$
the three projective eigenlines are isolated. The $Z$-axis is not on $C$. For either eigenline in $Z=0$,
$$
\frac{Y^n}{X^n}=\lambda^n.
$$
Write
$$
n=18M.
$$
Then
$$
\lambda^n=(\lambda^2)^{n/2}
=\zeta^{(r+s)9M}=1.
$$
The Fermat equation again gives $2X^n\neq0$. Hence these elements have no fixed points.

Among the $27$ pairs $(r,s)$ with $r+s\equiv0\pmod3$, exactly $9$ satisfy
$$
r+s\equiv0\pmod9.
$$
Therefore one transposition coset contributes
$$
9n.
$$
There are three transpositions, so all transposition cosets contribute
$$
27n.
$$

Step 5: Eliminate the three-cycle cosets and apply Riemann-Hurwitz

Take the coordinate cycle
$$
c[X:Y:Z]=[Y:Z:X].
$$
An element of the coset $Dc$ can be written
$$
g[X:Y:Z]=[\zeta^rY:\zeta^sZ:X],
\qquad
r+s\equiv0\pmod3.
$$
If $[X:Y:Z]$ is fixed, all three coordinates are nonzero and for some eigenvalue $\lambda$,
$$
\lambda^3=\zeta^{r+s}.
$$
The eigenvector relations give
$$
Y^n=\lambda^nX^n,
\qquad
Z^n=\lambda^{2n}X^n.
$$
Since $n=18M$,
$$
\lambda^n=(\lambda^3)^{6M}
=\zeta^{6M(r+s)}.
$$
The congruence $r+s\equiv0\pmod3$ makes the exponent divisible by $9$, so
$$
\lambda^n=1.
$$
The Fermat equation would then give
$$
3X^n=0,
$$
which is impossible because $p\neq3$. Thus no element of $Dc$ fixes a point. The same argument applies to $Dc^2$.

The total fixed-point contribution from all nonidentity elements of $H$ is therefore
$$
6n+27n=33n.
$$
Tame Riemann-Hurwitz gives
$$
n(n-3)=162(2g(K_p)-2)+33n.
$$
Hence
$$
162(2g(K_p)-2)=n(n-36).
$$
With
$$
n=18M,
$$
we obtain
$$
2g(K_p)-2=2M(M-2).
$$
Therefore
$$
g(K_p)=(M-1)^2.
$$
Since
$$
M=\frac{p-1}{18},
$$
we get
$$
g(K_p)=\left(\frac{p-19}{18}\right)^2.
$$

Final Answer: $\boxed{\left(\frac{p-19}{18}\right)^2}$

---

## Answer

$\left(\frac{p-19}{18}\right)^2$

---

## Classification

**Problem Type:** Symbolic derivation

**Answer Type:** Exact symbolic expression

---

## Solution Concepts

- invariant subfields
- diagonal group actions
- semidirect products
- fixed-point ramification
- Riemann-Hurwitz formula
