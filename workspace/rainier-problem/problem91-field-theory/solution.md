## Steps

Step 1: Recover the cubic auxiliary field

Put
$$
Y=X^p-X.
$$
Expanding $Y^3-3Y$ in characteristic $p$ gives
$$
F_p(X)=t(Y^3-3Y)-(t^2+1).
$$
Hence every root satisfies
$$
Y^3-3Y=t+t^{-1}.
$$

Choose $u$ with
$$
u^3=t.
$$
Because the $t$-adic valuation of $t$ is $1$, the polynomial $U^3-t$ is irreducible over $\mathbb F_p(t)$. Since $p\equiv1\pmod3$, choose a primitive cube root $\zeta\in\mathbb F_p$ and set
$$
K=\mathbb F_p(u).
$$
Then $K/\mathbb F_p(t)$ is cyclic of degree $3$.

For
$$
a_i=\zeta^iu+\zeta^{-i}u^{-1},
\qquad
i=0,1,2,
$$
we have
$$
a_i^3-3a_i=u^3+u^{-3}=t+t^{-1}.
$$
Thus
$$
Y^3-3Y-(t+t^{-1})
=(Y-a_0)(Y-a_1)(Y-a_2).
$$

The three $a_i$ are distinct. Also $a_0\notin\mathbb F_p(t)$: otherwise $u$ would satisfy
$$
U^2-a_0U+1=0
$$
over $\mathbb F_p(t)$, contradicting $[\mathbb F_p(u):\mathbb F_p(t)]=3$. Hence $K=\mathbb F_p(t)(a_0)$, so $K$ is the splitting field of this cubic.

If $L_p$ is the splitting field of $F_p$, then for each root $x$ the element $x^p-x$ is one of the $a_i$, and every $a_i$ occurs because each equation
$$
X^p-X=a_i
$$
has $p$ roots in the algebraic closure. Therefore
$$
K\subseteq L_p.
$$

Step 2: Determine the Artin-Schreier part of the splitting field

Over $K$,
$$
F_p(X)=t\prod_{i=0}^2\left(X^p-X-a_i\right).
$$
Choose $x_i$ satisfying
$$
x_i^p-x_i=a_i.
$$
Since
$$
a_0+a_1+a_2=0,
$$
we may choose the third root so that
$$
x_2=-x_0-x_1.
$$
Thus
$$
L_p=K(x_0,x_1).
$$

We claim that the classes of $a_0,a_1$ are linearly independent in
$$
K/\{z^p-z:z\in K\}.
$$
Suppose
$$
c_0a_0+c_1a_1=z^p-z
$$
for $c_0,c_1\in\mathbb F_p$. The left side is
$$
(c_0+c_1\zeta)u+(c_0+c_1\zeta^{-1})u^{-1}.
$$
If $(c_0,c_1)\ne(0,0)$, the two displayed coefficients cannot both vanish because $\zeta\ne\zeta^{-1}$. Hence the left side has a pole of order $1$ at $u=0$ or at $u=\infty$.

If $z$ has a pole of order $m>0$, then $z^p-z$ has pole order $pm$, which is divisible by $p$. If $z$ has no pole, then $z\in\mathbb F_p$ and $z^p-z=0$. Neither possibility gives a simple pole. Therefore
$$
c_0=c_1=0.
$$

The two Artin-Schreier classes are independent, so
$$
[L_p:K]=p^2.
$$

Step 3: Analyze the place $u=0$

Let $P_0$ be the place $u=0$ of the rational function field $K=\mathbb F_p(u)$. Near $P_0$,
$$
a_0=u+u^{-1},
$$
and
$$
a_1=\zeta u+\zeta^{-1}u^{-1}.
$$
Their combination
$$
a_1-\zeta^{-1}a_0=(\zeta-\zeta^{-1})u
$$
lies in the maximal ideal at $P_0$.

In the complete local field $\mathbb F_p((u))$, the map
$$
z\mapsto z^p-z
$$
is bijective on the maximal ideal: for any $c$ of positive valuation, the convergent series
$$
z=-c-c^p-c^{p^2}-\cdots
$$
satisfies $z^p-z=c$. Therefore the second Artin-Schreier direction becomes locally trivial after subtracting a multiple of the first.

The remaining ramified direction is locally equivalent to
$$
w^p-w=u^{-1}.
$$
Consequently $P_0$ has $p$ primes above it in $L_p$, each with ramification index $p$ and residue degree $1$.

For one such completion, normalize the valuation by
$$
v(u)=p.
$$
The equation gives
$$
v(w)=-1,
$$
so $\pi=w^{-1}$ is a uniformizer. For a nontrivial Artin-Schreier automorphism
$$
\tau_c(w)=w+c,
\qquad
c\in\mathbb F_p^\times,
$$
we have
$$
\tau_c(\pi)-\pi
=-\frac{c}{w(w+c)}.
$$
Since both $w$ and $w+c$ have valuation $-1$,
$$
v(\tau_c(\pi)-\pi)=2.
$$
The different exponent is therefore
$$
\sum_{c\in\mathbb F_p^\times}v(\tau_c(\pi)-\pi)
=2(p-1).
$$
Thus the total different contribution above $P_0$ is
$$
2p(p-1).
$$

Step 4: Analyze infinity and exclude further ramification

Let $P_\infty$ be the place at infinity and put
$$
v=u^{-1}.
$$
Then
$$
a_0=v^{-1}+v,
$$
$$
a_1=\zeta v^{-1}+\zeta^{-1}v.
$$
Now
$$
a_1-\zeta a_0=(\zeta^{-1}-\zeta)v
$$
has positive valuation. The same local argument as in Step 3 shows that only one Artin-Schreier direction ramifies at infinity.

Hence $P_\infty$ also has $p$ primes above it, each with ramification index $p$, residue degree $1$, and different exponent
$$
2(p-1).
$$
Its total different contribution is again
$$
2p(p-1).
$$

At every other place of $K$, both $a_0$ and $a_1$ are integral. The defining Artin-Schreier polynomials have derivative $-1$, a unit, so these places are unramified.

The residue degree $1$ primes above $P_0$ show that the full constant field of $L_p$ remains $\mathbb F_p$. Therefore ordinary Riemann-Hurwitz applies to the degree-$p^2$ extension $L_p/K$.

Step 5: Compute the genus

The field $K=\mathbb F_p(u)$ has genus $0$. By Steps 3 and 4, the degree of the different of $L_p/K$ is
$$
2p(p-1)+2p(p-1)=4p(p-1).
$$
Riemann-Hurwitz gives
$$
2g(L_p)-2
=p^2(2\cdot0-2)+4p(p-1).
$$
Therefore
$$
2g(L_p)-2
=-2p^2+4p^2-4p
=2p^2-4p.
$$
Adding $2$ and dividing by $2$ yields
$$
g(L_p)=p^2-2p+1=(p-1)^2.
$$

Final Answer: $\boxed{(p-1)^2}$

---

## Answer

$(p-1)^2$

---

## Classification

**Problem Type:** Exact computation

**Answer Type:** Exact scalar

---

## Solution Concepts

- Artin-Schreier extensions
- cyclic cubic extensions
- local ramification
- different exponents
- Riemann-Hurwitz
