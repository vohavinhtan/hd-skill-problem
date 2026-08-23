## Steps

Step 1: Convert the Hankel determinant to a four-point cluster integral

Put
$$
\phi(x)=x(1-x)(2x-1)^2
$$
and
$$
Z_N=\int_0^1e^{-N^4\phi(x)^2}\,dx.
$$
The Gram determinant identity gives
$$
H_N
=
\frac1{24Z_N^4}
\int_{[0,1]^4}
\prod_{1\leq i<j\leq4}(x_i-x_j)^2
\exp\!\left(
-N^4\sum_{i=1}^4\phi(x_i)^2
\right)
\,dx_1dx_2dx_3dx_4.
$$

Set
$$
h=\frac1N.
$$
The zeros of $\phi$ are $0,\frac12,1$. The zero at $\frac12$ has multiplicity two, so its localization width is $h$. The endpoint zeros are simple, so their width is $h^2$.

Step 2: Expand the normalizing integral

Near $\frac12$, write
$$
x=\frac12+hu.
$$
Then
$$
\phi(x)=h^2u^2-4h^4u^4,
$$
so
$$
N^4\phi(x)^2
=
u^4-8h^2u^6+O(h^4).
$$
Therefore
$$
e^{-N^4\phi(x)^2}
=
e^{-u^4}
\left(
1+8h^2u^6+O(h^4)
\right).
$$

Write
$$
G=\Gamma\!\left(\frac14\right).
$$
The central mass is
$$
hA+h^3A_2+O(h^5),
$$
where
$$
A=\int_{\mathbb R}e^{-u^4}\,du=\frac G2
$$
and
$$
A_2=8\int_{\mathbb R}u^6e^{-u^4}\,du
=
\frac{3\sqrt2\pi}{G}.
$$

At either endpoint use $x=h^2s$ or $x=1-h^2s$. In both cases
$$
N^4\phi(x)^2
=
s^2-10h^2s^3+O(h^4),
$$
so each endpoint contributes
$$
h^2B+O(h^4),
\qquad
B=\frac{\sqrt\pi}{2}.
$$

Hence
$$
Z_N
=
hA
\left(
1+bh+rh^2+O(h^3)
\right),
$$
where
$$
b=\frac{2B}{A}=\frac{2\sqrt\pi}{G},
$$
$$
r=\frac{A_2}{A}=\frac{6\sqrt2\pi}{G^2}.
$$

Step 3: Find the unique occupancy contributing through relative order $h^2$

Take two variables near $\frac12$, one near $0$, and one near $1$:
$$
x_1=\frac12+hu,
\qquad
x_2=\frac12+hv,
\qquad
x_3=h^2s,
\qquad
x_4=1-h^2t.
$$
The four Jacobians contribute $h^6$, and the squared difference between the two central variables contributes $h^2$. All other pairwise distances have nonzero limits. Thus this occupancy contributes at order $h^8$ to the numerator.

Every other occupancy starts at order $h^{11}$ or later, so none affects the expansion through $h^{10}$.

There are $12$ labelled assignments. Together with the factor $1/24$, this leaves $1/2$.

Define
$$
m_j=\int_{\mathbb R}u^je^{-u^4}\,du.
$$
The needed values are
$$
m_0=\frac G2,
\qquad
m_2=\frac{\sqrt2\pi}{2G},
\qquad
m_4=\frac G8,
$$
$$
m_6=\frac{3\sqrt2\pi}{8G},
\qquad
m_8=\frac{5G}{32}.
$$

The central pair integral is
$$
J
=
\int_{\mathbb R^2}
(u-v)^2e^{-u^4-v^4}\,du\,dv
=
2m_0m_2
=
\frac{\sqrt2\pi}{2}.
$$

The four central-endpoint squared differences contribute
$$
\left(\frac12\right)^8
=
\frac1{256}
$$
at leading order. Therefore the $h^8$ numerator coefficient is
$$
D_0
=
\frac12\cdot\frac1{256}B^2J
=
\frac{\sqrt2\pi^2}{4096}.
$$

