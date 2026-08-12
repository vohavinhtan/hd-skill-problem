## Steps

Step 1: Convert the Taylor data into boundary moments

By the Herglotz representation theorem, the conditions $\operatorname{Re}p>0$ on $\mathbb D$ and $p(0)=1$ give a unique probability measure $\mu$ on the unit circle such that
$$
p(z)=\int_{|\xi|=1}\frac{\xi+z}{\xi-z}\,d\mu(\xi).
$$
Indeed, this is the normalized positive-real representation, and the normalization $p(0)=1$ makes the representing measure have total mass $1$. Expanding
$$
\frac{\xi+z}{\xi-z}=1+2\sum_{n\geq1}z^n\xi^{-n}
$$
for $|z|<1$ gives
$$
p(z)=1+2\sum_{n\geq1}m_nz^n,
\qquad
m_n=\int\xi^{-n}\,d\mu(\xi).
$$
The prescribed Taylor coefficients therefore give
$$
m_1=-\frac16-\frac{i}{15},\qquad
m_2=-\frac1{10}-\frac{i}{30},\qquad
m_3=-\frac{17}{30}+\frac{i}{50}.
$$
Let $X=\operatorname{Re}\xi$. Taking real parts and using
$$
\cos2t=2\cos^2t-1,
\qquad
\cos3t=4\cos^3t-3\cos t,
$$
yields
$$
\mathbb E X=-\frac16,
\qquad
\mathbb E X^2=\frac9{20},
\qquad
\mathbb E X^3=-\frac4{15}.
$$

Step 2: Express the objective and the extra constraint as Poisson-kernel averages

For real $r\in(-1,1)$, the Herglotz formula gives
$$
\operatorname{Re}p(r)
=\int\frac{1-r^2}{1+r^2-2rX}\,d\mu.
$$
At $r=\pm1/2$, put
$$
K_+(x)=\frac3{5-4x},
\qquad
K_-(x)=\frac3{5+4x}.
$$
Then
$$
\operatorname{Re}p\left(\frac12\right)=\mathbb E K_+(X),
\qquad
\mathbb E K_-(X)=\operatorname{Re}p\left(-\frac12\right)=\frac{77}{57}.
$$
Thus the original problem is exactly the minimization of $\mathbb E K_+(X)$ subject to the three fixed moments from Step 1 and the fixed value of $\mathbb E K_-(X)$.

Step 3: Construct a sharp dual certificate

To discover the equality set, write
$$
g(x)=(x+1)(x^2-sx+t).
$$
If an equality measure is supported on the zeros of $g$, then the moments from Step 1 give
$$
0=\mathbb E g(X)=-\frac{17s-50t-11}{60},
$$
so
$$
17s-50t=11.
$$
Also
$$
K_-(x)=\frac{3}{4(x+5/4)},
$$
so the fixed negative-point value gives
$$
\mathbb E\frac1{X+5/4}=\frac{308}{171}.
$$
Polynomial division gives
$$
\frac{g(x)}{x+5/4}
=x^2-\left(s+\frac14\right)x+t+\frac{s}{4}+\frac5{16}
-\frac{\frac{5s}{16}+\frac t4+\frac{25}{64}}{x+5/4}.
$$
Taking expectations and imposing $g(X)=0$ on the candidate equality support gives
$$
125s-470t=86.
$$
Solving the two linear equations gives
$$
s=\frac12,
\qquad
t=-\frac1{20},
$$
so the two interior contacts are the roots of
$$
P(x)=20x^2-10x-1.
$$

Now seek
$$
K_+(x)-\lambda K_-(x)-q(x)
=C\frac{(1+x)P(x)^2}{25-16x^2},
$$
where $q$ is cubic. Multiplying by $25-16x^2$ gives
$$
3(5+4x)-3\lambda(5-4x)-q(x)(25-16x^2)
=C(1+x)P(x)^2.
$$
At $x=5/4$, $P(5/4)=71/4$, hence
$$
30=C\frac94\left(\frac{71}{4}\right)^2,
$$
which gives
$$
C=\frac{640}{15123}.
$$
At $x=-5/4$, $P(-5/4)=171/4$, so
$$
-30\lambda=-C\frac14\left(\frac{171}{4}\right)^2,
$$
and therefore
$$
\lambda=\frac{3249}{5041}.
$$
With these constants, the remaining numerator factors as
$$
3(5+4x)-3\lambda(5-4x)-C(1+x)P(x)^2
=(25-16x^2)\frac{200(80x^3+57x+16)}{15123}.
$$
Hence
$$
\frac3{5-4x}
-\frac{3249}{5041}\frac3{5+4x}
-\frac{200(80x^3+57x+16)}{15123}
=
\frac{640(1+x)(20x^2-10x-1)^2}{15123(25-16x^2)}.
$$
For $-1\leq x\leq1$, the right-hand side is nonnegative. Taking expectations and using the three moments gives
$$
\mathbb E\frac{200(80X^3+57X+16)}{15123}
=-\frac{8900}{45369}.
$$
Therefore
$$
\operatorname{Re}p\left(\frac12\right)
\geq
\frac{3249}{5041}\frac{77}{57}-\frac{8900}{45369}
=\frac{431}{639}.
$$

