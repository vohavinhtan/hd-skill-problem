## Steps

Step 1: Convert the determinant to a three-point integral and find the localization scales

Put
$$
\phi(x)=x^3(2x-1)(1-x)
$$
and
$$
Z_N=\int_0^1e^{-N^6\phi(x)^2}\,dx.
$$
The Gram determinant identity gives
$$
H_N
=
\frac1{6Z_N^3}
\int_{[0,1]^3}
\prod_{1\leq i<j\leq3}(x_i-x_j)^2
\exp\!\left(
-N^6\sum_{i=1}^3\phi(x_i)^2
\right)
\,dx_1dx_2dx_3.
$$

Set
$$
h=\frac1N.
$$
The zeros of $\phi$ are
$$
0,\qquad\frac12,\qquad1.
$$
The zero at $0$ has multiplicity $3$, so its width is $h$. The other two zeros are simple, so their widths are $h^3$.

Near the three zeros use
$$
x=hu,
\qquad
x=\frac12+h^3v,
\qquad
x=1-h^3w,
$$
respectively.

Step 2: Expand the normalizing integral through relative order $h$

At the triple zero,
$$
\phi(hu)
=
-h^3u^3
\left(
1-3hu+2h^2u^2
\right).
$$
Therefore
$$
N^6\phi(hu)^2
=
u^6-6hu^7+O(h^2),
$$
and
$$
e^{-N^6\phi(hu)^2}
=
e^{-u^6}
\left(
1+6hu^7+O(h^2)
\right).
$$

Write
$$
A=\Gamma(1/6),
\qquad
C=\Gamma(1/3).
$$
Since
$$
\int_0^\infty u^je^{-u^6}\,du
=
\frac16\Gamma\left(\frac{j+1}{6}\right),
$$
the contribution from $0$ is
$$
h\left(
\frac A6+\frac C3h+O(h^2)
\right).
$$

At $x=\frac12$,
$$
N^6\phi\left(\frac12+h^3v\right)^2
=
\frac{v^2}{64}+O(h^3),
$$
so this well contributes
$$
8\sqrt{\pi}\,h^3+O(h^6).
$$
At $x=1$,
$$
N^6\phi(1-h^3w)^2
=
w^2+O(h^3),
$$
so its contribution is
$$
\frac{\sqrt{\pi}}2h^3+O(h^6).
$$

Only the triple zero affects the relative $h$ term. Hence
$$
Z_N
=
ha\left(
1+rh+O(h^2)
\right),
$$
where
$$
a=\frac A6,
\qquad
r=\frac{2C}{A}.
$$

Step 3: Identify the three tied leading occupancies

For three samples, let the letters $A,B,C$ denote the wells at $0,\frac12,1$.

The occupancy $AAB$ has Jacobian order $h^5$ and one small squared difference of order $h^2$, so it contributes at order $h^7$ to the numerator.

The occupancy $AAC$ has the same order.

The occupancy $ABC$ has Jacobian order
$$
h\cdot h^3\cdot h^3=h^7
$$
and no small cross-well difference, so it also contributes at order $h^7$.

All other occupancies occur later.

For the $A$-well define
$$
m_j=\int_0^\infty u^je^{-u^6}\,du.
$$
The central pair integral is
$$
J_0
=
\int_0^\infty\int_0^\infty
(u-v)^2e^{-u^6-v^6}\,du\,dv
=
2(m_0m_2-m_1^2).
$$
Using
$$
m_0=\frac A6,
\qquad
m_1=\frac C6,
\qquad
m_2=\frac{\sqrt{\pi}}6,
$$
we obtain
$$
J_0
=
\frac{\sqrt{\pi}A-C^2}{18}.
$$

The factor $1/6$ in the Gram identity leaves a factor $1/2$ for each repeated-well occupancy. Therefore the three leading coefficients are
$$
D_{AAB}
=
\frac{8\sqrt{\pi}}{32}J_0,
$$
$$
D_{AAC}
=
\frac{\sqrt{\pi}}4J_0,
$$
and
$$
D_{ABC}
=
\frac1{16}\cdot\frac A6\cdot8\sqrt{\pi}\cdot\frac{\sqrt{\pi}}2.
$$
Their sum is
$$
D_0
=
\frac{5\pi A-2\sqrt{\pi}C^2}{72}.
$$

