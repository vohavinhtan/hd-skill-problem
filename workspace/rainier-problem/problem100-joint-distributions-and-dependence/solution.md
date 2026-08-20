## Steps

Step 1: Recover the Gaussian innovation structure hidden in the precision matrix

Write $D_n=X_n-X_0$. Expanding the block quadratic form specified in the problem gives
$$
x^{T}\Omega_{n,q}x=
\frac{1}{n}x_0^{T}A_qx_0+
\sum_{k=1}^{n}(x_k-x_{k-1})^{T}B_q(x_k-x_{k-1})+
\frac{1}{nq}\bigl(e^{T}(x_n-x_0)\bigr)^2.
$$
The first two terms define a reference Gaussian law. Under that law, if
$$
\varepsilon_k=X_k-X_{k-1},
$$
then
$$
X_0,\varepsilon_1,\ldots,\varepsilon_n
$$
are independent with
$$
\operatorname{Cov}(X_0)=nA_q^{-1},\qquad
\operatorname{Cov}(\varepsilon_k)=B_q^{-1}.
$$

Let
$$
P=\frac{1}{3}\mathbf{1}\mathbf{1}^{T},\qquad P_{\perp}=I_3-P.
$$
Since $P$ and $P_{\perp}$ are the spectral projections of $\mathbf{1}\mathbf{1}^{T}$,
$$
A_q^{-1}=9qP+P_{\perp},\qquad
B_q^{-1}=P+qP_{\perp}.
$$
The last term in the precision matrix multiplies the reference density by
$$
\exp\left(-\frac{(e^{T}D_n)^2}{2nq}\right).
$$
It will therefore become a rank-one precision update after conditioning.

Step 2: Find the non-degenerate covariance limit of the path average

Use the orthonormal basis
$$
u=\frac{1}{\sqrt{3}}(1,1,1)^{T},\qquad
w=\frac{1}{\sqrt{6}}(2,-1,-1)^{T},\qquad
h=\frac{1}{\sqrt{2}}(0,1,-1)^{T}.
$$
In these modes the reference law is a product of scalar random walks. A scalar mode has
$$
\operatorname{Var}(X_0)=cnr,\qquad
\operatorname{Var}(\varepsilon_k)=r,
$$
with
$$
(c,r)=(9q,1)
$$
on the $u$-mode and
$$
(c,r)=\left(\frac1q,q\right)
$$
on each of the $w,h$ modes.

Put
$$
T_n=\frac{1}{n}\sum_{k=1}^{n-1}X_k.
$$
For one scalar mode,
$$
X_k=X_0+\sum_{j=1}^{k}\varepsilon_j.
$$
Using
$$
\sum_{i,j=1}^{n-1}\min(i,j)=\frac{n(n-1)(2n-1)}{6},
$$
the covariance matrix of $(X_0,X_n,T_n,D_n)$ divided by $n$ tends to
$$
r\begin{pmatrix}
c&c&c&0\\
c&c+1&c+\frac12&1\\
c&c+\frac12&c+\frac13&\frac12\\
0&1&\frac12&1
\end{pmatrix}.
$$

The vector $e$ has mode coordinates
$$
e=\frac{1}{\sqrt3}u+\sqrt{\frac23}\,w.
$$
Thus $E$ couples the $u$ and $w$ modes but leaves the $h$ mode separate. Since
$$
Y_n=T_n-ED_n,
$$
the limiting covariance of $Y_n$, divided by $n$, is
$$
H=
\begin{pmatrix}
\frac{83q+1}{9}&\frac{\sqrt2(q-1)}{18}&0\\
\frac{\sqrt2(q-1)}{18}&\frac{q+11}{9}&0\\
0&0&\frac{q+3}{3}
\end{pmatrix}.
$$
Its determinant is
$$
\det H=\frac{(q+3)(55q^2+610q+7)}{162}.
$$

Step 3: Compute the endpoint conditional determinants under the reference law

Let $\overline K_{00}$, $\overline K_{nn}$, and $\overline K$ denote the limits of
$$
\frac1n\operatorname{Cov}(X_0\mid Y_n),\qquad
\frac1n\operatorname{Cov}(X_n\mid Y_n),\qquad
\frac1n\operatorname{Cov}\bigl((X_0,X_n)\mid Y_n\bigr)
$$
under the reference law.

From the covariance matrix in Step 2,
$$
\lim_{n\to\infty}\frac1n\operatorname{Cov}(X_0,Y_n)
=\operatorname{diag}(9q,1,1),
$$
while
$$
\lim_{n\to\infty}\frac1n\operatorname{Cov}(X_n,Y_n)
=\operatorname{diag}(9q,1,1)+\frac12\operatorname{diag}(1,q,q)-\operatorname{diag}(1,q,q)E.
$$
The Schur-complement determinant formula and the $2+1$ mode split give
$$
\det\overline K_{00}
=\frac{9q^2(q^2+4q+1)}
{(q+3)(55q^2+610q+7)},
$$
and
$$
\det\overline K_{nn}
=\frac{q^2(q+4)(324q^2+2963q+124)}
{32(q+3)(55q^2+610q+7)}.
$$

