## Steps

Step 1: Identify the dominant three-cluster allocation

Let
$$
\phi(x)=x(1-x)(2x-1)^2.
$$
Andréief's identity gives
$$
D_m(t)
=
\frac{1}{(4m)!}
\int_{[0,1]^{4m}}
\prod_{i<j}(x_i-x_j)^2
\prod_{i=1}^{4m}e^{-\phi(x_i)/t}\,dx_i.
$$
The zero set of $\phi$ is
$$
\left\{0,\frac12,1\right\}.
$$
Away from fixed neighborhoods of these three points, $\phi$ is bounded below by a positive constant, so that part of the integral is exponentially small.

Suppose $k$ variables are near $0$, $l$ near $1/2$, and $r$ near $1$, with
$$
k+l+r=4m.
$$
Use the local scales
$$
x=tu,\qquad
x=\frac12+\sqrt{t}\,z,\qquad
x=1-tv.
$$
A left or right variable contributes one power of $t$ from its differential, while a center variable contributes $t^{1/2}$. The squared Vandermonde factors inside the three clusters contribute
$$
t^{k(k-1)},\qquad
t^{l(l-1)/2},\qquad
t^{r(r-1)}.
$$
Cross-cluster distances have nonzero limits. The total power is therefore
$$
E(k,l,r)=k^2+r^2+\frac{l^2}{2}.
$$

Write
$$
k=m+a,\qquad r=m+c,\qquad l=2m-a-c.
$$
Then
$$
E(k,l,r)-4m^2
=
\frac{3a^2+2ac+3c^2}{2}.
$$
The unique minimum is $(a,c)=(0,0)$, corresponding to
$$
(k,l,r)=(m,2m,m).
$$
The smallest positive gap is $3/2$, attained only for
$$
(a,c)\in\{(1,0),(-1,0),(0,1),(0,-1)\}.
$$
All other allocations begin at relative order at least $t^2$.

Step 2: Evaluate the leading local partition constant

Define
$$
L_k=
\frac1{k!}
\int_{(0,\infty)^k}
\prod_{i<j}(u_i-u_j)^2
\prod_i e^{-u_i}\,du_i.
$$
Expanding the two Vandermonde determinants gives
$$
L_k=\det\left((i+j)!\right)_{0\leq i,j\leq k-1}.
$$
Factor $i!$ from row $i$. The entry remaining in column $j$ is a monic polynomial of degree $j$ in $i$, so its determinant is the Vandermonde determinant at $0,1,\ldots,k-1$. Therefore
$$
L_k=\prod_{j=0}^{k-1}(j!)^2.
$$

For the center cluster define
$$
G_l=
\frac1{l!}
\int_{\mathbb{R}^l}
\prod_{i<j}(z_i-z_j)^2
\prod_i e^{-z_i^2}\,dz_i.
$$
The monic Hermite polynomial
$$
h_j(z)=(-1)^j2^{-j}e^{z^2}\frac{d^j}{dz^j}e^{-z^2}
$$
has squared norm
$$
\int_{\mathbb R}h_j(z)^2e^{-z^2}\,dz
=
\sqrt{\pi}\,2^{-j}j!,
$$
obtained by integrating its Rodrigues formula by parts $j$ times. Gram factorization then gives
$$
G_l=
\pi^{l/2}2^{-l(l-1)/2}\prod_{j=0}^{l-1}j!.
$$

For the dominant allocation, each left-center and center-right squared distance tends to $1/4$. There are $4m^2$ such pairs, so the cross factor is
$$
2^{-8m^2}.
$$
Its leading constant is
$$
2^{-8m^2}L_m^2G_{2m}
=
C_m.
$$

Step 3: Compute the first correction of the dominant allocation

For the dominant scaling, write
$$
U_j=\sum_{i=1}^m u_i^j,\qquad
V_j=\sum_{i=1}^m v_i^j,\qquad
Z_j=\sum_{a=1}^{2m}z_a^j.
$$
After the leading densities
$$
e^{-\sum u_i}e^{-\sum v_i}e^{-\sum z_a^2}
$$
and the constant cross factor are removed, the logarithm of the remaining integrand has the form
$$
tL_1+O(t^2),
$$
where
$$
L_1
=
5(U_2+V_2)-10m(U_1+V_1)+4Z_4-8mZ_2.
$$
For example,
$$
\frac{\phi(tu)}{t}=u-5tu^2+O(t^2)
$$
and
$$
\frac{\phi(1/2+\sqrt{t}\,z)}{t}=z^2-4tz^4.
$$
For a left-center pair,
$$
2\log\left(1+2\sqrt{t}\,z-2tu\right)
=
4\sqrt{t}\,z-4tu-4tz^2+O(t^{3/2}),
$$
while the corresponding right-center expansion has the opposite $\sqrt{t}$ term. With equal left and right cluster sizes, those terms cancel.

