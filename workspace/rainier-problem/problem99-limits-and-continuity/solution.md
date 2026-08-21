## Steps

Step 1: Convert the moment determinant to an endpoint-cluster integral

Let
$$
r=2m+1
$$
and
$$
H_r(t)=\det\left(I_{i+j}(t)\right)_{0\leq i,j\leq r-1}.
$$
Since every entry of the normalized moment matrix is divided by $I_0(t)$,
$$
\Delta_r(t)=\frac{H_r(t)}{I_0(t)^r}.
$$

Expanding two Vandermonde determinants and integrating term by term gives
$$
H_r(t)
=
\frac1{r!}
\int_{[0,1]^r}
\prod_{i<j}(x_i-x_j)^2
\prod_{i=1}^r
x_i e^{-x_i(1-x_i)/t}\,dx_i.
$$

Suppose $k$ variables lie near $0$ and $l=r-k$ lie near $1$. Write
$$
x_i=tu_i
$$
at the left endpoint and
$$
x_i=1-tv_i
$$
at the right endpoint. Each left variable contributes $t^2$, each right variable contributes $t$, and the two within-cluster Vandermonde factors contribute
$$
t^{k(k-1)+l(l-1)}.
$$
Hence this cluster allocation starts at
$$
t^{A_k},
\qquad
A_k=r+k+k(k-1)+(r-k)(r-k-1).
$$
For $k=m+d$,
$$
A_{m+d}-A_m=d(2d-1).
$$
Thus the unique leading allocation is
$$
k=m,\qquad l=m+1,
$$
while $k=m+1$ starts one power of $t$ later. Every other allocation starts at least three powers later. Therefore only these two allocations can affect the expansion through relative order $t^2$.

Also,
$$
A_m=2m^2+3m+1.
$$

Step 2: Evaluate the endpoint partition constants

For integers $k\geq0$ and $\alpha\geq0$, define
$$
Z_{k,\alpha}
=
\frac1{k!}
\int_{(0,\infty)^k}
\prod_{i<j}(u_i-u_j)^2
\prod_{i=1}^ku_i^\alpha e^{-u_i}\,du_i.
$$
Expanding the Vandermonde determinants gives
$$
Z_{k,\alpha}
=
\det\left((i+j+\alpha)!\right)_{0\leq i,j\leq k-1}.
$$
Factor $(i+\alpha)!$ from row $i$. The remaining entry in column $j$ is
$$
(i+\alpha+1)(i+\alpha+2)\cdots(i+\alpha+j),
$$
a monic polynomial of degree $j$ in $i$. Its determinant is therefore the Vandermonde determinant at $0,1,\ldots,k-1$. Hence
$$
Z_{k,\alpha}
=
\prod_{j=0}^{k-1}j!(j+\alpha)!.
$$

For the leading allocation $(m,m+1)$ the constant is
$$
Z_{m,1}Z_{m+1,0}=C_m.
$$
For the allocation $(m+1,m)$,
$$
\frac{Z_{m+1,1}Z_{m,0}}{C_m}
=
\frac{m!(m+1)!}{(m!)^2}
=
m+1.
$$

Step 3: Compute the first two corrections in the leading endpoint allocation

For the probability density proportional to
$$
\prod_{i<j}(u_i-u_j)^2\prod_i u_i^\alpha e^{-u_i},
$$
write
$$
p_j=\sum_i u_i^j,
\qquad
n=k+\alpha.
$$
Integration by parts gives, for any polynomial $F$,
$$
\mathbb E[p_qF]
=
\mathbb E\left[
\alpha p_{q-1}F
+\sum_{j=0}^{q-1}p_jp_{q-1-j}F
+\sum_i u_i^q\frac{\partial F}{\partial u_i}
\right].
$$
Taking successively $(q,F)=(1,1),(2,1),(1,p_1),(1,p_2),(3,1),(2,p_2)$ yields
$$
\mathbb E[p_1]=kn,
$$
$$
\mathbb E[p_2]=kn(k+n),
$$
$$
\operatorname{Var}(p_1)=kn,
$$
$$
\operatorname{Cov}(p_1,p_2)=2kn(k+n),
$$
and
$$
\operatorname{Var}(p_2)
=
kn\left(4(k+n)^2+2kn+2\right).
$$

