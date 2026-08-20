## Steps

Step 1: Recover the invariants of the hidden translation group

Put
$$
q=x^p-x,
\qquad
r=2y-x^2.
$$
Using the defining equation,
$$
r^p+r
=
2(y^p+y)-x^{2p}-x^2
=
2x^{p+1}-x^{2p}-x^2
=
-(x^p-x)^2.
$$
Therefore
$$
r^p+r=-q^2.
$$

For each $a\in\mathbb F_p$, define
$$
\sigma_a(x)=x+a,
$$
$$
\sigma_a(y)=y+ax+\frac{a^2}{2}.
$$
Since
$$
(x+a)^{p+1}
=
x^{p+1}+a(x^p+x)+a^2,
$$
the map $\sigma_a$ preserves $y^p+y=x^{p+1}$. Direct substitution gives
$$
\sigma_a(q)=q,
\qquad
\sigma_a(r)=r.
$$
The maps $\sigma_a$ form a group $P$ of order $p$.

Let
$$
M=\mathbb F_p(q,r).
$$
The element $x$ satisfies
$$
T^p-T-q=0,
$$
and then
$$
y=\frac{r+x^2}{2}.
$$
Hence $[L:M]\leq p$. Since the $p$ distinct automorphisms in $P$ fix $M$,
$$
[L:M]=p
$$
and
$$
M=L^P.
$$

Step 2: Recover the second hidden group and identify $K_p$

Because $d\mid p-1$, choose $\lambda\in\mathbb F_p$ of order $d$. Define
$$
\rho(x)=\lambda x,
\qquad
\rho(y)=\lambda^2y.
$$
Since
$$
\lambda^{p+1}=\lambda^2,
$$
the equation $y^p+y=x^{p+1}$ is preserved.

On the invariants from Step 1,
$$
\rho(q)=\lambda q,
\qquad
\rho(r)=\lambda^2r.
$$
The stated generators are
$$
u=q^d,
\qquad
v=q^{d-2}r.
$$
Thus $\rho$ fixes both $u$ and $v$.

Conversely, over $K_p$ the element $q$ satisfies
$$
T^d-u=0,
$$
and once $q$ is known,
$$
r=\frac{v}{q^{d-2}}.
$$
Therefore
$$
[M:K_p]\leq d.
$$
The $d$ powers of $\rho$ are distinct $K_p$-automorphisms of $M$, so
$$
[M:K_p]=d
$$
and
$$
K_p=M^{\langle\rho\rangle}.
$$

Step 3: Compute the genus of the intermediate curve

The field $M$ is given by
$$
r^p+r=-q^2.
$$
After extending the constant field, choose a nonzero constant $\mu$ with
$$
\mu^p=-\mu
$$
and put $R=\mu r$. Then
$$
R^p-R=\mu q^2.
$$
Genus is unchanged by extending constants.

The right side has a single pole, at $q=\infty$, of order $2$, which is prime to $p$. For an Artin-Schreier extension with one pole of order $2$, that pole is totally ramified with different exponent
$$
(p-1)(2+1)=3(p-1).
$$
Riemann-Hurwitz over the rational $q$-line gives
$$
2g(M)-2=-2p+3(p-1)=p-3.
$$
Hence
$$
g(M)=\frac{p-1}{2}.
$$
There is a unique point of the smooth projective curve of $M$ above $q=\infty$.

Step 4: Count the fixed points of the cyclic quotient

Consider a nonidentity power $\rho^k$, where
$$
1\leq k\leq d-1.
$$
On $M$ it acts by
$$
(q,r)\mapsto(\lambda^kq,\lambda^{2k}r).
$$
Since $d$ is odd,
$$
\lambda^k\neq1
$$
and
$$
\lambda^{2k}\neq1.
$$
Thus an affine fixed point must satisfy
$$
q=r=0.
$$
This point lies on $r^p+r=-q^2$, so it is fixed.

The point above $q=\infty$ is also fixed: $\rho^k$ fixes the base point $\infty$, and Step 3 shows that only one point of $M$ lies above it. Hence every nonidentity element of $\langle\rho\rangle$ fixes exactly two points.

The quotient $M/K_p$ has degree $d$, and $p\nmid d$, so it is tame. Its total different contribution is therefore
$$
2(d-1).
$$

Step 5: Apply Riemann-Hurwitz and simplify using the odd part of $p-1$

Riemann-Hurwitz for the degree-$d$ extension $M/K_p$ gives
$$
p-3
=
d(2g(K_p)-2)+2(d-1).
$$
Therefore
$$
d(2g(K_p)-2)=p-2d-1.
$$
Using
$$
p-1=2^sd,
$$
we obtain
$$
p-2d-1=d(2^s-2).
$$
Hence
$$
2g(K_p)-2=2^s-2,
$$
so
$$
g(K_p)=2^{s-1}.
$$

Final Answer: $\boxed{2^{s-1}}$

---

## Answer

$2^{s-1}$

---

## Classification

**Problem Type:** Symbolic derivation

**Answer Type:** Exact symbolic expression

---

## Solution Concepts

- function-field fixed fields
- semidirect product actions
- Artin-Schreier ramification
- tame cyclic quotients
- Riemann-Hurwitz formula
