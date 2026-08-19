## Steps

Step 1: Recover the hidden quadratic iteration

Put
$$
f(X)=X^2-t.
$$
Then
$$
f^2(X)=X^4-2tX^2+t^2-t.
$$
Squaring this expression and subtracting $t$ gives
$$
f^3(X)
=
X^8-4tX^6+(6t^2-2t)X^4+(4t^2-4t^3)X^2+t^4-2t^3+t^2-t.
$$
Therefore
$$
F_p=f^3.
$$

Choose $a$ with
$$
a^2=t.
$$
The roots of $f$ are $\pm a$, so
$$
K_1=K(a)
$$
is the first splitting field. Since $t$ is not a square in $\mathbb F_p(t)$,
$$
[K_1:K]=2.
$$

Step 2: Show that the second splitting layer has maximal degree

The roots of $f^2$ are
$$
\pm b,\qquad \pm c,
$$
where
$$
b^2=t+a,
\qquad
c^2=t-a.
$$
Since $t=a^2$, inside
$$
K_1=\mathbb F_p(a)
$$
these radicands become
$$
t+a=a(a+1),
\qquad
t-a=a(a-1).
$$

Their square classes in $K_1^\times/K_1^{\times2}$ are independent. Indeed, the valuation at $a+1$ is odd on $a(a+1)$ and zero on $a(a-1)$, while the valuation at $a-1$ gives the reverse conclusion. The places are distinct because $p\ne2$.

Hence
$$
[K_1(b,c):K_1]=4.
$$
Set
$$
K_2=K_1(b,c).
$$
Then $K_2$ contains all four roots of $f^2$, so it is its splitting field, and
$$
[K_2:K]=8.
$$

The only finite places of $K$ that can ramify in $K_2$ are
$$
t=0,\qquad t=1.
$$
Indeed, the first quadratic layer is ramified only at $0$ and infinity, while the two radicands in the second layer have zeros only above
$$
a=0,\quad a=1,\quad a=-1,
$$
whose finite images are $t=0,1$.

Step 3: Express the last layer as four square classes

Let
$$
\mathcal R=\{b,-b,c,-c\}.
$$
For $y\in\mathcal R$, the solutions of
$$
f(x)=y
$$
satisfy
$$
x^2=t+y.
$$
Consequently the splitting field of $f^3$ is
$$
L_p
=
K_2\left(\sqrt{t+y}:y\in\mathcal R\right).
$$

Thus
$$
[L_p:K_2]=16
$$
exactly when the four elements
$$
t+b,\quad t-b,\quad t+c,\quad t-c
$$
are independent in
$$
K_2^\times/K_2^{\times2}.
$$

Their product is
$$
(t+b)(t-b)(t+c)(t-c)
=
(t^2-b^2)(t^2-c^2).
$$
Using
$$
b^2=t+a,
\qquad
c^2=t-a,
$$
this becomes
$$
(t^2-t-a)(t^2-t+a)
=
(t^2-t)^2-t.
$$
Therefore
$$
\prod_{y\in\mathcal R}(t+y)
=
t\left(t(t-1)^2-1\right).
$$

Step 4: Produce a valuation detecting each third-level radicand

Put
$$
h(t)=t(t-1)^2-1.
$$
Since $h$ has degree $3$, it has an irreducible factor $q(t)$ occurring with odd multiplicity. Also
$$
h(0)=h(1)=-1,
$$
so $q$ is distinct from $t$ and $t-1$.

By Step 2, the place $q$ is unramified in $K_2/K$. Choose a place $P$ of $K_2$ above $q$. In its residue field,
$$
t(t-1)^2=1,
$$
so
$$
(t^2-t)^2=t.
$$
Thus the residue of $a$, which satisfies $a^2=t$, is one of
$$
t(t-1),\qquad -t(t-1).
$$

If
$$
a=t(t-1),
$$
then
$$
b^2=t+a=t^2.
$$
Hence one of $b,-b$ equals $-t$ in the residue field.

If
$$
a=-t(t-1),
$$
then
$$
c^2=t-a=t^2,
$$
so one of $c,-c$ equals $-t$.

Exactly one element $y\in\mathcal R$ can satisfy
$$
t+y=0
$$
at $P$. If two did, then both $t+a$ and $t-a$ would equal $t^2$, forcing $a=0$ and then $t=0$, contrary to $q\ne t$.

By Step 3,
$$
\prod_{y\in\mathcal R}(t+y)=t\,h(t).
$$
Since $v_P(t)=0$ and $q$ occurs in $h$ with odd multiplicity,
$$
v_P\left(\prod_{y\in\mathcal R}(t+y)\right)
$$
is odd. Only one factor has positive valuation at $P$, so that factor has odd valuation.

The Galois group of $K_2/K$ acts transitively on the four roots $\mathcal R$: the polynomial $f^2$ is irreducible because
$$
[K(b):K]=[K(b):K_1][K_1:K]=4.
$$
Applying Galois conjugates of $P$, for every $y\in\mathcal R$ there is a place $P_y$ such that
$$
v_{P_y}(t+y)
$$
is odd and
$$
v_{P_y}(t+y')=0
$$
for every $y'\ne y$.

Therefore no nonempty product of the four elements $t+y$ can be a square in $K_2$. Their four square classes are independent.

Step 5: Compute the splitting-field degree

By Step 4,
$$
[L_p:K_2]=2^4=16.
$$
Step 2 gave
$$
[K_2:K]=8.
$$
Hence
$$
[L_p:K]
=
[L_p:K_2][K_2:K]
=
16\cdot8
=
128.
$$

Final Answer: $\boxed{128}$

---

## Answer

$128$

---

## Classification

**Problem Type:** Exact computation

**Answer Type:** Exact scalar

---

## Solution Concepts

- iterated quadratic polynomials
- multiquadratic extensions
- square-class independence
- valuations in function fields
- splitting fields
