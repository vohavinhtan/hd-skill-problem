## Steps

Step 1: Recover the fixed field

Let
$$
C_Q:\quad X^n+Y^n+Z^n=0,
\qquad
n=Q-1.
$$
Since
$$
Q\equiv19\pmod{36},
$$
write
$$
n=18M
$$
with $M$ odd.

Set
$$
S=X^{18}+Y^{18}+Z^{18},
$$
and define
$$
\alpha=\frac{X^{18}}S,
\qquad
\beta=\frac{Y^{18}}S,
\qquad
\gamma=\frac{Z^{18}}S.
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
There are at most six possible orderings.

On the chart $Z=1$,
$$
x^{18}=\frac{\alpha}{\gamma},
\qquad
y^{18}=\frac{\beta}{\gamma},
\qquad
(xy)^6=\frac{v}{\gamma}.
$$
After choosing an ordering, there are at most $18$ choices for $x$, and then
$$
y^6=\frac{v}{\gamma x^6}
$$
gives at most $6$ choices for $y$. Therefore
$$
[L_Q:K_Q]\leq6\cdot18\cdot6=648.
$$

Choose a primitive eighteenth root $\xi\in\mathbb F_Q$. Let $D$ be the projective diagonal group
$$
[X:Y:Z]\longmapsto[\xi^aX:\xi^bY:\xi^cZ]
$$
with
$$
a+b+c\equiv0\pmod3.
$$
There are
$$
|D|=\frac{18^3}{3\cdot18}=108
$$
such projective transformations.

Coordinate permutations normalize $D$, so
$$
H=D\rtimes S_3
$$
has order
$$
|H|=108\cdot6=648.
$$
The functions $u$ and $v$ are fixed by $H$, because the eighteenth powers are fixed by $D$ and
$$
(XYZ)^6\longmapsto\xi^{6(a+b+c)}(XYZ)^6=(XYZ)^6.
$$
Hence
$$
K_Q\subseteq L_Q^H.
$$
The group $H$ gives $648$ distinct $K_Q$-automorphisms of $L_Q$, so
$$
[L_Q:K_Q]\geq648.
$$
Therefore
$$
[L_Q:K_Q]=648
$$
and
$$
K_Q=L_Q^H.
$$

Step 2: Compute the genus of the covering curve

The Fermat curve $C_Q$ is smooth because the characteristic does not divide
$$
n=Q-1.
$$
Therefore
$$
g(C_Q)=\frac{(n-1)(n-2)}2,
$$
so
$$
2g(C_Q)-2=n(n-3).
$$

The characteristic is neither $2$ nor $3$, so it does not divide
$$
|H|=648.
$$
Thus the quotient $C_Q/H$ is tame.

Step 3: Count fixed points of diagonal elements

Represent an element of $D$ by
$$
d_{r,s}[X:Y:Z]=[\xi^rX:\xi^sY:Z],
\qquad
r+s\equiv0\pmod3.
$$
A nonidentity diagonal element can fix a point of $C_Q$ only when two of
$$
\xi^r,\qquad\xi^s,\qquad1
$$
are equal, because no coordinate point lies on $C_Q$.

If $r=0$, then
$$
s\in\{3,6,9,12,15\},
$$
giving five elements. The condition $s=0$ gives another five.

If $r=s$, then the congruence condition gives
$$
r=s\in\{3,6,9,12,15\},
$$
giving five more.

Each of these fifteen elements fixes one coordinate line, and each such line meets $C_Q$ in exactly $n$ distinct points. Every other nonidentity element of $D$ has no fixed point. Hence the diagonal contribution is
$$
R_D=15n.
$$

Step 4: Count fixed points above transpositions

Let $\tau$ exchange $X$ and $Y$. Elements of $D\tau$ have the form
$$
g_{r,s}[X:Y:Z]=[\xi^rY:\xi^sX:Z],
\qquad
r+s\equiv0\pmod3.
$$
Put
$$
k\equiv r+s\pmod{18}.
$$
Then
$$
k\in\{0,3,6,9,12,15\},
$$
and each residue occurs for exactly $18$ pairs $(r,s)$.

