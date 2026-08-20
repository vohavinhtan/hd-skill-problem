## Steps

Step 1: Recover the elementary symmetric invariants from the stated power sums

Put
$$
N=2^s,
\qquad
a=x^d,
\qquad
b=y^d.
$$
Since $p-1=dN$, the defining equation becomes
$$
a^N+b^N+1=0.
$$
Set
$$
S=a+b+1
$$
and
$$
\alpha=\frac aS,\qquad
\beta=\frac bS,\qquad
\gamma=\frac1S.
$$
Then
$$
\alpha+\beta+\gamma=1,
$$
while the stated generators are
$$
u=\alpha^2+\beta^2+\gamma^2,
\qquad
v=\alpha^3+\beta^3+\gamma^3.
$$

Let
$$
e_2=\alpha\beta+\beta\gamma+\gamma\alpha,
\qquad
e_3=\alpha\beta\gamma.
$$
Newton's identities give
$$
u=1-2e_2,
$$
and
$$
v=1-3e_2+3e_3.
$$
Because $p\geq7$,
$$
e_2=\frac{1-u}{2},
\qquad
e_3=\frac{2v+1-3u}{6}.
$$
Hence
$$
K_p=\mathbb F_p(e_2,e_3).
$$
The three normalized coordinates are the roots of
$$
T^3-T^2+e_2T-e_3.
$$

Step 2: Identify the full fixed field

Let $C$ be the projective Fermat curve
$$
X^{p-1}+Y^{p-1}+Z^{p-1}=0.
$$
Choose the group
$$
D=\{(\lambda,\mu):\lambda^d=\mu^d=1\}
$$
acting on its affine function field by
$$
x\mapsto\lambda x,\qquad y\mapsto\mu y.
$$
It has order $d^2$. Coordinate permutations normalize this action, giving
$$
H=D\rtimes S_3,
\qquad
|H|=6d^2.
$$

The quantities $\alpha,\beta,\gamma$ depend only on $x^d,y^d,1$, and $e_2,e_3$ are symmetric in them. Therefore every element of $H$ fixes $K_p$.

Conversely, over $K_p$ the unordered triple
$$
\{\alpha,\beta,\gamma\}
$$
is determined by the cubic in Step 1. There are at most six orderings. Once an ordering is chosen,
$$
x^d=\frac{\alpha}{\gamma},
\qquad
y^d=\frac{\beta}{\gamma}.
$$
There are at most $d$ choices for each of $x$ and $y$. Therefore
$$
[L:K_p]\leq6d^2.
$$
The group $H$ already gives $6d^2$ distinct $K_p$-automorphisms, so
$$
[L:K_p]=6d^2
$$
and
$$
K_p=L^H.
$$

Step 3: Pass through the diagonal quotient

The fixed field of $D$ is
$$
M=\mathbb F_p(a,b),
\qquad
a^N+b^N+1=0.
$$
Indeed, $a=x^d$ and $b=y^d$ are fixed by $D$, while $x$ and $y$ each have degree at most $d$ over $\mathbb F_p(a,b)$. The $d^2$ elements of $D$ give the reverse degree inequality.

Thus $M$ is the function field of the smooth Fermat curve of degree $N$. Its genus is
$$
g(M)=\frac{(N-1)(N-2)}2,
$$
so
$$
2g(M)-2=N(N-3).
$$
Moreover
$$
K_p=M^{S_3}.
$$
Since $p\geq7$, this degree-$6$ quotient is tame.

Step 4: Count the fixed points of the transpositions

Consider the transposition exchanging the first two homogeneous coordinates of
$$
A^N+B^N+C^N=0.
$$
If $C\neq0$, a projective fixed point has $A=B$. The equation becomes
$$
2A^N+C^N=0,
$$
which has exactly $N$ solutions over the algebraic closure because $p\nmid N$.

If $C=0$, the two possible fixed eigenlines are represented by
$$
[1:1:0]
\qquad\text{and}\qquad
[1:-1:0].
$$
The integer $N=2^s$ is even, so neither lies on the curve:
$$
1^N+(\pm1)^N=2\neq0.
$$
Each transposition therefore fixes exactly $N$ points. The three transpositions contribute
$$
3N
$$
to the tame different.

Step 5: Count the fixed points of the three-cycles and apply Riemann-Hurwitz

Let $\omega$ be a primitive cube root of unity over the algebraic closure. A nontrivial three-cycle has the three projective eigenlines
$$
[1:1:1],
\qquad
[1:\omega:\omega^2],
\qquad
[1:\omega^2:\omega].
$$
The first does not lie on the curve because $p\neq3$.

Since $N$ is a power of $2$, it is not divisible by $3$. Therefore
$$
1+\omega^N+\omega^{2N}=0.
$$
The other two eigenlines lie on the Fermat curve. Each nontrivial three-cycle fixes exactly two points, so the two three-cycles contribute
$$
4.
$$

Riemann-Hurwitz for $M/K_p$ gives
$$
N(N-3)=6(2g(K_p)-2)+3N+4.
$$
Therefore
$$
6(2g(K_p)-2)=N^2-6N-4.
$$
It follows that
$$
g(K_p)
=
1+\frac{N^2-6N-4}{12}
=
\frac{(N-2)(N-4)}{12}.
$$
Substituting $N=2^s$ gives
$$
g(K_p)=\frac{(2^s-2)(2^s-4)}{12}.
$$

Final Answer: $\boxed{\frac{(2^s-2)(2^s-4)}{12}}$

---

## Answer

$\frac{(2^s-2)(2^s-4)}{12}$

---

## Classification

**Problem Type:** Symbolic derivation

**Answer Type:** Exact symbolic expression

---

## Solution Concepts

- algebraic function fields
- symmetric invariants
- finite group actions
- quotient curves
- Riemann-Hurwitz formula
