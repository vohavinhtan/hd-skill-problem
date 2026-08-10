## Steps

Step 1: Characterize extreme laws and locate the top endpoint level

For a law on the finite set $\{-b,\ldots,b\}$, write its moment column at $j$ as
$$
c_j=(1,j,j^2,j^3,j^4)^T.
$$
If a feasible law has more than five support points, its supported columns are linearly dependent. A nonzero dependence $h$ preserves all five constraints, and for sufficiently small $\varepsilon>0$ both $\nu+\varepsilon h$ and $\nu-\varepsilon h$ are nonnegative, so $\nu$ is not extreme. Conversely, at most five distinct columns are independent by the Vandermonde determinant; a feasible law with at most five support points is therefore extreme.

Put $A=a^2$ and $B=b^2$. The prescribed moments give
$$
E[(X^2-A)^2]
=\frac{A^2+B^2}{2}-A(A+B)+A^2
=\frac{(B-A)^2}{2}.
$$
Hence
$$
\frac{1}{2}-\nu(\{-b,b\})
=
\frac{1}{(B-A)^2}
\sum_{|j|<b}(j^2-A)^2\nu(\{j\})\geq0.
$$
Equality forces the interior support into $\{\pm a\}$. If
$d_a=\nu(\{a\})-\nu(\{-a\})$ and
$d_b=\nu(\{b\})-\nu(\{-b\})$, the first and third moments give
$$
ad_a+bd_b=0,\qquad a^3d_a+b^3d_b=0,
$$
so $d_a=d_b=0$; the even moments then give total mass $\frac{1}{2}$ on each pair $\{\pm a\}$, $\{\pm b\}$. Thus
$$
\lambda_1=\frac{1}{2}.
$$

Step 2: Convert every relevant five-point law to a three-point interior moment law

Assume an extreme law charges both endpoints, and write
$$
s=\nu(\{-b,b\}),\qquad \delta=\frac{1}{2}-s.
$$
For $|t|<b$ set $\alpha_t=\nu(\{t\})$ and
$$
q_t=\frac{2(B-t^2)}{B-A}\alpha_t.
$$
Endpoint terms vanish in the identities
$$
E[B-X^2]=\frac{B-A}{2},\qquad
E[X(B-X^2)]=0,\qquad
E[X^2(B-X^2)]=\frac{A(B-A)}{2}.
$$
Therefore $q$ is a probability law on the interior integers satisfying
$$
E_q[T]=0,\qquad E_q[T^2]=A.
$$
Since the original extreme law has at most five atoms and already uses both endpoints, $q$ has at most three support points.

The identity from Step 1 also gives the exact defect formula
$$
\delta
=
\frac{1}{2(B-A)}
E_q\left[\frac{(T^2-A)^2}{B-T^2}\right].
$$
Write
$$
V=E_q[(T^2-A)^2].
$$
The ranking of endpoint masses above all coarse competitors is therefore reduced to the small-$V$ three-point laws $q$.

Step 3: Classify every interior law whose defect can compete for the first four levels

First suppose $q$ has no atom at $\pm a$. For $Y=T^2-A$, integrality gives
$$
Y\leq-(2a-1)\quad\text{or}\quad Y\geq2a+1.
$$
Thus
$$
(Y+2a-1)(Y-2a-1)\geq0.
$$
Since $E_q[Y]=0$,
$$
V=E_q[Y^2]\geq(2a-1)(2a+1)=4a^2-1.
$$
Consequently any law with $V<4a^2-1$ contains one of $\pm a$. It cannot contain both unless it is the two-point law on $\{\pm a\}$, because a third positive mass would make $E_q[T^2-A]\neq0$. A two-point zero-mean law containing $-a$ has its other atom at $a$, so every positive-defect law below the gap has exactly three support points.

Reflecting $T$ if needed, take the distinguished atom to be $-a$. For three support nodes $x,y,z$, the mass at $x$ is
$$
q_x=\frac{A+yz}{(x-y)(x-z)},
$$
because the quadratic Lagrange numerator $(T-y)(T-z)$ has expectation $A+yz$; the other two weights are obtained cyclically.

