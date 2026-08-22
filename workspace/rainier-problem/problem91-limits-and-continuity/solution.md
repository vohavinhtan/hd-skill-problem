## Steps

Step 1: Convert the Hankel determinant to a four-point expectation

Let $\mu_N$ be the probability measure on $[0,1]$ with density
$$
\frac{\exp\!\left(-Nx^2(1-x)^2\right)}
{\displaystyle\int_0^1\exp\!\left(-Nt^2(1-t)^2\right)\,dt}.
$$
Then
$$
M_{k,N}=\int_0^1x^k\,d\mu_N(x).
$$

For independent $X_1,\ldots,X_4$ with law $\mu_N$, expansion of the two Vandermonde determinants gives
$$
H_N
=
\frac1{4!}
\mathbb E
\left[
\prod_{1\leq i<j\leq4}(X_i-X_j)^2
\right].
$$
Indeed,
$$
\det(M_{i+j,N})_{0\leq i,j\leq3}
=
\frac1{4!}
\int
\det(X_j^i)_{0\leq i\leq3,\,1\leq j\leq4}^{\,2}
\prod_{j=1}^4d\mu_N(X_j),
$$
and the determinant inside the integral is the Vandermonde product.

The weight is invariant under $x\mapsto1-x$. Each sample therefore lies in the left or right half of $[0,1]$ with probability $1/2$.

Put
$$
\varepsilon=N^{-1/2}.
$$
On the left endpoint write
$$
X=\varepsilon U.
$$
On the right endpoint write
$$
X=1-\varepsilon U.
$$
The two scaled conditional laws are identical.

Step 2: Expand the scaled endpoint law

Ignoring an exponentially small truncation at $U=1/(2\varepsilon)$, the scaled density is proportional to
$$
\exp\!\left(-U^2(1-\varepsilon U)^2\right).
$$
For fixed $U$,
$$
\exp\!\left(-U^2(1-\varepsilon U)^2\right)
=
e^{-U^2}
\left[
1+2\varepsilon U^3
+\varepsilon^2(2U^6-U^4)
+O(\varepsilon^3)
\right].
$$

Let
$$
m_k
=
\frac{2}{\sqrt{\pi}}
\int_0^\infty U^ke^{-U^2}\,dU
=
\frac{\Gamma\!\left(\frac{k+1}{2}\right)}{\sqrt{\pi}}.
$$
If $\mu_k(\varepsilon)$ denotes the $k$th moment of the scaled conditional law, normalization gives
$$
\mu_k(\varepsilon)
=
\frac{
m_k+2\varepsilon m_{k+3}
+\varepsilon^2(2m_{k+6}-m_{k+4})
}
{
1+2\varepsilon m_3
+\varepsilon^2(2m_6-m_4)
}
+
O(\varepsilon^3).
$$
The values needed below include
$$
m_1=\frac1{\sqrt{\pi}},
\qquad
m_2=\frac12,
\qquad
m_3=\frac1{\sqrt{\pi}},
\qquad
m_4=\frac34,
\qquad
m_5=\frac2{\sqrt{\pi}},
\qquad
m_6=\frac{15}{8}.
$$

For independent $U_1,U_2$ having this scaled law, define
$$
A_\varepsilon
=
\mathbb E(U_1-U_2)^2,
$$
$$
B_\varepsilon
=
\mathbb E\left[(U_1-U_2)^2(U_1+U_2)\right].
$$
Using
$$
A_\varepsilon
=
2\left(\mu_2(\varepsilon)-\mu_1(\varepsilon)^2\right)
$$
and
$$
B_\varepsilon
=
2\mu_3(\varepsilon)
-
2\mu_1(\varepsilon)\mu_2(\varepsilon),
$$
the moment formula gives
$$
A_\varepsilon
=
1-\frac2\pi
+
\frac{8}{\pi^{3/2}}\varepsilon
+
\left(
15-\frac{16}{\pi}-\frac{24}{\pi^2}
\right)\varepsilon^2
+
O(\varepsilon^3),
$$
and
$$
B_\varepsilon
=
\frac1{\sqrt{\pi}}
+
\left(
6-\frac8\pi
\right)\varepsilon
+
O(\varepsilon^2).
$$

Step 3: Compute the two-left two-right contribution

Take two samples near $0$,
$$
X_i=\varepsilon U_i,
\qquad
i=1,2,
$$
and two near $1$,
$$
X_{2+j}=1-\varepsilon V_j,
\qquad
j=1,2.
$$
The $U$-pair and $V$-pair are independent and have the scaled law from Step 2.

The squared Vandermonde product is
$$
\varepsilon^4
(U_1-U_2)^2(V_1-V_2)^2
\prod_{i,j=1}^2
\left(1-\varepsilon(U_i+V_j)\right)^2.
$$
Put
$$
S=U_1+U_2+V_1+V_2.
$$
The cross factor has expansion
$$
\prod_{i,j=1}^2
\left(1-\varepsilon(U_i+V_j)\right)^2
=
1-4\varepsilon S+\varepsilon^2Q+O(\varepsilon^3),
$$
where
$$
Q
=
8S^2
-
\sum_{i,j=1}^2(U_i+V_j)^2.
$$

