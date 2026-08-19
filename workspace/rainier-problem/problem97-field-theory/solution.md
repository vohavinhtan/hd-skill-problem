## Steps

Step 1: Reconstruct the hidden cubic orbit

Consider
$$
H(T)=T^3-sT^2+(s-3)T+1.
$$
If $t$ is a root, then
$$
s=\frac{t^3-3t+1}{t(t-1)}.
$$
The rational function on the right has degree $3$, so
$$
[\mathbb F_p(t):K]=3.
$$

Define
$$
\sigma(t)=\frac{1}{1-t}.
$$
Then
$$
\sigma^2(t)=\frac{t-1}{t},\qquad \sigma^3(t)=t.
$$
Substitution into the displayed formula for $s$ shows that $s$ is fixed by $\sigma$. Hence the three roots of $H$ are
$$
t,\qquad \frac{1}{1-t},\qquad \frac{t-1}{t},
$$
and
$$
E=\mathbb F_p(t)
$$
is a cyclic degree-$3$ splitting field over $K$.

Now put
$$
b_0=t+\frac{z}{t},
$$
$$
b_1=\frac{1}{1-t}+z(1-t),
$$
and
$$
b_2=\frac{t-1}{t}+\frac{zt}{t-1}.
$$
Multiplying
$$
(Y-b_0)(Y-b_1)(Y-b_2)
$$
and replacing $t^3$ by
$$
st^2-(s-3)t-1
$$
gives
$$
(Y-b_0)(Y-b_1)(Y-b_2)=Q(Y).
$$
Thus $Q$ splits in $E$.

The element $b_0$ is not fixed by $\sigma$: $b_0$ has a pole at $t=0$, while $\sigma(b_0)=b_1$ has a pole at $t=1$. Since $E/K$ has prime degree $3$,
$$
K(b_0)=E.
$$
Therefore $Q$ is irreducible and $E$ is its splitting field.

Step 2: Find the hidden relation among the three fibers

The three roots of $Q$ are not independent as additive right-hand sides. Using $z^2+z+1=0$ and $z^3=1$,
$$
zb_0+b_1+z^2b_2
=
z\left(t+\frac{z}{t}\right)
+\left(\frac{1}{1-t}+z(1-t)\right)
+z^2\left(\frac{t-1}{t}+\frac{zt}{t-1}\right)
=0.
$$
Hence
$$
b_2=-z^2b_0-zb_1.
$$

This relation is not visible from the symmetric coefficients of $Q$, and it will remove one apparently necessary additive extension.

Step 3: Determine the kernel of the additive polynomial

Since $z\in\mathbb F_p$,
$$
P=(\tau-z)^2,
$$
where $\tau(c)=c^p$.

Let
$$
V=\ker P.
$$
Because
$$
P'(X)=z^2\neq0,
$$
the kernel contains exactly $p^2$ elements.

Choose $\beta\neq0$ satisfying
$$
\beta^p=z\beta,
$$
and choose $\gamma$ satisfying
$$
\gamma^p-z\gamma=\beta.
$$
Then
$$
V=\mathbb F_p\beta\oplus\mathbb F_p\gamma.
$$
Frobenius acts by
$$
\beta^p=z\beta,\qquad \gamma^p=z\gamma+\beta.
$$
Induction gives
$$
\gamma^{p^n}=z^n\gamma+nz^{n-1}\beta.
$$
Thus $\gamma^{p^n}=\gamma$ exactly when $3\mid n$ and $p\mid n$. Since $p\neq3$, the least positive such $n$ is $3p$.

Therefore the smallest constant field containing $V$ is
$$
C=\mathbb F_{p^{3p}},
$$
and
$$
[C:\mathbb F_p]=3p.
$$

Step 4: Form the base field in which every translation is visible

The rational function field $E=\mathbb F_p(t)$ has constant field $\mathbb F_p$, so
$$
E\cap C=\mathbb F_p.
$$
Put
$$
B=C(t).
$$
Using $[E:K]=3$ from Step 1,
$$
[B:K]=[C:\mathbb F_p][E:K]=3p\cdot3=9p.
$$

Over $B$,
$$
F(X)=\left(P(X)-b_0\right)\left(P(X)-b_1\right)\left(P(X)-b_2\right).
$$
Choose $x_0,x_1,x_2$ with
$$
P(x_i)=b_i.
$$
Since $V\subset B$, every root in the $i$th fiber is $x_i+v$ for $v\in V$.

Step 5: Show that the first additive fiber has full degree

The function
$$
b_0=t+\frac{z}{t}
$$
has a simple pole at $t=0$.

Let $w$ be a valuation of $B(x_0)$ above that place and let $e$ be its ramification index. The equation
$$
P(x_0)=b_0
$$
forces $w(x_0)<0$. The term $x_0^{p^2}$ then has strictly smaller valuation than the two lower-degree terms, so
$$
p^2w(x_0)=-e.
$$
Therefore $p^2\mid e$.

Since $x_0$ satisfies a polynomial of degree $p^2$,
$$
e\leq[B(x_0):B]\leq p^2.
$$
Consequently
$$
[B(x_0):B]=p^2.
$$

At $t=1$, the function $b_0$ is regular. The polynomial $P(X)-b_0$ is monic with derivative $z^2$, a unit at that place. Hence $B(x_0)/B$ is unramified above $t=1$.

Step 6: Prove that the second fiber contributes another full factor

The function
$$
b_1=\frac{1}{1-t}+z(1-t)
$$
has a simple pole at $t=1$.

Because $B(x_0)/B$ is unramified there, $b_1$ still has pole order $1$ at every place of $B(x_0)$ above $t=1$.

For a valuation $w$ of $B(x_0,x_1)$ above one of these places, let $e$ be the ramification index over $B(x_0)$. From
$$
P(x_1)=b_1
$$
the same pole-order argument gives
$$
p^2\mid e.
$$
Since $x_1$ has degree at most $p^2$,
$$
[B(x_0,x_1):B(x_0)]=p^2.
$$
Together with Step 5,
$$
[B(x_0,x_1):B]=p^4.
$$

Step 7: Use the hidden relation to absorb the third fiber

From Step 2,
$$
b_2=-z^2b_0-zb_1.
$$
Since $P$ is $\mathbb F_p$-linear,
$$
P(-z^2x_0-zx_1)=-z^2P(x_0)-zP(x_1)=b_2.
$$
Thus one root of the third fiber already belongs to $B(x_0,x_1)$. Since its other roots differ by elements of $V\subset B$, the entire third fiber is already split there.

Hence
$$
L=B(x_0,x_1),
$$
so Step 6 gives
$$
[L:B]=p^4.
$$
Combining this with Step 4,
$$
[L:K]=p^4\cdot9p=9p^5.
$$

Final Answer: $\boxed{9p^5}$

---

## Answer

$9p^5$

---

## Classification

**Domain:** Abstract Algebra

**Sub-domain:** Field theory

**Problem Type:** Exact computation

**Answer Type:** Exact scalar

---

## Solution Concepts

- splitting fields
- additive polynomials
- cyclic function-field extensions
- ramification of function fields
- finite-field Frobenius
