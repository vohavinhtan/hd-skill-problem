## Steps

Step 1: Convert the moment determinant to a three-point integral

Put
$$
\phi(x)=x(1-x)\left(x-\frac13\right)^2
$$
and
$$
Z_N=\int_0^1e^{-N\phi(x)^2}\,dx.
$$
The Vandermonde determinant identity gives
$$
H_N
=
\frac1{6Z_N^3}
\int_{[0,1]^3}
\prod_{1\leq i<j\leq3}(x_i-x_j)^2
\exp\!\left(-N\sum_{i=1}^3\phi(x_i)^2\right)
\,dx_1dx_2dx_3.
$$

Set
$$
\varepsilon=N^{-1/4}.
$$
The zeros of $\phi$ are $0,\frac13,1$. The endpoints are simple zeros, so their localization scale is $\varepsilon^2$. The zero at $\frac13$ is double, so its localization scale is $\varepsilon$.

Step 2: Compute the masses of the three concentration regions

Near the middle zero write
$$
x=\frac13+\varepsilon u.
$$
Then
$$
\phi(x)
=
\frac29\varepsilon^2u^2
+
\frac13\varepsilon^3u^3
-
\varepsilon^4u^4.
$$
Therefore
$$
e^{-N\phi(x)^2}
=
e^{-4u^4/81}
\left(
1-\frac4{27}\varepsilon u^5+O(\varepsilon^2)
\right).
$$
The coefficient of $\varepsilon$ is odd, so its integral over the limiting full line vanishes. Define
$$
C=
\int_{-\infty}^{\infty}e^{-4u^4/81}\,du
=
\frac{3\Gamma\!\left(\frac14\right)}{2\sqrt2}.
$$

At the left endpoint put $x=\varepsilon^2s$. Then
$$
N\phi(x)^2=\frac{s^2}{81}+O(\varepsilon^2),
$$
so
$$
L=
\int_0^\infty e^{-s^2/81}\,ds
=
\frac{9\sqrt\pi}{2}.
$$

At the right endpoint put $x=1-\varepsilon^2s$. Then
$$
N\phi(x)^2=\frac{16s^2}{81}+O(\varepsilon^2),
$$
so
$$
R=
\int_0^\infty e^{-16s^2/81}\,ds
=
\frac{9\sqrt\pi}{8}.
$$

It follows that
$$
Z_N
=
\varepsilon C
+
\varepsilon^2(L+R)
+
O(\varepsilon^3).
$$

Step 3: Find the leading determinant contribution

A configuration with one point near each of $0,\frac13,1$ has unnormalized mass of order
$$
\varepsilon^2\cdot\varepsilon\cdot\varepsilon^2
=
\varepsilon^5.
$$
Its squared Vandermonde factor tends to
$$
\left(\frac13\right)^2
\left(\frac23\right)^2
=
\frac4{81}.
$$

There are six labelled assignments, which cancel the factor $1/6$ in Step 1. Therefore the coefficient of $\varepsilon^5$ in the numerator after that factor is
$$
A_0=\frac4{81}LCR.
$$

No term of order $\varepsilon^6$ comes from this occupancy. Endpoint displacements start at order $\varepsilon^2$. The order-$\varepsilon$ middle displacement integrates to zero by symmetry, and the order-$\varepsilon$ correction to its local density is odd as well.

After division by $Z_N^3$, the leading coefficient of $H_N$ is
$$
c=\frac{A_0}{C^3}
=
\frac4{81}\frac{LR}{C^2}
=
\frac{2\pi}{9\Gamma\!\left(\frac14\right)^2}.
$$

Step 4: Compute the first repeated-well contribution

The next possible occupancy has two points near the middle zero and one point near an endpoint. Its unnormalized mass is $\varepsilon^4$, and the squared difference between the two middle points supplies another factor $\varepsilon^2$. Hence it contributes at order $\varepsilon^6$.

Define
$$
J=
\int_{\mathbb R^2}
(u-v)^2
e^{-4(u^4+v^4)/81}
\,du\,dv.
$$
The limiting middle density is even, so
$$
J
=
2C
\int_{-\infty}^{\infty}
u^2e^{-4u^4/81}\,du.
$$
The second integral is
$$
\frac{27\Gamma\!\left(\frac34\right)}{4\sqrt2}.
$$
Using
$$
\Gamma\!\left(\frac14\right)
\Gamma\!\left(\frac34\right)
=
\pi\sqrt2,
$$
we obtain
$$
J=\frac{81\pi\sqrt2}{8}.
$$

For a repeated middle pair and one left endpoint, the two cross-well squared differences tend to $(1/3)^4$. For a right endpoint they tend to $(2/3)^4$. There are three labelled assignments of each type, so the factor $1/6$ leaves
$$
A_1
=
\frac J2
\left[
\left(\frac13\right)^4L
+
\left(\frac23\right)^4R
\right].
$$
Substitution gives
$$
A_1
=
\frac{45\pi\sqrt{2\pi}}{32}.
$$

All remaining occupancy patterns contribute only $O(\varepsilon^7)$ or smaller to the numerator at the precision needed here.

Step 5: Assemble the fractional-power expansion

From Steps 2 through 4,
$$
H_N
=
\frac{\varepsilon^5A_0+\varepsilon^6A_1+O(\varepsilon^7)}
{\varepsilon^3C^3
\left(
1+3\frac{L+R}{C}\varepsilon+O(\varepsilon^2)
\right)}.
$$
Thus
$$
H_N
=
c\varepsilon^2+d\varepsilon^3+O(\varepsilon^4),
$$
where
$$
d
=
\frac{A_1}{C^3}
-
3\frac{L+R}{C}c.
$$

The first term is
$$
\frac{A_1}{C^3}
=
\frac{5\pi^{3/2}}
{3\Gamma\!\left(\frac14\right)^3}.
$$
Also
$$
\frac{L+R}{C}
=
\frac{15\sqrt{2\pi}}
{4\Gamma\!\left(\frac14\right)},
$$
so
$$
3\frac{L+R}{C}c
=
\frac{5\sqrt2\,\pi^{3/2}}
{2\Gamma\!\left(\frac14\right)^3}.
$$
Therefore
$$
d
=
\frac{
5\pi^{3/2}(2-3\sqrt2)
}{
6\Gamma\!\left(\frac14\right)^3
}.
$$

Since $\varepsilon=N^{-1/4}$,
$$
\sqrt N\,H_N
=
c+dN^{-1/4}+O(N^{-1/2}).
$$

Step 6: Evaluate the scale difference

Replacing $N$ by $16N$ gives
$$
\sqrt{16N}\,H_{16N}
=
c+\frac d2N^{-1/4}+O(N^{-1/2}),
$$
because
$$
(16N)^{-1/4}
=
\frac12N^{-1/4}.
$$
Hence
$$
N^{1/4}
\left(
\sqrt N\,H_N-\sqrt{16N}\,H_{16N}
\right)
=
\frac d2+O(N^{-1/4}).
$$

Final Answer: $\boxed{\frac{5\pi^{3/2}(2-3\sqrt2)}{12\Gamma(\frac14)^3}}$

---

## Answer

$\frac{5\pi^{3/2}(2-3\sqrt2)}{12\Gamma(\frac14)^3}$

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
- concentration-region decomposition
