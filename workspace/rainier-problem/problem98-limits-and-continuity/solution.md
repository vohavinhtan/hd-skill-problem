## Steps

Step 1: Separate the two boundary scales

Put
$$
\varepsilon=n^{-1/4}.
$$
The phase
$$
\phi(x)=x^4(1-x)^2
$$
vanishes only at $0$ and $1$. Near $0$ its order is $4$, so the scale is $x=O(\varepsilon)$. Near $1$ its order is $2$, so the scale is $1-x=O(\varepsilon^2)$.

Choose a fixed $\delta\in(0,1/2)$. On $[\delta,1-\delta]$ we have $\phi(x)\geq c_\delta>0$, so that portion of every $I_k(n)$ is exponentially small. It remains to expand the two endpoint pieces.

At $0$, set
$$
x=\varepsilon u.
$$
Then
$$
n x^4(1-x)^2
=
u^4(1-\varepsilon u)^2.
$$
Hence
$$
e^{-n x^4(1-x)^2}
=
e^{-u^4}
\left[
1+2\varepsilon u^5
+\varepsilon^2(2u^{10}-u^6)
+O(\varepsilon^3)
\right].
$$
Define
$$
A_m=\int_0^\infty u^m e^{-u^4}\,du
=
\frac14\Gamma\!\left(\frac{m+1}{4}\right).
$$
Therefore the contribution from $0$ is
$$
I_k^{(0)}
=
\varepsilon^{k+1}
\left[
A_k+2\varepsilon A_{k+5}
+\varepsilon^2(2A_{k+10}-A_{k+6})
+O(\varepsilon^3)
\right].
$$

At $1$, set
$$
1-x=\varepsilon^2v.
$$
Then
$$
n x^4(1-x)^2
=
v^2(1-\varepsilon^2v)^4,
$$
so
$$
x^k e^{-n x^4(1-x)^2}
=
e^{-v^2}
\left[
1+\varepsilon^2(4v^3-kv)+O(\varepsilon^4)
\right].
$$
Thus
$$
I_k^{(1)}
=
\varepsilon^2
\left[
B_0+\varepsilon^2B_{1,k}+O(\varepsilon^4)
\right],
$$
where
$$
B_0=\frac{\sqrt\pi}{2},
\qquad
B_{1,k}
=
\int_0^\infty(4v^3-kv)e^{-v^2}\,dv
=
2-\frac{k}{2}.
$$

Step 2: Record the four moment expansions

Write
$$
G=\Gamma\!\left(\frac14\right),
\qquad
R=\Gamma\!\left(\frac34\right).
$$
Using the formulas from Step 1,
$$
I_0=
\frac{G}{4}\varepsilon
+\frac{3\sqrt\pi}{4}\varepsilon^2
+\frac{15R}{32}\varepsilon^3
+O(\varepsilon^4).
$$

For $I_2$,
$$
I_2=
\frac{\sqrt\pi}{2}\varepsilon^2
+\frac{R}{4}\varepsilon^3
+\frac32\varepsilon^4
+\frac{35G}{128}\varepsilon^5
+O(\varepsilon^6).
$$

For $I_3$,
$$
I_3=
\frac{\sqrt\pi}{2}\varepsilon^2
+\frac34\varepsilon^4
+\frac{5G}{32}\varepsilon^5
+O(\varepsilon^6).
$$

For $I_4$,
$$
I_4=
\frac{\sqrt\pi}{2}\varepsilon^2
+\frac{G}{16}\varepsilon^5
+O(\varepsilon^6).
$$

The absence of an $\varepsilon^3$ term in $I_3,I_4$ is caused by the higher power of $x$ at the quartic endpoint, while the absence of an $\varepsilon^4$ correction from the quadratic endpoint in $I_4$ follows from
$$
B_{1,4}=0.
$$

Step 3: Use the determinant cancellation

Put
$$
N=I_2I_4-I_3^2.
$$
The order-$\varepsilon^4$ terms cancel because all three moments have the same leading contribution from the endpoint $x=1$.

At order $\varepsilon^5$,
$$
N=
\frac{\sqrt\pi R}{8}\varepsilon^5+O(\varepsilon^6).
$$
At order $\varepsilon^6$, the coefficient is
$$
\frac{\sqrt\pi}{2}
\left(
\frac32-2\cdot\frac34
\right)=0.
$$
Thus there is a second cancellation.

At order $\varepsilon^7$, the coefficient is
$$
\frac{\sqrt\pi}{2}
\left(
\frac{35G}{128}
+\frac{G}{16}
-2\frac{5G}{32}
\right)
=
\frac{3\sqrt\pi G}{256}.
$$
Hence
$$
N=
\frac{\sqrt\pi R}{8}\varepsilon^5
+\frac{3\sqrt\pi G}{256}\varepsilon^7
+O(\varepsilon^8).
$$

Step 4: Divide by the normalization

From Step 2,
$$
I_0^2=
\frac{G^2}{16}\varepsilon^2
\left[
1+\delta_1\varepsilon+\delta_2\varepsilon^2
+O(\varepsilon^3)
\right],
$$
where
$$
\delta_1=\frac{6\sqrt\pi}{G},
$$
and
$$
\delta_2=
\frac{9\pi}{G^2}
+\frac{15R}{4G}.
$$
Therefore
$$
H_n
=
\varepsilon^3
\left[
C_0+C_1\varepsilon+C_2\varepsilon^2
+O(\varepsilon^3)
\right],
$$
with
$$
C_0=
\frac{2\sqrt\pi R}{G^2},
$$
$$
C_1=-\delta_1C_0
=
-\frac{12\pi R}{G^3},
$$
and
$$
C_2=
\frac{3\sqrt\pi}{16G}
+
C_0(\delta_1^2-\delta_2).
$$

The reflection formula
$$
\Gamma\!\left(\frac14\right)
\Gamma\!\left(\frac34\right)
=
\pi\sqrt2
$$
gives
$$
C_0=
\frac{2\sqrt2\,\pi^{3/2}}{G^3},
$$
$$
C_1=
-\frac{12\sqrt2\,\pi^2}{G^4},
$$
and
$$
C_2=
\frac{
3\sqrt\pi
\left[
G^4+(288\sqrt2-80)\pi^2
\right]
}
{16G^5}.
$$

Step 5: Match the normalization in the requested limit

Since
$$
\varepsilon=n^{-1/4},
$$
Step 4 gives
$$
n^{3/4}H_n
=
C_0+C_1n^{-1/4}+C_2n^{-1/2}
+O(n^{-3/4}).
$$
The two displayed subtraction terms in the problem remove $C_0$ and $C_1n^{-1/4}$. Multiplication by $n^{1/2}$ therefore leaves $C_2$.

Final Answer: $\boxed{\frac{3\sqrt{\pi}(\Gamma(\frac14)^4+(288\sqrt2-80)\pi^2)}{16\Gamma(\frac14)^5}}$

## Answer

$\frac{3\sqrt{\pi}(\Gamma(\frac14)^4+(288\sqrt2-80)\pi^2)}{16\Gamma(\frac14)^5}$

## Classification

**Domain:** Calculus

**Sub-domain:** Limits and continuity

**Problem Type:** Exact computation

**Answer Type:** Exact scalar

## Solution Concepts

- competing boundary layers
- Laplace-type endpoint asymptotics
- determinant cancellation
- gamma-function integrals
- asymptotic limits