If the other atom outside $[-a,a]$ is negative, the support has the form
$$
\{-(a+k),-a,a-i\},\qquad 1\leq i\leq a-1,\quad k\geq1.
$$
Substitution into the displayed Lagrange formula gives the two nonzero-cost weights
$$
q_{-(a+k)}=\frac{ai}{k(2a-i+k)},\qquad
q_{a-i}=\frac{a(2a+k)}{(2a-i)(2a-i+k)},
$$
and their squared deviations from $A$ are $k^2(2a+k)^2$ and $i^2(2a-i)^2$. Hence
$$
V=ai(2a+k)(i+k)\geq2a(2a+1)>4a^2-1.
$$
So this sign pattern cannot occur below the gap.

The remaining support has the form
$$
\{-a,a-i,a+k\},\qquad 1\leq i\leq2a-1,\quad k\geq1.
$$
Here
$$
q_{a-i}=\frac{ak}{(2a-i)(i+k)},\qquad
q_{a+k}=\frac{ai}{(2a+k)(i+k)}.
$$
Therefore
$$
V=aik(2a+k-i).
$$
If $k\geq2$, then
$$
i(2a+k-i)-(2a+k-1)=(i-1)(2a+k-i-1)\geq0,
$$
so $V\geq2a(2a+1)>4a^2-1$. Thus $k=1$. For
$3\leq i\leq2a-2$,
$$
i(2a+1-i)-(6a-6)=(i-3)(2a-i-2)\geq0,
$$
and $a(6a-6)>4a^2-1$ for $a\geq5$. The only possibilities below the gap are
$$
(i,k)=(1,1),\qquad(2,1),\qquad(2a-1,1).
$$

For the displayed support, put
$$
L=i(2a-i),\qquad R=k(2a+k).
$$
Using $B-(a-i)^2=B-A+L$ and $B-(a+k)^2=B-A-R$, the defect formula in Step 2 becomes
$$
\begin{aligned}
\delta_{i,k}
&=\frac{aik}{2(i+k)(B-A)}
\left(\frac{L}{B-A+L}+\frac{R}{B-A-R}\right)\\
&=\frac{aik(2a+k-i)}
{2(B-(a-i)^2)(B-(a+k)^2)},
\end{aligned}
$$
because $L(B-A-R)+R(B-A+L)=(B-A)(L+R)$ and
$L+R=(i+k)(2a+k-i)$.
Hence the three positive candidates are
$$
d_1=\frac{a^2}{(B-(a-1)^2)(B-(a+1)^2)},
$$
$$
d_2=\frac{a(2a-1)}{(B-(a-2)^2)(B-(a+1)^2)},
\qquad
d_3=\frac{a(2a-1)}{(B-(a-1)^2)(B-(a+1)^2)}.
$$
Since $B-(a-2)^2>B-(a-1)^2$, one has $d_2<d_3$. Also $d_1<d_2$, because after cancelling common positive factors the difference of the right cross-product and the left cross-product is
$$
(a-1)(B-a^2)+1>0.
$$
Thus $0<d_1<d_2<d_3$.

Step 4: Exclude every remaining extreme law from the first four endpoint levels

Because $b\geq2a^2+1>(a+1)^2$,
$$
B-(a-1)^2>B-b=b(b-1),\qquad
B-(a+1)^2>b(b-1).
$$
Therefore
$$
d_3<
\frac{a(2a-1)}{b^2(b-1)^2}.
$$
Moreover
$$
(2a+1)(b-1)^2-2ab^2
=b(b-4a-2)+2a+1>0,
$$
so
$$
d_3<\frac{4a^2-1}{2b^4}.
$$
For any $q$ with $V\geq4a^2-1$, Step 2 gives
$$
\delta\geq\frac{V}{2B(B-A)}
>\frac{4a^2-1}{2b^4}>d_3.
$$
Thus Step 3 exhausted every law charging both endpoints that can reach the first four distinct endpoint masses.

