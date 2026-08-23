## Steps

Step 1: Rewrite the precision matrix as an innovation model

Let $D_n=X_n-X_0$. Start with the path energy
$$
\sum_{k=1}^{n}(x_k-x_{k-1})^{T}B_q(x_k-x_{k-1}).
$$
Expanding it gives
$$
x_0^{T}B_qx_0+x_n^{T}B_qx_n+
2\sum_{k=1}^{n-1}x_k^{T}B_qx_k-
2\sum_{k=1}^{n}x_{k-1}^{T}B_qx_k.
$$
Its block precision therefore has $B_q$ at the two endpoints, $2B_q$ on the interior diagonal, and $-B_q$ on neighboring off-diagonal blocks. Adding $\frac{1}{n}x_0^{T}A_qx_0$ accounts for the remaining $\frac{1}{n}A_q$ in the $(0,0)$ block. Comparing with the given $\Omega_{n,q}$ leaves only
$$
\frac{1}{nq}E
$$
in the $(0,0)$ and $(n,n)$ blocks and
$$
-\frac{1}{nq}E
$$
in the $(0,n)$ and $(n,0)$ blocks. Let $g_n\in\mathbb{R}^{3(n+1)}$ have block $-e$ at index $0$, block $e$ at index $n$, and zero blocks elsewhere. Since $E=ee^{T}$,
$$
g_n^{T}x=e^{T}(x_n-x_0),
$$
and $g_ng_n^{T}$ has exactly those four remaining blocks. Hence the precision matrix is forced to split as
$$
\Omega_{n,q}=\Omega^{\mathrm{ref}}_{n,q}+\frac{1}{nq}g_ng_n^{T},
$$
where
$$
x^{T}\Omega^{\mathrm{ref}}_{n,q}x=
\frac{1}{n}x_0^{T}A_qx_0+
\sum_{k=1}^{n}(x_k-x_{k-1})^{T}B_q(x_k-x_{k-1}).
$$
This defines the reference law directly from the path precision and the initial anchoring term. With
$$
\varepsilon_k=X_k-X_{k-1},
$$
the change of variables $(X_0,\varepsilon_1,\ldots,\varepsilon_n)\mapsto(X_0,\ldots,X_n)$ is triangular with determinant $1$, and the reference quadratic form becomes
$$
\frac{1}{n}X_0^{T}A_qX_0+\sum_{k=1}^{n}\varepsilon_k^{T}B_q\varepsilon_k.
$$
Therefore $X_0,\varepsilon_1,\ldots,\varepsilon_n$ are independent under the reference law, with
$$
\operatorname{Cov}(X_0)=nA_q^{-1},\qquad
\operatorname{Cov}(\varepsilon_k)=B_q^{-1}.
$$
For
$$
P=\frac{1}{3}\mathbf{1}\mathbf{1}^{T},\qquad P_{\perp}=I_3-P,
$$
the definitions of $A_q$ and $B_q$ give
$$
A_q=\frac{1}{9q}P+P_{\perp},\qquad
B_q=P+\frac{1}{q}P_{\perp},
$$
so
$$
A_q^{-1}=9qP+P_{\perp},\qquad
B_q^{-1}=P+qP_{\perp}.
$$
The original Gaussian law is the normalized exponential tilt of the reference law by
$$
\exp\left(-\frac{(e^{T}D_n)^2}{2nq}\right).
$$

Step 2: Compute the scaled covariance limit of the path average

Use the orthonormal basis
$$
u=\frac{1}{\sqrt{3}}(1,1,1)^{T},\qquad
w=\frac{1}{\sqrt{6}}(2,-1,-1)^{T},\qquad
h=\frac{1}{\sqrt{2}}(0,1,-1)^{T}.
$$
In each mode the reference law is a scalar random walk. Write its initial variance as $cnr$ and each increment variance as $r$. The parameters are
$$
(c,r)=(9q,1)
$$
for the $u$-mode and
$$
(c,r)=\left(\frac{1}{q},q\right)
$$
for the $w$- and $h$-modes.

Set
$$
T_n=\frac{1}{n}\sum_{k=1}^{n-1}X_k.
$$
For a scalar mode,
$$
X_k=X_0+\sum_{j=1}^{k}\varepsilon_j.
$$
Using
$$
\sum_{i,j=1}^{n-1}\min(i,j)=\frac{n(n-1)(2n-1)}{6},
$$
the covariance matrix of $(X_0,X_n,T_n,D_n)$, divided by $n$, tends to
$$
r\begin{pmatrix}
c&c&c&0\\
c&c+1&c+\frac{1}{2}&1\\
c&c+\frac{1}{2}&c+\frac{1}{3}&\frac{1}{2}\\
0&1&\frac{1}{2}&1
\end{pmatrix}.
$$

