## Steps

Step 1: Reduce the inner determinant to a normalized root equation

Put
$$
s=n^{-1/3},\qquad \alpha=\frac{x}{2}+xsy,
$$
and, for $k\in\{-2,-1,0,1,2\}$, define
$$
g_k=e^{-kx}\left(1+kxs^3\right)^{s^{-3}+\alpha k}.
$$
Factoring $e^{ix}$ from row $i$ and $e^{jx}$ from column $j$ leaves total factor $1$, so
$$
H_n(\alpha)=\det[g_{i+j}]_{i,j=-1}^{1}.
$$
Since $g_0=1$,
$$
H_n=(g_2-g_1^2)(g_{-2}-g_{-1}^2)-(1-g_1g_{-1})^2.
$$

Write $\ell_k=\log g_k$. Taylor's formula applied once to
$$
\ell_k=\left(s^{-3}+\alpha k\right)\log(1+kxs^3)-kx
$$
gives, uniformly for bounded $y$,
$$
\ell_k=k^2x^2ys^4+\frac{k^3x^3}{12}s^6-\frac{k^3x^3y}{2}s^7-\frac{k^4x^4}{12}s^9
+\frac{k^4x^4y}{3}s^{10}+\frac{3k^5x^5}{40}s^{12}-\frac{k^5x^5y}{4}s^{13}+O(s^{15}).
$$
Set
$$
u=\ell_1+\ell_{-1},\qquad
a=\frac{\ell_2+\ell_{-2}-2\ell_1-2\ell_{-1}}{2},\qquad
b=\frac{\ell_2-\ell_{-2}-2\ell_1+2\ell_{-1}}{2}.
$$
Then $u,a=O(s^4)$, $b=O(s^6)$, and $a-u=O(s^9)$. The determinant identity becomes
$$
H_n=e^{2u}\left[(e^{a+b}-1)(e^{a-b}-1)-(e^{-u}-1)^2\right].
$$
Because $a-u=O(s^9)$, all terms of total degree at least four in the bracket start at order $s^{20}$. Up to order $s^{17}$ the bracket is therefore
$$
a^2-b^2-u^2+a(a^2-b^2)+u^3+O(s^{20}).
$$
Substituting the single expansion for $\ell_k$ gives
$$
a^2-b^2-u^2=x^6s^{12}\left(-\frac14-ys+7y^2s^2\right)+O(s^{18}),
$$
and
$$
a(a^2-b^2)+u^3=x^6s^{12}\left(16y^3-\frac{x^2y}{2}s^4-10x^2y^2s^5\right)+O(s^{18}).
$$
Also $e^{2u}=1+4x^2ys^4+O(s^8)$. Thus
$$
F(s,y):=\frac{H_n\left(\frac{x}{2}+xsy\right)}{x^6s^{12}}
=16y^3-\frac14-ys+7y^2s^2+x^2\left(64y^4-\frac32y\right)s^4-14x^2y^2s^5+O(s^6).
$$
At $s=0$, $F(0,y)=0$ has the simple root $y=1/4$, with $F_y(0,1/4)=3$. The implicit function theorem gives an analytic branch $y(s)$ near $1/4$. For small positive $s$, $\alpha=x(1/2+sy(s))$ lies strictly between $0$ and $x$, so the zero specified in the problem is this branch.

Step 2: Extract only the jet of the moving zero needed by the outer determinant

Write
$$
y(s)=\frac14+\sum_{m=1}^{5}c_ms^m+O(s^6).
$$
Since $F_y(0,1/4)=3$, the coefficients are determined successively. A compact recurrence that exposes every coefficient extraction is
$$
c_m=-\frac13[s^m]F\left(s,\frac14+\sum_{j=1}^{m-1}c_js^j\right),\qquad 1\leq m\leq5,
$$
where the $O(s^6)$ term in $F$ cannot affect these five coefficients. Applying this recurrence to the explicit polynomial jet from Step 1 yields
$$
(c_1,c_2,c_3,c_4,c_5)=
\left(
\frac1{12},-\frac7{48},-\frac{67}{1296},
\frac{1591}{15552}+\frac{x^2}{24},
\frac{5x^2}{24}
\right).
$$
Therefore
$$
\alpha_n=\sum_{r=0}^{6}d_rs^r+O(s^7),
$$
with
$$
d_0=\frac{x}{2},\quad d_1=\frac{x}{4},\quad d_2=\frac{x}{12},\quad d_3=-\frac{7x}{48},
$$
$$
d_4=-\frac{67x}{1296},\quad
d_5=\frac{x(648x^2+1591)}{15552},\quad
d_6=\frac{5x^3}{24}.
$$

