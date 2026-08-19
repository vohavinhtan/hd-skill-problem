## Steps

Step 1: Recover the lower-degree Fermat function field

Put
$$
a=x^3,\qquad b=y^3.
$$
Since $p-1=3N$, the defining equation of $L$ gives
$$
a^N+b^N+1=0.
$$
Therefore
$$
M=\mathbb F_p(a,b)
$$
is the function field of the smooth projective Fermat curve
$$
A^N+B^N+C^N=0.
$$
The curve is smooth because $p\nmid N$. Since $p\equiv1\pmod6$, the integer $N$ is even.

The given generators belong to $M$ and become
$$
u=\frac{ab+a+b}{(a+b+1)^2},
\qquad
v=\frac{ab}{(a+b+1)^3}.
$$

Step 2: Identify the hidden fixed field

Set
$$
s=a+b+1
$$
and define
$$
\alpha=\frac{a}{s},\qquad
\beta=\frac{b}{s},\qquad
\gamma=\frac{1}{s}.
$$
Then
$$
\alpha+\beta+\gamma=1,
$$
while the definitions of $u$ and $v$ give
$$
\alpha\beta+\beta\gamma+\gamma\alpha=u,
\qquad
\alpha\beta\gamma=v.
$$
Hence $\alpha,\beta,\gamma$ are exactly the roots of
$$
T^3-T^2+uT-v.
$$

Permuting the three projective coordinates $A,B,C$ preserves the Fermat curve. This gives a faithful action of $S_3$ on $M$. Both $u$ and $v$ are normalized elementary symmetric functions of the three coordinates, so every element of $S_3$ fixes $K_p$.

Conversely, over $K_p$ the three normalized coordinates are roots of the displayed cubic. Once an ordering $(\alpha,\beta,\gamma)$ is chosen,
$$
a=\frac{\alpha}{\gamma},
\qquad
b=\frac{\beta}{\gamma}.
$$
There are at most six orderings, so
$$
[M:K_p]\leq6.
$$
The six distinct coordinate permutations are $K_p$-automorphisms of $M$, giving
$$
[M:K_p]\geq6.
$$
Therefore
$$
[M:K_p]=6
$$
and
$$
K_p=M^{S_3}.
$$

Step 3: Count the fixed points of transpositions

The Fermat curve of degree $N$ has genus
$$
g_M=\frac{(N-1)(N-2)}{2}.
$$
Because $p\nmid6$, the degree-$6$ quotient map is tame.

Consider the transposition exchanging $A$ and $B$. A projective fixed point satisfies
$$
[B:A:C]=[A:B:C].
$$
If $C\neq0$, the projective multiplier is $1$, so $A=B$. The curve equation becomes
$$
2A^N+C^N=0.
$$
After dividing by $C^N$, this has exactly $N$ solutions because $p\nmid N$.

If $C=0$, projective fixedness gives either $A=B$ or $A=-B$. Since $N$ is even, either choice gives
$$
A^N+B^N=2A^N\neq0,
$$
so there are no additional points at infinity.

Each of the three transpositions therefore fixes exactly $N$ points. Their total contribution to the tame different is
$$
3N.
$$

Step 4: Count the fixed points of the three-cycles

Let $\omega$ be a primitive cube root of unity. A nontrivial three-cycle has three projective eigenlines represented by
$$
[1:1:1],\qquad
[1:\omega:\omega^2],\qquad
[1:\omega^2:\omega].
$$
The first is not on the Fermat curve because $p\neq3$.

At either of the other two points, the Fermat equation reduces to
$$
1+\omega^N+\omega^{2N}=0.
$$
This holds exactly when $3\nmid N$. Therefore each of the two nontrivial three-cycles fixes two points when $3\nmid N$ and no points when $3\mid N$.

Let
$$
\delta=
\begin{cases}
1,&3\nmid N,\\
0,&3\mid N.
\end{cases}
$$
The total different contribution is
$$
R=3N+4\delta.
$$

Step 5: Apply Riemann-Hurwitz and simplify the residue-class correction

For a smooth plane curve of degree $N$,
$$
2g_M-2=N(N-3).
$$
Riemann-Hurwitz for $M/K_p$ gives
$$
N(N-3)=6(2g(K_p)-2)+3N+4\delta.
$$
Therefore
$$
g(K_p)=1+\frac{N(N-6)-4\delta}{12}.
$$

If $3\mid N$, this is
$$
\frac{N^2-6N+12}{12}.
$$
If $3\nmid N$, then the even integer $N$ is congruent to $2$ or $4$ modulo $6$, so
$$
N^2-6N+12\equiv4\pmod{12}.
$$
Subtracting the term $4\delta$ therefore has exactly the effect of taking the floor. Hence
$$
g(K_p)=\left\lfloor\frac{N^2-6N+12}{12}\right\rfloor.
$$
Using $N=(p-1)/3$ gives
$$
\frac{N^2-6N+12}{12}
=
\frac{p^2-20p+127}{108}.
$$

Final Answer: $\boxed{\left\lfloor\frac{p^2-20p+127}{108}\right\rfloor}$

---

## Answer

$\left\lfloor\frac{p^2-20p+127}{108}\right\rfloor$

---

## Classification

**Problem Type:** Symbolic derivation

**Answer Type:** Exact symbolic expression

---

## Solution Concepts

- algebraic function fields
- invariant subfields
- symmetric functions
- finite group actions
- Riemann-Hurwitz formula
