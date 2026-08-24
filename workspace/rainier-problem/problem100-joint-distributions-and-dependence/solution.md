## Steps

Step 1: Rewrite the precision matrix as an innovation model

Let $D_n=X_n-X_0$. Expanding the path term gives endpoint blocks $B_q$, interior blocks $2B_q$, and neighboring blocks $-B_q$. The remaining blocks of $\Omega_{n,q}$ are exactly those of $\frac{1}{n}A_q$ at $(0,0)$ and $\frac{1}{nq}g_ng_n^{T}$, where $g_n$ has blocks $-e$ at $0$, $e$ at $n$, and zero elsewhere. Hence
$$
\Omega_{n,q}=\Omega^{\mathrm{ref}}_{n,q}+\frac{1}{nq}g_ng_n^{T},
$$
with
$$
x^{T}\Omega^{\mathrm{ref}}_{n,q}x=\frac{1}{n}x_0^{T}A_qx_0+\sum_{k=1}^{n}(x_k-x_{k-1})^{T}B_q(x_k-x_{k-1}).
$$
For $\varepsilon_k=X_k-X_{k-1}$, the triangular change $(X_0,\varepsilon_1,\ldots,\varepsilon_n)\mapsto(X_0,\ldots,X_n)$ has determinant $1$, so under the reference law
$$
\operatorname{Cov}(X_0)=nA_q^{-1},\qquad \operatorname{Cov}(\varepsilon_k)=B_q^{-1},
$$
and these variables are independent. With
$$
P=\frac13\mathbf1\mathbf1^{T},\qquad P_{\perp}=I_3-P,
$$
we have
$$
A_q=\frac{1}{9q}P+P_{\perp},\qquad B_q=P+\frac1qP_{\perp},
$$
so
$$
A_q^{-1}=9qP+P_{\perp},\qquad B_q^{-1}=P+qP_{\perp}.
$$
The original law is the normalized tilt of the reference law by
$$
\exp\left(-\frac{(e^{T}D_n)^2}{2nq}\right).
$$

Step 2: Compute the scaled covariance limit

Use
$$
u=\frac{1}{\sqrt3}(1,1,1)^{T},\quad w=\frac{1}{\sqrt6}(2,-1,-1)^{T},\quad h=\frac{1}{\sqrt2}(0,1,-1)^{T}.
$$
Each mode is a scalar random walk with initial variance $cnr$ and increment variance $r$, where $(c,r)=(9q,1)$ on $u$ and $(c,r)=(1/q,q)$ on $w,h$. Put
$$
T_n=\frac1n\sum_{k=1}^{n-1}X_k.
$$
Since $X_k=X_0+\sum_{j=1}^{k}\varepsilon_j$ and
$$
\sum_{i,j=1}^{n-1}\min(i,j)=\frac{n(n-1)(2n-1)}6,
$$
the covariance of $(X_0,X_n,T_n,D_n)$ divided by $n$ tends, in one mode, to
$$
r\begin{pmatrix}c&c&c&0\\c&c+1&c+\frac12&1\\c&c+\frac12&c+\frac13&\frac12\\0&1&\frac12&1\end{pmatrix}.
$$
In the $(u,w,h)$ basis,
$$
e=\frac1{\sqrt3}u+\sqrt{\frac23}w,
$$
and, writing $E$ for $ee^{T}$ in this basis,
$$
A=\operatorname{diag}(9q,1,1),\qquad R=\operatorname{diag}(1,q,q).
$$
Since $Y_n=T_n-ED_n$,
$$
H:=\lim_{n\to\infty}\frac1n\operatorname{Cov}(Y_n)=A+\frac13R-\frac12(RE+ER)+ERE
$$
becomes
$$
H=\begin{pmatrix}\frac{83q+1}{9}&\frac{\sqrt2(q-1)}{18}&0\\\frac{\sqrt2(q-1)}{18}&\frac{q+11}{9}&0\\0&0&\frac{q+3}{3}\end{pmatrix},
$$
so
$$
\det H=\frac{(q+3)(55q^2+610q+7)}{162}.
$$

Step 3: Derive the reference conditional determinant ratio

The scaled endpoint covariance is
$$
V=A+R=\operatorname{diag}(9q+1,q+1,q+1),
$$
and
$$
N:=\lim_{n\to\infty}\frac1n\operatorname{Cov}(X_n,Y_n)=A+\frac12R-RE.
$$
Conditioning on $X_0$ replaces $H$ by
$$
H_0=H-A=\begin{pmatrix}\frac{2q+1}{9}&\frac{\sqrt2(q-1)}{18}&0\\\frac{\sqrt2(q-1)}{18}&\frac{q+2}{9}&0\\0&0&\frac q3\end{pmatrix},
$$
with $\det H_0=q(q^2+4q+1)/162$. Therefore
$$
\det\overline K_{00}=\det A\frac{\det H_0}{\det H}=\frac{9q^2(q^2+4q+1)}{(q+3)(55q^2+610q+7)}.
$$