Step 4: Determine the equality measure and prove its uniqueness

Equality in the certificate from Step 3 forces
$$
(1+X)(20X^2-10X-1)^2=0
$$
$\mu$-almost everywhere. Thus $X$ is supported on
$$
-1,
\qquad
r_+=\frac{5+3\sqrt5}{20},
\qquad
r_-=\frac{5-3\sqrt5}{20}.
$$
These numbers satisfy
$$
r_++r_-=\frac12,
\qquad
r_+r_-=-\frac1{20},
\qquad
r_+^2+r_-^2=\frac7{20}.
$$
Let $W_{-1},W_+,W_-$ be the total masses of the three real-part classes. Total mass together with $\mathbb EX$ and $\mathbb EX^2$ gives a nonsingular Vandermonde system. The values
$$
W_{-1}=W_+=W_-=\frac13
$$
satisfy it, so they are the unique solution. They also satisfy the third real moment because
$$
\frac{-1+r_+^3+r_-^3}{3}
=\frac{-1+\frac15}{3}
=-\frac4{15}.
$$

Put
$$
s_{\pm}=\sqrt{1-r_{\pm}^2},
\qquad
\eta_{\pm}=r_{\pm}+is_{\pm}.
$$
Let $\delta_{\pm}$ be the mass at $\eta_{\pm}$ minus the mass at $\overline{\eta_{\pm}}$. The imaginary parts of $m_1$ and $m_2$ give
$$
s_+\delta_++s_-\delta_-=\frac1{15},
$$
$$
2r_+s_+\delta_++2r_-s_-\delta_-=\frac1{30}.
$$
Since $r_+\neq r_-$ and $r_++r_-=1/2$, the unique solution is
$$
s_+\delta_+=s_-\delta_-=\frac1{30}.
$$
Consequently equality forces the unique probability measure
$$
\mu_*=\frac13\delta_{-1}
+\sum_{\epsilon\in\{+,-\}}
\left[
\left(\frac16+\frac1{60s_\epsilon}\right)\delta_{\eta_\epsilon}
+\left(\frac16-\frac1{60s_\epsilon}\right)\delta_{\overline{\eta_\epsilon}}
\right].
$$
Because $|r_{\pm}|<3/5$, we have $s_{\pm}>4/5$, so every displayed weight is positive. The third imaginary moment is
$$
-\frac1{30}\left((4r_+^2-1)+(4r_-^2-1)\right)=\frac1{50},
$$
which matches $\operatorname{Im}m_3$. Finally,
$$
\mathbb E_{\mu_*}K_-(X)
=\frac13\left(3+\frac3{5+4r_+}+\frac3{5+4r_-}\right)
=\frac{77}{57},
$$
so $\mu_*$ satisfies every constraint.

Step 5: Reconstruct the extremal function

The Herglotz function represented by $\mu_*$ is
$$
p_*(z)=\frac13\frac{1-z}{1+z}
+\sum_{\epsilon\in\{+,-\}}
\frac{\frac13(1-z^2)-\frac{i}{15}z}{1-2r_\epsilon z+z^2}.
$$
Using $r_++r_-=1/2$ and $r_+r_-=-1/20$, the common denominator satisfies
$$
(1+z)\prod_{\epsilon\in\{+,-\}}(1-2r_\epsilon z+z^2)
=z^5+\frac45z^3+\frac45z^2+1.
$$
Combining the three fractions gives
$$
p_*(z)=
\frac{-15z^5+(5-2i)z^4-(9+i)z^3+(9-i)z^2-(5+2i)z+15}{15z^5+12z^3+12z^2+15}.
$$
Its Taylor expansion is
$$
1+\left(-\frac13-\frac{2i}{15}\right)z
+\left(-\frac15-\frac{i}{15}\right)z^2
+\left(-\frac{17}{15}+\frac{i}{25}\right)z^3+O(z^4),
$$
and the representing measure proves $\operatorname{Re}p_*>0$ on $\mathbb D$. Direct substitution gives
$$
p_*\left(\frac12\right)=\frac{431}{639}-\frac{16i}{213},
\qquad
p_*\left(-\frac12\right)=\frac{77}{57}+\frac{8i}{171}.
$$
Thus $p_*$ attains the lower bound $431/639$. Any other minimizer would force equality in the nonnegative certificate and therefore the same measure $\mu_*$ by Step 4; uniqueness in the Herglotz representation then forces the same function. Hence $p_*$ is the unique minimizer.

Final Answer: $\boxed{\frac{-15z^5+(5-2i)z^4-(9+i)z^3+(9-i)z^2-(5+2i)z+15}{15z^5+12z^3+12z^2+15}}$

---

## Answer

$\frac{-15z^5+(5-2i)z^4-(9+i)z^3+(9-i)z^2-(5+2i)z+15}{15z^5+12z^3+12z^2+15}$

---

## Classification

**Problem Type:** Optimization

**Answer Type:** Function or mapping

---

## Solution Concepts

- positive-real functions
- Herglotz representation
- boundary moments
- rational dual certificate
- equality-support rigidity