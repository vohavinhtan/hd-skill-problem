## Steps

Step 1: Reduce the inner determinant to three logarithmic differences

Put
$$
s=n^{-1/3},\qquad \alpha=\frac{x}{2}+xsy,
$$
and, for $k\in\{-2,-1,0,1,2\}$, set
$$
g_k=e^{-kx}\left(1+kxs^3\right)^{s^{-3}+\alpha k}.
$$
Removing $e^{ix}$ from row $i$ and $e^{jx}$ from column $j$ leaves total row and column factor $1$, so
$$
H_n(\alpha)=\det[g_{i+j}]_{i,j=-1}^{1}.
$$
Since $g_0=1$, expansion of this $3\times3$ determinant can be grouped as
$$
H_n=(g_2-g_1^2)(g_{-2}-g_{-1}^2)-(1-g_1g_{-1})^2.
$$

Write $\ell_k=\log g_k$ and define
$$
u=\ell_1+\ell_{-1},\qquad
a=\frac{\ell_2+\ell_{-2}-2\ell_1-2\ell_{-1}}{2},\qquad
b=\frac{\ell_2-\ell_{-2}-2\ell_1+2\ell_{-1}}{2}.
$$
Then $\ell_2-2\ell_1=a+b$ and $\ell_{-2}-2\ell_{-1}=a-b$, giving
$$
H_n=e^{2u}\left[(e^{a+b}-1)(e^{a-b}-1)-(e^{-u}-1)^2\right].
$$
The choice $\alpha=x/2+xsy$ cancels the $s^3$ term in every $\ell_k$. Applying
$$
\log(1+z)=z-\frac{z^2}{2}+\frac{z^3}{3}-\frac{z^4}{4}+\frac{z^5}{5}+O(z^6)
$$
to the definitions of $u,a,b$ gives
$$
\begin{aligned}
u&=2x^2ys^4-\frac{x^4}{6}s^9+\frac{2x^4y}{3}s^{10}+O(s^{15}),\\
a&=2x^2ys^4-\frac{7x^4}{6}s^9+\frac{14x^4y}{3}s^{10}+O(s^{15}),\\
b&=\frac{x^3}{2}s^6-3x^3ys^7+\frac{9x^5}{4}s^{12}-\frac{15x^5y}{2}s^{13}+O(s^{15}).
\end{aligned}
$$
Here $a,u=O(s^4)$ and $b=O(s^6)$. Expanding the bracket only by total degree in these three small quantities gives
$$
\begin{aligned}
&(e^{a+b}-1)(e^{a-b}-1)-(e^{-u}-1)^2\\
&=a^2-b^2-u^2+a(a^2-b^2)+u^3\\
&\quad+\frac13(a^4-b^4)+\frac14(a^2-b^2)^2-\frac7{12}u^4+O(s^{20}).
\end{aligned}
$$
The quadratic and cubic pieces are
$$
\frac{a^2-b^2-u^2}{x^6s^{12}}=-\frac14-ys+7y^2s^2+O(s^6),
$$
and
$$
\frac{a(a^2-b^2)+u^3}{x^6s^{12}}=16y^3-\frac{x^2y}{2}s^4-10x^2y^2s^5+O(s^6).
$$
The quartic polynomial in $a,b,u$ and the omitted terms are $O(s^{20})$, so after division by $x^6s^{12}$ they are $O(s^8)$. Therefore
$$
\frac{(e^{a+b}-1)(e^{a-b}-1)-(e^{-u}-1)^2}{x^6s^{12}}=16y^3-\frac14-ys+7y^2s^2-\frac{x^2y}{2}s^4-10x^2y^2s^5+O(s^6).
$$
Also $e^{2u}=1+4x^2ys^4+O(s^8)$. Therefore, with
$$
F(s,y)=\frac{H_n\left(\frac{x}{2}+xsy\right)}{x^6s^{12}},
$$
we obtain
$$
F(s,y)=16y^3-\frac14-ys+7y^2s^2+x^2\left(64y^4-\frac32y\right)s^4-14x^2y^2s^5+O(s^6).
$$
At $s=0$, the equation $F(0,y)=0$ has the simple real root $y=1/4$, since $F_y(0,1/4)=3$. The implicit function theorem gives one analytic branch near $1/4$. For small positive $s$, this branch satisfies $0<1/2+sy<1$, so $\alpha=x(1/2+sy)$ lies between $0$ and $x$. By the uniqueness assumed in the definition of $\alpha_n$, this branch is $\alpha_n$.