For $X_n$, let $H_n=H-N^{T}V^{-1}N$. On the $(u,w)$ block,
$$
N_2=\begin{pmatrix}9q+\frac16&-\frac{\sqrt2}{3}\\-\frac{\sqrt2q}{3}&1-\frac q6\end{pmatrix},\qquad V_2^{-1}=\begin{pmatrix}\frac1{9q+1}&0\\0&\frac1{q+1}\end{pmatrix}.
$$
Thus, with $D=(q+1)(9q+1)$,
$$
(H_{n,2})_{11}=\frac{83q+1}{9}-\frac{(9q+1/6)^2}{9q+1}-\frac{2q^2/9}{q+1}=\frac{324q^2+263q+3}{36D},
$$
$$
(H_{n,2})_{12}=\frac{\sqrt2(q-1)}{18}+\frac{\sqrt2(9q+1/6)}{3(9q+1)}+\frac{\sqrt2q(1-q/6)}{3(q+1)}=\frac{2\sqrt2q(27q+13)}{9D},
$$
$$
(H_{n,2})_{22}=\frac{q+11}{9}-\frac{2/9}{9q+1}-\frac{(1-q/6)^2}{q+1}=\frac{q(27q^2+543q+124)}{36D}.
$$
The third mode gives
$$
(H_n)_{33}=\frac{q+3}{3}-\frac{(q/2+1)^2}{q+1}=\frac{q(q+4)}{12(q+1)}.
$$
Putting the $2\times2$ block over denominator $36D$,
$$
\det H_{n,2}=\frac{q\bigl[(324q^2+263q+3)(27q^2+543q+124)-128q(27q+13)^2\bigr]}{1296D^2}.
$$
The bracket factors as
$$
3D(324q^2+2963q+124),
$$
so
$$
\det H_n=\frac{q^2(q+4)(324q^2+2963q+124)}{5184(q+1)^2(9q+1)}.
$$
Since $\det V=(q+1)^2(9q+1)$,
$$
\det\overline K_{nn}=\det V\frac{\det H_n}{\det H}=\frac{q^2(q+4)(324q^2+2963q+124)}{32(q+3)(55q^2+610q+7)}.
$$

The shear $(X_0,X_n,T_n)\mapsto(X_0,X_n,Y_n)$ has determinant $1$. In one scalar mode,
$$
\det\left[r\begin{pmatrix}c&c&c\\c&c+1&c+\frac12\\c&c+\frac12&c+\frac13\end{pmatrix}\right]=\frac{cr^3}{12}.
$$
Multiplying the three modes gives $\det\overline{\operatorname{Cov}}(X_0,X_n,Y_n)=q^5/192$, hence
$$
\det\overline K=\frac{27q^5}{32(q+3)(55q^2+610q+7)}.
$$
Therefore
$$
R_0=\frac{\det\overline K_{00}\det\overline K_{nn}}{\det\overline K}=\frac{(q+4)(q^2+4q+1)(324q^2+2963q+124)}{3q(q+3)(55q^2+610q+7)}.
$$

Step 4: Derive the three conditional variances for the endpoint update

Let $d_n=e^{T}D_n$ and $L=\frac12R-RE$. Only the $(u,w)$ block contributes, and
$$
z:=(L^{T}e)_2=\frac1{18}\begin{pmatrix}\sqrt3(1-4q)\\-\sqrt6(q+2)\end{pmatrix}.
$$
Writing $D_H=55q^2+610q+7$,
$$
H_2^{-1}=\frac1{D_H}\begin{pmatrix}6(q+11)&3\sqrt2(1-q)\\3\sqrt2(1-q)&6(83q+1)\end{pmatrix}.
$$
Hence
$$
z^{T}H_2^{-1}z=\frac{18(q+11)(1-4q)^2-36(1-q)(1-4q)(q+2)+36(83q+1)(q+2)^2}{324D_H}
$$
$$
=\frac{58q^3+276q^2+201q+5}{6D_H}.
$$
Since $e^{T}Re=(2q+1)/3$,
$$
v=\frac{54q^3+758q^2+349q+3}{2D_H}.
$$

