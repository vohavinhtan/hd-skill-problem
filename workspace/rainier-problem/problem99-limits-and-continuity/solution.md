## Steps

Step 1: Identify the dominant and neighboring cluster allocations

Put
$$
q=\sqrt t,\qquad \phi(x)=x(1-x)(3x-1)^2.
$$
Andréief's identity gives
$$
D_m(t) =
\frac1{(4m+2)!}
\int_{[0,1]^{4m+2}}
\prod_{i<j}(x_i-x_j)^2
\prod_i\left(1+q(3x_i-1)\right)e^{-\phi(x_i)/t}\,dx_i.
$$
Choose disjoint fixed neighborhoods of $0,1/3,1$. On their compact complement, $\phi$ has a positive minimum $\eta$. Since the Vandermonde and perturbing factors are bounded on $[0,1]^{4m+2}$ for $0<q<1$, every part of the integral with at least one variable in that complement is $O(e^{-\eta/t})$, hence smaller than every power of $q$.

Inside the three wells use
$$
x=q^2u,\qquad x=\frac13+\frac q{\sqrt2}z,\qquad x=1-\frac{q^2}{4}v.
$$
If $k,l,r$ variables occupy these neighborhoods, then
$$
k+l+r=4m+2
$$
and the Jacobians together with the internal squared Vandermonde factors contribute
$$
t^{E(k,l,r)},\qquad E(k,l,r)=k^2+\frac{l^2}{2}+r^2.
$$
Write
$$
k=m+a,\qquad r=m+c,\qquad l=2m+2-a-c.
$$
Relative to
$$
E_0=4m^2+4m+\frac32,
$$
we obtain
$$
E(k,l,r)-E_0 =
\frac32a^2+ac+\frac32c^2-2a-2c+\frac12.
$$
With $u=2a-1$ and $v=2c-1$, both odd integers,
$$
E(k,l,r)-E_0 =
\frac{3u^2+2uv+3v^2-4}{8}.
$$
If this gap is at most $3/2$, then $3u^2+2uv+3v^2\leq16$. But
$$
3u^2+2uv+3v^2=2u^2+2v^2+(u+v)^2,
$$
so $|u|\geq3$ or $|v|\geq3$ would make the left side at least $20$. Hence $u,v\in\{-1,1\}$. The two opposite-sign choices give gap $0$, and the two equal-sign choices give gap $1/2$. Thus the dominant allocations are
$$
(m,2m+1,m+1),\qquad (m+1,2m+1,m),
$$
and the only neighboring allocations that can contribute through relative order $q^3$ are
$$
(m,2m+2,m),\qquad (m+1,2m,m+1).
$$

Step 2: Evaluate the four leading local constants

Define
$$
L_n=\prod_{j=0}^{n-1}(j!)^2
$$
and
$$
G_n=\pi^{n/2}2^{-n(n-1)/2}\prod_{j=0}^{n-1}j!.
$$
These are the Laguerre and Gaussian Vandermonde integrals for the local weights $e^{-u}$ and $e^{-z^2}$.

For a cluster $(k,l,r)$, the right-endpoint scaling contributes $4^{-r^2}$ and the center scaling contributes $2^{-l^2/2}$. The limiting squared distances from the center to the left and right clusters are $1/9$ and $4/9$. Therefore
$$
K_{k,l,r} =
4^{-r^2}2^{-l^2/2}3^{-2kl}
\left(\frac49\right)^{rl}L_kL_rG_l.
$$
For the two dominant allocations,
$$
K_{m,2m+1,m+1}=K_{m+1,2m+1,m}=\frac{C_m}{2}.
$$
Using
$$
\frac{L_{n+1}}{L_n}=(n!)^2,\qquad
\frac{G_{n+1}}{G_n}=\sqrt{\pi}\,2^{-n}n!,
$$
the neighboring cluster ratios are
$$
\frac{K_{m,2m+2,m}}{C_m/2} =
\frac{9(2m+1)\sqrt{\pi}b_m}{2^{2m+5/2}}=r_m,
$$
and
$$
\frac{K_{m+1,2m,m+1}}{C_m/2} =
\frac{9\,2^{2m-3/2}}{\sqrt{\pi}b_m}=s_m.
$$

Step 3: Derive the local logarithmic expansion