Step 2: Recover the moving zero by one series reversion and one perturbation

Separate
$$
F_0(s,y)=16y^3-\frac14-ys+7y^2s^2.
$$
Let $y_0(s)$ be the branch of $F_0(s,y)=0$ with $y_0(0)=1/4$, and put $t=4y_0$. The equation becomes
$$
t^3-1-ts+\frac74t^2s^2=0.
$$
Set $r=ts$. Then
$$
t^3=1+r-\frac74r^2,\qquad
r=s\left(1+r-\frac74r^2\right)^{1/3}.
$$
This form fixes the reversion kernel. Since its value at $r=0$ is $1$, Lagrange inversion gives
$$
[s^m]r(s)=\frac1m[z^{m-1}]\left(1+z-\frac74z^2\right)^{m/3}.
$$
Taking $m=1,\ldots,5$ in this single formula gives
$$
r=s+\frac13s^2-\frac7{12}s^3-\frac{67}{324}s^4+\frac{1591}{3888}s^5+O(s^6).
$$
For $m=6$, the exponent $m/3$ is $2$, so the kernel is a polynomial of degree $4$ and $[z^5](1+z-7z^2/4)^2=0$. The $s^6$ coefficient therefore vanishes, and
$$
r=s+\frac13s^2-\frac7{12}s^3-\frac{67}{324}s^4+\frac{1591}{3888}s^5+O(s^7).
$$
Since $t=r/s$ and $y_0=t/4$,
$$
y_0(s)=\frac14+\frac1{12}s-\frac7{48}s^2-\frac{67}{1296}s^3+\frac{1591}{15552}s^4+O(s^6).
$$

The $x$-dependent terms first occur at order $s^4$. Write
$$
y=y_0+x^2\eta,\qquad \eta=O(s^4).
$$
From Step 1,
$$
F=F_0+x^2P_4(y)s^4+x^2P_5(y)s^5+O(s^6),
$$
where
$$
P_4(y)=64y^4-\frac32y,\qquad P_5(y)=-14y^2.
$$
Using only the terms needed at $y_0$ gives
$$
F_{0,y}(s,y_0)=3+s+O(s^2),\qquad
P_4(y_0)=-\frac18+\frac5{24}s+O(s^2),\qquad
P_5(y_0)=-\frac78+O(s).
$$
Linearization at $y_0$ therefore gives
$$
(3+s)\eta-\frac18s^4-\frac23s^5=O(s^6),
$$
so
$$
\eta=\frac1{24}s^4+\frac5{24}s^5+O(s^6).
$$
Therefore
$$
y=\frac14+\frac1{12}s-\frac7{48}s^2-\frac{67}{1296}s^3
+\left(\frac{1591}{15552}+\frac{x^2}{24}\right)s^4+\frac{5x^2}{24}s^5+O(s^6).
$$
Since $\alpha_n=x/2+xsy$,
$$
\alpha_n=\sum_{r=0}^{6}d_rs^r+O(s^7),
$$
with
$$
\begin{aligned}
d_0&=\frac{x}{2},&d_1&=\frac{x}{4},&d_2&=\frac{x}{12},&d_3&=-\frac{7x}{48},\\
d_4&=-\frac{67x}{1296},&d_5&=\frac{x(648x^2+1591)}{15552},&d_6&=\frac{5x^3}{24}.
\end{aligned}
$$

Step 3: Compress the outer determinant with the alternant identity

Let $q=1/2$ and
$$
v_r=\begin{pmatrix}1\\q^r\\q^{2r}\\q^{3r}\end{pmatrix}.
$$
Replacing $n$ by $8^mn$ sends $s$ to $q^ms$, so the analytic expansion from Step 2 gives
$$
[\alpha_{8^{i+j}n}]_{i,j=0}^{3}=\sum_{r\geq0}d_rs^rv_rv_r^T.
$$
Cauchy-Binet can be organized by the alternant identity
$$
\frac{\det[q^{ir_j}]_{i,j=0}^{3}}{\det[q^{ij}]_{i,j=0}^{3}}=S_\lambda(1,q,q^2,q^3),
\qquad r_j=j+\lambda_{4-j},
$$
where $S_\lambda$ is the Schur polynomial of the partition $\lambda$, padded by zeros to four parts. If
$$
K=d_0d_1d_2d_3\left(\det[q^{ij}]_{i,j=0}^{3}\right)^2,
$$
then Cauchy-Binet becomes
$$
\frac{D_n}{Ks^6}=\sum_{\lambda}
\left(\prod_{j=0}^{3}\frac{d_{j+\lambda_{4-j}}}{d_j}\right)
S_\lambda(1,q,q^2,q^3)^2s^{|\lambda|}.
$$
The sum runs over partitions with at most four parts. The excess exponent sum is $|\lambda|$, so terms through relative order $s^3$ require only partitions of size at most $3$.

