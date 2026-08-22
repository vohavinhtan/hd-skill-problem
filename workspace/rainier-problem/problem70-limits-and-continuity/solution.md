## Steps

Step 1: Derive the singular equation for the moving zero

Put
$$
s=n^{-1/3},
\qquad
\alpha=\frac{x}{2}+xsy.
$$
For $k\in\{-2,-1,0,1,2\}$, define
$$
g_k=e^{-kx}\left(1+kxs^3\right)^{s^{-3}+\alpha k}.
$$
Removing $e^{ix}$ from row $i$ and $e^{jx}$ from column $j$ does not change the determinant because both row and column factors have total product $1$. Hence
$$
H_n(\alpha)=\det[g_{i+j}]_{i,j=-1}^{1}.
$$
Also
$$
H_n(\alpha)=g_{-2}g_2-g_{-2}g_1^2-g_{-1}^2g_2+2g_{-1}g_1-1.
$$

Taylor expansion of the logarithm gives
$$
\log g_k=k^2x^2ys^4+\frac{k^3x^3}{12}s^6-
\frac{k^3x^3y}{2}s^7-\frac{k^4x^4}{12}s^9+
\frac{k^4x^4y}{3}s^{10}+\frac{3k^5x^5}{40}s^{12}-
\frac{k^5x^5y}{4}s^{13}+O(s^{15}).
$$
To keep the coefficient extraction explicit, write
$$
\log g_k=\sum_{m\geq1}L_{m,k}s^m,
\qquad
g_k=\sum_{m\geq0}c_{m,k}s^m,
\qquad
c_{0,k}=1.
$$
Differentiating $g_k=\exp(\log g_k)$ gives
$$
mc_{m,k}=\sum_{j=1}^{m}jL_{j,k}c_{m-j,k}.
$$
Using the displayed nonzero $L_{m,k}$ in this recurrence and then in the scalar determinant formula gives
$$
\frac{H_n\left(\frac{x}{2}+xsy\right)}{x^6s^{12}}=
16y^3-\frac14-ys+7y^2s^2+
x^2\left(64y^4-\frac32y\right)s^4-
14x^2y^2s^5+O(s^6).
$$
In particular, the $s^3$ coefficient is zero.

The limiting equation is
$$
16y^3-\frac14=0,
$$
whose only real root is $1/4$. Its derivative there is $3$. The normalized expression is therefore strictly increasing on a fixed neighborhood of $1/4$ for all sufficiently small $s$. Outside that neighborhood the limiting cubic is bounded away from zero, so the zero in the stated interval is eventually unique.

Step 2: Determine the Puiseux expansion of the zero

Write
$$
y=a_0+a_1s+a_2s^2+a_3s^3+a_4s^4+a_5s^5+O(s^6).
$$
Substitution into the normalized equation from Step 1 gives, successively,
$$
16a_0^3-\frac14=0,
$$
$$
48a_0^2a_1-a_0=0,
$$
$$
48a_0^2a_2+48a_0a_1^2-a_1+7a_0^2=0,
$$
and
$$
48a_0^2a_3+96a_0a_1a_2+16a_1^3-a_2+14a_0a_1=0.
$$
The real branch is therefore
$$
a_0=\frac14,
\qquad
a_1=\frac1{12},
\qquad
a_2=-\frac7{48},
\qquad
a_3=-\frac{67}{1296}.
$$
After these four values are inserted, the coefficients of $s^4$ and $s^5$ reduce to
$$
15552a_4-648x^2-1591=0,
$$
and
$$
24a_5-5x^2=0.
$$
Thus
$$
a_4=\frac{648x^2+1591}{15552},
\qquad
a_5=\frac{5x^2}{24}.
$$

Since $\alpha_n=x/2+xsy$,
$$
\alpha_n=\sum_{r=0}^{6}d_rs^r+O(s^7),
$$
where
$$
d_0=\frac{x}{2},
\quad
d_1=\frac{x}{4},
\quad
d_2=\frac{x}{12},
\quad
d_3=-\frac{7x}{48},
$$
$$
d_4=-\frac{67x}{1296},
\quad
d_5=\frac{x(648x^2+1591)}{15552},
\quad
d_6=\frac{5x^3}{24}.
$$

Step 3: Expand the outer determinant through the required order

