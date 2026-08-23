## Steps

Step 1: Convert the determinant to a four-point integral

Put
$$
\phi(x)=(2x-1)^2(1-x)
$$
and
$$
Z_N=\int_0^1e^{-N\phi(x)^2}\,dx.
$$
The Gram determinant identity gives
$$
H_N
=
\frac1{24Z_N^4}
\int_{[0,1]^4}
\prod_{1\leq i<j\leq4}(x_i-x_j)^2
\exp\!\left(-N\sum_{i=1}^4\phi(x_i)^2\right)
\,dx_1dx_2dx_3dx_4.
$$

Set
$$
h=N^{-1/4}.
$$
The zero $x=\frac12$ of $\phi$ has multiplicity two, so its localization width is $h$. The zero $x=1$ is simple, so its width is $h^2$.

Step 2: Expand the masses of the two concentration regions

Near $x=\frac12$, write
$$
x=\frac12+hu.
$$
Then
$$
\phi(x)=2h^2u^2-4h^3u^3
$$
and
$$
N\phi(x)^2
=
4u^4-16hu^5+16h^2u^6.
$$
Therefore
$$
e^{-N\phi(x)^2}
=
e^{-4u^4}
\left(
1+16hu^5+O(h^2)
\right).
$$
The coefficient of $h$ is odd in $u$, so its integral over the limiting full line is zero. Hence the central mass is
$$
hA+O(h^3),
$$
where, writing
$$
G=\Gamma\!\left(\frac14\right),
$$
we have
$$
A=\int_{-\infty}^{\infty}e^{-4u^4}\,du
=
\frac{G}{2\sqrt2}.
$$

Near $x=1$, write
$$
x=1-h^2v.
$$
Then
$$
N\phi(x)^2=v^2+O(h^2),
$$
so the endpoint mass is
$$
h^2B+O(h^4),
$$
where
$$
B=\int_0^\infty e^{-v^2}\,dv
=
\frac{\sqrt\pi}{2}.
$$
Thus
$$
Z_N=hA+h^2B+O(h^3).
$$

Step 3: Identify the leading occupancy and its parity cancellation

For three variables near $\frac12$ and one near $1$, the four Jacobians contribute $h^5$. The three squared differences among the central variables contribute $h^6$, while the three cross-well squared differences have nonzero limits. This occupancy therefore contributes at order $h^{11}$ to the numerator in Step 1.

All four variables near $\frac12$ contribute only at order $h^{16}$. A two-two split contributes at order $h^{12}$. Occupancies with at least three variables near $1$ occur still later. Thus the leading term is the three-one split, and the first competing occupancy is the two-two split.

Let
$$
m_j=\int_{-\infty}^{\infty}u^je^{-4u^4}\,du.
$$
Odd moments vanish, while
$$
m_0=A=\frac{G}{2\sqrt2},
$$
$$
m_2=\frac{\pi}{4G},
$$
$$
m_4=\frac{G}{32\sqrt2},
$$
where
$$
\Gamma\!\left(\frac14\right)
\Gamma\!\left(\frac34\right)
=
\pi\sqrt2
$$
was used for $m_2$.

The three-particle central Vandermonde integral is
$$
J_3
=
6
\det
\begin{pmatrix}
m_0&0&m_2\\
0&m_2&0\\
m_2&0&m_4
\end{pmatrix}
=
6m_2(m_0m_4-m_2^2).
$$
Therefore
$$
J_3
=
\frac{3\pi(G^4-8\pi^2)}{256G^3}.
$$

For the three-one cluster the cross-well factor has leading value
$$
\left(\frac12\right)^6.
$$
Its relative order-$h$ correction is proportional to
$$
u_1+u_2+u_3.
$$
The order-$h$ correction of the three central weights is proportional to
$$
u_1^5+u_2^5+u_3^5.
$$
Their sum is odd under
$$
(u_1,u_2,u_3)\longmapsto(-u_1,-u_2,-u_3),
$$
while the squared Vandermonde and limiting weight are even. Hence the complete order-$h$ correction of the three-one occupancy vanishes.

