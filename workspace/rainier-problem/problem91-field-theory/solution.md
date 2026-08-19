## Steps

Step 1: Recover the cubic constant field from the splitting field

Put
$$
C=\mathbb F_{p^3}(t).
$$
Let $\tau$ generate
$$
\operatorname{Gal}(C/K),
$$
so
$$
\tau(\lambda_i)=\lambda_{i+1}.
$$
Then
$$
\tau(a_i)=a_{i+1},
$$
and therefore the product defining $F_p$ is fixed by $\tau$. Hence
$$
F_p(X)\in K[X].
$$

Let $\alpha_i$ be any root of
$$
X^p-X-a_i.
$$
Since $L_p$ contains every root of $F_p$,
$$
a_i=\alpha_i^p-\alpha_i\in L_p.
$$

The element $a_0$ is not fixed by $\tau$. Indeed, at the place
$$
P_0:\quad t=\lambda_0,
$$
the polar part of $a_0$ is
$$
2x_0^{-2}+4x_0^{-1},
$$
whereas the polar part of $a_1$ is
$$
-x_0^{-2}.
$$
Since $p\geq5$,
$$
a_0\ne a_1.
$$
Thus
$$
a_0\notin K.
$$

Because $C/K$ has prime degree $3$,
$$
K(a_0)=C.
$$
Consequently
$$
C\subseteq L_p.
$$

Step 2: Translate the splitting field into Artin-Schreier classes

Over $C$, adjoining one root of
$$
X^p-X-a_i
$$
splits that polynomial, since all its roots differ by elements of $\mathbb F_p$.

Thus
$$
L_p=C(y_0,y_1,y_2),
\qquad
y_i^p-y_i=a_i.
$$

Let
$$
\wp(C)=\{z^p-z:z\in C\}.
$$
Artin-Schreier theory gives
$$
[L_p:C]
=
p^r,
$$
where $r$ is the dimension over $\mathbb F_p$ of the span of
$$
[a_0],[a_1],[a_2]
$$
in
$$
C/\wp(C).
$$

Suppose
$$
e_0a_0+e_1a_1+e_2a_2\in\wp(C),
\qquad
e_i\in\mathbb F_p.
$$

At $P_j:t=\lambda_j$, the coefficient of $x_j^{-2}$ is
$$
2e_j-e_{j+1},
$$
and the coefficient of $x_j^{-1}$ is
$$
4e_j-e_{j+2}.
$$

If $h\in C$ has a pole of order $m>0$, then
$$
h^p-h
$$
has pole order $pm$. Since $1,2<p$, an element of $\wp(C)$ cannot have a reduced pole of order $1$ or $2$. Therefore
$$
2e_j-e_{j+1}=0,
$$
and
$$
4e_j-e_{j+2}=0
$$
for every $j$.

The first equations give
$$
e_1=2e_0,
\qquad
e_2=4e_0.
$$
Cycling once more yields
$$
e_0=2e_2=8e_0,
$$
so
$$
7e_0=0.
$$

If $p\ne7$, this forces
$$
e_0=e_1=e_2=0.
$$
Hence
$$
r=3.
$$

If $p=7$, then
$$
a_0+2a_1+4a_2=0.
$$
Indeed, at every $P_j$ both its order-$2$ and order-$1$ coefficients vanish, and the expression has no other terms. The relation space is therefore one-dimensional, so
$$
r=2.
$$

Put
$$
d=\gcd(p,7).
$$
Then both cases are summarized by
$$
[L_p:C]
=
N=\frac{p^3}{d}.
$$

Step 3: Determine the local ramified Artin-Schreier space

Fix
$$
P_j:\quad x_j=0.
$$
Modulo functions regular at $P_j$, the three classes have polar parts
$$
a_j\equiv2x_j^{-2}+4x_j^{-1},
$$
$$
a_{j+1}\equiv-x_j^{-2},
$$
and
$$
a_{j+2}\equiv-x_j^{-1}.
$$

Thus their local polar classes span
$$
\mathbb F_p x_j^{-2}
\oplus
\mathbb F_p x_j^{-1}.
$$
The local ramified Artin-Schreier space therefore has dimension $2$, for every $p\geq5$, including $p=7$.

Hence the inertia group above each $P_j$ has order
$$
p^2.
$$
There are no other ramified places, because every $a_i$ is regular away from
$$
P_0,P_1,P_2.
$$

Step 4: Compute the local different exponent

Consider a nonzero local Artin-Schreier character represented in reduced form by
$$
A x_j^{-2}+B x_j^{-1},
\qquad
A,B\in\mathbb F_p.
$$

If
$$
A=0,
\qquad
B\ne0,
$$
the pole order is $1$, so the conductor exponent is
$$
2.
$$
There are
$$
p-1
$$
such nonzero characters.

If
$$
A\ne0,
$$
the reduced pole order is $2$, so the conductor exponent is
$$
3.
$$
There are
$$
p^2-p
$$
such characters.

For the totally ramified elementary abelian local extension determined by these two classes, the conductor-discriminant formula therefore gives different exponent
$$
D
=
2(p-1)+3(p^2-p).
$$
Thus
$$
D=3p^2-p-2.
$$

Step 5: Apply Riemann-Hurwitz

The field
$$
C=\mathbb F_{p^3}(t)
$$
has genus $0$.

The extension
$$
L_p/C
$$
is Galois of degree
$$
N=\frac{p^3}{d},
\qquad
d=\gcd(p,7).
$$
At each of the three ramified base places the inertia index is
$$
p^2.
$$

For one such place, the total contribution to the degree of the different is
$$
\frac{N}{p^2}D.
$$
Indeed, if the residue degree is $f$, there are
$$
\frac{N}{p^2f}
$$
places above it, each of residue degree $f$ and different exponent $D$, so the factor $f$ cancels.

Riemann-Hurwitz gives
$$
2g(L_p)-2
=
-2N
+
3\frac{N}{p^2}(3p^2-p-2).
$$
Therefore
$$
2g(L_p)-2
=
N\left(
7-\frac3p-\frac6{p^2}
\right).
$$
Using
$$
N=\frac{p^3}{d},
$$
we obtain
$$
2g(L_p)-2
=
\frac{p(7p^2-3p-6)}{d}.
$$
Hence
$$
g(L_p)
=
1+
\frac{p(7p^2-3p-6)}
{2\gcd(p,7)}.
$$

Final Answer: $\boxed{1+\frac{p(7p^2-3p-6)}{2\gcd(p,7)}}$

---

## Answer

$1+\frac{p(7p^2-3p-6)}{2\gcd(p,7)}$

---

## Classification

**Problem Type:** Exact computation

**Answer Type:** Exact scalar

---

## Solution Concepts

- Artin-Schreier extensions
- constant field descent
- local conductor filtrations
- different exponents
- Riemann-Hurwitz
