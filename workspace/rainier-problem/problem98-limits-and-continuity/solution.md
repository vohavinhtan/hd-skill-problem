## Steps

Step 1: Prove uniqueness of the tuning parameter and identify its scale

Put
$$
\phi(x)=x^4(1-x)^2,
\qquad
\psi(x)=x^4(5-4x).
$$
On $[0,1]$,
$$
\psi'(x)=20x^3(1-x)\geq0.
$$
For fixed $n$, define
$$
F_n(\lambda)=
\frac{
\int_0^1(2x-1)e^{-n\phi(x)+\lambda\psi(x)}\,dx
}{
\int_0^1e^{-n\phi(x)+\lambda\psi(x)}\,dx
}.
$$
Differentiating with respect to $\lambda$ expresses $F_n'(\lambda)$ as the covariance of the two strictly increasing functions $2x-1$ and $\psi(x)$ under a positive density. Therefore
$$
F_n'(\lambda)>0.
$$
As $\lambda\to-\infty$, the density concentrates near $x=0$, so $F_n(\lambda)\to-1$. As $\lambda\to+\infty$, it concentrates near $x=1$, so $F_n(\lambda)\to1$. This proves existence and uniqueness of $\lambda_n$.

Set
$$
s=n^{-1/4}.
$$
The phase has a quartic zero at $0$ and a quadratic zero at $1$. The left contribution is therefore of size $s$, while the right contribution before tilting is of size $s^2$. The centering condition requires these masses to balance, so
$$
e^{\lambda_n}s^2\asymp s.
$$
Consequently
$$
\lambda_n=-\log s+O(1).
$$
Define
$$
q_n=se^{\lambda_n}.
$$

Step 2: Expand the two boundary layers

For
$$
A_m=\int_0^\infty u^me^{-u^4}\,du,
$$
the substitution $v=u^4$ gives
$$
A_m=\frac14\Gamma\!\left(\frac{m+1}{4}\right).
$$
Near $0$, put $x=su$. Since
$$
n\phi(x)=u^4(1-su)^2,
$$
we have
$$
e^{-n\phi(x)}
=
e^{-u^4}
\left[
1+2su^5+s^2(2u^{10}-u^6)
+s^3\left(\frac43u^{15}-2u^{11}\right)
+O(s^4)
\right].
$$
Also
$$
\lambda_n\psi(su)=O(s^4|\log s|)
$$
on the local scale, so the tilt does not affect the coefficients through order $s^3$.

Near $1$, put
$$
x=1-s^2v.
$$
Then
$$
n\phi(x)=v^2(1-s^2v)^4
$$
and
$$
\psi(1-s^2v)=1-10s^4v^2+O(s^6).
$$
Therefore
$$
x^ke^{-n\phi(x)+\lambda_n\psi(x)}
=
e^{\lambda_n}e^{-v^2}
\left[
1+s^2(4v^3-kv)+O(s^4|\log s|)
\right].
$$
Writing
$$
B_0=\frac{\sqrt\pi}{2},
\qquad
B_{1,k}=2-\frac{k}{2},
$$
the right endpoint contributes
$$
sq_n\left[B_0+s^2B_{1,k}+O(s^4|\log s|)\right].
$$

The left coefficients needed below are
$$
A_0=\frac G4,
\qquad
A_1=\frac{\sqrt\pi}{4},
\qquad
A_2=\frac14\Gamma\!\left(\frac34\right),
$$
$$
A_5=\frac{\sqrt\pi}{8},
\qquad
A_6=\frac{3}{16}\Gamma\!\left(\frac34\right),
\qquad
A_7=\frac14,
$$
$$
2A_{10}-A_6=\frac{15}{32}\Gamma\!\left(\frac34\right),
$$
$$
2A_{11}-A_7=\frac34,
\qquad
\frac43A_{15}-2A_{11}=1.
$$

Step 3: Use the centering condition to determine the hidden mass ratio

