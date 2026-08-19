## Steps

Step 1: Identify the cubic field and rewrite the three right-hand sides

Since $z^3=1$ and $z\neq1$, the polynomial
$$
T^3-s
$$
has splitting field
$$
E=\mathbb F_p(t)
$$
over $K$, with
$$
[E:K]=3
$$
and generator
$$
\sigma(t)=zt.
$$

For $i\in\{0,1,2\}$ put
$$
h_i=\frac{1}{z^it-1}.
$$
Because $p=3m+1$,
$$
(z^it)^p=z^it^p=z^is^mt.
$$
Thus
$$
h_i^p=\frac{1}{z^is^mt-1}.
$$
If
$$
D(x)=x^p-zx,
$$
then the definition of $R$ gives
$$
R(z^it)=\frac1s+D(h_i).
$$
Write
$$
y_i=R(z^it)=\frac1s+D(h_i).
$$

The automorphism $\sigma$ cyclically permutes $y_0,y_1,y_2$, so $Q$ lies in $K[Y]$.

Let $\mathfrak p_i$ be the place of $E$ given by
$$
t=z^{-i}.
$$
At $\mathfrak p_i$, the function $h_i$ has a simple pole while $h_j$ is regular for $j\neq i$. Hence $y_i$ has a pole of order $p$ at $\mathfrak p_i$, while the other two $y_j$ are regular there. The $y_i$ are therefore distinct. Their orbit has size $3$, so $Q$ is irreducible and $E$ is its splitting field over $K$.

Step 2: Determine the constant field containing the additive kernel

Since $z^3=1$,
$$
P=D^3=(\tau-z)^3,
$$
where $\tau(c)=c^p$.

Let
$$
V=\ker P.
$$
The derivative of $P$ is $-1$, so $P$ is separable of degree $p^3$ and
$$
\dim_{\mathbb F_p}V=3.
$$

Choose $\beta_0,\beta_1,\beta_2$ with
$$
D(\beta_0)=0,\qquad D(\beta_1)=\beta_0,\qquad D(\beta_2)=\beta_1.
$$
They form an $\mathbb F_p$-basis of $V$. Frobenius acts on this basis as
$$
J=zI+N,
$$
where
$$
N^3=0,\qquad N^2\neq0.
$$
For $n\geq1$,
$$
J^n=z^nI+nz^{n-1}N+\binom n2z^{n-2}N^2.
$$
If $J^n=I$, the coefficient of $N$ forces $p\mid n$, while the scalar term forces $3\mid n$. Conversely,
$$
J^{3p}=I.
$$
Therefore Frobenius has order $3p$ on $V$, and the smallest constant field containing $V$ is
$$
C=\mathbb F_{p^{3p}}.
$$
Hence
$$
[C:\mathbb F_p]=3p.
$$

Step 3: Form the common base field

The rational function field $E=\mathbb F_p(t)$ has constant field exactly $\mathbb F_p$, so
$$
E\cap C=\mathbb F_p.
$$
Put
$$
B=C(t).
$$
Then
$$
[B:K]=[C:\mathbb F_p][E:K]=3p\cdot3=9p.
$$

Over $B$,
$$
F(X)=\prod_{i=0}^{2}\left(P(X)-y_i\right),
$$
and $V\subset B$. Thus once one root of each equation
$$
P(X)=y_i
$$
is adjoined, every root in that fiber is obtained by translation by an element of $V$.

Step 4: Show that the first fiber contributes degree $p^3$

Choose $x_0$ with
$$
P(x_0)=y_0.
$$
Consider the place $t=0$ of $B$. Since $s=t^3$,
$$
\frac1s=t^{-3}
$$
has a pole of order $3$ there, while $h_0$ and $D(h_0)$ are regular. Hence $y_0$ has pole order $3$.