Step 4: Compute the first numerator correction

Put
$$
E=\Gamma(2/3).
$$
The moments needed for the repeated-$A$ corrections are
$$
m_3=\frac E6,
\qquad
m_7=\frac C{18},
\qquad
m_8=\frac{\sqrt{\pi}}{12},
\qquad
m_9=\frac E9.
$$

Define
$$
\Delta=AE-\sqrt{\pi}C.
$$
Direct expansion gives
$$
J_7
=
\int\!\!\int
(u-v)^2(u^7+v^7)e^{-u^6-v^6}\,du\,dv
=
\frac{\Delta}{27},
$$
and
$$
J_1
=
\int\!\!\int
(u-v)^2(u+v)e^{-u^6-v^6}\,du\,dv
=
\frac{\Delta}{18}.
$$

For the $AAB$ cluster, the two $A$-weights contribute $6J_7$, while expansion of the two cross-well factors contributes $-4J_1$. These cancel:
$$
6J_7-4J_1=0.
$$

For the $AAC$ cluster the cross-well correction is $-2J_1$, so its first correction is
$$
\frac{\sqrt{\pi}}4
\left(
6J_7-2J_1
\right)
=
\frac{\sqrt{\pi}\Delta}{36}.
$$

For the $ABC$ cluster, the two cross distances involving the $A$-variable contribute a relative factor
$$
1-6hu+O(h^2).
$$
Together with the local weight correction, the relative term is
$$
6h(u^7-u).
$$
Since
$$
m_7-m_1=-\frac C9,
$$
the $ABC$ correction is
$$
-\frac{\pi C}{6}.
$$

Hence the numerator in the Gram identity has expansion
$$
h^7
\left(
D_0+hD_1+O(h^2)
\right),
$$
where
$$
D_1
=
\frac{\sqrt{\pi}AE-7\pi C}{36}.
$$

Step 5: Extract the coefficient of $N^{-1}$

Using Step 2,
$$
Z_N^3
=
h^3a^3
\left(
1+3rh+O(h^2)
\right).
$$
Combining this with Step 4 gives
$$
H_N
=
h^4
\frac{
D_0+h(D_1-3rD_0)+O(h^2)
}{
a^3
}.
$$
Therefore
$$
N^4H_N
=
c_0+\frac{c_1}{N}+O(N^{-2}),
$$
where
$$
c_1
=
\frac{D_1-3rD_0}{a^3}.
$$

Substituting
$$
a=\frac A6,
\qquad
r=\frac{2C}{A},
$$
and the values of $D_0,D_1$ gives
$$
c_1
=
\frac{6\sqrt{\pi}E}{A^2}
-
\frac{132\pi C}{A^3}
+
\frac{36\sqrt{\pi}C^3}{A^4}.
$$

Step 6: Evaluate the scale difference and simplify

Replacing $N$ by $2N$ gives
$$
(2N)^4H_{2N}
=
c_0+\frac{c_1}{2N}+O(N^{-2}).
$$
Therefore
$$
N
\left[
N^4H_N-(2N)^4H_{2N}
\right]
=
\frac{c_1}{2}+O(N^{-1}).
$$

The duplication identity
$$
\Gamma(1/6)\Gamma(2/3)
=
2^{2/3}\sqrt{\pi}\Gamma(1/3)
$$
reduces $c_1/2$ to
$$
\frac{
3C
\left[
\pi(2^{2/3}-22)A
+
6\sqrt{\pi}C^2
\right]
}{
A^4
}.
$$

Final Answer: $\boxed{\frac{3\Gamma(1/3)(\pi(2^{2/3}-22)\Gamma(1/6)+6\sqrt{\pi}\Gamma(1/3)^2)}{\Gamma(1/6)^4}}$

---

## Answer

$\frac{3\Gamma(1/3)(\pi(2^{2/3}-22)\Gamma(1/6)+6\sqrt{\pi}\Gamma(1/3)^2)}{\Gamma(1/6)^4}$

---

## Classification

**Problem Type:** Exact computation

**Answer Type:** Exact scalar

---

## Solution Concepts

- Laplace asymptotics
- unequal localization scales
- Hankel moment determinants
- competing occupancy patterns
- gamma-function identities