Let
$$
J_k=
\int_0^1
x^k e^{-n\phi(x)+\lambda_n\psi(x)}\,dx.
$$
The defining condition for $\lambda_n$ is
$$
2J_1-J_0=0.
$$
Write
$$
R=\Gamma\!\left(\frac34\right)
$$
and seek
$$
q_n=q_0+q_1s+q_2s^2+q_3s^3+O(s^4|\log s|).
$$
Using Step 2 and dividing $2J_1-J_0$ by $s$, the constant term is
$$
q_0B_0-A_0,
$$
so
$$
q_0=\frac{G}{2\sqrt\pi}.
$$
The coefficient of $s$ is
$$
q_1B_0+2A_1-2A_5,
$$
which gives
$$
q_1=-\frac12.
$$
At order $s^2$,
$$
q_2B_0
+4A_6-(2A_{10}-A_6)
+q_0(2B_{1,1}-B_{1,0})=0.
$$
Since
$$
2B_{1,1}-B_{1,0}=1,
$$
we obtain
$$
q_2=
-\frac{9R}{16\sqrt\pi}
-\frac{G}{\pi}.
$$
At order $s^3$, the non-$q_3$ terms are
$$
2(2A_{11}-A_7)
-\left(\frac43A_{15}-2A_{11}\right)
+q_1
=
\frac32-1-\frac12=0.
$$
Therefore
$$
q_3=0.
$$

Step 4: Expand the normalization and the second moment

The expansions from Steps 2 and 3 give
$$
J_0
=
s\left[
D_0+D_2s^2+O(s^4|\log s|)
\right],
$$
where
$$
D_0=\frac G2
$$
and
$$
D_2=
\frac{3R}{16}
+\frac{G}{2\sqrt\pi}.
$$
The order-$s$ and order-$s^3$ coefficients vanish because
$$
q_1B_0+2A_5=0
$$
and
$$
q_3B_0+1+2q_1=0.
$$

For $J_2$,
$$
J_2
=
s\left[
N_0+N_1s+N_2s^2+O(s^4|\log s|)
\right],
$$
with
$$
N_0=\frac G4,
\qquad
N_1=-\frac{\sqrt\pi}{4}.
$$
At order $s^2$,
$$
N_2=q_2B_0+A_2+q_0B_{1,2}.
$$
Since $B_{1,2}=1$, substitution of $q_2$ gives
$$
N_2=-\frac{R}{32}.
$$
The coefficient of $s^3$ vanishes:
$$
q_3B_0+2A_7+q_1B_{1,2}=0.
$$

The centering condition gives
$$
\frac{J_1}{J_0}=\frac12.
$$
Therefore
$$
V_n=\frac{J_2}{J_0}-\frac14,
$$
so
$$
\frac14-V_n=\frac12-\frac{J_2}{J_0}.
$$

Step 5: Divide the coupled expansions and evaluate the limit

Using the forms from Step 4,
$$
\frac{J_2}{J_0}
=
\frac{N_0+N_1s+N_2s^2+O(s^4|\log s|)}
{D_0+D_2s^2+O(s^4|\log s|)}.
$$
Since $N_0/D_0=1/2$,
$$
\frac14-V_n
=
-\frac{N_1}{D_0}s
-\left(
\frac{N_2}{D_0}
-\frac{N_0D_2}{D_0^2}
\right)s^2
+\frac{N_1D_2}{D_0^2}s^3
+O(s^4|\log s|).
$$
Substituting the coefficients gives
$$
\frac14-V_n
=
\frac{\sqrt\pi}{2G}s
+\left(
\frac{1}{2\sqrt\pi}
+\frac{R}{4G}
\right)s^2
-\left(
\frac{1}{2G}
+\frac{3\sqrt\pi R}{16G^2}
\right)s^3
+O(s^4|\log s|).
$$
The reflection identity
$$
GR=\pi\sqrt2
$$
turns this into
$$
\frac14-V_n
=
\frac{\sqrt\pi}{2G}s
+\left(
\frac{1}{2\sqrt\pi}
+\frac{\sqrt2\,\pi}{4G^2}
\right)s^2
-\left(
\frac{1}{2G}
+\frac{3\sqrt2\,\pi^{3/2}}{16G^3}
\right)s^3
+O(s^4|\log s|).
$$
Since $s=n^{-1/4}$, the normalization in the problem removes the first two terms and multiplication by $n^{3/4}=s^{-3}$ leaves the third coefficient.

Final Answer: $\boxed{-\frac{1}{2G}-\frac{3\sqrt2\,\pi^{3/2}}{16G^3}}$

---

## Answer

$-\frac{1}{2G}-\frac{3\sqrt2\,\pi^{3/2}}{16G^3}$

---

## Classification

**Domain:** Calculus

**Sub-domain:** Limits and continuity

**Problem Type:** Exact computation

**Answer Type:** Exact scalar

---

## Solution Concepts

- implicit exponential tilting
- competing boundary layers
- moment centering
- gamma-function integrals
- asymptotic limits