Let $w$ be a valuation of $B(x_0)$ above this place and let $e$ be its ramification index. The equation $P(x_0)=y_0$ forces $w(x_0)<0$. The term $x_0^{p^3}$ then has strictly smallest valuation, so
$$
p^3w(x_0)=-3e.
$$
Since $p\neq3$,
$$
p^3\mid e.
$$
But $x_0$ satisfies a polynomial of degree $p^3$, giving
$$
e\leq[B(x_0):B]\leq p^3.
$$
Therefore
$$
[B(x_0):B]=p^3.
$$

At $\mathfrak p_1$ and $\mathfrak p_2$, the function $y_0$ is regular. Since $P(X)-y_0$ is monic and has derivative $-1$, the extension $B(x_0)/B$ is unramified at those places.

Step 5: Convert the second fiber into a degree-$p^2$ correction

Choose $x_1$ with
$$
P(x_1)=y_1
$$
and put
$$
\delta_1=x_1-x_0.
$$
From Step 1,
$$
y_1-y_0=D(h_1-h_0).
$$
Therefore
$$
D^3(\delta_1)=D(h_1-h_0),
$$
so
$$
D\left(D^2(\delta_1)-(h_1-h_0)\right)=0.
$$
Thus
$$
D^2(\delta_1)-(h_1-h_0)\in\ker D.
$$

The map
$$
D^2:V\to\ker D
$$
is onto, because
$$
D^2(\beta_2)=\beta_0.
$$
By replacing $x_1$ by another root $x_1-v$ with $v\in V$, we may therefore arrange
$$
D^2(\delta_1)=h_1-h_0.
$$

At $\mathfrak p_1$, the function $h_1-h_0$ has a simple pole. Step 4 shows that $B(x_0)/B$ is unramified there, so this pole still has order $1$ over $B(x_0)$.

The polynomial $D^2(X)-(h_1-h_0)$ has degree $p^2$. If $e$ is the ramification index after adjoining $\delta_1$, the pole-order equation gives
$$
p^2w(\delta_1)=-e.
$$
Hence $p^2\mid e$, and therefore
$$
[B(x_0,x_1):B(x_0)]=p^2.
$$

Since $h_1-h_0$ is regular at $\mathfrak p_2$ and $D^2$ has nonzero constant derivative $z^2$, this second extension is unramified above $\mathfrak p_2$.

Step 6: Show that the third fiber contributes one more degree-$p^2$ correction

Choose $x_2$ with
$$
P(x_2)=y_2
$$
and put
$$
\delta_2=x_2-x_0.
$$
Exactly as in Step 5,
$$
D^3(\delta_2)=D(h_2-h_0).
$$
After translating $x_2$ by an element of $V$, we may arrange
$$
D^2(\delta_2)=h_2-h_0.
$$

The function $h_2-h_0$ has a simple pole at $\mathfrak p_2$. Both extensions already adjoined are unramified there, so the pole remains of order $1$ in $B(x_0,x_1)$.

The valuation argument for the degree-$p^2$ polynomial
$$
D^2(X)-(h_2-h_0)
$$
therefore gives
$$
[B(x_0,x_1,x_2):B(x_0,x_1)]=p^2.
$$

Thus
$$
[B(x_0,x_1,x_2):B]=p^3\cdot p^2\cdot p^2=p^7.
$$

Step 7: Identify the splitting field and assemble the degree

The field
$$
B(x_0,x_1,x_2)
$$
splits every equation $P(X)=y_i$, because the entire kernel $V$ is already contained in $B$. Hence it splits $F$.

Conversely, the splitting field of $F$ contains the values $P(x)$ for all roots $x$, hence it contains all three roots $y_i$ of $Q$ and therefore contains $E$. Differences of roots lying in one additive fiber give all elements of $V$, so it also contains $C$. Thus it contains $B$ and the chosen $x_i$.

Therefore
$$
L=B(x_0,x_1,x_2).
$$
Using Step 3 and Step 6,
$$
[L:K]=[L:B][B:K]=p^7\cdot9p=9p^8.
$$

Final Answer: $\boxed{9p^8}$

---

## Answer

$9p^8$

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
- finite-field Frobenius
- ramification of function fields
- towers of field extensions