For the joint determinant, replacing $T_n$ by
$$
Y_n=T_n-E(X_n-X_0)
$$
is a block shear of $(X_0,X_n,T_n)$ with determinant $1$. In one scalar mode the determinant of the limiting covariance of $(X_0,X_n,T_n)$ is
$$
\det\left[
r\begin{pmatrix}
c&c&c\\
c&c+1&c+\frac12\\
c&c+\frac12&c+\frac13
\end{pmatrix}
\right]
=\frac{cr^3}{12}.
$$
Multiplying the $u,w,h$ mode determinants gives
$$
\det\overline{\operatorname{Cov}}(X_0,X_n,Y_n)=\frac{q^5}{192}.
$$
Dividing by $\det H$ yields
$$
\det\overline K=
\frac{27q^5}
{32(q+3)(55q^2+610q+7)}.
$$
Hence the reference conditional-information determinant ratio is
$$
R_0=
\frac{(q+4)(q^2+4q+1)(324q^2+2963q+124)}
{3q(q+3)(55q^2+610q+7)}.
$$

Step 4: Determine the rank-one correction caused by the endpoint defect

Let
$$
d_n=e^{T}(X_n-X_0).
$$
Under the reference law define the scaled limiting conditional variances
$$
v=\lim_{n\to\infty}\frac1n\operatorname{Var}(d_n\mid Y_n),
$$
$$
v_0=\lim_{n\to\infty}\frac1n\operatorname{Var}(d_n\mid Y_n,X_0),
$$
and
$$
v_n=\lim_{n\to\infty}\frac1n\operatorname{Var}(d_n\mid Y_n,X_n).
$$

Put
$$
R=\operatorname{diag}(1,q,q),\qquad
A=\operatorname{diag}(9q,1,1),\qquad
L=\frac12R-RE.
$$
The covariance limits from Step 2 give
$$
v=e^{T}\left(R-LH^{-1}L^{T}\right)e.
$$
For conditioning also on $X_0$, the covariance of $Y_n$ is reduced from $H$ to
$$
H_0=H-A=
\begin{pmatrix}
\frac{2q+1}{9}&\frac{\sqrt2(q-1)}{18}&0\\
\frac{\sqrt2(q-1)}{18}&\frac{q+2}{9}&0\\
0&0&\frac q3
\end{pmatrix},
$$
so
$$
v_0=e^{T}\left(R-LH_0^{-1}L^{T}\right)e.
$$
For conditioning on $X_n$, put
$$
V=A+R,\qquad N=A+\frac12R-RE,
$$
and
$$
R_n=R-RV^{-1}R,\qquad
L_n=L-RV^{-1}N,\qquad
H_n=H-N^{T}V^{-1}N.
$$
Then
$$
v_n=e^{T}\left(R_n-L_nH_n^{-1}L_n^{T}\right)e.
$$
Only the displayed $u,w$ blocks enter these quadratic forms. Inverting those $2\times2$ blocks gives
$$
v=\frac{54q^3+758q^2+349q+3}{2(55q^2+610q+7)},
$$
$$
v_0=\frac{q(2q+1)}{2(q^2+4q+1)},
$$
$$
v_n=\frac{q(81q+38)}{324q^2+2963q+124}.
$$

Step 5: Apply the determinant lemma and take the limit

Conditioned on $Y_n$, the actual law differs from the reference conditional law by
$$
\exp\left(-\frac{d_n^2}{2nq}\right).
$$
If
$$
a=\begin{pmatrix}-e\\e\end{pmatrix},
$$
this adds $(nq)^{-1}aa^{T}$ to the reference conditional precision of $(X_0,X_n)$. The matrix determinant lemma and Sherman-Morrison formula therefore change the reference determinant ratio by
$$
\frac{(1+v_0/q)(1+v_n/q)}{1+v/q}.
$$
The three factors are
$$
1+\frac{v_0}{q}
=\frac{2q^2+10q+3}{2(q^2+4q+1)},
$$
$$
1+\frac{v_n}{q}
=\frac{2(162q^2+1522q+81)}{324q^2+2963q+124},
$$
and
$$
1+\frac{v}{q}
=\frac{164q^3+1978q^2+363q+3}
{2q(55q^2+610q+7)}.
$$
Multiplying these with $R_0$ from Step 3 cancels all intermediate factors:
$$
R=
\frac{2(q+4)(2q^2+10q+3)(162q^2+1522q+81)}
{3(q+3)(164q^3+1978q^2+363q+3)}.
$$
For jointly Gaussian vectors the conditional mutual information is one half the logarithm of this determinant ratio.

Final Answer: $\boxed{\frac{1}{2}\log\frac{2(q+4)(2q^2+10q+3)(162q^2+1522q+81)}{3(q+3)(164q^3+1978q^2+363q+3)}}$

---

## Answer

$\frac{1}{2}\log\frac{2(q+4)(2q^2+10q+3)(162q^2+1522q+81)}{3(q+3)(164q^3+1978q^2+363q+3)}$

---

## Classification

**Problem Type:** Exact computation

**Answer Type:** Exact scalar

---

## Solution Concepts

- conditional mutual information for Gaussian vectors
- Gaussian innovation factorization
- asymptotic covariance
- orthogonal mode decomposition
- rank-one determinant identities
