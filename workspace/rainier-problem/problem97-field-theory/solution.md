## Steps

Step 1: Split the outer quadratic without splitting the additive fibers

Since
$$
z^2+z+1=0,
$$
we have $z^3=1$ and $z\neq1$. Also $p\neq3$.

Let $t$ satisfy
$$
t^2-st+1=0.
$$
Then
$$
s=t+t^{-1}.
$$
The element $s^2-4$ is not a square in $\mathbb F_p(s)$: it has simple zeros at $s=2$ and $s=-2$. Therefore
$$
[\mathbb F_p(t):K]=2.
$$
Moreover $\mathbb F_p(t)$ is a rational function field, because $s=t+t^{-1}$.

Over $\mathbb F_p(t)$,
$$
F(X)=\left(P(X)-t\right)\left(P(X)-t^{-1}\right).
$$
The splitting field must therefore contain the splitting fields of both additive equations
$$
P(X)=t
$$
and
$$
P(X)=t^{-1}.
$$

Step 2: Determine the translation kernel and the constants it forces

The polynomial $P$ satisfies
$$
P=(\tau-z)^2,
$$
where $\tau(c)=c^p$. Its derivative is
$$
P'(X)=z^2\neq0,
$$
so its kernel
$$
V=\ker P
$$
has $p^2$ distinct elements and is two-dimensional over $\mathbb F_p$.

Choose $\beta\neq0$ with
$$
\beta^p=z\beta,
$$
and choose $\gamma$ with
$$
\gamma^p-z\gamma=\beta.
$$
Then $\beta,\gamma\in V$ and are linearly independent, so
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
Therefore $\gamma^{p^n}=\gamma$ exactly when $3\mid n$ and $p\mid n$. The least positive such $n$ is $3p$. Hence the smallest finite field containing $V$ is
$$
C=\mathbb F_{p^{3p}}.
$$
In particular,
$$
[C:\mathbb F_p]=3p.
$$

Step 3: Compute the degree of each additive fiber

Work over
$$
E=C(t).
$$
Choose $\alpha$ with
$$
P(\alpha)=t.
$$
Put
$$
u=\alpha^p-z\alpha.
$$
Then
$$
u^p-zu=t,\qquad \alpha^p-z\alpha=u.
$$

At the pole $t=\infty$, the first equation gives a degree-$p$ totally ramified extension. Indeed, if $w$ extends the pole valuation and $e$ is its ramification index, then $w(u)<0$ and
$$
pw(u)=-e.
$$
So $p\mid e$, while $u$ has degree at most $p$. The degree and ramification index are therefore both $p$.

Since $t=u^p-zu$, the field $C(t,u)$ equals $C(u)$. The element $u$ has a simple pole in this rational function field. Applying the same valuation argument to
$$
\alpha^p-z\alpha=u
$$
gives another totally ramified degree-$p$ extension. Consequently
$$
[E(\alpha):E]=p^2.
$$

Choose $\eta$ with
$$
P(\eta)=t^{-1}.
$$
The same argument at the place $t=0$, where $t^{-1}$ has a simple pole, gives
$$
[E(\eta):E]=p^2.
$$

Because $C$ contains $V$, both extensions are Galois over $E$, with translation group isomorphic to $V$.

Step 4: Prove that the two degree-$p^2$ extensions are linearly disjoint

The extension $E(\alpha)/E$ is totally ramified at $t=\infty$. At every finite place where $t$ has no pole, both equations
$$
u^p-zu=t,\qquad \alpha^p-z\alpha=u
$$
have derivative $-z$, a unit. Their defining integral polynomials therefore have unit discriminant locally, so $E(\alpha)/E$ is unramified at $t=0$.

Similarly, $E(\eta)/E$ is totally ramified at $t=0$ and unramified at $t=\infty$.

Let
$$
M=E(\alpha)\cap E(\eta).
$$
If $M\neq E$, then $M/E$, as a nontrivial subextension of the totally ramified Galois extension $E(\alpha)/E$, is ramified at $t=\infty$. But $M$ is also a subextension of $E(\eta)/E$, which is unramified at $t=\infty$. This is impossible.

Therefore
$$
E(\alpha)\cap E(\eta)=E,
$$
and
$$
[E(\alpha,\eta):E]=p^4.
$$

Step 5: Assemble the full splitting field degree

Every root of $P(X)-t$ is
$$
\alpha+v,\qquad v\in V,
$$
and every root of $P(X)-t^{-1}$ is
$$
\eta+v,\qquad v\in V.
$$
Since $V\subset C$, the splitting field is
$$
L=C(t,\alpha,\eta).
$$

The constant extension and the quadratic rational-function extension are disjoint:
$$
C\cap\mathbb F_p(t)=\mathbb F_p.
$$
Therefore
$$
[C(t):K]=[C:\mathbb F_p][\mathbb F_p(t):K]=3p\cdot2=6p.
$$
Using Step 4,
$$
[L:K]=[L:C(t)][C(t):K]=p^4\cdot6p=6p^5.
$$

Final Answer: $\boxed{6p^5}$

---

## Answer

$6p^5$

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
- ramification of function fields
- finite-field Frobenius
- linear disjointness
