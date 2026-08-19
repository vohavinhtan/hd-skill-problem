## Steps

Step 1: Recover the cyclic cubic hidden in $Q$

Let $t$ satisfy
$$
t^3=s.
$$
Since $z\in\mathbb F_p$ has order $3$, the field
$$
E=\mathbb F_p(t)
$$
is a cyclic extension of $K$ of degree $3$, with
$$
\sigma(t)=zt.
$$

Because $p\equiv1\pmod3$,
$$
t^{p^j}=t\,s^{(p^j-1)/3}
$$
for $j=1,2,3$. Therefore
$$
P(t)+t=tA.
$$
Similarly,
$$
P(t^{-1})+t^{-1}=t^{-1}B.
$$

Put
$$
a=tA,\qquad b=t^{-1}B.
$$
The identity
$$
\prod_{i=0}^{2}\left(Y-z^ia-z^{2i}b\right)
=Y^3-3abY-a^3-b^3
$$
gives
$$
Q(Y)=\prod_{i=0}^{2}(Y-b_i),
$$
where
$$
b_i=z^itA+z^{2i}t^{-1}B.
$$

The three $b_i$ form one $\sigma$-orbit. They are distinct because $tA$ lies in the $Kt$ component of the basis $1,t,t^2$ of $E/K$, while $t^{-1}B=s^{-1}Bt^2$ lies in the $Kt^2$ component. Hence $Q$ is irreducible and $E$ is its splitting field over $K$.

Step 2: Determine the constants required by the kernel of $P$

Since $z^3=1$,
$$
P=(\tau-z)^3,
$$
where $\tau(c)=c^p$.

Let
$$
V=\ker P.
$$
The derivative of $P$ is $-1$, so $P$ is separable of degree $p^3$. Hence
$$
\dim_{\mathbb F_p}V=3.
$$

The kernels of $(\tau-z)$, $(\tau-z)^2$, and $(\tau-z)^3$ have dimensions $1,2,3$. Choose $\beta_0,\beta_1,\beta_2$ so that
$$
(\tau-z)\beta_0=0,
$$
$$
(\tau-z)\beta_1=\beta_0,
$$
and
$$
(\tau-z)\beta_2=\beta_1.
$$
Then $\beta_0,\beta_1,\beta_2$ form a basis of $V$.

On this basis Frobenius has matrix
$$
J=zI+N,
$$
where
$$
N^3=0,\qquad N^2\neq0.
$$
For every positive integer $n$,
$$
J^n=z^nI+nz^{n-1}N+\binom{n}{2}z^{n-2}N^2.
$$
If $J^n=I$, the coefficient of $N$ gives
$$
p\mid n,
$$
while the scalar term gives
$$
3\mid n.
$$
Conversely $J^{3p}=I$. Since $p\neq3$, the order of Frobenius on $V$ is exactly $3p$.

In particular, $\beta_2$ has Frobenius orbit of length $3p$, so the smallest constant field containing $V$ is
$$
C=\mathbb F_{p^{3p}}.
$$
Thus
$$
[C:\mathbb F_p]=3p.
$$

Step 3: Form the field containing the outer roots and all translations

The rational function field $E=\mathbb F_p(t)$ has constant field $\mathbb F_p$. Hence
$$
E\cap C=\mathbb F_p.
$$
Put
$$
D=C(t).
$$
Using Step 1 and Step 2,
$$
[D:K]=[C:\mathbb F_p][E:K]=3p\cdot3=9p.
$$

Over $D$,
$$
F(X)=\prod_{i=0}^{2}\left(P(X)-b_i\right),
$$
and every fiber of $P$ is a coset of $V\subset C$.

Step 4: Remove the hidden $P$-image parts of all three fibers

From Step 1,
$$
tA=P(t)+t,
$$
and
$$
t^{-1}B=P(t^{-1})+t^{-1}.
$$
Therefore
$$
b_i
=z^iP(t)+z^{2i}P(t^{-1})+z^it+z^{2i}t^{-1}.
$$
Since $P$ is $\mathbb F_p$-linear,
$$
b_i=P(z^it+z^{2i}t^{-1})+z^it+z^{2i}t^{-1}.
$$

Choose $u,v$ satisfying
$$
P(u)=t,\qquad P(v)=t^{-1}.
$$
Then
$$
x_i=z^it+z^{2i}t^{-1}+z^iu+z^{2i}v
$$
satisfies
$$
P(x_i)=b_i.
$$
Thus every one of the three apparent additive fibers already splits after adjoining only $u$ and $v$, because the remaining roots are $x_i+V$.

Hence
$$
L\subseteq D(u,v).
$$

Conversely, the splitting field contains the three values $b_i=P(x_i)$ and therefore contains their splitting field $E$. Differences between two roots in one fiber give every element of $V$, so it contains $C$ and hence $D$.

Choose one root $x_i$ from each fiber and put
$$
w_i=x_i-z^it-z^{2i}t^{-1}.
$$
Then
$$
w_i=z^iu+z^{2i}v.
$$
The two equations
$$
w_0=u+v,\qquad w_1=zu+z^2v
$$
have an invertible coefficient matrix over $\mathbb F_p$, since $z\neq z^2$. Thus $u,v\in L$. Therefore
$$
L=D(u,v).
$$

Step 5: Compute the first additive degree by ramification

Consider the pole $t=\infty$ of $D$. Let $w$ be a valuation of $D(u)$ above it and let $e$ be its ramification index.

The equation
$$
P(u)=t
$$
forces $w(u)<0$. Since
$$
P(u)=u^{p^3}-3zu^{p^2}+3z^2u^p-u,
$$
the first term has strictly smallest valuation. Hence
$$
p^3w(u)=-e.
$$
Therefore
$$
p^3\mid e.
$$
Since $u$ satisfies a polynomial of degree $p^3$,
$$
e\leq[D(u):D]\leq p^3.
$$
It follows that
$$
[D(u):D]=p^3.
$$

At the place $t=0$, the polynomial $P(X)-t$ is monic with coefficients integral there and derivative $-1$, a unit. Its discriminant is therefore a unit, so $D(u)/D$ is unramified at $t=0$.

Step 6: Prove that the second additive extension is independent

At every place of $D(u)$ above $t=0$, the extension from Step 5 is unramified. Hence $t^{-1}$ still has a simple pole.

Let $w$ be a valuation of $D(u,v)$ above such a place, and let $e$ be its ramification index over $D(u)$. From
$$
P(v)=t^{-1},
$$
we again have $w(v)<0$, and the highest term gives
$$
p^3w(v)=-e.
$$
Thus
$$
p^3\mid e.
$$
Since $v$ has degree at most $p^3$ over $D(u)$,
$$
[D(u,v):D(u)]=p^3.
$$
Combining this with Step 5,
$$
[L:D]=[D(u,v):D]=p^6.
$$

Step 7: Assemble the splitting-field degree

Step 3 gives
$$
[D:K]=9p,
$$
and Step 6 gives
$$
[L:D]=p^6.
$$
Therefore
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
- cyclic field extensions
- finite-field Frobenius
- ramification of function fields
