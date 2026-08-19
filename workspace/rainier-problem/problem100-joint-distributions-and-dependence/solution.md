## Steps

Step 1: Expose the hidden innovation law and the symmetry-breaking defect

Let $e=(1,0,0)^{T}$, so $E=ee^{T}$, and set $Z_k=C^{-k}X_k$. Since $C^3=I_3$, $C\mathbf{1}=\mathbf{1}$, and $A_q,B_q$ commute with $C$, the quadratic form of the precision matrix becomes
$$
z_0^{T}A_qz_0+(z_1-z_0)^{T}B_q(z_1-z_0)+\frac{1}{q}\|z_2-z_1\|^2+\frac{1}{q}\|z_3-z_2\|^2+\frac{1}{q}\bigl(e^{T}(z_3-z_0)\bigr)^2.
$$
This also proves that $\Omega_q$ is positive definite.

Remove the last summand temporarily and call the resulting Gaussian law the reference law. Under it,
$$
Z_1=Z_0+\varepsilon_1,\qquad Z_2=Z_1+\varepsilon_2,\qquad Z_3=Z_2+\varepsilon_3,
$$
where the four variables $Z_0,\varepsilon_1,\varepsilon_2,\varepsilon_3$ are independent and
$$
\operatorname{Cov}(Z_0)=A_q^{-1},\qquad \operatorname{Cov}(\varepsilon_1)=B_q^{-1},\qquad \operatorname{Cov}(\varepsilon_2)=\operatorname{Cov}(\varepsilon_3)=qI_3.
$$
With
$$
P=\frac{1}{3}\mathbf{1}\mathbf{1}^{T},\qquad P_{\perp}=I_3-P,
$$
we have
$$
A_q^{-1}=9qP+P_{\perp},\qquad B_q^{-1}=P+qP_{\perp}.
$$

Put $S_0=Z_1+Z_2$ and $D=Z_3-Z_0$. Since $X_1=CZ_1$, $X_2=C^2Z_2$, and $X_3=Z_3$,
$$
Y=C(S_0-ED).
$$
Conditioning on $Y$ is therefore equivalent to conditioning on
$$
S=S_0-ED.
$$
Relative to the reference law, the actual law multiplies the density by
$$
\exp\left(-\frac{(e^{T}D)^2}{2q}\right).
$$

Step 2: Compute the conditional-information ratio for the reference law

Use the orthonormal basis
$$
u=\frac{1}{\sqrt{3}}(1,1,1)^{T},\qquad w=\frac{1}{\sqrt{6}}(2,-1,-1)^{T},\qquad h=\frac{1}{\sqrt{2}}(0,1,-1)^{T}.
$$
The $u$-mode has initial variance $9q$ and innovation variances $1,q,q$. Each perpendicular mode has initial variance $1$ and innovation variances $q,q,q$. For one scalar mode with initial variance $a$ and innovation variances $r_1,r_2,r_3$,
$$
S_0=2z_0+2\varepsilon_1+\varepsilon_2,\qquad D=\varepsilon_1+\varepsilon_2+\varepsilon_3,
$$
so
$$
\operatorname{Var}(S_0)=4a+4r_1+r_2,\qquad \operatorname{Cov}(S_0,D)=2r_1+r_2,\qquad \operatorname{Var}(D)=r_1+r_2+r_3.
$$
Also
$$
\operatorname{Cov}(z_0,S_0)=2a,\qquad \operatorname{Cov}(z_3,S_0)=2a+2r_1+r_2.
$$

In the basis $(u,w,h)$, the vector $e$ has coordinates $(1/\sqrt{3},\sqrt{2/3},0)^{T}$. Substituting the two mode data into $S=S_0-ED$ gives
$$
\operatorname{Cov}(S)=\begin{pmatrix}\frac{5(67q+5)}{9}&-\frac{\sqrt{2}(4q+5)}{9}&0\\-\frac{\sqrt{2}(4q+5)}{9}&\frac{25q+38}{9}&0\\0&0&5q+4\end{pmatrix},
$$
$$
\operatorname{Cov}(S\mid Z_0)=\begin{pmatrix}\frac{11q+25}{9}&-\frac{\sqrt{2}(4q+5)}{9}&0\\-\frac{\sqrt{2}(4q+5)}{9}&\frac{25q+2}{9}&0\\0&0&5q\end{pmatrix},
$$
and
$$
\operatorname{Cov}(S\mid Z_3)=\begin{pmatrix}\frac{2q(27q+10)}{3(3q+1)}&\frac{\sqrt{2}q(9q+8)}{3(3q+1)}&0\\\frac{\sqrt{2}q(9q+8)}{3(3q+1)}&\frac{q(234q^2+389q+37)}{3(3q+1)(11q+1)}&0\\0&0&\frac{q(6q+5)}{3q+1}\end{pmatrix}.
$$
Their determinants are
$$
\det\operatorname{Cov}(S)=\frac{(5q+4)(927q^2+1475q+100)}{9},
$$
$$
\det\operatorname{Cov}(S\mid Z_0)=5q^2(3q+7),
$$
$$
\det\operatorname{Cov}(S\mid Z_3)=\frac{2q^3(6q+5)(201q^2+347q+34)}{(3q+1)^2(11q+1)}.
$$