For fixed $m\geq0$,
$$
\alpha_{8^mn}=\sum_{r=0}^{6}d_rs^r2^{-rm}+O(s^7).
$$
Set
$$
z_r=2^{-r},
\qquad
v_r=
\begin{pmatrix}
1\\
z_r\\
z_r^2\\
z_r^3
\end{pmatrix}.
$$
Then
$$
[\alpha_{8^{i+j}n}]_{i,j=0}^{3}=\sum_{r\geq0}d_rs^rv_rv_r^T.
$$
For a four-element set $S$, put
$$
V_S=\prod_{\substack{r<q\\r,q\in S}}(z_q-z_r).
$$
Multilinearity, equivalently Cauchy-Binet, gives
$$
D_n=\sum_{|S|=4}\left(\prod_{r\in S}d_r\right)s^{\sum_{r\in S}r}V_S^2.
$$
Only the sets with index sums $6,7,8,9$ contribute through $s^9$. Hence
$$
D_n=Ks^6\left(1+As+Bs^2+Cs^3+O(s^4)\right),
$$
with
$$
K=d_0d_1d_2d_3V_{\{0,1,2,3\}}^2=-\frac{3087x^4}{2^{37}}.
$$

The needed Vandermonde ratios are
$$
\frac{V_{\{0,1,2,4\}}}{V_{\{0,1,2,3\}}}=\frac{15}{8},
$$
$$
\frac{V_{\{0,1,2,5\}}}{V_{\{0,1,2,3\}}}=\frac{155}{64},
\qquad
\frac{V_{\{0,1,3,4\}}}{V_{\{0,1,2,3\}}}=\frac{35}{32},
$$
$$
\frac{V_{\{0,1,2,6\}}}{V_{\{0,1,2,3\}}}=\frac{1395}{512},
\qquad
\frac{V_{\{0,1,3,5\}}}{V_{\{0,1,2,3\}}}=\frac{465}{256},
$$
and
$$
\frac{V_{\{0,2,3,4\}}}{V_{\{0,1,2,3\}}}=\frac{15}{64}.
$$
The sets of sums $7$, $8$, and $9$ are respectively
$$
\{0,1,2,4\},
$$
$$
\{0,1,2,5\},\qquad \{0,1,3,4\},
$$
and
$$
\{0,1,2,6\},\qquad \{0,1,3,5\},\qquad \{0,2,3,4\}.
$$
Therefore
$$
A=\frac{d_4}{d_3}\left(\frac{15}{8}\right)^2=\frac{1675}{1344},
$$
$$
B=\frac{d_5}{d_3}\left(\frac{155}{64}\right)^2+\frac{d_4}{d_2}\left(\frac{35}{32}\right)^2=-\frac{25(622728x^2+1804723)}{9289728},
$$
and
$$
C=\frac{d_6}{d_3}\left(\frac{1395}{512}\right)^2+\frac{d_5}{d_2}\left(\frac{465}{256}\right)^2+\frac{d_4}{d_1}\left(\frac{15}{64}\right)^2=-\frac{225(292144x^2-131761)}{7340032}.
$$

Step 4: Evaluate the multiscale cancellation

Set
$$
E(s)=1+As+Bs^2+Cs^3+O(s^4).
$$
Since $D_n=Ks^6E(s)$, replacing $n$ by $8n$, $64n$, and $512n$ replaces $s$ by $s/2$, $s/4$, and $s/8$. The expression inside the final power becomes
$$
64^3\frac{D_{8n}^{\,7}D_{512n}^{\,8}}{D_nD_{64n}^{\,14}}=\frac{E(s/2)^7E(s/8)^8}{E(s)E(s/4)^{14}}.
$$

Write
$$
\log E(s)=As+\left(B-\frac{A^2}{2}\right)s^2+Gs^3+O(s^4),
$$
where
$$
G=C-AB+\frac{A^3}{3}.
$$
The scale weights satisfy
$$
\frac72+\frac88-1-\frac{14}{4}=0,
$$
$$
\frac74+\frac8{64}-1-\frac{14}{16}=0,
$$
and
$$
\frac78+\frac8{512}-1-\frac{14}{64}=-\frac{21}{64}.
$$
Thus
$$
\log\left(64^3\frac{D_{8n}^{\,7}D_{512n}^{\,8}}{D_nD_{64n}^{\,14}}\right)=-\frac{21G}{64}s^3+O(s^4).
$$
Substitution of $A,B,C$ gives
$$
G=-\frac{25(12002770836x^2-18768001859)}{43698880512}.
$$
Since $s^3=n^{-1}$,
$$
n\log\left(64^3\frac{D_{8n}^{\,7}D_{512n}^{\,8}}{D_nD_{64n}^{\,14}}\right)\longrightarrow\frac{25(12002770836x^2-18768001859)}{133177540608}.
$$
Exponentiating gives the limit.

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
- moving zeros
- cauchy-binet formula
- vandermonde determinants
- multiscale cancellation