For $X=(1,1/2,1/4,1/8)$, its elementary symmetric values are
$$
e_1=\frac{15}{8},\qquad e_2=\frac{35}{32},\qquad e_3=\frac{15}{64}.
$$
For partitions of size at most $3$,
$$
S_{(1)}=h_1,\qquad S_{(2)}=h_2,\qquad S_{(1,1)}=e_2,\qquad
S_{(3)}=h_3,\qquad S_{(1,1,1)}=e_3.
$$
The complete homogeneous values needed here follow from
$$
h_1=e_1,\qquad h_2=e_1^2-e_2,\qquad h_3=e_1h_2-e_2h_1+e_3,
$$
so
$$
h_1=\frac{15}{8},\qquad h_2=\frac{155}{64},\qquad h_3=\frac{1395}{512}.
$$
The remaining size-three Schur value is
$$
S_{(2,1)}=e_1e_2-e_3=\frac{465}{256}.
$$
Also
$$
d_0d_1d_2d_3=-\frac{7x^4}{4608},\qquad
\det[q^{ij}]_{i,j=0}^{3}=\prod_{0\leq i<j\leq3}(q^j-q^i)=\frac{63}{16384}.
$$
Therefore
$$
D_n=Ks^6\left(1+As+Bs^2+Cs^3+O(s^4)\right),
\qquad K=-\frac{3087x^4}{2^{37}},
$$
and the partition sizes $1,2,3$ give
$$
A=\frac{d_4}{d_3}h_1^2=\frac{1675}{1344},
$$
$$
B=\frac{d_5}{d_3}h_2^2+\frac{d_4}{d_2}e_2^2=-\frac{25(622728x^2+1804723)}{9289728},
$$
$$
C=\frac{d_6}{d_3}h_3^2+\frac{d_5}{d_2}S_{(2,1)}^2+\frac{d_4}{d_1}e_3^2=-\frac{225(292144x^2-131761)}{7340032}.
$$

Step 4: Use the scale moments to evaluate the limit

Set
$$
E(s)=1+As+Bs^2+Cs^3+O(s^4).
$$
The powers of $K$ cancel in the requested ratio. The factors $s^6$ contribute $64^{-3}$, which is canceled by the prefactor $64^3$. Therefore
$$
64^3\frac{D_{8n}^{\,7}D_{512n}^{\,8}}{D_nD_{64n}^{\,14}}=\frac{E(s/2)^7E(s/8)^8}{E(s)E(s/4)^{14}}.
$$
Write
$$
\log E(s)=As+\left(B-\frac{A^2}{2}\right)s^2+Gs^3+O(s^4),
\qquad
G=C-AB+\frac{A^3}{3}.
$$
For the coefficient of $s^k$ in the logarithm of the ratio, the scale multiplier is
$$
M_k=-1+\frac7{2^k}-\frac{14}{4^k}+\frac8{8^k}.
$$
A direct evaluation gives
$$
M_1=M_2=0,\qquad M_3=-\frac{21}{64}.
$$
Substituting the values of $A,B,C$ from Step 3 into $G$ gives
$$
G=-\frac{25(12002770836x^2-18768001859)}{43698880512}.
$$
Since $s^3=n^{-1}$,
$$
n\log\left(64^3\frac{D_{8n}^{\,7}D_{512n}^{\,8}}{D_nD_{64n}^{\,14}}\right)
\longrightarrow
\frac{25(12002770836x^2-18768001859)}{133177540608}.
$$
For large $n$, $D_n\sim Ks^6<0$, so the ratio inside the logarithm is positive. Exponentiating this limit gives the requested value.

Final Answer: $\boxed{\exp\left(\frac{25(12002770836x^2-18768001859)}{133177540608}\right)}$

---

## Answer

$\exp\left(\frac{25(12002770836x^2-18768001859)}{133177540608}\right)$

---

## Classification

**Problem Type:** Symbolic derivation

**Answer Type:** Exact symbolic expression

---

## Solution Concepts

- singular asymptotic scaling
- lagrange inversion
- cauchy-binet formula
- schur alternants
- multiscale cancellation