Step 4: Compute the first competing occupancy

There are four labelled three-one assignments, so the factor $1/24$ in Step 1 leaves $1/6$. The coefficient of $h^{11}$ in the numerator is
$$
D_0
=
\frac16
\left(\frac12\right)^6
BJ_3.
$$
Substitution gives
$$
D_0
=
\frac{\pi^{3/2}(G^4-8\pi^2)}{65536G^3}.
$$

For a two-two split, define the two-particle central integral
$$
J_C
=
2
\det
\begin{pmatrix}
m_0&0\\
0&m_2
\end{pmatrix}
=
2m_0m_2
=
\frac{\sqrt2\pi}{8}.
$$

For the endpoint scaling law $e^{-v^2}$, put
$$
n_j=\int_0^\infty v^je^{-v^2}\,dv.
$$
Then
$$
n_0=\frac{\sqrt\pi}{2},
\qquad
n_1=\frac12,
\qquad
n_2=\frac{\sqrt\pi}{4}.
$$
The endpoint pair integral is
$$
J_E
=
2(n_0n_2-n_1^2)
=
\frac{\pi-2}{4}.
$$

There are six labelled two-two assignments, so the factor $1/24$ leaves $1/4$. The four cross-well pairs contribute
$$
\left(\frac12\right)^8.
$$
Hence the coefficient of $h^{12}$ is
$$
D_1
=
\frac14
\left(\frac12\right)^8
J_CJ_E
=
\frac{\sqrt2\pi(\pi-2)}{32768}.
$$

Together with the parity result from Step 3,
$$
\frac1{24}
\int_{[0,1]^4}
\prod_{i<j}(x_i-x_j)^2
e^{-N\sum_i\phi(x_i)^2}
\,dx_1dx_2dx_3dx_4
=
h^{11}D_0+h^{12}D_1+O(h^{13}).
$$

Step 5: Extract the first correction to the determinant

From Step 2,
$$
Z_N^4
=
h^4A^4
\left(
1+4\frac BA h+O(h^2)
\right).
$$
Using Step 4,
$$
H_N
=
h^7
\left[
\frac{D_0}{A^4}
+
h\left(
\frac{D_1}{A^4}
-
4\frac{BD_0}{A^5}
\right)
+
O(h^2)
\right].
$$
Thus
$$
N^{7/4}H_N=c_0+c_1h+O(h^2),
$$
where
$$
c_1
=
\frac{D_1}{A^4}
-
4\frac{BD_0}{A^5}.
$$
Substituting $A,B,D_0,D_1$ and simplifying gives
$$
c_1
=
\frac{
\sqrt2\pi
\left(
16\pi^3-(\pi+2)G^4
\right)
}{
512G^8
}.
$$

Step 6: Evaluate the scale difference

For $16N$, the parameter $h=N^{-1/4}$ is replaced by $h/2$. Therefore
$$
(16N)^{7/4}H_{16N}
=
c_0+\frac{c_1}{2}h+O(h^2).
$$
It follows that
$$
N^{1/4}
\left[
N^{7/4}H_N-(16N)^{7/4}H_{16N}
\right]
=
\frac{c_1}{2}+O(h).
$$
Since $G=\Gamma(\frac14)$, the limit is the stated scalar.

Final Answer: $\boxed{\frac{\sqrt{2}\pi(16\pi^3-(\pi+2)\Gamma(\frac14)^4)}{1024\Gamma(\frac14)^8}}$

---

## Answer

$\frac{\sqrt{2}\pi(16\pi^3-(\pi+2)\Gamma(\frac14)^4)}{1024\Gamma(\frac14)^8}$

---

## Classification

**Problem Type:** Exact computation

**Answer Type:** Exact scalar

---

## Solution Concepts

- Laplace asymptotics
- mixed localization scales
- Hankel moment determinants
- Vandermonde determinant identity
- cluster occupancy analysis
