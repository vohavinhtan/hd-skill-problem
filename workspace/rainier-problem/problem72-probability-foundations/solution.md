## Steps

Step 1: Reduce symmetric laws to a three-moment polytope and characterize extreme supports

For a symmetric law define
$$
p_0=\nu(\{0\}),\qquad
p_j=\nu(\{-j,j\})\quad(1\leq j\leq b).
$$
This is an affine bijection between the symmetric laws in the problem and vectors $(p_0,\ldots,p_b)$ with
$$
p_j\geq0,\qquad
\sum_{j=0}^bp_j=1,\qquad
\sum_{j=0}^bj^2p_j=\frac{a^2+b^2}{2},\qquad
\sum_{j=0}^bj^4p_j=\frac{a^4+b^4}{2}.
$$
Put $x_j=j^2$. If an admissible vector has more than three positive coordinates, the corresponding columns
$$
(1,x_j,x_j^2)^T
$$
are linearly dependent, so a nonzero perturbation supported on those coordinates preserves all three displayed equalities; taking both sufficiently small signs of the perturbation expresses the law as a nontrivial convex combination. Hence an extreme law has at most three positive $p_j$.

Conversely, for at most three distinct values $x_j$, the columns $(1,x_j,x_j^2)^T$ are linearly independent by the Vandermonde determinant. Any convex decomposition of such a feasible vector must vanish outside its support and then has identical supported coordinates. Thus every feasible law with at most three positive $p_j$ is extreme.

Step 2: Classify endpoint-bearing extreme laws and compute their endpoint mass

Write
$$
A=a^2,\qquad B=b^2.
$$
For the random variable $X=j^2$ with probabilities $p_j$, the prescribed moments give
$$
E[(X-A)(X-B)]
=E[X^2]-(A+B)E[X]+AB=0.
$$
If an extreme law with $p_b>0$ has two support points, the other point $R$ satisfies
$$
(1-p_b)(R-A)(R-B)=0.
$$
Since $R<B$, one has $R=A$, and the mean then gives $p_b=\frac12$. This is the law supported on $\{a^2,b^2\}$.

Now suppose the support is $\{R,S,B\}$ with three positive masses. The zero expectation forces one point below $A$ and one above $A$, so
$$
R=r^2<A<s^2=S<B
$$
for integers $0\leq r<a<s\leq b-1$. Applying the moment constraints to $(X-R)(X-S)$ gives
$$
p_b(B-R)(B-S)
=\frac12(A-R)(A-S)+\frac12(B-R)(B-S),
$$
hence
$$
p_b(r,s)=\frac12-\frac12D(r,s),
$$
where
$$
D(r,s)=
\frac{(A-r^2)(s^2-A)}{(B-r^2)(B-s^2)}.
$$
The other two masses are
$$
p_r=\frac{(S-A)(B-A)}{2(S-R)(B-R)},\qquad
p_s=\frac{(A-R)(B-A)}{2(S-R)(B-S)},
$$
so they are positive whenever $r<a<s<b$. For the three pairs used below, $D<1$: indeed $b\geq2a^2+1\geq a+4$ implies
$$
B-(a+2)^2\geq(a+4)^2-(a+2)^2=4a+12>4(a+1),
$$
and $(A-r^2)/(B-r^2)<1$. Thus those three-point laws are feasible and extreme.

Step 3: Convert the ranking problem into two monotone integer factors

Write
$$
r=a-i,\qquad s=a+k,
$$
with $i,k\geq1$. Then
$$
D_{i,k}=F_iG_k,
$$
where
$$
F_i=\frac{i(2a-i)}{B-(a-i)^2},
\qquad
G_k=\frac{k(2a+k)}{B-(a+k)^2}.
$$
For $0\leq z<A$, the function $(A-z)/(B-z)$ decreases strictly with $z$; since $(a-i)^2$ decreases as $i$ increases, $F_i$ increases strictly with $i$. Likewise $(z-A)/(B-z)$ increases strictly for $A<z<B$, so $G_k$ increases strictly with $k$.

