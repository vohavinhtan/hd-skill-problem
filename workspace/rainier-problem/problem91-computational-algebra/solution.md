## Steps

Step 1: Identify the hidden automorphism group

Let $C$ be the smooth projective Fermat curve
$$
X^n+Y^n+Z^n=0.
$$
Since $12\mid p-1$, choose a primitive twelfth root $\zeta\in\mathbb F_p$.

Let $D$ consist of projective diagonal maps
$$
[X:Y:Z]\mapsto[\zeta^aX:\zeta^bY:\zeta^cZ]
$$
with
$$
a+b+c\equiv0\pmod3.
$$
Adding the same residue to $a,b,c$ does not change the projective map and preserves the congruence. There are
$$
\frac{12^3/3}{12}=48
$$
elements in $D$.

Coordinate permutations normalize $D$. Set
$$
H=D\rtimes S_3.
$$
Then
$$
|H|=48\cdot6=288.
$$

In homogeneous form,
$$
u=
\frac{X^{12}Y^{12}+Y^{12}Z^{12}+Z^{12}X^{12}}
{(X^{12}+Y^{12}+Z^{12})^2},
$$
$$
v=
\frac{(XYZ)^4}{X^{12}+Y^{12}+Z^{12}}.
$$
Every coordinate permutation fixes these functions. For a diagonal element of $D$, the numerator of $v$ is multiplied by
$$
\zeta^{4(a+b+c)}=1,
$$
while all twelfth powers are fixed. Therefore
$$
K_p\subseteq L^H.
$$

Step 2: Prove that the stated generators give the full fixed field

Put
$$
S=X^{12}+Y^{12}+Z^{12}
$$
and
$$
\alpha=\frac{X^{12}}S,\qquad
\beta=\frac{Y^{12}}S,\qquad
\gamma=\frac{Z^{12}}S.
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
There are at most six orderings of the three roots.

On the affine chart $Z=1$,
$$
x^{12}=\frac{\alpha}{\gamma},
\qquad
y^{12}=\frac{\beta}{\gamma},
\qquad
(xy)^4=\frac v\gamma.
$$
After an ordering is fixed, there are at most twelve choices for $x$. Once $x$ is chosen,
$$
y^4=\frac{v}{\gamma x^4},
$$
so there are at most four choices for $y$. Cubing this identity gives the already prescribed value of $y^{12}$ because
$$
v^3=\alpha\beta\gamma.
$$
Therefore
$$
[L:K_p]\leq6\cdot12\cdot4=288.
$$
The group $H$ supplies $288$ distinct automorphisms fixing $K_p$, so
$$
[L:K_p]=288
$$
and
$$
K_p=L^H.
$$

Step 3: Count the ramified diagonal elements

The Fermat curve has
$$
g(C)=\frac{(n-1)(n-2)}2,
$$
so
$$
2g(C)-2=n(n-3).
$$
Since $p\nmid288$, the quotient by $H$ is tame.

Represent an element of $D$ as
$$
d_{r,s}[X:Y:Z]=[\zeta^rX:\zeta^sY:Z],
\qquad
r+s\equiv0\pmod3.
$$
A nonidentity diagonal element fixes a point of $C$ only when two of
$$
\zeta^r,\qquad\zeta^s,\qquad1
$$
are equal, because none of the three coordinate points lies on $C$.

If $r=0$, then
$$
s\in\{3,6,9\}.
$$
This gives three elements. The case $s=0$ gives three more. Finally, $r=s$ together with $r+s\equiv0\pmod3$ gives
$$
r=s\in\{3,6,9\},
$$
giving three more.

Each of these nine elements fixes one projective coordinate line. Its intersection with $C$ consists of exactly $n$ distinct points. The remaining nonidentity diagonal elements have no fixed points. Their total contribution is
$$
9n.
$$

Step 4: Separate the three fixed-point types above a transposition

Let $\tau$ exchange $X$ and $Y$. An element of the coset $D\tau$ has the form
$$
g_{r,s}[X:Y:Z]=[\zeta^rY:\zeta^sX:Z],
\qquad
r+s\equiv0\pmod3.
$$
The eigenvalues on the $X,Y$ block satisfy
$$
\lambda^2=\zeta^{r+s}.
$$

Write
$$
n=12M.
$$
The congruence $p\equiv13\pmod{24}$ makes $M$ odd.

There are twelve pairs $(r,s)$ for each possible residue
$$
r+s\equiv0,3,6,9\pmod{12}.
$$

If $r+s\equiv0\pmod{12}$, the block has eigenvalue $1$. Its $1$-eigenline together with the $Z$-axis gives a projective line, and substitution into the Fermat equation gives exactly $n$ fixed points.

Suppose next that $r+s\not\equiv0\pmod{12}$. The two block eigenlines lie in $Z=0$. On either eigenline,
$$
\left(\frac YX\right)^n=\lambda^n
=
(\lambda^2)^{n/2}
=
\zeta^{6M(r+s)}
=
(-1)^{M(r+s)}.
$$
Since $M$ is odd, this equals $-1$ when
$$
r+s\equiv3,9\pmod{12},
$$
so both eigenlines lie on $C$. Such an element fixes exactly two points.

When
$$
r+s\equiv6\pmod{12},
$$
the same expression equals $1$, so neither eigenline lies on $C$.

One transposition coset therefore contributes
$$
12n+12\cdot2+12\cdot2=12n+48.
$$
There are three transpositions, giving
$$
36n+144.
$$

Step 5: Exclude three-cycle ramification and apply Riemann-Hurwitz

Let
$$
c[X:Y:Z]=[Y:Z:X].
$$
An element of $Dc$ can be written
$$
g[X:Y:Z]=[\zeta^rY:\zeta^sZ:X],
\qquad
r+s\equiv0\pmod3.
$$
At a fixed point all coordinates are nonzero. If $\lambda$ is the corresponding eigenvalue, then
$$
\lambda^3=\zeta^{r+s}.
$$
The eigenvector relations give
$$
Y^n=\lambda^nX^n,
\qquad
Z^n=\lambda^{2n}X^n.
$$
Since $n=12M$,
$$
\lambda^n=(\lambda^3)^{4M}
=\zeta^{4M(r+s)}=1
$$
because $3\mid r+s$. The Fermat equation would then give
$$
3X^n=0,
$$
which is impossible. Thus no element of $Dc$ has a fixed point. The same applies to $Dc^2$.

The full fixed-point contribution is
$$
R=9n+36n+144=45n+144.
$$
Tame Riemann-Hurwitz gives
$$
n(n-3)=288(2g(K_p)-2)+45n+144.
$$
Therefore
$$
288(2g(K_p)-2)=n^2-48n-144.
$$
Using $n=12M$,
$$
2g(K_p)-2=\frac{M^2-4M-1}{2}.
$$
It follows that
$$
g(K_p)=\frac{(M-1)(M-3)}4.
$$
Since
$$
M=\frac{p-1}{12},
$$
we obtain
$$
g(K_p)=\frac{(p-13)(p-37)}{576}.
$$

Final Answer: $\boxed{\frac{(p-13)(p-37)}{576}}$

---

## Answer

$\frac{(p-13)(p-37)}{576}$

---

## Classification

**Problem Type:** Symbolic derivation

**Answer Type:** Exact symbolic expression

---

## Solution Concepts

- invariant subfields
- semidirect product actions
- projective fixed points
- tame ramification
- Riemann-Hurwitz formula