Step 4: Compute the second-order deformation of the leading cluster

For the coordinates in Step 3, the product of all cross-well squared differences, after removing its leading factor $1/256$, is
$$
1
-
8h^2(u^2+v^2)
-
10h^2(s+t)
+
O(h^3).
$$

The two central weights contribute
$$
1+8h^2(u^6+v^6)+O(h^4),
$$
while the endpoint weights contribute
$$
1+10h^2(s^3+t^3)+O(h^4).
$$
Thus the relative $h^2$ correction is
$$
8(u^6+v^6-u^2-v^2)
+
10(s^3-s+t^3-t).
$$

The endpoint part vanishes after integration because
$$
\int_0^\infty(s^3-s)e^{-s^2}\,ds=0.
$$

The remaining central integral is
$$
K
=
8\int_{\mathbb R^2}
(u-v)^2
(u^6+v^6-u^2-v^2)
e^{-u^4-v^4}\,du\,dv.
$$
Expanding the polynomial gives
$$
K
=
16
\left(
m_0m_8+m_2m_6-m_0m_4-m_2^2
\right).
$$
Substituting the moments from Step 3,
$$
K
=
\frac{G^4-8\pi^2}{4G^2}.
$$

Therefore the $h^{10}$ numerator coefficient is
$$
D_2
=
\frac12\cdot\frac1{256}B^2K
=
\frac{\pi(G^4-8\pi^2)}{8192G^2}.
$$

The numerator in Step 1 is consequently
$$
h^8
\left(
D_0+D_2h^2+O(h^3)
\right).
$$

Step 5: Extract the coefficient that survives the scale cancellation

From Step 2,
$$
Z_N^{-4}
=
h^{-4}A^{-4}
\left[
1-4bh+(10b^2-4r)h^2+O(h^3)
\right].
$$
Combining this with Step 4 gives
$$
H_N
=
h^4
\left(
c_0+c_1h+c_2h^2+O(h^3)
\right),
$$
where
$$
c_2
=
\frac{
D_2+(10b^2-4r)D_0
}{A^4}.
$$

Using
$$
A=\frac G2,
\qquad
b=\frac{2\sqrt\pi}{G},
\qquad
r=\frac{6\sqrt2\pi}{G^2},
$$
together with $D_0,D_2$ from Steps 3 and 4, we obtain
$$
c_2
=
\frac{
\pi\left(
G^4+(80\sqrt2-104)\pi^2
\right)
}{
512G^6
}.
$$

Thus
$$
N^4H_N
=
c_0+\frac{c_1}{N}+\frac{c_2}{N^2}+O(N^{-3}).
$$

Step 6: Apply the three-scale annihilation

Replacing $N$ by $2N$ and $4N$ gives
$$
(2N)^4H_{2N}
=
c_0+\frac{c_1}{2N}+\frac{c_2}{4N^2}+O(N^{-3}),
$$
$$
(4N)^4H_{4N}
=
c_0+\frac{c_1}{4N}+\frac{c_2}{16N^2}+O(N^{-3}).
$$

The constant and $N^{-1}$ terms cancel because
$$
1-3+2=0,
$$
$$
1-\frac32+\frac12=0.
$$
The coefficient of $N^{-2}$ is
$$
c_2\left(
1-\frac34+\frac18
\right)
=
\frac{3c_2}{8}.
$$
Multiplication by $N^2$ gives the required limit.

Final Answer: $\boxed{\frac{3\pi(\Gamma(\frac14)^4+(80\sqrt2-104)\pi^2)}{4096\Gamma(\frac14)^6}}$

---

## Answer

$\frac{3\pi(\Gamma(\frac14)^4+(80\sqrt2-104)\pi^2)}{4096\Gamma(\frac14)^6}$

---

## Classification

**Problem Type:** Exact computation

**Answer Type:** Exact scalar

---

## Solution Concepts

- Laplace asymptotics
- mixed localization scales
- Hankel moment determinants
- cluster occupancy analysis
- multiscale cancellation
