## Steps

Step 1: Expand the two endpoint contributions

Put
$$
s=n^{-1/4}.
$$
The phase
$$
\phi(x)=x^4(1-x)^2
$$
vanishes only at $0$ and $1$. Near $0$ the scale is $x=O(s)$, while near $1$ the scale is $1-x=O(s^2)$. On every closed subinterval of $(0,1)$ the contribution is exponentially small.

At $0$, set
$$
x=su.
$$
Then
$$
n\phi(x)=u^4(1-su)^2
$$
and
$$
e^{-n\phi(x)}
=
e^{-u^4}
\left[
1+2su^5+s^2(2u^{10}-u^6)+O(s^3)
\right].
$$
For
$$
A_m=\int_0^\infty u^me^{-u^4}\,du,
$$
the substitution $v=u^4$ gives
$$
A_m=\frac14\Gamma\!\left(\frac{m+1}{4}\right).
$$
Hence
$$
I_k^{(0)}
=
s^{k+1}
\left[
A_k+2sA_{k+5}
+s^2(2A_{k+10}-A_{k+6})
+O(s^3)
\right].
$$

At $1$, set
$$
1-x=s^2v.
$$
Then
$$
n\phi(x)=v^2(1-s^2v)^4,
$$
so
$$
x^ke^{-n\phi(x)}
=
e^{-v^2}
\left[
1+s^2(4v^3-kv)+O(s^4)
\right].
$$
Therefore
$$
I_k^{(1)}
=
s^2
\left[
\frac{\sqrt\pi}{2}
+s^2\left(2-\frac{k}{2}\right)
+O(s^4)
\right].
$$

Step 2: Obtain the asymptotic expansion of $H_n$

Write
$$
R=\Gamma\!\left(\frac34\right).
$$
Combining the two endpoint expansions gives
$$
I_0=
\frac{G}{4}s
+\frac{3\sqrt\pi}{4}s^2
+\frac{15R}{32}s^3
+O(s^4),
$$
$$
I_2=
\frac{\sqrt\pi}{2}s^2
+\frac{R}{4}s^3
+\frac32s^4
+\frac{35G}{128}s^5
+O(s^6),
$$
$$
I_3=
\frac{\sqrt\pi}{2}s^2
+\frac34s^4
+\frac{5G}{32}s^5
+O(s^6),
$$
and
$$
I_4=
\frac{\sqrt\pi}{2}s^2
+\frac{G}{16}s^5
+O(s^6).
$$

Let
$$
N_n=I_2I_4-I_3^2.
$$
The $s^4$ terms cancel. At order $s^5$,
$$
N_n=
\frac{\sqrt\pi R}{8}s^5+O(s^6).
$$
At order $s^6$ the coefficient is
$$
\frac{\sqrt\pi}{2}\frac32
-2\frac{\sqrt\pi}{2}\frac34=0.
$$
At order $s^7$,
$$
\frac{\sqrt\pi}{2}
\left(
\frac{35G}{128}+\frac{G}{16}
\right)
-
2\frac{\sqrt\pi}{2}\frac{5G}{32}
=
\frac{3\sqrt\pi G}{256}.
$$
Thus
$$
N_n=
\frac{\sqrt\pi R}{8}s^5
+\frac{3\sqrt\pi G}{256}s^7
+O(s^8).
$$

Also
$$
I_0^2=
\frac{G^2}{16}s^2
\left[
1+\frac{6\sqrt\pi}{G}s
+\left(
\frac{9\pi}{G^2}
+\frac{15R}{4G}
\right)s^2
+O(s^3)
\right].
$$
Division gives
$$
H_n=C_0s^3+C_1s^4+C_2s^5+O(s^6),
$$
where
$$
C_0=\frac{2\sqrt\pi R}{G^2},
$$
$$
C_1=\frac{-12\pi R}{G^3},
$$
and
$$
C_2=
\frac{3\sqrt\pi}{16G}
+
\frac{2\sqrt\pi R}{G^2}
\left(
\frac{27\pi}{G^2}
-\frac{15R}{4G}
\right).
$$

Using
$$
GR=\pi\sqrt2,
$$
these become
$$
C_0=\frac{2\sqrt2\,\pi^{3/2}}{G^3},
$$
$$
C_1=\frac{-12\sqrt2\,\pi^2}{G^4},
$$
and
$$
C_2=
\frac{3\sqrt\pi\left[G^4+(288\sqrt2-80)\pi^2\right]}{16G^5}.
$$

Step 3: Transfer the expansion to the dilated indices

For every fixed nonnegative integer $j$,
$$
(16^jn)^{-1/4}=2^{-j}s.
$$
Hence
$$
H_{16^jn}
=
\sum_{m=0}^2
C_m s^{m+3}2^{-j(m+3)}
+O(s^6).
$$
For $m\geq0$, put
$$
r_m=2^{-(m+3)}
$$
and
$$
v_m=
\begin{pmatrix}
1\\
r_m\\
r_m^2
\end{pmatrix}.
$$
The $3\times3$ matrix defining $K_n$ has the expansion
$$
\left(H_{16^{i+j}n}\right)_{0\leq i,j\leq2}
=
\sum_{m\geq0}C_ms^{m+3}v_mv_m^T.
$$

Step 4: Locate the first nonzero determinant term

Expand the determinant multilinearly using the rank-one summands from Step 3. Any term selecting the same index $m$ twice vanishes because the corresponding columns are proportional. The smallest possible sum of powers therefore comes from the three distinct indices
$$
m=0,1,2.
$$
Their total power of $s$ is
$$
3+4+5=12.
$$
All other triples have total power at least $13$. Hence
$$
K_n=
C_0C_1C_2s^{12}
\det(v_0,v_1,v_2)^2
+O(s^{13}).
$$

The determinant is a Vandermonde determinant in
$$
r_0=\frac18,\qquad
r_1=\frac1{16},\qquad
r_2=\frac1{32}.
$$
Thus
$$
\det(v_0,v_1,v_2)^2
=
\left[
(r_1-r_0)(r_2-r_0)(r_2-r_1)
\right]^2
=
\frac9{2^{28}}.
$$
Therefore
$$
K_n=
\frac9{2^{28}}C_0C_1C_2s^{12}
+O(s^{13}).
$$

Step 5: Evaluate the limit

Since
$$
s^{12}=n^{-3},
$$
we get
$$
\lim_{n\to\infty}n^3K_n
=
\frac9{2^{28}}C_0C_1C_2.
$$
From Step 2,
$$
C_0C_1C_2
=
\frac{-9\pi^4\left[G^4+(288\sqrt2-80)\pi^2\right]}{G^{12}}.
$$
Substitution gives the requested exact value.

Final Answer: $\boxed{\displaystyle -\frac{81\pi^4(G^4+(288\sqrt2-80)\pi^2)}{2^{28}G^{12}}}$

## Answer

$\displaystyle -\frac{81\pi^4(G^4+(288\sqrt2-80)\pi^2)}{2^{28}G^{12}}$

## Classification

**Domain:** Calculus

**Sub-domain:** Limits and continuity

**Problem Type:** Exact computation

**Answer Type:** Exact scalar

## Solution Concepts

- competing endpoint scales
- Laplace-type asymptotics
- determinant cancellation
- dilation structure
- asymptotic limits
