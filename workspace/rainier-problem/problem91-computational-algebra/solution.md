## Steps

Step 1: Discover the relative invariant hidden in the generators

Put
$$
h=\frac{(x+1)(x-2)(2x-1)}{x(x-1)}.
$$
Expanding the numerator identity gives
$$
(x+1)^2(x-2)^2(2x-1)^2
=
4(x^2-x+1)^3-27x^2(x-1)^2.
$$
After division by $x^2(x-1)^2$,
$$
h^2=4u-27.
$$
Therefore $h$ has degree at most $2$ over $K_p$.

The defining equation of $L$ is
$$
y^p-y=h^3,
$$
while
$$
v=yh.
$$
Once $h$ is known, $x$ satisfies
$$
h\,x(x-1)=(x+1)(x-2)(2x-1),
$$
which is cubic in $x$, and then
$$
y=\frac{v}{h}.
$$
It follows that
$$
[L:K_p]\leq6.
$$

Step 2: Reconstruct the six automorphisms fixing $K_p$

Consider the Möbius transformations
$$
s(x)=1-x,
\qquad
t(x)=\frac1x.
$$
They satisfy
$$
s^2=t^2=1,
\qquad
(st)^3=1,
$$
and generate a group $G\cong S_3$ of order $6$.

Direct substitution gives
$$
h(1-x)=-h(x),
\qquad
h(1/x)=-h(x).
$$
The identity from Step 1 then shows that $u$ is fixed by both transformations.

Lift the generators to $L$ by
$$
s(x,y)=(1-x,-y),
\qquad
t(x,y)=\left(\frac1x,-y\right).
$$
Because $p$ is odd,
$$
(-y)^p-(-y)=-(y^p-y),
$$
and the right side $h^3$ also changes sign under either $s$ or $t$. These are automorphisms of $L$.

Each odd element of $G$ changes the signs of both $y$ and $h$, while each even element fixes both signs. Therefore
$$
u\mapsto u,
\qquad
v=yh\mapsto yh.
$$
Thus
$$
K_p\subseteq L^G.
$$
The six elements of $G$ give six distinct $K_p$-automorphisms, so
$$
[L:K_p]\geq6.
$$
Together with Step 1,
$$
[L:K_p]=6
$$
and
$$
K_p=L^G.
$$

Step 3: Compute the genus of the Artin-Schreier curve

The rational function $h$ has simple poles at
$$
x=0,\qquad x=1,\qquad x=\infty.
$$
Therefore $h^3$ has exactly three poles, each of order $3$.

Since $p\geq5$, the pole order $3$ is prime to $p$. In particular, $h^3$ cannot have the form $w^p-w$ in $\mathbb F_p(x)$, because a pole of $w^p-w$ has order divisible by $p$. Hence
$$
[L:\mathbb F_p(x)]=p.
$$

For an Artin-Schreier extension with a pole of order $3$ prime to $p$, the unique point above that pole is totally ramified and has different exponent
$$
(p-1)(3+1)=4(p-1).
$$
Riemann-Hurwitz for $L/\mathbb F_p(x)$ gives
$$
2g(L)-2
=
-2p+3\cdot4(p-1)
=
10p-12.
$$
Therefore
$$
g(L)=5(p-1).
$$

Step 4: Count the fixed points of the transpositions

The quotient $L/K_p$ has degree $6$, which is prime to $p$, so this quotient is tame.

All three transpositions in $G$ are conjugate. It is enough to count the fixed points of
$$
s(x,y)=(1-x,-y).
$$
On the projective $x$-line, $s$ fixes exactly
$$
x=\frac12
\qquad\text{and}\qquad
x=\infty.
$$

At $x=1/2$, the factor $2x-1$ gives $h=0$. The fiber satisfies
$$
y^p-y=0.
$$
Among its $p$ points, the fixed condition $y=-y$ forces
$$
y=0.
$$
So exactly one point above $x=1/2$ is fixed.

The point $x=\infty$ is a pole of $h^3$. Step 3 shows that there is a unique point of $L$ above it. Since $s$ fixes the base point, that unique point is fixed.

Hence every transposition fixes exactly two points. The three transpositions contribute
$$
3\cdot2=6
$$
to the tame different.

Step 5: Count the fixed points of the three-cycles and apply Riemann-Hurwitz

A three-cycle is an even element of $G$, so it acts on $y$ without changing its sign. For example, $st$ acts on the $x$-line by
$$
x\mapsto1-\frac1x.
$$
Its fixed points satisfy
$$
x^2-x+1=0.
$$
There are two distinct roots over the algebraic closure because $p\neq3$.

Neither root is a zero or pole of $h$. Above each one, the Artin-Schreier equation
$$
y^p-y=h^3
$$
has exactly $p$ distinct points. Since the three-cycle fixes $y$, all $p$ points above each fixed base point are fixed.

Thus each of the two three-cycles fixes
$$
2p
$$
points, and together they contribute
$$
4p.
$$

Tame Riemann-Hurwitz for $L/K_p$ now gives
$$
10p-12
=
6(2g(K_p)-2)+6+4p.
$$
Therefore
$$
6(2g(K_p)-2)=6p-18,
$$
so
$$
2g(K_p)-2=p-3.
$$
Hence
$$
g(K_p)=\frac{p-1}{2}.
$$

Final Answer: $\boxed{\frac{p-1}{2}}$

---

## Answer

$\frac{p-1}{2}$

---

## Classification

**Problem Type:** Symbolic derivation

**Answer Type:** Exact symbolic expression

---

## Solution Concepts

- algebraic function fields
- invariant subfields
- Artin-Schreier extensions
- finite group actions
- Riemann-Hurwitz formula
