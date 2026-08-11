## Steps

Step 1: Determine the partitions that are admissible for the maximum

For $q\geq0$, let
$$
Q_q=\operatorname{Ind}_{H_q}^{S_{2q}}\mathbf 1
$$
and let $H_q=\operatorname{ch}(Q_q)$ be its Frobenius characteristic. The perfect-matching permutation modules satisfy the precise symmetric-function identity
$$
\sum_{q\geq0}H_q u^q
=
\prod_{i\leq j}\frac{1}{1-u x_i x_j}
=
\sum_{\mu}s_{2\mu}(x)u^{|\mu|}.
$$
Comparing coefficients of $u^q$ gives
$$
Q_q\cong\bigoplus_{\mu\vdash q}S^{2\mu}.
$$
Hence $S^\lambda$ occurs in $P_m$ exactly when every row length of $\lambda$ is even.

For every partition $\alpha$,
$$
S^\alpha\otimes\operatorname{sgn}_{S_{2m}}\cong S^{\alpha'},
$$
so $S^\lambda$ occurs in $N_m$ exactly when every row length of $\lambda'$ is even. Since
$$
\lambda'_r-\lambda'_{r+1}
$$
is the multiplicity of the part $r$ in $\lambda$, the two conditions together are equivalent to
$$
\lambda=(a_1^{2k_1},a_2^{2k_2},\ldots,a_t^{2k_t}),
\qquad
a_1>\cdots>a_t\geq2,
$$
with every $a_s$ even and every $k_s\geq1$.

Step 2: Reduce the tensor-square induction to three perfect-matching permutation modules

Let $U_m=\mathbb C^m$ be the permutation module of $S_m$. Then
$$
U_m\cong\mathbf 1\oplus V_m.
$$
The tensor square $U_m\otimes U_m$ is the permutation module on ordered pairs $(i,j)$. The diagonal pairs form one orbit with stabilizer $S_{m-1}$, while the ordered pairs with $i\neq j$ form one orbit with stabilizer $S_{m-2}$. Therefore
$$
U_m\otimes U_m
\cong
\operatorname{Ind}_{S_{m-1}}^{S_m}\mathbf 1
\oplus
\operatorname{Ind}_{S_{m-2}}^{S_m}\mathbf 1.
$$
Since $U_m\cong\operatorname{Ind}_{S_{m-1}}^{S_m}\mathbf 1$, comparison in the representation ring gives
$$
[V_m\otimes V_m]
=
[\mathbf 1]
-
\left[\operatorname{Ind}_{S_{m-1}}^{S_m}\mathbf 1\right]
+
\left[\operatorname{Ind}_{S_{m-2}}^{S_m}\mathbf 1\right].
$$

Inflate these three $S_m$-modules through $\pi$ and induce to $S_{2m}$. The preimage of $S_{m-1}$ is $H_{m-1}\times S_2$, while the preimage of the subgroup fixing two labelled points is $H_{m-2}\times S_2\times S_2$. Induction transitivity therefore yields
$$
\operatorname{ch}(M_m)
=
H_m-h_2H_{m-1}+h_2^2H_{m-2}.
$$
As a dimension check, the three induced permutation modules have dimensions in the ratio
$$
1:m:m(m-1),
$$
relative to $\dim P_m$, so the virtual combination has dimension
$$
\left(1-m+m(m-1)\right)\dim P_m=(m-1)^2\dim P_m,
$$
which is exactly $[S_{2m}:H_m]\dim(V_m\otimes V_m)$.

Step 3: Compute the multiplicity of an admissible Specht module

Fix an admissible
$$
\lambda=(a_1^{2k_1},\ldots,a_t^{2k_t}),
\qquad
a_1>\cdots>a_t,
$$
and put $a_{t+1}=0$. Define
$$
c_4=
\#\left\{s\in\{1,\ldots,t\}:a_s-a_{s+1}\geq4\right\}.
$$
Write
$$
b_j(\lambda)=
\left\langle
s_\lambda,h_2^jH_{m-j}
\right\rangle
\qquad
(j=0,1,2).
$$
Then
$$
a_\lambda=b_0(\lambda)-b_1(\lambda)+b_2(\lambda).
$$

The Pieri rule used here is the following exact statement: the coefficient of $s_\rho$ in $s_\kappa h_2$ is $1$ precisely when $\rho/\kappa$ is a horizontal $2$-strip, and is $0$ otherwise.

Because $\lambda$ itself has even rows,
$$
b_0(\lambda)=1.
$$
To obtain an even-row partition after deleting one horizontal $2$-strip, both deleted boxes must come from one row. For each distinct row length $a_s$, only the last row in that block may be shortened while preserving the partition order. This gives exactly
$$
b_1(\lambda)=t.
$$

For $b_2(\lambda)$, delete two horizontal $2$-strips successively. The final even-row partition differs from $\lambda$ by four boxes, and each row must lose an even number of boxes. There are three disjoint possibilities.

If all four boxes come from one row block $a_s$, the last row of that block must be shortened by $4$, which is possible exactly when $a_s-a_{s+1}\geq4$. This contributes $c_4$.

If two boxes are deleted from each of two rows having the same length, the two rows must be the last two rows of that block, and the order of the two removals is forced. This contributes $t$.

If the two affected rows lie in two distinct row-length blocks, there are exactly three chains: remove two boxes from the first block and then two from the second, do these two removals in the opposite order, or in each strip remove one box from each block. Distinct even row lengths differ by at least $2$, so the mixed removal uses two different columns and is horizontal at both stages. Thus this contributes
$$
3\binom{t}{2}.
$$
Consequently
$$
b_2(\lambda)=c_4+t+3\binom{t}{2},
$$
and hence
$$
a_\lambda
=
1+c_4+3\binom{t}{2}.
$$

Step 4: Convert the partition constraints into an exact packing inequality

Write
$$
a_s=2b_s
$$
with
$$
b_1>\cdots>b_t\geq1,
$$
and set $b_{t+1}=0$. Since the part $a_s$ occurs $2k_s$ times and $\lambda\vdash2m$,
$$
m=2\sum_{s=1}^t k_sb_s.
$$
For fixed $t$ and fixed $j=c_4$, the smallest possible $m$ occurs when every $k_s=1$.

Set
$$
\delta_s=b_s-b_{s+1}-1\geq0.
$$
Then
$$
j=\#\left\{s:\delta_s\geq1\right\},
$$
and telescoping gives
$$
b_s=t-s+1+\sum_{u=s}^t\delta_u.
$$
Therefore
$$
2\sum_{s=1}^t b_s
=
t(t+1)+2\sum_{u=1}^t u\delta_u.
$$
If exactly $j$ of the $\delta_u$ are positive, the weighted sum is minimized by
$$
\delta_1=\cdots=\delta_j=1,
\qquad
\delta_{j+1}=\cdots=\delta_t=0,
$$
so
$$
m\geq t(t+1)+j(j+1).
$$

This bound is also sufficient. At equality take $k_s=1$ and the displayed $\delta_u$. Any further even amount can be absorbed without changing $t$ or $j$: if $j\geq1$, increase the already positive $\delta_1$; if $j=0$, then $b_t=1$ and increasing $k_t$ adds $2$ to $m$ each time. Thus the feasible pairs are exactly
$$
0\leq j\leq t,
\qquad
t(t+1)+j(j+1)\leq m.
$$

Step 5: Optimize the multiplicity over all feasible pairs

For a feasible pair $(t,j)$, Step 3 gives
$$
F(t,j)=1+3\binom{t}{2}+j.
$$
Let
$$
d=d_m=
\left\lfloor
\frac{\sqrt{4m+1}-1}{2}
\right\rfloor.
$$
Then $d$ is the largest integer with
$$
d(d+1)\leq m.
$$
The pair $(d,0)$ is feasible. For every $t\leq d-1$ and $j\leq t$,
$$
F(t,j)
\leq
F(d-1,d-1),
$$
while
$$
F(d,0)-F(d-1,d-1)=2(d-1)>0.
$$
Hence every maximizer has $t=d$.

Put
$$
r=m-d(d+1).
$$
For fixed $t=d$, the function $F(d,j)$ is increasing in $j$, so the optimal $j$ is the largest integer satisfying
$$
j(j+1)\leq r.
$$
Thus
$$
j=
\left\lfloor
\frac{\sqrt{4r+1}-1}{2}
\right\rfloor.
$$
Since $m<(d+1)(d+2)$ and $m\geq12$ gives $d\geq3$, this $j$ is automatically smaller than $d$, so the constraint $j\leq d$ is inactive. The sufficiency construction in Step 4 attains this pair.

Step 6: Verify the extremal formula and state the result

A counterexample to the proposed maximum would have to use either more than $d_m$ distinct row lengths, or the same number of row lengths with one more large gap. The first is impossible because
$$
(d_m+1)(d_m+2)>m,
$$
and the second is impossible because, with
$$
r=m-d_m(d_m+1),
$$
the chosen integer
$$
\left\lfloor
\frac{\sqrt{4r+1}-1}{2}
\right\rfloor
$$
is by definition the largest $j$ with $j(j+1)\leq r$. Step 5 also rules out every smaller value of $t$, even if all its $t$ gaps are large.

As independent small-case checks, for $m=12$ one has $d_m=3$ and $r=0$. The admissible partition
$$
(6,6,4,4,2,2)
$$
has $t=3$ and $c_4=0$, hence
$$
a_\lambda=1+3\binom{3}{2}=10.
$$
For $m=14$, the partition
$$
(8,8,4,4,2,2)
$$
has $t=3$ and $c_4=1$, hence $a_\lambda=11$, matching the formula.

Substituting $r=m-d_m(d_m+1)$ into the optimum from Step 5 gives
$$
A_m=
\frac{3d_m(d_m-1)}{2}
+
\left\lfloor
\frac{\sqrt{4m-4d_m(d_m+1)+1}-1}{2}
\right\rfloor
+1.
$$

Final Answer: $\boxed{\frac{3d_m(d_m-1)}{2}+\left\lfloor\frac{\sqrt{4m-4d_m(d_m+1)+1}-1}{2}\right\rfloor+1}$

---

## Answer

$\frac{3d_m(d_m-1)}{2}+\left\lfloor\frac{\sqrt{4m-4d_m(d_m+1)+1}-1}{2}\right\rfloor+1$

---

## Classification

**Problem Type:** Optimization

**Answer Type:** Exact scalar

---

## Solution Concepts

- wreath product induction
- perfect matching permutation modules
- Pieri rule
- Specht module sign twist
- extremal partition packing