The shear $(Z_0,Z_3,S_0)\mapsto(Z_0,Z_3,S_0-E(Z_3-Z_0))$ has determinant $1$, so it leaves the determinant of the joint covariance unchanged. The scalar $u$-mode gives
$$
\det\operatorname{Cov}(z_0,z_3,s_0)=9q^2(q+5),
$$
and each perpendicular mode gives $6q^2$. Therefore
$$
\det\operatorname{Cov}(Z_0,Z_3,S)=324q^6(q+5).
$$
Since
$$
\det\operatorname{Cov}(Z_0)=9q,\qquad \det\operatorname{Cov}(Z_3)=(11q+1)(3q+1)^2,
$$
the Gaussian Schur-complement determinant identity gives
$$
R_0=\frac{\det\operatorname{Cov}(Z_0\mid S)\det\operatorname{Cov}(Z_3\mid S)}{\det\operatorname{Cov}(Z_0,Z_3\mid S)}=\frac{5(3q+7)(6q+5)(201q^2+347q+34)}{2(q+5)(5q+4)(927q^2+1475q+100)}.
$$

Step 3: Measure how the endpoint defect changes the three required determinants

Let
$$
d=e^{T}(Z_3-Z_0).
$$
Under the reference law,
$$
\operatorname{Var}(d)=\frac{8q+1}{3},
$$
and, in the basis from Step 2,
$$
\operatorname{Cov}(d,S)=\left(\frac{5\sqrt{3}(1-q)}{9},\frac{\sqrt{6}(q-1)}{9},0\right).
$$
Using the covariance matrices from Step 2 in the scalar Schur-complement formula gives
$$
v=\operatorname{Var}(d\mid S)=\frac{3q(809q^2+1433q+260)}{927q^2+1475q+100},
$$
and, because $d$ is independent of $Z_0$ before conditioning,
$$
v_0=\operatorname{Var}(d\mid S,Z_0)=\frac{q(17q+73)}{3(3q+7)}.
$$

For the other endpoint,
$$
\operatorname{Var}(d\mid Z_3)=\frac{q(18q^2+37q+5)}{(3q+1)(11q+1)},
$$
while
$$
\operatorname{Cov}(d,S\mid Z_3)=\left(-\frac{\sqrt{3}q(9q+5)}{3(3q+1)},-\frac{2\sqrt{6}q(9q^2+35q+4)}{3(3q+1)(11q+1)},0\right).
$$
Using $\operatorname{Cov}(S\mid Z_3)$ from Step 2 gives
$$
v_3=\operatorname{Var}(d\mid S,Z_3)=\frac{q(18q^2+289q+95)}{2(201q^2+347q+34)}.
$$

Step 4: Apply the rank-one precision update and finish the mutual information

Let $K$ be the reference conditional covariance of $(Z_0,Z_3)$ given $S$, and let
$$
a=\begin{pmatrix}-e\\e\end{pmatrix}.
$$
The density factor from Step 1 changes the conditional precision to
$$
K_{\mathrm{new}}^{-1}=K^{-1}+\frac{1}{q}aa^{T}.
$$
The matrix determinant lemma gives
$$
\det K_{\mathrm{new}}=\det K\frac{q}{q+v}.
$$
The Sherman-Morrison formula applied to the two endpoint marginal blocks gives
$$
\det\operatorname{Cov}_{\mathrm{new}}(Z_0\mid S)=\det\operatorname{Cov}(Z_0\mid S)\frac{q+v_0}{q+v},
$$
$$
\det\operatorname{Cov}_{\mathrm{new}}(Z_3\mid S)=\det\operatorname{Cov}(Z_3\mid S)\frac{q+v_3}{q+v}.
$$
The determinant ratio for the actual conditional mutual information is therefore
$$
R=R_0\frac{(1+v_0/q)(1+v_3/q)}{1+v/q}.
$$
The three factors from Step 3 simplify to
$$
1+\frac{v}{q}=\frac{2(1677q^2+2887q+440)}{927q^2+1475q+100},
$$
$$
1+\frac{v_0}{q}=\frac{2(13q+47)}{3(3q+7)},
$$
$$
1+\frac{v_3}{q}=\frac{420q^2+983q+163}{2(201q^2+347q+34)}.
$$
Substitution into $R$ cancels the intermediate factors and yields
$$
R=\frac{5(6q+5)(13q+47)(420q^2+983q+163)}{12(q+5)(5q+4)(1677q^2+2887q+440)}.
$$
For jointly Gaussian vectors,
$$
I(X_0;X_3\mid Y)=\frac{1}{2}\log R.
$$

Final Answer: $\boxed{\frac{1}{2}\log\frac{5(6q+5)(13q+47)(420q^2+983q+163)}{12(q+5)(5q+4)(1677q^2+2887q+440)}}$

---

## Answer

$\frac{1}{2}\log\frac{5(6q+5)(13q+47)(420q^2+983q+163)}{12(q+5)(5q+4)(1677q^2+2887q+440)}$

---

## Classification

**Problem Type:** Exact computation

**Answer Type:** Exact scalar

---

## Solution Concepts

- conditional mutual information for Gaussian vectors
- Gaussian innovation factorization
- orthogonal mode decomposition
- Schur complements for conditional covariance
- rank-one determinant identities