In the $(u,w,h)$ basis,
$$
e=\frac{1}{\sqrt{3}}u+\sqrt{\frac{2}{3}}\,w.
$$
Keep the symbol $E$ for the matrix of $ee^{T}$ in this basis, and put
$$
A=\operatorname{diag}(9q,1,1),\qquad R=\operatorname{diag}(1,q,q).
$$
The scalar limit gives
$$
\frac{1}{n}\operatorname{Cov}(T_n)\to A+\frac{1}{3}R,\qquad
\frac{1}{n}\operatorname{Cov}(T_n,D_n)\to\frac{1}{2}R,\qquad
\frac{1}{n}\operatorname{Cov}(D_n)\to R.
$$
Because $Y_n=T_n-ED_n$, its scaled covariance tends to
$$
H=A+\frac{1}{3}R-\frac{1}{2}(RE+ER)+ERE.
$$
Substituting the coordinates of $e$ gives
$$
H=
\begin{pmatrix}
\frac{83q+1}{9}&\frac{\sqrt{2}(q-1)}{18}&0\\
\frac{\sqrt{2}(q-1)}{18}&\frac{q+11}{9}&0\\
0&0&\frac{q+3}{3}
\end{pmatrix}.
$$
Taking the determinant of the upper $2\times2$ block gives
$$
\det H=\frac{(q+3)(55q^2+610q+7)}{162}.
$$

Step 3: Evaluate the reference conditional determinant ratio

The scaled covariance of $X_0$ is $A$, while that of $X_n$ is
$$
V=A+R=\operatorname{diag}(9q+1,q+1,q+1).
$$
Also
$$
\frac{1}{n}\operatorname{Cov}(X_0,Y_n)\to A,
$$
and
$$
\frac{1}{n}\operatorname{Cov}(X_n,Y_n)\to N=A+\frac{1}{2}R-RE.
$$
Conditioning on $X_0$ replaces $H$ by
$$
H_0=H-A=
\begin{pmatrix}
\frac{2q+1}{9}&\frac{\sqrt{2}(q-1)}{18}&0\\
\frac{\sqrt{2}(q-1)}{18}&\frac{q+2}{9}&0\\
0&0&\frac{q}{3}
\end{pmatrix},
$$
with
$$
\det H_0=\frac{q(q^2+4q+1)}{162}.
$$
The determinant identity
$$
\det\operatorname{Cov}(X_0\mid Y_n)
=\det\operatorname{Cov}(X_0)\,
\frac{\det\operatorname{Cov}(Y_n\mid X_0)}{\det\operatorname{Cov}(Y_n)}
$$
yields, after division by $n^3$ and passage to the limit,
$$
\det\overline{K}_{00}
=\frac{9q^2(q^2+4q+1)}
{(q+3)(55q^2+610q+7)}.
$$

For $X_n$, substitution in $H-N^{T}V^{-1}N$ gives
$$
H_n=
\begin{pmatrix}
\frac{324q^2+263q+3}{36(9q^2+10q+1)}
&
\frac{2\sqrt{2}q(27q+13)}{9(9q^2+10q+1)}
&0\\
\frac{2\sqrt{2}q(27q+13)}{9(9q^2+10q+1)}
&
\frac{q(27q^2+543q+124)}{36(9q^2+10q+1)}
&0\\
0&0&\frac{q(q+4)}{12(q+1)}
\end{pmatrix}.
$$
The upper $2\times2$ determinant and the last diagonal entry give
$$
\det H_n=
\frac{q^2(q+4)(324q^2+2963q+124)}
{5184(q+1)^2(9q+1)}.
$$
Since $\det V=(q+1)^2(9q+1)$,
$$
\det\overline{K}_{nn}
=\frac{q^2(q+4)(324q^2+2963q+124)}
{32(q+3)(55q^2+610q+7)}.
$$

The map $(X_0,X_n,T_n)\mapsto(X_0,X_n,Y_n)$ is a block shear with determinant $1$. For one scalar mode the limiting covariance of $(X_0,X_n,T_n)$ has determinant
$$
\det\left[
r\begin{pmatrix}
c&c&c\\
c&c+1&c+\frac{1}{2}\\
c&c+\frac{1}{2}&c+\frac{1}{3}
\end{pmatrix}
\right]
=\frac{cr^3}{12}.
$$
Multiplying the $u,w,h$ values gives
$$
\det\overline{\operatorname{Cov}}(X_0,X_n,Y_n)=\frac{q^5}{192}.
$$
Dividing by $\det H$ gives
$$
\det\overline{K}
=\frac{27q^5}{32(q+3)(55q^2+610q+7)}.
$$
Therefore the reference conditional-information ratio is
$$
R_0=
\frac{\det\overline{K}_{00}\det\overline{K}_{nn}}{\det\overline{K}}
=
\frac{(q+4)(q^2+4q+1)(324q^2+2963q+124)}
{3q(q+3)(55q^2+610q+7)}.
$$

Step 4: Compute the three variances needed for the endpoint precision update