The two eigenvalues on the $X,Y$ block satisfy
$$
\lambda^2=\xi^k.
$$

For $k=0$, the eigenvalues are $1$ and $-1$. The $1$-eigenspace together with the $Z$-axis is a projective line whose intersection with $C_Q$ consists of $n$ points. The isolated $-1$ eigenline lies in $Z=0$ and is not on $C_Q$ because $n$ is even. These $18$ elements contribute
$$
18n.
$$

Now suppose $k\neq0$. The two eigenlines lie in $Z=0$. On either one,
$$
\left(\frac YX\right)^n=\lambda^n.
$$
Since $n=18M$ and $M$ is odd,
$$
\lambda^n
=
(\lambda^2)^{n/2}
=
\xi^{9Mk}
=
(-1)^k.
$$
The eigenline lies on
$$
X^n+Y^n=0
$$
exactly when $k$ is odd. Thus the residues
$$
k=3,9,15
$$
give two fixed points per element, while $k=6,12$ give none.

One transposition coset contributes
$$
18n+3\cdot18\cdot2=18n+108.
$$
There are three transpositions, so
$$
R_T=54n+324.
$$

Step 5: Show that three-cycle cosets have no fixed points

Let
$$
c[X:Y:Z]=[Y:Z:X].
$$
An element of $Dc$ has the form
$$
g[X:Y:Z]=[\xi^rY:\xi^sZ:X],
\qquad
r+s\equiv0\pmod3.
$$
At a fixed projective point with eigenvalue $\lambda$,
$$
\lambda^3=\xi^{r+s}.
$$
All three coordinates are nonzero, and the eigenvector equations give
$$
Y^n=\lambda^nX^n,
\qquad
Z^n=\lambda^{2n}X^n.
$$
Since $n=18M$,
$$
\lambda^n
=
(\lambda^3)^{n/3}
=
\xi^{6M(r+s)}.
$$
Because
$$
3\mid r+s,
$$
the exponent is divisible by $18$, so
$$
\lambda^n=1.
$$
Hence
$$
X^n=Y^n=Z^n.
$$
The Fermat equation would then require
$$
3X^n=0,
$$
which is impossible because the characteristic is not $3$.

Thus no element of $Dc$ fixes a point. The same argument applies to $Dc^2$.

Therefore the total fixed-point contribution is
$$
R=15n+54n+324=69n+324.
$$

Step 6: Compute the genus and evaluate the limit

Tame Riemann-Hurwitz gives
$$
n(n-3)=648(2g(K_Q)-2)+69n+324.
$$
Therefore
$$
648(2g(K_Q)-2)=n^2-72n-324.
$$
Adding $1296$ to both sides gives
$$
1296g(K_Q)=n^2-72n+972.
$$
Since
$$
n=Q-1,
$$
we obtain
$$
1296g(K_Q)=Q^2-74Q+1045=(Q-37)^2-324.
$$

Hence the expression in the problem equals
$$
Q\left(\sqrt{(Q-37)^2-324}-(Q-37)\right).
$$
Rationalizing,
$$
Q\left(\sqrt{(Q-37)^2-324}-(Q-37)\right)
=
\frac{-324Q}{\sqrt{(Q-37)^2-324}+Q-37}.
$$
Dividing numerator and denominator by $Q$ gives
$$
\frac{-324}
{\sqrt{\left(1-\frac{37}{Q}\right)^2-\frac{324}{Q^2}}+1-\frac{37}{Q}}.
$$
As $Q\to\infty$, the denominator tends to $2$. Therefore the limit is
$$
-162.
$$

Final Answer: $\boxed{-162}$

---

## Answer

$-162$

---

## Classification

**Problem Type:** Exact computation

**Answer Type:** Exact scalar

---

## Solution Concepts

- invariant subfields
- semidirect product actions
- projective fixed points
- Riemann-Hurwitz formula
- rationalized limits