Let
$$
a=1-\frac2\pi.
$$
Under the limiting half-Gaussian law,
$$
\mathbb E
\left[
(U_1-U_2)^2(V_1-V_2)^2Q
\right]
=
8+\frac{14}{\pi}-\frac{32}{\pi^2}.
$$
This follows by expanding $Q$ and using
$$
m_0=1,\qquad
m_1=\frac1{\sqrt{\pi}},
\qquad
m_2=\frac12,
\qquad
m_3=\frac1{\sqrt{\pi}},
\qquad
m_4=\frac34.
$$

Combining this value with $A_\varepsilon$ and $B_\varepsilon$ gives
$$
\mathbb E
\left[
(U_1-U_2)^2(V_1-V_2)^2
\prod_{i,j=1}^2
\left(1-\varepsilon(U_i+V_j)\right)^2
\right]
=
a^2
-
\frac{8a^2}{\sqrt{\pi}}\varepsilon
+
C\varepsilon^2
+
O(\varepsilon^3),
$$
where
$$
C
=
-10+\frac{82}{\pi}-\frac{208}{\pi^2}+\frac{160}{\pi^3}.
$$

There are $\binom42=6$ assignments with two samples at each endpoint. Each assignment has probability $2^{-4}$. After the factor $1/4!$ from Step 1, their contribution to $N^2H_N=\varepsilon^{-4}H_N$ is
$$
\frac1{64}
\left[
a^2
-
\frac{8a^2}{\sqrt{\pi}}\varepsilon
+
C\varepsilon^2
\right]
+
O(\varepsilon^3).
$$

Step 4: Compute the first contribution from an unequal endpoint split

A three-left one-right configuration contains three within-left differences. Its squared Vandermonde product starts at order
$$
\varepsilon^6.
$$
After multiplication by $N^2=\varepsilon^{-4}$, it first contributes at order $\varepsilon^2$.

For three independent limiting half-Gaussian variables $U_1,U_2,U_3$,
$$
\mathbb E
\prod_{1\leq i<j\leq3}(U_i-U_j)^2
=
6
\det
\begin{pmatrix}
m_0&m_1&m_2\\
m_1&m_2&m_3\\
m_2&m_3&m_4
\end{pmatrix}.
$$
Substituting the moments from Step 3 gives
$$
\mathbb E
\prod_{1\leq i<j\leq3}(U_i-U_j)^2
=
\frac{3(\pi-3)}{2\pi}.
$$

There are eight configurations of type $3+1$ or $1+3$. Their total coefficient, including the probability $2^{-4}$ and the factor $1/24$, is
$$
\frac1{48}.
$$
Therefore their contribution to $N^2H_N$ is
$$
\frac{\pi-3}{32\pi}\varepsilon^2
+
O(\varepsilon^3).
$$

Configurations with all four samples near the same endpoint contain six small pairwise differences, so their squared Vandermonde product is $O(\varepsilon^{12})$. They do not affect the terms through order $\varepsilon^2$ after multiplication by $\varepsilon^{-4}$.

Step 5: Assemble the expansion of the determinant

Combining Steps 3 and 4,
$$
N^2H_N
=
c+dN^{-1/2}+eN^{-1}+O(N^{-3/2}),
$$
where
$$
c=\frac{1}{64}\left(1-\frac2\pi\right)^2,
$$
$$
d=
-\frac{1}{8\sqrt{\pi}}
\left(1-\frac2\pi\right)^2,
$$
and
$$
e
=
\frac{C}{64}
+
\frac{\pi-3}{32\pi}.
$$
Using the value of $C$ from Step 3,
$$
e
=
\frac{-2\pi^3+19\pi^2-52\pi+40}{16\pi^3}.
$$

Step 6: Apply the three-scale cancellation

Write
$$
R_N=N^2H_N.
$$
Step 5 gives
$$
R_N
=
c+dN^{-1/2}+eN^{-1}+O(N^{-3/2}),
$$
$$
R_{4N}
=
c+\frac{d}{2}N^{-1/2}+\frac{e}{4}N^{-1}+O(N^{-3/2}),
$$
and
$$
R_{16N}
=
c+\frac{d}{4}N^{-1/2}+\frac{e}{16}N^{-1}+O(N^{-3/2}).
$$
The constant and $N^{-1/2}$ terms cancel in
$$
R_N-3R_{4N}+2R_{16N}.
$$
The coefficient of $N^{-1}$ is
$$
e\left(1-\frac34+\frac{2}{16}\right)
=
\frac{3e}{8}.
$$
Multiplication by $N$ gives the requested limit.

Final Answer: $\boxed{\frac{3(-2\pi^3+19\pi^2-52\pi+40)}{128\pi^3}}$

---

## Answer

$\frac{3(-2\pi^3+19\pi^2-52\pi+40)}{128\pi^3}$

---

## Classification

**Problem Type:** Exact computation

**Answer Type:** Exact scalar

---

## Solution Concepts

- endpoint Laplace asymptotics
- Hankel moment determinants
- Vandermonde determinant identity
- endpoint cluster decomposition
- asymptotic cancellation