It remains to exclude extreme laws missing an endpoint. If, say, $\nu(\{-b\})=0$, the equation $E[X]=0$ implies
$$
b\,\nu(\{b\})\leq(b-1)(1-\nu(\{b\})),
$$
hence
$$
\nu(\{-b,b\})\leq\frac{b-1}{2b-1}
=\frac{1}{2}-\frac{1}{2(2b-1)}.
$$
The bound on $d_3$ above and $b-1\geq2a^2$ give
$$
d_3<
\frac{2a^2}{b^2(b-1)^2}
\leq\frac{1}{2a^2b^2}
<\frac{1}{2(2b-1)}.
$$
So a law missing either endpoint lies strictly below the candidate level $\frac{1}{2}-d_3$.

Step 5: Construct the attaining extreme laws and recover the equality support

For any of the three candidate laws $q$ from Step 3, define
$$
\alpha_t=\frac{B-A}{2(B-t^2)}q_t,\qquad
M=\sum_t\alpha_t,\qquad
S=1-M,\qquad
H=-\frac{1}{b}\sum_t t\alpha_t,
$$
and set
$$
\nu(\{b\})=\frac{S+H}{2},\qquad
\nu(\{-b\})=\frac{S-H}{2},\qquad
\nu(\{t\})=\alpha_t.
$$
From $\sum q_t=1$ and $\sum t^2q_t=A$,
$$
\sum_t(B-t^2)\alpha_t=\frac{B-A}{2},\qquad
\sum_t t^2(B-t^2)\alpha_t=\frac{A(B-A)}{2}.
$$
Thus
$$
\sum_t t^2\alpha_t=BM-\frac{B-A}{2},\qquad
\sum_t t^4\alpha_t=B^2M-\frac{B^2-A^2}{2},
$$
so adding the endpoint contributions $BS$ and $B^2S$ gives the prescribed second and fourth moments. The definition of $H$ gives the first moment $0$, while
$$
b^3H+\sum_t t^3\alpha_t
=-\sum_t t(B-t^2)\alpha_t
=-\frac{B-A}{2}\sum_t tq_t=0.
$$
For the three pairs $(i,k)=(1,1),(2,1),(2a-1,1)$, the omitted Lagrange weight is
$$
q_{-a}=\frac{a^2+(a-i)(a+k)}{(2a-i)(2a+k)}>0,
$$
because its numerator is respectively $2a^2-1$, $2a^2-a-2$, and $1$. Hence all three $q$'s are genuine probability laws.

Since each candidate has defect at most $d_3<\frac{1}{2(2b-1)}$, its endpoint mass satisfies $S>\frac{b-1}{2b-1}$. Also
$$
|H|\leq\frac{b-1}{b}(1-S)<S,
$$
so both endpoint weights are positive. Each constructed law has five support points and is extreme by Step 1.

For $d_3$, Step 3 shows that the only interior supports are
$$
\{-a,-(a-1),a+1\}
\quad\text{and}\quad
\{-(a+1),a-1,a\},
$$
which are reflections of each other. Therefore
$$
\lambda_4=
\frac{1}{2}-\frac{a(2a-1)}
{(b^2-(a-1)^2)(b^2-(a+1)^2)}
$$
and the union of the two attaining supports is
$$
\mathcal S_{a,b}
=\{\pm(a-1),\pm a,\pm(a+1),\pm b\}.
$$

Final Answer: $\boxed{(\frac{1}{2}-\frac{a(2a-1)}{(b^2-(a-1)^2)(b^2-(a+1)^2)},\{\pm(a-1),\pm a,\pm(a+1),\pm b\})}$

---

## Answer

$(\frac{1}{2}-\frac{a(2a-1)}{(b^2-(a-1)^2)(b^2-(a+1)^2)},\{\pm(a-1),\pm a,\pm(a+1),\pm b\})$

---

## Classification

**Problem Type:** Optimization

**Answer Type:** Tuple or ordered list

---

## Solution Concepts

- discrete moment polytope
- Vandermonde extremality
- moment reweighting
- integer gap inequality
- equality-support reconstruction