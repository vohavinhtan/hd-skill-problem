## Steps

Step 1: Recover the relative invariant hidden by the generators

Write
$$
h=h(x)=\frac{(x+1)(x-2)(2x-1)}{x(x-1)}.
$$
Expanding gives
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

Also
$$
v=yh,
$$
so once $h$ is known,
$$
y=\frac{v}{h}.
$$
Finally $x$ satisfies
$$
h\,x(x-1)=(x+1)(x-2)(2x-1),
$$
which is cubic in $x$. Consequently
$$
[L:K_p]\leq6.
$$

Step 2: Identify the six automorphisms fixing the stated field

Consider
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
so they generate a group isomorphic to $S_3$.

Direct substitution gives
$$
h(1-x)=-h(x),
\qquad
h(1/x)=-h(x).
$$
Since the polynomial
$$
F(T)=T^5+T
$$
is odd, the maps
$$
s(x,y)=(1-x,-y),
\qquad
t(x,y)=\left(\frac1x,-y\right)
$$
preserve
$$
y^p-y=F(h).
$$
Every odd permutation changes the signs of both $y$ and $h$, while every even permutation preserves both signs.

The identity
$$
h^2=4u-27
$$
shows that $u$ is fixed, and
$$
v=yh
$$
is also fixed. Therefore
$$
K_p\subseteq L^{S_3}.
$$
The six group elements are distinct $K_p$-automorphisms, so
$$
[L:K_p]\geq6.
$$
Together with Step 1,
$$
[L:K_p]=6
$$
and
$$
K_p=L^{S_3}.
$$

Step 3: Compute the genus of the Artin-Schreier curve

The rational function $h$ has simple poles at
$$
x=0,\qquad x=1,\qquad x=\infty.
$$
Because
$$
F(h)=h^5+h,
$$
the right side has a pole of order $5$ at each of these three places. Since $p\geq7$, the pole order is prime to $p$.

A pole of an expression $w^p-w$ in $\mathbb F_p(x)$ has order divisible by $p$. Therefore $F(h)$ is not of that form, and
$$
[L:\mathbb F_p(x)]=p.
$$

For an Artin-Schreier extension with a pole of order $5$ prime to $p$, the unique point above that pole is totally ramified and has different exponent
$$
(p-1)(5+1)=6(p-1).
$$
Riemann-Hurwitz for $L/\mathbb F_p(x)$ gives
$$
2g(L)-2
=
-2p+3\cdot6(p-1)
=
16p-18.
$$
Therefore
$$
g(L)=8(p-1).
$$

Step 4: Count the fixed points of the transpositions

The extension $L/K_p$ has degree $6$, and $p\nmid6$, so it is tame.

All three transpositions are conjugate. Consider
$$
s(x,y)=(1-x,-y).
$$
The transformation $x\mapsto1-x$ has two fixed points on the projective $x$-line:
$$
x=\frac12
\qquad\text{and}\qquad
x=\infty.
$$

At $x=1/2$,
$$
h=0,
$$
so the fiber satisfies
$$
y^p-y=0.
$$
A point fixed by $s$ must also satisfy $y=-y$. Since $p$ is odd, this forces
$$
y=0.
$$
Hence exactly one point above $x=1/2$ is fixed.

At $x=\infty$, the function $F(h)$ has a pole of order $5$. Step 3 shows that there is a unique point of $L$ above $x=\infty$. Since the base point is fixed by $s$, that unique point is fixed.

Each transposition therefore fixes exactly two points. The three transpositions contribute
$$
6
$$
to the tame different.

Step 5: Count the fixed points of the three-cycles and apply Riemann-Hurwitz

Take the three-cycle
$$
c=st.
$$
On the $x$-line,
$$
c(x)=1-\frac1x.
$$
Its fixed points satisfy
$$
x^2-x+1=0.
$$
Because $p\neq3$, there are two distinct such points over the algebraic closure.

Neither is a zero or pole of $h$: substituting $x=-1$, $x=2$, or $x=1/2$ into $x^2-x+1$ gives a nonzero value when $p\neq3$. Thus the Artin-Schreier cover is unramified above both fixed base points and has exactly $p$ points over each one.

A three-cycle is an even permutation, so its lift fixes $y$ rather than changing its sign. It also fixes $h$. Therefore all $p$ points above each of the two fixed base points are fixed. Each nontrivial three-cycle fixes
$$
2p
$$
points.

There are two nontrivial three-cycles, so their total contribution is
$$
4p.
$$
Tame Riemann-Hurwitz for $L/K_p$ gives
$$
16p-18
=
6(2g(K_p)-2)+6+4p.
$$
Therefore
$$
6(2g(K_p)-2)=12p-24,
$$
so
$$
2g(K_p)-2=2p-4.
$$
It follows that
$$
g(K_p)=p-1.
$$

Final Answer: $\boxed{p-1}$

---

## Answer

$p-1$

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
