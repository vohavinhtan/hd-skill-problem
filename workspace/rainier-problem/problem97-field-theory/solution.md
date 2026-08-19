## Steps

Step 1: Reconstruct the hidden cyclic cubic extension

Set
$$
H(T)=T^3-sT^2+(s-3)T+1.
$$
Let $t$ be a root of $H$. Solving $H(t)=0$ for $s$ gives
$$
s=\frac{t^3-3t+1}{t(t-1)}.
$$
The rational function on the right has degree $3$, so
$$
[\mathbb F_p(t):\mathbb F_p(s)]=3.
$$

Define
$$
\sigma(t)=\frac{1}{1-t}.
$$
Then
$$
\sigma^2(t)=\frac{t-1}{t},\qquad \sigma^3(t)=t.
$$
Direct calculation gives
$$
t+\frac{1}{1-t}+\frac{t-1}{t}=s,
$$
$$
\frac{t}{1-t}+t-1-\frac{1}{t}=s-3,
$$
and
$$
t\frac{1}{1-t}\frac{t-1}{t}=-1.
$$
Hence the three roots of $H$ are
$$
t,\qquad \frac{1}{1-t},\qquad \frac{t-1}{t}.
$$
Thus
$$
E=\mathbb F_p(t)
$$
is already the splitting field of $H$ over $K$, and
$$
[E:K]=3.
$$

Step 2: Determine the constant field forced by the additive kernel

Since $z^3=1$ and $z\neq1$,
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
the space $V$ has $p^2$ elements.

Choose $\beta\neq0$ with
$$
\beta^p=z\beta,
$$
and choose $\gamma$ with
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
Therefore $\gamma^{p^n}=\gamma$ exactly when $3\mid n$ and $p\mid n$. Since $p\neq3$, the least positive such $n$ is $3p$. Hence the smallest constant field containing $V$ is
$$
C=\mathbb F_{p^{3p}},
$$
and
$$
[C:\mathbb F_p]=3p.
$$

The rational function field $E=\mathbb F_p(t)$ has constant field $\mathbb F_p$, so
$$
C\cap E=\mathbb F_p.
$$
Consequently, for
$$
B=C(t)
$$
we have
$$
[B:K]=[C:\mathbb F_p][E:K]=9p.
$$

Step 3: Identify the three additive fibers

Over $B$, the outer cubic splits, so
$$
F(X)=
\left(P(X)-t\right)
\left(P(X)-\frac{1}{1-t}\right)
\left(P(X)-\frac{t-1}{t}\right).
$$
Choose $x_0,x_1,x_2$ satisfying
$$
P(x_0)=t,
$$
$$
P(x_1)=\frac{1}{1-t},
$$
and
$$
P(x_2)=\frac{t-1}{t}.
$$
Since $V\subset C$, every root in the corresponding fiber is $x_i+v$ with $v\in V$. Hence
$$
L=B(x_0,x_1,x_2).
$$

The three right-hand sides have simple poles at three different places:
$$
t\text{ at }\infty,\qquad
\frac{1}{1-t}\text{ at }t=1,\qquad
\frac{t-1}{t}\text{ at }t=0.
$$

Step 4: Compute the first additive degree

Consider the pole at $t=\infty$. If $w$ is a valuation of $B(x_0)$ above it and $e$ is the ramification index, then $w(x_0)<0$. Since the highest term of $P(x_0)$ dominates,
$$
w(P(x_0))=p^2w(x_0)=-e.
$$
Therefore
$$
p^2\mid e.
$$
But $x_0$ satisfies a polynomial of degree $p^2$, so
$$
e\leq[B(x_0):B]\leq p^2.
$$
Thus
$$
[B(x_0):B]=p^2,
$$
and the place at infinity is totally ramified.

At $t=0$ and $t=1$, the right-hand side $t$ is regular. Since the derivative of $P(X)-t$ with respect to $X$ is the nonzero constant $z^2$, the extension $B(x_0)/B$ is unramified at those two places.

Step 5: Force independence of the second fiber

At $t=1$, the extension $B(x_0)/B$ is unramified. Hence every valuation above $t=1$ still gives the function
$$
\frac{1}{1-t}
$$
a pole whose order is prime to $p$.

Let $w$ be a valuation of $B(x_0,x_1)$ above such a place, and let $e$ be its ramification index over $B(x_0)$. The equation
$$
P(x_1)=\frac{1}{1-t}
$$
forces $w(x_1)<0$, and comparison of pole orders gives
$$
p^2w(x_1)=-e.
$$
Therefore $p^2\mid e$. Since $x_1$ has degree at most $p^2$,
$$
[B(x_0,x_1):B(x_0)]=p^2.
$$
Thus
$$
[B(x_0,x_1):B]=p^4.
$$

Both first two fibers are unramified at $t=0$, because their right-hand sides are regular there.

Step 6: Force independence of the third fiber

At every place of $B(x_0,x_1)$ above $t=0$, the function
$$
\frac{t-1}{t}
$$
has a pole whose order is prime to $p$.

Applying the same valuation argument to
$$
P(x_2)=\frac{t-1}{t}
$$
shows that the ramification index contributed by adjoining $x_2$ is divisible by $p^2$. Since the defining polynomial has degree $p^2$,
$$
[B(x_0,x_1,x_2):B(x_0,x_1)]=p^2.
$$
Therefore
$$
[L:B]=p^6.
$$

Step 7: Assemble the full degree

Step 2 gives
$$
[B:K]=9p,
$$
while Step 6 gives
$$
[L:B]=p^6.
$$
Hence
$$
[L:K]=9p\cdot p^6=9p^7.
$$

Final Answer: $\boxed{9p^7}$

---

## Answer

$9p^7$

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
