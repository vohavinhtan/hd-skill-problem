```markdown id="f6f8jp"
## Steps

Step 1: Identify the limiting lattice sum

Define
$$
F(a)=
\sum_{k\in\mathbb Z}
\frac{1}{(k-a)^2+1}.
$$
For
$$
f(x)=\frac1{x^2+1},
$$
its Fourier transform in the convention
$$
\widehat f(j)=
\int_{\mathbb R}f(x)e^{-2\pi ijx}\,dx
$$
is
$$
\widehat f(j)=\pi e^{-2\pi|j|}.
$$
Applying the Fourier expansion of the periodization of $f$ gives
$$
F(a)
=
\pi
\left[
1+2\sum_{j\geq1}e^{-2\pi j}\cos(2\pi ja)
\right].
$$
Writing $q=e^{-2\pi}$ and summing the geometric series,
$$
1+2\sum_{j\geq1}q^j\cos(j\theta)
=
\frac{1-q^2}{1-2q\cos\theta+q^2}.
$$
Therefore
$$
F(a)=
\frac{\pi\sinh(2\pi)}
{\cosh(2\pi)-\cos(2\pi a)}.
$$

At
$$
a_0=\frac13,
$$
we have
$$
\cos(2\pi a_0)=-\frac12,
$$
and consequently
$$
F(a_0)=\frac{\pi S}{H}.
$$
Thus $a_m\to a_0$ once the finite sums are shown to converge uniformly near $a_0$.

Step 2: Compute the derivatives governing the implicit displacement

Put
$$
D(a)=\cosh(2\pi)-\cos(2\pi a).
$$
Then
$$
F(a)=\frac{\pi S}{D(a)}.
$$
Since
$$
D'(a)=2\pi\sin(2\pi a),
$$
we obtain
$$
F'(a)=
-\frac{2\pi^2S\sin(2\pi a)}{D(a)^2}.
$$
At $a_0=1/3$,
$$
D(a_0)=H,
\qquad
\sin(2\pi a_0)=\frac{\sqrt3}{2},
$$
so
$$
F'(a_0)=
-\frac{\pi^2\sqrt3\,S}{H^2}.
$$

Differentiating once more,
$$
F''(a)
=
-\frac{4\pi^3S\cos(2\pi a)}{D(a)^2}
+
\frac{8\pi^3S\sin^2(2\pi a)}{D(a)^3}.
$$
Hence
$$
F''(a_0)
=
\frac{2\pi^3S}{H^2}
+
\frac{6\pi^3S}{H^3}
=
\frac{2\pi^3S(H+3)}{H^3}.
$$

Since $F'(a)<0$ on the compact interval
$$
\left[\frac14,\frac5{12}\right],
$$
and the differentiated tails converge uniformly there, $F_m'(a)<0$ throughout that interval for large $m$. Uniform convergence of $F_m$ to $F$ then gives the stated unique solution near $a_0$.

Step 3: Expand the omitted symmetric tail

Let
$$
T_m(a)=F(a)-F_m(a).
$$
For $a$ in a fixed compact subset of $(0,\frac12)$,
$$
T_m(a)
=
\sum_{k=m+1}^{\infty}
\left[
\frac1{(k-a)^2+1}
+
\frac1{(k+a)^2+1}
\right].
$$
Expanding the paired summand for large $k$,
$$
\frac1{(k-a)^2+1}
+
\frac1{(k+a)^2+1}
=
\frac2{k^2}+O(k^{-4}),
$$
uniformly in $a$ on that compact set.

Also
$$
\sum_{k=m+1}^{\infty}\frac1{k^2}
=
\frac1m-\frac1{2m^2}+O(m^{-3}).
$$
Therefore
$$
T_m(a)
=
\frac2m-\frac1{m^2}+O(m^{-3})
$$
uniformly near $a_0$.

The absence of an $a$-dependent term through order $m^{-2}$ is caused by the symmetric pairing of the positive and negative tails.

Step 4: Solve the implicit equation through second order

Write
$$
\delta_m=a_m-a_0.
$$
The defining equation is
$$
F(a_m)-T_m(a_m)=F(a_0).
$$
Since $F'(a_0)\neq0$ and $T_m=O(m^{-1})$,
$$
\delta_m=O(m^{-1}).
$$
Taylor expansion gives
$$
F'(a_0)\delta_m
+\frac12F''(a_0)\delta_m^2
-\frac2m+\frac1{m^2}
=
O(m^{-3}).
$$

Seek
$$
\delta_m=
\frac{d_1}{m}
+\frac{d_2}{m^2}
+O(m^{-3}).
$$
At order $m^{-1}$,
$$
F'(a_0)d_1=2,
$$
hence
$$
d_1=
-\frac{2H^2}{\pi^2\sqrt3\,S}.
$$

At order $m^{-2}$,
$$
F'(a_0)d_2
+\frac12F''(a_0)d_1^2
+1=0.
$$
Now
$$
\frac12F''(a_0)d_1^2
=
\frac{4H(H+3)}{3\pi S}.
$$
Therefore
$$
d_2=
\frac{H^2}{\pi^2\sqrt3\,S}
\left(
1+\frac{4H(H+3)}{3\pi S}
\right).
$$

Step 5: Evaluate the normalized root displacement

From Step 4,
$$
a_m-\frac13
=
-\frac{2H^2}{\pi^2\sqrt3\,S}\frac1m
+
\frac{H^2}{\pi^2\sqrt3\,S}
\left(
1+\frac{4H(H+3)}{3\pi S}
\right)\frac1{m^2}
+
O(m^{-3}).
$$
Thus the subtraction appearing in the problem removes the first displacement, and multiplication by $m^2$ leaves the second coefficient.

Final Answer: $\boxed{\frac{H^2}{\pi^2\sqrt3S}\left(1+\frac{4H(H+3)}{3\pi S}\right)}$

---

## Answer

$\frac{H^2}{\pi^2\sqrt3S}\left(1+\frac{4H(H+3)}{3\pi S}\right)$

---

## Classification

**Domain:** Calculus

**Sub-domain:** Limits and continuity

**Problem Type:** Exact computation

**Answer Type:** Exact scalar

---

## Solution Concepts

- periodized lattice sums
- Fourier transformation
- symmetric tail expansion
- implicit root asymptotics
- second-order limits
