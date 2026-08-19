## Steps

Step 1: Find the automorphisms hidden by the two generators

For each $c\in\mathbb F_p$, define
$$
\sigma_c(x)=x,\qquad \sigma_c(y)=y+c.
$$
Since $c^{p^2}=c$, every $\sigma_c$ preserves
$$
y^{p^2}-y=x^m-x^{-m}.
$$
The maps $\sigma_c$ form a group
$$
P\cong(\mathbb F_p,+)
$$
of order $p$.

Also define
$$
\tau(x)=x^{-1},\qquad \tau(y)=-y.
$$
The right side changes sign under $x\mapsto x^{-1}$, while
$$
(-y)^{p^2}-(-y)=-(y^{p^2}-y),
$$
so $\tau$ is an automorphism of order $2$. Moreover
$$
\tau\sigma_c\tau=\sigma_{-c}.
$$
Hence
$$
H=\langle P,\tau\rangle
$$
has order $2p$.

Now
$$
\sigma_c(y^p-y)=(y+c)^p-(y+c)=y^p-y,
$$
so every $\sigma_c$ fixes $u$ and $v$. Under $\tau$,
$$
x+x^{-1}\mapsto x+x^{-1},
$$
$$
y^p-y\mapsto-(y^p-y),
$$
and
$$
x-x^{-1}\mapsto-(x-x^{-1}),
$$
so $\tau$ also fixes $u$ and $v$. Therefore
$$
K_p\subseteq L^H.
$$

Step 2: Prove that the stated generators give the full fixed field

From
$$
u=x+x^{-1}
$$
the element $x$ satisfies
$$
T^2-uT+1=0.
$$
Thus
$$
[\mathbb F_{p^2}(x,u,v):K_p]\leq2.
$$

Put
$$
z=y^p-y.
$$
Since
$$
v=z(x-x^{-1}),
$$
once $x$ is known we recover
$$
z=\frac{v}{x-x^{-1}}.
$$
The element $y$ then satisfies
$$
T^p-T-z=0,
$$
so it has degree at most $p$ over $\mathbb F_{p^2}(x,z)$. Hence
$$
[L:K_p]\leq2p.
$$

The group $H$ already consists of $2p$ distinct $K_p$-automorphisms of $L$. Therefore
$$
[L:K_p]\geq2p.
$$
Consequently
$$
[L:K_p]=2p
$$
and
$$
K_p=L^H.
$$

Step 3: Pass first to the wild translation quotient

The subgroup $P$ is normal in $H$. Its fixed field is
$$
M=L^P=\mathbb F_{p^2}(x,z),
\qquad z=y^p-y.
$$
Indeed, $P$ fixes $x,z$, while $y$ has degree at most $p$ over $\mathbb F_{p^2}(x,z)$ and $P$ supplies $p$ automorphisms.

Taking the $p$-th power of $z=y^p-y$ gives
$$
z^p=y^{p^2}-y^p.
$$
Therefore
$$
z^p+z=y^{p^2}-y=x^m-x^{-m}.
$$
Thus $M/\mathbb F_{p^2}(x)$ is an additive degree-$p$ extension.

The rational function
$$
x^m-x^{-m}
$$
has exactly two poles, at $x=0$ and $x=\infty$, each of order $m$. Since
$$
p\nmid m,
$$
each pole is totally ramified in the degree-$p$ extension and has different exponent
$$
(p-1)(m+1).
$$

Riemann-Hurwitz for $M/\mathbb F_{p^2}(x)$ gives
$$
2g(M)-2=-2p+2(p-1)(m+1).
$$
Hence
$$
2g(M)-2=2m(p-1)-2
$$
and
$$
g(M)=m(p-1).
$$

Step 4: Determine the ramification of the remaining involution

The involution $\tau$ descends to $M$ as
$$
\tau(x)=x^{-1},\qquad \tau(z)=-z.
$$
Since
$$
H/P\cong C_2,
$$
we have
$$
K_p=M^{\langle\tau\rangle}.
$$

A fixed point of $\tau$ away from the poles must satisfy
$$
x=x^{-1}
$$
and
$$
z=-z.
$$
Because $p$ is odd, this gives
$$
x\in\{1,-1\},
\qquad
z=0.
$$
For both $x=1$ and $x=-1$,
$$
x^m-x^{-m}=0,
$$
so $(1,0)$ and $(-1,0)$ are points of $M$.

The points above $x=0$ and $x=\infty$ are exchanged by $\tau$, so neither is fixed. Thus $\tau$ has exactly two fixed points.

Step 5: Apply tame Riemann-Hurwitz to the final quotient

The extension $M/K_p$ has degree $2$, which is prime to $p$. Therefore it is tame, and the two fixed points of $\tau$ each contribute $1$ to the different.

Riemann-Hurwitz gives
$$
2g(M)-2=2(2g(K_p)-2)+2.
$$
Using
$$
g(M)=m(p-1),
$$
we obtain
$$
2m(p-1)-2=4g(K_p)-2.
$$
Hence
$$
g(K_p)=\frac{m(p-1)}{2}.
$$
Since
$$
m=\frac{p+1}{2},
$$
we get
$$
g(K_p)=\frac{p^2-1}{4}.
$$

Final Answer: $\boxed{\frac{p^2-1}{4}}$

---

## Answer

$\frac{p^2-1}{4}$

---

## Classification

**Problem Type:** Symbolic derivation

**Answer Type:** Exact symbolic expression

---

## Solution Concepts

- algebraic function fields
- fixed fields
- Artin-Schreier extensions
- wild ramification
- Riemann-Hurwitz formula