For conditioning also on $X_0$, write $D_0=q^2+4q+1$. The relevant inverse is
$$
H_{0,2}^{-1}=\frac1{D_0}\begin{pmatrix}6(q+2)&3\sqrt2(1-q)\\3\sqrt2(1-q)&6(2q+1)\end{pmatrix}.
$$
Using the same $z$,
$$
z^{T}H_{0,2}^{-1}z=\frac{18(q+2)(1-4q)^2-36(1-q)(1-4q)(q+2)+36(2q+1)(q+2)^2}{324D_0}
$$
$$
=\frac{(q+2)(2q+1)^2}{6D_0},
$$
so
$$
v_0=\frac{q(2q+1)}{2(q^2+4q+1)}.
$$

For conditioning on $X_n$, define
$$
R_n=R-RV^{-1}R,\qquad L_n=L-RV^{-1}N.
$$
Then
$$
R_n=\operatorname{diag}\left(\frac{9q}{9q+1},\frac q{q+1},\frac q{q+1}\right),
$$
so
$$
e^{T}R_ne=\frac{q(27q+11)}{3(q+1)(9q+1)}.
$$
Let $F=324q^2+2963q+124$ and $D=(q+1)(9q+1)$. Directly from $L_n$,
$$
z_n:=(L_n^{T}e)_2=-\frac{q}{18D}\begin{pmatrix}\sqrt3(81q+49)\\\sqrt6(81q+25)\end{pmatrix}.
$$
The inverse of the $H_{n,2}$ derived in Step 3 is
$$
H_{n,2}^{-1}=\frac1F\begin{pmatrix}12(27q^2+543q+124)&-96\sqrt2(27q+13)\\-96\sqrt2(27q+13)&\frac{12(324q^2+263q+3)}q\end{pmatrix}.
$$
Put $a=81q+49$, $b=81q+25$, $P=27q^2+543q+124$, and $Q=324q^2+263q+3$. Then
$$
z_n^{T}H_{n,2}^{-1}z_n=\frac{36q^2a^2P-1152q^2ab(27q+13)+72qb^2Q}{324D^2F}.
$$
Its numerator factors as
$$
108qD(6561q^3+80109q^2+34558q+1250),
$$
so
$$
z_n^{T}H_{n,2}^{-1}z_n=\frac{q(6561q^3+80109q^2+34558q+1250)}{3DF}.
$$
Therefore
$$
v_n=e^{T}(R_n-L_nH_n^{-1}L_n^{T})e=\frac{q(81q+38)}{324q^2+2963q+124}.
$$

Step 5: Apply the rank-one update and simplify the final ratio

Conditioned on $Y_n$, the actual law is the reference conditional law tilted by $\exp(-d_n^2/(2nq))$. Let
$$
\alpha=\frac1{nq},\qquad a=\begin{pmatrix}-e\\e\end{pmatrix},
$$
and let $K$ be the reference conditional covariance of $(X_0,X_n)$. Then the new precision is $K^{-1}+\alpha aa^{T}$, so
$$
\frac{\det K_{\mathrm{new}}}{\det K}=\frac1{1+\alpha\operatorname{Var}(d_n\mid Y_n)}.
$$
Also
$$
\det K=\det\operatorname{Cov}(X_0\mid Y_n)\det\operatorname{Cov}(X_n\mid Y_n,X_0).
$$
With $(Y_n,X_0)$ fixed, $d_n$ differs from $e^{T}X_n$ by a constant; the conditional precision of $X_n$ therefore gains $\alpha ee^{T}$. The determinant lemma gives
$$
\frac{\det\operatorname{Cov}_{\mathrm{new}}(X_n\mid Y_n,X_0)}{\det\operatorname{Cov}(X_n\mid Y_n,X_0)}=\frac1{1+\alpha\operatorname{Var}(d_n\mid Y_n,X_0)}.
$$
Dividing the joint factors yields
$$
\frac{\det\operatorname{Cov}_{\mathrm{new}}(X_0\mid Y_n)}{\det\operatorname{Cov}(X_0\mid Y_n)}=\frac{1+\alpha\operatorname{Var}(d_n\mid Y_n,X_0)}{1+\alpha\operatorname{Var}(d_n\mid Y_n)}.
$$
Interchanging $X_0,X_n$ gives the analogous factor with $\operatorname{Var}(d_n\mid Y_n,X_n)$. Hence
$$
R=R_0\frac{(1+v_0/q)(1+v_n/q)}{1+v/q}.
$$
From Step 4,
$$
1+\frac{v_0}{q}=\frac{2q^2+10q+3}{2(q^2+4q+1)},\quad 1+\frac{v_n}{q}=\frac{2(162q^2+1522q+81)}{324q^2+2963q+124},
$$
$$
1+\frac vq=\frac{164q^3+1978q^2+363q+3}{2q(55q^2+610q+7)}.
$$
Substitution into $R$ gives
$$
R=\frac{2(q+4)(2q^2+10q+3)(162q^2+1522q+81)}{3(q+3)(164q^3+1978q^2+363q+3)}.
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