For a cluster $(k,l,r)$, write
$$
U_j=\sum_{i=1}^k u_i^j,\qquad
V_j=\sum_{i=1}^r v_i^j,\qquad
Z_j=\sum_{i=1}^l z_i^j.
$$
After the three changes of variables, the phase quotients through $q^3$ are
$$
\frac{\phi(q^2u)}{q^2}=u-7q^2u^2+O(q^4),
$$
$$
\frac{\phi(1/3+qz/\sqrt2)}{q^2} =
z^2+\frac{3}{2\sqrt2}qz^3-\frac94q^2z^4,
$$
$$
\frac{\phi(1-q^2v/4)}{q^2}=v-q^2v^2+O(q^4).
$$
The exponential contributes the negatives of these three expansions. After dividing each cross-cluster squared distance by its limiting constant, the logarithms are
$$
2\log\left(1+\frac3{\sqrt2}qz-3q^2u\right) =
3\sqrt2\,qz+
q^2\left(-6u-\frac92z^2\right)+
9\sqrt2\,q^3\left(uz+\frac12z^3\right)+O(q^4),
$$
$$
2\log\left(1-\frac{3}{2\sqrt2}qz-\frac38q^2v\right) =
\frac{-3\sqrt2}{2}qz+
q^2\left(-\frac34v-\frac98z^2\right)-
\frac{9\sqrt2}{16}q^3(vz+z^3)+O(q^4),
$$
and
$$
2\log\left(1-q^2u-\frac14q^2v\right) =
q^2\left(-2u-\frac12v\right)+O(q^4).
$$
Summing over all left-center, right-center, and left-right pairs gives
$$
qA+q^2B+q^3C+O(q^4),
$$
where
$$
A=\frac{3}{2\sqrt2}\left((4k-2r)Z_1-Z_3\right),
$$
$$
B =
7U_2+V_2-(6l+2r)U_1-
\left(\frac{3l}{4}+\frac k2\right)V_1+
\frac94Z_4-
\left(\frac{9k}{2}+\frac{9r}{8}\right)Z_2,
$$
and
$$
C =
9\sqrt2\left(U_1-\frac{V_1}{16}\right)Z_1+
\frac{9\sqrt2}{16}(8k-r)Z_3.
$$
The $O(q^4)$ remainder may be integrated termwise: after restricting to the fixed wells from Step 1, the scaled domains expand to half-lines or the real line, and the remainders are polynomially bounded against the leading Laguerre and Gaussian exponential tails. In particular, $A$ and $C$ are odd in the Gaussian variables, while $B$ is even.

Step 4: Evaluate the moments and add the perturbation

For a size-$n$ Laguerre ensemble, integration by parts gives
$$
\mathbb E[p_jF] =
\mathbb E\left[
\sum_{a=0}^{j-1}p_ap_{j-1-a}F+
\sum_i u_i^j\frac{\partial F}{\partial u_i}
\right].
$$
With $F=1$ this gives
$$
\mathbb E[U_1]=k^2,\qquad
\mathbb E[U_2]=2k^3,
$$
and the analogous formulas for $V_1,V_2$.

For the size-$l$ Gaussian ensemble, put $Z_0=l$. Integration by parts gives
$$
2\mathbb E[Z_{j+1}F] =
\mathbb E\left[
\sum_{a=0}^{j-1}Z_aZ_{j-1-a}F+
\sum_i z_i^j\frac{\partial F}{\partial z_i}
\right].
$$
Taking $(j,F)=(0,Z_1)$ and $(1,1)$ gives
$$
\mathbb E[Z_1^2]=\frac l2,\qquad
\mathbb E[Z_2]=\frac{l^2}{2}.
$$
Next, $(j,F)=(3,1)$ gives
$$
2\mathbb E[Z_4]=2l\mathbb E[Z_2]+\mathbb E[Z_1^2],
$$
so
$$
\mathbb E[Z_4]=\frac{l(2l^2+1)}4.
$$
Taking $(j,F)=(2,Z_1)$ gives
$$
2\mathbb E[Z_1Z_3]=2l\mathbb E[Z_1^2]+\mathbb E[Z_2],
$$
hence
$$
\mathbb E[Z_1Z_3]=\frac{3l^2}{4}.
$$
Finally, $(j,F)=(2,Z_3)$ gives
$$
2\mathbb E[Z_3^2]=2l\mathbb E[Z_1Z_3]+3\mathbb E[Z_4],
$$
and therefore
$$
\mathbb E[Z_3^2]=\frac{3l(4l^2+1)}8.
$$

