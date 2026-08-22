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
vanishes only at $0$ and $1$. Near $0$ the natural scale is $x=O(s)$, while near $1$ it is $1-x=O(s^2)$. The contribution from a fixed closed subinterval of $(0,1)$ is exponentially small.

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
Thus the left-end contribution is
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
n\phi(x)=v^2(1-s^2v)^4
$$
and
$$
x^ke^{-n\phi(x)}
=
e^{-v^2}
\left[
1+s^2(4v^3-kv)+O(s^4)
\right].
$$
Hence
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

Step 2: Derive the first three coefficients of $H_n$

Write
$$
R=\Gamma\!\left(\frac34\right).
$$
Combining the endpoint expansions from Step 1 gives
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

Put
$$
N_n=I_2I_4-I_3^2.
$$
The $s^4$ terms cancel. At order $s^5$ the coefficient is
$$
\frac{\sqrt\pi R}{8}.
$$
At order $s^6$,
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
Therefore
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
C_1=-\frac{12\pi R}{G^3},
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
we obtain
$$
C_0=\frac{2\sqrt2\,\pi^{3/2}}{G^3},
$$
$$
C_1=-\frac{12\sqrt2\,\pi^2}{G^4},
$$
and
$$
C_2=
\frac{3\sqrt\pi\left[G^4+(288\sqrt2-80)\pi^2\right]}
{16G^5}.
$$

Step 3: Resolve the first dilation cancellation

Since multiplication of $n$ by $16$ replaces $s$ by $s/2$,
$$
H_{16n}
=
C_0\left(\frac{s}{2}\right)^3
+C_1\left(\frac{s}{2}\right)^4
+C_2\left(\frac{s}{2}\right)^5
+O(s^6),
$$
and
$$
H_{256n}
=
C_0\left(\frac{s}{4}\right)^3
+C_1\left(\frac{s}{4}\right)^4
+C_2\left(\frac{s}{4}\right)^5
+O(s^6).
$$

In
$$
K_n=H_nH_{256n}-H_{16n}^2,
$$
the $C_0^2s^6$ terms cancel.

At order $s^7$, the coefficient is
$$
C_0C_1
\left(
4^{-4}+4^{-3}-2\cdot2^{-7}
\right)
=
\frac{C_0C_1}{2^8}.
$$
At order $s^8$, the $C_1^2$ terms cancel because
$$
4^{-4}=2^{-8},
$$
while the $C_0C_2$ contribution is
$$
C_0C_2
\left(
4^{-5}+4^{-3}-2\cdot2^{-8}
\right)
=
\frac{9C_0C_2}{2^{10}}.
$$
Consequently
$$
K_n=As^7+Bs^8+O(s^9),
$$
with
$$
A=\frac{C_0C_1}{2^8}
=
-\frac{3\pi^{7/2}}{16G^7},
$$
and
$$
B=\frac{9C_0C_2}{2^{10}}
=
\frac{27\sqrt2\,\pi^2
\left[G^4+(288\sqrt2-80)\pi^2\right]}
{2^{13}G^8}.
$$

Step 4: Resolve the second dilation cancellation

The expansion from Step 3 gives
$$
K_{16n}
=
A\left(\frac{s}{2}\right)^7
+B\left(\frac{s}{2}\right)^8
+O(s^9),
$$
and
$$
K_{256n}
=
A\left(\frac{s}{4}\right)^7
+B\left(\frac{s}{4}\right)^8
+O(s^9).
$$
The order-$s^{14}$ terms in
$$
K_nK_{256n}-K_{16n}^2
$$
cancel because
$$
4^{-7}=2^{-14}.
$$
The order-$s^{15}$ coefficient is
$$
AB
\left(
4^{-8}+4^{-7}-2\cdot2^{-15}
\right)
=
\frac{AB}{2^{16}}.
$$
Therefore
$$
K_nK_{256n}-K_{16n}^2
=
\frac{AB}{2^{16}}s^{15}
+O(s^{16}).
$$

Step 5: Evaluate the limit

Since
$$
s^{15}=n^{-15/4},
$$
the requested limit equals
$$
\frac{AB}{2^{16}}.
$$
Using the values of $A$ and $B$ from Step 3,
$$
\frac{AB}{2^{16}}
=
-\frac{
81\sqrt2\,\pi^{11/2}
\left[G^4+(288\sqrt2-80)\pi^2\right]
}
{2^{33}G^{15}}.
$$

Final Answer: $\boxed{-\frac{81\sqrt2\pi^{11/2}(G^4+(288\sqrt2-80)\pi^2)}{2^{33}G^{15}}}$

## Answer

$-\frac{81\sqrt2\pi^{11/2}(G^4+(288\sqrt2-80)\pi^2)}{2^{33}G^{15}}$

## Classification

**Domain:** Calculus

**Sub-domain:** Limits and continuity

**Problem Type:** Exact computation

**Answer Type:** Exact scalar

## Solution Concepts

- competing endpoint scales
- Laplace-type asymptotics
- moment cancellation
- nested dilation cancellation
- asymptotic limits