Let
$$
d_n=e^{T}D_n,\qquad L=\frac{1}{2}R-RE.
$$
The scaled limits from Step 2 give
$$
v=\lim_{n\to\infty}\frac{1}{n}\operatorname{Var}(d_n\mid Y_n)
=e^{T}(R-LH^{-1}L^{T})e.
$$
Here
$$
e^{T}Re=\frac{2q+1}{3},
$$
and inversion of the displayed $2\times2$ block of $H$ gives
$$
e^{T}LH^{-1}L^{T}e=
\frac{58q^3+276q^2+201q+5}{6(55q^2+610q+7)}.
$$
Subtracting yields
$$
v=\frac{54q^3+758q^2+349q+3}{2(55q^2+610q+7)}.
$$

Since $D_n$ and $X_0$ are independent in the reference law, conditioning also on $X_0$ replaces only $H$ by $H_0$. Therefore
$$
e^{T}LH_0^{-1}L^{T}e=
\frac{(q+2)(2q+1)^2}{6(q^2+4q+1)},
$$
and
$$
v_0=\lim_{n\to\infty}\frac{1}{n}\operatorname{Var}(d_n\mid Y_n,X_0)
=\frac{q(2q+1)}{2(q^2+4q+1)}.
$$

For conditioning on $X_n$, define
$$
R_n=R-RV^{-1}R,\qquad
L_n=L-RV^{-1}N.
$$
The conditional covariance of $Y_n/\sqrt{n}$ given $X_n/\sqrt{n}$ is the matrix $H_n$ from Step 3. Therefore
$$
v_n=\lim_{n\to\infty}\frac{1}{n}\operatorname{Var}(d_n\mid Y_n,X_n)
=e^{T}(R_n-L_nH_n^{-1}L_n^{T})e.
$$
The two scalar contractions are
$$
e^{T}R_ne=\frac{q(27q+11)}{3(q+1)(9q+1)},
$$
$$
e^{T}L_nH_n^{-1}L_n^{T}e=
\frac{q(6561q^3+80109q^2+34558q+1250)}
{3(q+1)(9q+1)(324q^2+2963q+124)}.
$$
Their difference is
$$
v_n=\frac{q(81q+38)}{324q^2+2963q+124}.
$$

Step 5: Apply the rank-one update and simplify the final ratio

Conditioned on $Y_n$, the actual law is obtained from the reference conditional law by the factor
$$
\exp\left(-\frac{d_n^2}{2nq}\right).
$$
If $K$ is the reference conditional covariance of $(X_0,X_n)$ and
$$
a=\begin{pmatrix}-e\\e\end{pmatrix},
$$
then the actual conditional precision is
$$
K^{-1}+\frac{1}{nq}aa^{T}.
$$
The matrix determinant lemma gives the joint covariance determinant factor
$$
\frac{\det K_{\mathrm{new}}}{\det K}
=\frac{1}{1+\operatorname{Var}(d_n\mid Y_n)/(nq)}.
$$
Applying the same rank-one covariance formula to each endpoint block gives
$$
\frac{\det\operatorname{Cov}_{\mathrm{new}}(X_0\mid Y_n)}
{\det\operatorname{Cov}(X_0\mid Y_n)}
=
\frac{1+\operatorname{Var}(d_n\mid Y_n,X_0)/(nq)}
{1+\operatorname{Var}(d_n\mid Y_n)/(nq)},
$$
$$
\frac{\det\operatorname{Cov}_{\mathrm{new}}(X_n\mid Y_n)}
{\det\operatorname{Cov}(X_n\mid Y_n)}
=
\frac{1+\operatorname{Var}(d_n\mid Y_n,X_n)/(nq)}
{1+\operatorname{Var}(d_n\mid Y_n)/(nq)}.
$$
Therefore the limiting determinant ratio is
$$
R=R_0\frac{(1+v_0/q)(1+v_n/q)}{1+v/q}.
$$
The values from Step 4 give
$$
1+\frac{v_0}{q}=\frac{2q^2+10q+3}{2(q^2+4q+1)},
$$
$$
1+\frac{v_n}{q}=\frac{2(162q^2+1522q+81)}{324q^2+2963q+124},
$$
$$
1+\frac{v}{q}=
\frac{164q^3+1978q^2+363q+3}{2q(55q^2+610q+7)}.
$$
Substitution into the expression for $R$ cancels the three intermediate factors:
$$
R=
\frac{2(q+4)(2q^2+10q+3)(162q^2+1522q+81)}
{3(q+3)(164q^3+1978q^2+363q+3)}.
$$
For jointly Gaussian vectors, conditional mutual information is one half the logarithm of this determinant ratio.

Final Answer: $\boxed{\frac{1}{2}\log\frac{2(q+4)(2q^2+10q+3)(162q^2+1522q+81)}{3(q+3)(164q^3+1978q^2+363q+3)}}$

---

## Answer

$\frac{1}{2}\log\frac{2(q+4)(2q^2+10q+3)(162q^2+1522q+81)}{3(q+3)(164q^3+1978q^2+363q+3)}$

---

## Classification

**Problem Type:** Exact computation

**Answer Type:** Exact symbolic expression

---

## Solution Concepts

- conditional mutual information for Gaussian vectors
- Gaussian innovation factorization
- asymptotic covariance
- Schur complements for conditional covariance
- rank-one determinant identities