Step 3: Compute the cubic logarithmic jet of the outer determinant

Let $q=1/2$ and define
$$
V(r_0,r_1,r_2,r_3)=\prod_{0\leq a<b\leq3}\left(q^{r_b}-q^{r_a}\right).
$$
Replacing $n$ by $8^{i+j}n$ sends $s$ to $q^{i+j}s$. Cauchy-Binet applied to the rank-one expansion from Step 2 gives the exact formal identity
$$
D_n=\sum_{0\leq r_0<r_1<r_2<r_3}
d_{r_0}d_{r_1}d_{r_2}d_{r_3}
V(r_0,r_1,r_2,r_3)^2s^{r_0+r_1+r_2+r_3}.
$$
The least exponent is $0+1+2+3=6$. To know $\log D_n$ through relative order $s^3$, only terms with exponent sum at most $9$ can contribute, so only $d_0,\ldots,d_6$ are needed.

Put $V_0=V(0,1,2,3)$ and
$$
K=d_0d_1d_2d_3V_0^2=-\frac{3087x^4}{2^{37}}.
$$
For the six exponent sets of excess $1$, $2$, or $3$, the Vandermonde product formula gives
$$
\left(
\frac{V(0,1,2,4)}{V_0},
\frac{V(0,1,2,5)}{V_0},
\frac{V(0,1,3,4)}{V_0},
\frac{V(0,1,2,6)}{V_0},
\frac{V(0,1,3,5)}{V_0},
\frac{V(0,2,3,4)}{V_0}
\right)
=
\left(
\frac{15}{8},\frac{155}{64},\frac{35}{32},
\frac{1395}{512},\frac{465}{256},\frac{15}{64}
\right).
$$
Thus, if
$$
\log\frac{D_n}{Ks^6}=\gamma_1s+\gamma_2s^2+\gamma_3s^3+O(s^4),
$$
the identity above gives directly
$$
\begin{aligned}
\gamma_3={}&
\frac{d_6}{d_3}\left(\frac{1395}{512}\right)^2
+\frac{d_5}{d_2}\left(\frac{465}{256}\right)^2
+\frac{d_4}{d_1}\left(\frac{15}{64}\right)^2\\
&-\frac{d_4}{d_3}\left(\frac{15}{8}\right)^2
\left[
\frac{d_5}{d_3}\left(\frac{155}{64}\right)^2
+\frac{d_4}{d_2}\left(\frac{35}{32}\right)^2
\right]
+\frac13\left[
\frac{d_4}{d_3}\left(\frac{15}{8}\right)^2
\right]^3.
\end{aligned}
$$
Substitution of the six coefficients from Step 2 simplifies this to
$$
\gamma_3=-\frac{25(12002770836x^2-18768001859)}{43698880512}.
$$

Step 4: Apply the scale filter and take the limit

From Step 3,
$$
D_n=Ks^6\exp\left(\gamma_1s+\gamma_2s^2+\gamma_3s^3+O(s^4)\right).
$$
The factors $K$ cancel in the requested ratio, while the powers of $s^6$ contribute $64^{-3}$ and cancel the prefactor $64^3$. Taking logarithms leaves the linear scale operator
$$
\mathcal{T}L(s)=7L\left(\frac{s}{2}\right)+8L\left(\frac{s}{8}\right)-L(s)-14L\left(\frac{s}{4}\right),
$$
where $L(s)=\gamma_1s+\gamma_2s^2+\gamma_3s^3+O(s^4)$. On $s^k$ its multiplier is
$$
-1+\frac7{2^k}-\frac{14}{4^k}+\frac8{8^k}.
$$
This multiplier is $0$ for $k=1,2$ and $-21/64$ for $k=3$. Since $s^3=n^{-1}$,
$$
n\log\left(
64^3\frac{D_{8n}^{\,7}D_{512n}^{\,8}}{D_nD_{64n}^{\,14}}
\right)
\longrightarrow -\frac{21}{64}\gamma_3
=
\frac{25(12002770836x^2-18768001859)}{133177540608}.
$$
Also $K<0$ because $x\neq0$, so $D_n<0$ for all sufficiently large $n$ and the ratio inside the logarithm is positive. Exponentiating gives the limit.

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

- implicit function theorem
- singular asymptotic scaling
- cauchy-binet formula
- vandermonde determinant
- multiscale cancellation
