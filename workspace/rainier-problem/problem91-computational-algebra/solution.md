## Steps

Step 1: Recover the hidden translation quotient

Put
$$
q=x^p-x.
$$
Then the defining equation becomes
$$
y^p-y=q^9.
$$

For each $a\in\mathbb F_p$, define
$$
\sigma_a(x)=x+a,
\qquad
\sigma_a(y)=y.
$$
Since
$$
(x+a)^p-(x+a)=x^p-x,
$$
every $\sigma_a$ preserves the defining equation. These automorphisms form a group $P$ of order $p$.

Let
$$
M=\mathbb F_p(q,y).
$$
The element $x$ satisfies
$$
T^p-T-q=0
$$
over $M$, so
$$
[L:M]\leq p.
$$
The group $P$ supplies $p$ distinct $M$-automorphisms of $L$. Hence
$$
[L:M]=p
$$
and
$$
M=L^P.
$$

Step 2: Identify the cyclic quotient encoded by $u$ and $v$

Put
$$
e=2d.
$$
Since $e\mid p-1$, choose $\lambda\in\mathbb F_p^\times$ of order $e$. Define
$$
\rho(x)=\lambda x,
\qquad
\rho(y)=\lambda^9y.
$$
Because $\lambda^p=\lambda$,
$$
\rho(q)=\lambda q.
$$
Also
$$
(\lambda^9y)^p-\lambda^9y
=
\lambda^9(y^p-y)
=
(\lambda q)^9,
$$
so $\rho$ is an automorphism of $L$. It normalizes $P$ and descends to $M$ as
$$
(q,y)\mapsto(\lambda q,\lambda^9y).
$$

The stated generators are
$$
u=q^e,
\qquad
v=q^{e-9}y.
$$
Therefore $\rho$ fixes both $u$ and $v$, so
$$
K_p\subseteq M^{\langle\rho\rangle}.
$$

Conversely, $q$ satisfies
$$
T^e-u=0
$$
over $K_p$, and once $q$ is known,
$$
y=vq^{9-e}.
$$
Thus
$$
[M:K_p]\leq e.
$$
The $e$ powers of $\rho$ are distinct $K_p$-automorphisms of $M$, giving
$$
[M:K_p]\geq e.
$$
Hence
$$
[M:K_p]=e
$$
and
$$
K_p=M^{\langle\rho\rangle}.
$$

Step 3: Compute the genus of the Artin-Schreier intermediate field

The field $M$ is the Artin-Schreier function field
$$
y^p-y=q^9.
$$
The right side has a single pole at $q=\infty$, of order $9$. The hypotheses imply $p>9$, so this pole order is prime to $p$.

The unique place above infinity is totally ramified and has different exponent
$$
(p-1)(9+1)=10(p-1).
$$
Riemann-Hurwitz for the degree-$p$ extension
$$
M/\mathbb F_p(q)
$$
gives
$$
2g(M)-2=-2p+10(p-1)=8p-10.
$$
Therefore
$$
g(M)=4(p-1).
$$
There is exactly one point of the smooth projective curve of $M$ above $q=\infty$.

Step 4: Separate the two types of nonidentity scaling elements

Let
$$
1\leq j\leq e-1
$$
and put
$$
\mu=\lambda^j.
$$
A fixed affine point of $\rho^j$ must satisfy
$$
\mu q=q,
\qquad
\mu^9y=y.
$$
Since $\mu\neq1$, the first equation forces
$$
q=0.
$$

If
$$
\mu^9\neq1,
$$
then $y=0$. Thus $\rho^j$ fixes exactly one affine point, $(0,0)$, together with the unique point at infinity. Such an element has exactly two fixed points.

If
$$
\mu^9=1,
$$
then at $q=0$ the curve equation is
$$
y^p-y=0.
$$
It has exactly $p$ distinct solutions over the algebraic closure, and all are fixed. Including infinity, such an element has
$$
p+1
$$
fixed points.

Now
$$
\gcd(e,9)=\gcd(2d,9)=3
$$
because $3\mid d$ and $9\nmid d$. Hence exactly two nonidentity elements of $\langle\rho\rangle$ satisfy $\mu^9=1$.

Therefore the two exceptional elements contribute
$$
2(p+1),
$$
while the remaining
$$
e-3
$$
nonidentity elements contribute
$$
2(e-3).
$$
The total tame different contribution is
$$
R=2(p+1)+2(e-3)=2p+2e-4.
$$

Step 5: Apply Riemann-Hurwitz to the cyclic quotient

The extension
$$
M/K_p
$$
has degree $e=2d$, and $p\nmid e$, so it is tame. Riemann-Hurwitz gives
$$
8p-10=e(2g(K_p)-2)+2p+2e-4.
$$
Hence
$$
e(2g(K_p)-2)=6p-6-2e.
$$
Using
$$
p-1=2^sd
$$
and
$$
e=2d,
$$
we get
$$
e(2g(K_p)-2)
=
6\cdot2^sd-4d
=
2d(3\cdot2^s-2).
$$
Dividing by $e=2d$,
$$
2g(K_p)-2=3\cdot2^s-2.
$$
Therefore
$$
g(K_p)=3\cdot2^{s-1}.
$$

Final Answer: $\boxed{3\cdot2^{s-1}}$

---

## Answer

$3\cdot2^{s-1}$

---

## Classification

**Problem Type:** Symbolic derivation

**Answer Type:** Exact symbolic expression

---

## Solution Concepts

- invariant subfields
- Artin-Schreier extensions
- semidirect product actions
- tame ramification
- Riemann-Hurwitz formula