The integrated dominant contribution has no $t^{3/2}$ term. Indeed, replacing $\sqrt t$ by $-\sqrt t$ and simultaneously sending
$$
(u,v,z)\longmapsto(v,u,-z)
$$
leaves the scaled integral unchanged, so its expansion contains only integer powers of $t$.

For the Laguerre density defining $L_m$, integration by parts gives
$$
\mathbb E[U_1]=m^2,
\qquad
\mathbb E[U_2]=2m^3.
$$
The first identity follows from integrating
$$
\sum_i\frac{\partial}{\partial u_i}(u_i\rho),
$$
and the second from the same calculation with $u_i^2\rho$. The same formulas hold for $V_1,V_2$.

For the Gaussian density defining $G_n$, the corresponding integration-by-parts identities give
$$
\mathbb E[Z_2]=\frac{n^2}{2}.
$$
To obtain the fourth moment, write $Z_1=\sum z_i$. The Vandermonde factor is unchanged by a common translation, so the center-of-mass coordinate has density proportional to
$$
e^{-Z_1^2/n},
$$
and
$$
\mathbb E[Z_1^2]=\frac n2.
$$
Integrating
$$
\sum_i\frac{\partial}{\partial z_i}(z_i^3\rho)
$$
then gives
$$
\mathbb E[Z_4]
=
n\mathbb E[Z_2]+\frac12\mathbb E[Z_1^2]
=
\frac{n(2n^2+1)}4.
$$
Taking $n=2m$,
$$
\mathbb E[Z_2]=2m^2,
$$
$$
\mathbb E[Z_4]=4m^3+\frac m2.
$$

The two endpoint contributions to $\mathbb E[L_1]$ vanish:
$$
5(2m^3)-10m(m^2)=0.
$$
The center contribution is
$$
4\left(4m^3+\frac m2\right)-8m(2m^2)=2m.
$$
Therefore the dominant allocation contributes
$$
C_mt^{4m^2}\left(1+2mt+O(t^2)\right).
$$

Step 4: Evaluate the four first competing allocations

For general cluster sizes, the leading local constant is
$$
K_{k,l,r}=2^{-2l(k+r)}L_kL_rG_l.
$$
The two allocations
$$
(m+1,2m-1,m),\qquad (m,2m-1,m+1)
$$
have the same ratio to the dominant constant. Using
$$
\frac{L_{m+1}}{L_m}=(m!)^2
$$
and
$$
\frac{G_{2m-1}}{G_{2m}}
=
\frac{2^{2m-1}}{\sqrt{\pi}(2m-1)!},
$$
together with the cross-factor ratio $4$, this ratio is
$$
R_+
=
\frac{2^{2m+1}(m!)^2}{\sqrt{\pi}(2m-1)!}.
$$

The other two allocations are
$$
(m-1,2m+1,m),\qquad (m,2m+1,m-1).
$$
Since
$$
\frac{L_{m-1}}{L_m}=\frac1{((m-1)!)^2}
$$
and
$$
\frac{G_{2m+1}}{G_{2m}}
=
\sqrt{\pi}\,2^{-2m}(2m)!,
$$
their common ratio is
$$
R_-
=
2^{2-2m}\sqrt{\pi}\,
\frac{(2m)!}{((m-1)!)^2}.
$$

Each of these four allocations starts at relative order $t^{3/2}$. Corrections inside them begin at higher relative order, while Step 1 shows that every other allocation starts at relative order at least $t^2$. Consequently,
$$
\frac{D_m(t)}{C_mt^{4m^2}}
=
1+2mt+2(R_++R_-)t^{3/2}+O(t^2).
$$

Step 5: Simplify the surviving coefficient

Using
$$
b_m=\binom{2m}{m},
$$
we have
$$
\frac{(m!)^2}{(2m-1)!}
=
\frac{2m}{b_m}
$$
and
$$
\frac{(2m)!}{((m-1)!)^2}
=
m^2b_m.
$$
Therefore
$$
2R_+
=
\frac{2^{2m+3}m}{\sqrt{\pi}\,b_m},
$$
and
$$
2R_-
=
2^{3-2m}\sqrt{\pi}\,m^2b_m.
$$
Subtracting the constant and $t$ terms from Step 4 and dividing by $t^{3/2}$ gives the required limit.

Final Answer: $\boxed{\frac{2^{2m+3}m}{\sqrt{\pi}b_m}+2^{3-2m}\sqrt{\pi}m^2b_m}$

---

## Answer

$\frac{2^{2m+3}m}{\sqrt{\pi}b_m}+2^{3-2m}\sqrt{\pi}m^2b_m$

---

## Classification

**Domain:** Calculus

**Sub-domain:** Limits and continuity

**Problem Type:** Symbolic derivation

**Answer Type:** Exact symbolic expression

---

## Solution Concepts

- competing Laplace clusters
- Hankel determinant integrals
- Vandermonde scaling
- Gaussian and Laguerre moment ensembles
- fractional-order asymptotics