For the leading allocation, let $U_j$ denote the power sums of the $m$ left variables and $V_j$ those of the $m+1$ right variables. Expanding the logarithm of the scaled integrand gives
$$
tL_1+t^2L_2+O(t^3),
$$
where
$$
L_1
=
U_2-2(m+1)U_1+V_2-(2m+1)V_1
$$
and
$$
L_2
=
-(m+1)U_2-\left(m+\frac12\right)V_2-2U_1V_1.
$$
Thus the relative integrand is
$$
1+tL_1+t^2\left(L_2+\frac12L_1^2\right)+O(t^3).
$$

For the left ensemble $(k,\alpha)=(m,1)$ and the right ensemble $(m+1,0)$, the formulas above give
$$
\mathbb E[L_1]=m+1.
$$
Writing
$$
L_1=A+B
$$
with
$$
A=U_2-2(m+1)U_1,
\qquad
B=V_2-(2m+1)V_1,
$$
the two endpoint ensembles are independent and
$$
\operatorname{Var}(A)
=
2m(m+1)(3m^2+m+1),
$$
$$
\operatorname{Var}(B)
=
(m+1)^2(6m^2+16m+13).
$$
The first-moment formulas also give
$$
\mathbb E[L_2]
=
-(m+1)^2(6m^2+6m+1).
$$
Therefore
$$
\mathbb E\left[L_2+\frac12L_1^2\right]
=
3(m+1)(3m+2).
$$
The leading cluster contributes
$$
C_mt^{A_m}
\left(
1+(m+1)t+3(m+1)(3m+2)t^2+O(t^3)
\right).
$$

Step 4: Add the first subleading endpoint allocation

For the allocation with $m+1$ variables near $0$ and $m$ near $1$, Step 1 shows that its leading power is $t^{A_m+1}$, and Step 2 shows that its leading constant relative to $C_m$ is $m+1$.

For general left and right cluster sizes $k,l$, the first correction has expectation
$$
k(k+1)(2k+1-2l)
+
l^2(2l-2k-1).
$$
Taking
$$
k=m+1,\qquad l=m
$$
gives
$$
3(3m+2).
$$
Hence this cluster contributes
$$
C_m(m+1)t^{A_m+1}
\left(1+3(3m+2)t+O(t^2)\right).
$$

All remaining endpoint allocations begin at relative order at least $t^3$. Adding the two relevant allocations gives
$$
H_r(t)
=
C_mt^{A_m}
\left(
1+2(m+1)t
+6(m+1)(3m+2)t^2
+O(t^3)
\right).
$$

Step 5: Normalize and extract the limit

By symmetry,
$$
I_0(t)
=
\frac12
\int_0^1e^{-x(1-x)/t}\,dx.
$$
Scaling one endpoint by $x=tu$ gives
$$
I_0(t)
=
t\int_0^\infty e^{-u}e^{tu^2}\,du
+O(e^{-c/t})
$$
for some $c>0$. Therefore
$$
I_0(t)
=
t\left(1+2t+12t^2+O(t^3)\right).
$$
Since $r=2m+1$,
$$
I_0(t)^r
=
t^r
\left(
1+2rt+(2r^2+10r)t^2+O(t^3)
\right).
$$

Using Step 4 and
$$
A_m-r=m(2m+1),
$$
division gives
$$
\frac{\Delta_{2m+1}(t)}
{C_mt^{m(2m+1)}}
=
1-2mt+6m(3m+1)t^2+O(t^3).
$$
Therefore
$$
\frac{
\displaystyle
\frac{\Delta_{2m+1}(t)}
{C_mt^{m(2m+1)}}
-1+2mt
}{t^2}
=
6m(3m+1)+O(t).
$$

Final Answer: $\boxed{6m(3m+1)}$

---

## Answer

$6m(3m+1)$

---

## Classification

**Domain:** Calculus

**Sub-domain:** Limits and continuity

**Problem Type:** Symbolic derivation

**Answer Type:** Exact symbolic expression

---

## Solution Concepts

- endpoint Laplace asymptotics
- Hankel determinant integral representation
- competing endpoint clusters
- Vandermonde moment integrals
- asymptotic normalization