Therefore the smallest positive defect is $D_{1,1}$. The only candidates for the next one are $D_{2,1}$ and $D_{1,2}$. Clearing the positive common denominator reduces their difference to
$$
\begin{aligned}
N={}&4(a-1)(2a+1)(B-(a-1)^2)(B-(a+2)^2)\\
&-4(a+1)(2a-1)(B-(a-2)^2)(B-(a+1)^2)\\
={}&8a(A-B)(B+3A-7)<0.
\end{aligned}
$$
Hence
$$
D_{1,1}<D_{2,1}<D_{1,2}.
$$

Step 4: Prove that no farther support pair overtakes the third defect

After $(1,1)$ and $(2,1)$ are removed, every remaining pair is bounded below either by $D_{1,2}$ or by $D_{3,1}$. To compare them, clearing their positive common denominator gives numerator
$$
\begin{aligned}
M={}&4(a+1)(2a-1)(B-(a-3)^2)(B-(a+1)^2)\\
&-3(2a-3)(2a+1)(B-(a-1)^2)(B-(a+2)^2)\\
={}&-(B-A)H,
\end{aligned}
$$
where
$$
H=(4a^2-16a-5)B-(4a^4+40a^3-33a^2-134a-5).
$$
For $a\geq5$, the coefficient $4a^2-16a-5$ is positive. Since $B\geq(2a^2+1)^2$,
$$
\begin{aligned}
H&\geq(4a^2-16a-5)(2a^2+1)^2-(4a^4+40a^3-33a^2-134a-5)\\
&=a(16a^5-64a^4-8a^3-104a^2+17a+118).
\end{aligned}
$$
The bracket is positive because
$$
16a^5-64a^4-8a^3-104a^2
\geq16a^4-8a^3-104a^2
=8a^2(2a^2-a-13)>0.
$$
Thus $H>0$, so $M<0$ and $D_{1,2}<D_{3,1}$.

Strict monotonicity now makes the ranking exhaustive. If $i=1$ and $k\geq2$, then $D_{i,k}\geq D_{1,2}$ with equality only at $(1,2)$. If $i=2$ and $k\geq2$, then $D_{i,k}>D_{1,2}$. If $i\geq3$, then $D_{i,k}\geq D_{3,1}>D_{1,2}$. Thus the three smallest positive defects are, uniquely,
$$
D_{1,1},\qquad D_{2,1},\qquad D_{1,2}.
$$

Step 5: Read off the fourth endpoint mass and its support

The two-point law has defect $0$ and endpoint mass $\frac12$. Since $p_b=\frac12-\frac12D$, increasing positive defects give decreasing endpoint masses. Therefore
$$
\lambda_1=\frac12,\qquad
\lambda_2=p_b(a-1,a+1),\qquad
\lambda_3=p_b(a-2,a+1),\qquad
\lambda_4=p_b(a-1,a+2).
$$
For $(r,s)=(a-1,a+2)$,
$$
A-(a-1)^2=2a-1,\qquad
(a+2)^2-A=4(a+1),
$$
so
$$
\lambda_4
=
\frac12-
\frac{2(a+1)(2a-1)}
{(b^2-(a-1)^2)(b^2-(a+2)^2)}.
$$
The equality case in Step 4 is unique, so exactly one extreme law attains $\lambda_4$. Because $a-1,a+2,b$ are positive and symmetry splits each $p_j$ equally between $\pm j$, its support is
$$
\mathcal S_{a,b}=\{\pm(a-1),\pm(a+2),\pm b\}.
$$

Final Answer: $\boxed{\left(\frac12-\frac{2(a+1)(2a-1)}{(b^2-(a-1)^2)(b^2-(a+2)^2)},\{\pm(a-1),\pm(a+2),\pm b\}\right)}$

---

## Answer

$\left(\frac12-\frac{2(a+1)(2a-1)}{(b^2-(a-1)^2)(b^2-(a+2)^2)},\{\pm(a-1),\pm(a+2),\pm b\}\right)$

---

## Classification

**Problem Type:** Optimization

**Answer Type:** Tuple or ordered list

---

## Solution Concepts

- discrete moment polytope
- extreme point support bound
- Vandermonde independence
- monotone defect ranking
- moment interpolation