By Step 3,
$$
\mathcal Q(k,l,r)=\mathbb E[B]+\frac12\mathbb E[A^2],
$$
which simplifies to
$$
\mathcal Q(k,l,r) =
14k^3+2r^3-\frac32k^2l-2k^2r-
\frac{45}{8}kl^2-\frac92klr-\frac12kr^2+
\frac{63}{32}l^3+\frac98l^2r+\frac38lr^2+\frac{99}{128}l.
$$

The logarithm of the perturbing factor has total contribution
$$
qh+q^2\left(d+\frac3{\sqrt2}Z_1\right)+q^3T+O(q^4),
$$
where
$$
h=-k+2r,\qquad d=-\frac k2-2r,
$$
and
$$
T=3U_1-\frac k3+\frac{8r}{3}-\frac34V_1.
$$
Thus the full local logarithm is
$$
q(A+h)+
q^2\left(B+d+\frac3{\sqrt2}Z_1\right)+
q^3(C+T)+O(q^4).
$$
Since $A,C$ are odd and $B$ is even, Step 3 gives
$$
\mathbb E[C]=\mathbb E[AB]=\mathbb E[A^3]=0.
$$
Expanding the exponential yields
$$
\alpha(k,l,r)=\mathcal Q(k,l,r)+d+\frac{h^2}{2}
$$
and
$$
\beta(k,l,r) =
\mathbb E[T]+h\mathcal Q(k,l,r)+hd+\frac{h^3}{6}+
\frac3{\sqrt2}\mathbb E[AZ_1].
$$
Here
$$
\mathbb E[T]=3k^2-\frac k3+\frac{8r}{3}-\frac{3r^2}{4},
$$
and the Gaussian moments give
$$
\frac3{\sqrt2}\mathbb E[AZ_1] =
\frac{9l}{4}\left(2k-r-\frac{3l}{4}\right).
$$
Therefore
$$
\beta(k,l,r) =
3k^2-\frac k3+\frac{8r}{3}-\frac{3r^2}{4}+
h\mathcal Q(k,l,r)+hd+\frac{h^3}{6}+
\frac{9l}{4}\left(2k-r-\frac{3l}{4}\right).
$$

For $(m,2m+1,m+1)$,
$$
h=m+2,\qquad
\alpha=\frac{64m^2+1966m+799}{128},
$$
$$
\beta=\frac{64m^3+5514m^2+9521m+2994}{384}.
$$
For $(m+1,2m+1,m)$,
$$
h=m-1,\qquad
\alpha=\frac{64m^2+1582m+1231}{128},
$$
$$
\beta=\frac{64m^3+4938m^2+3491m-1461}{384}.
$$
For $(m,2m+2,m)$,
$$
h=m,\qquad
\alpha=\frac{32m^2+1811m+1107}{64}.
$$
For $(m+1,2m,m+1)$,
$$
h=m+1,\qquad
\alpha=\frac{32m^2+1875m+736}{64}.
$$

Step 5: Combine the four cluster expansions and evaluate the limit

After division by
$$
C_mt^{4m^2+4m+3/2},
$$
the two dominant clusters each have leading weight $1/2$, while the neighboring clusters have leading weights $r_m/2$ and $s_m/2$. Hence
$$
\frac{D_m(t)}{C_mt^{4m^2+4m+3/2}}=1+c_1q+c_2q^2+c_3q^3+o(q^3).
$$
Using Step 4,
$$
c_1=m+\frac12+\frac{r_m+s_m}{2},
$$
$$
c_2=
\frac{64m^2+1774m+1015}{128}+
\frac{mr_m+(m+1)s_m}{2},
$$
and
$$
c_3=
\frac{128m^3+10452m^2+13012m+1533}{768}+
\frac{r_m(32m^2+1811m+1107)+s_m(32m^2+1875m+736)}{128}.
$$
Since $q^3=t^{3/2}$, the terms prescribed in the problem remove the $q$ and $q^2$ layers.

Final Answer: $\boxed{\frac{128m^3+10452m^2+13012m+1533}{768}+\frac{r_m(32m^2+1811m+1107)+s_m(32m^2+1875m+736)}{128}}$

---

## Answer

$\frac{128m^3+10452m^2+13012m+1533}{768}+\frac{r_m(32m^2+1811m+1107)+s_m(32m^2+1875m+736)}{128}$

---

## Classification

**Problem Type:** Symbolic derivation

**Answer Type:** Exact symbolic expression

---

## Solution Concepts

- competing Laplace clusters
- Hankel determinant integrals
- Gaussian and Laguerre moment recurrences
- perturbative cluster coupling
- fractional-order asymptotics
