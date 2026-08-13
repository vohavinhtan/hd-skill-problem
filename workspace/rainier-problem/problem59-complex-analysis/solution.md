## Steps

Step 1: Encode the Taylor data by regularized boundary measures

Write
$$
p(z)=1+2\sum_{n\geq1}m_nz^n.
$$
For $0<\rho<1$, define
$$
d\mu_\rho(e^{it})=\frac{\operatorname{Re}p(\rho e^{it})}{2\pi}\,dt.
$$
This is a probability measure: its density is positive, and averaging the Taylor series over $t$ leaves only the constant term $1$. Since
$$
\operatorname{Re}p(\rho e^{it})
=
1+\sum_{n\geq1}\left(m_n\rho^ne^{int}+\overline{m_n}\rho^ne^{-int}\right),
$$
Fourier integration gives
$$
\int e^{-int}\,d\mu_\rho(e^{it})=\rho^nm_n
\qquad(n\geq1).
$$
The prescribed coefficients therefore give
$$
m_1=-\frac16-\frac{i}{15},\qquad
m_2=-\frac1{10}-\frac{i}{30},\qquad
m_3=-\frac{17}{30}+\frac{i}{50}.
$$
Let $X(e^{it})=\cos t$. The preceding Fourier identities and
$$
\cos^2t=\frac{1+\cos2t}{2},
\qquad
\cos^3t=\frac{3\cos t+\cos3t}{4}
$$
imply
$$
\lim_{\rho\uparrow1}\mathbb E_\rho X=-\frac16,\qquad
\lim_{\rho\uparrow1}\mathbb E_\rho X^2=\frac9{20},\qquad
\lim_{\rho\uparrow1}\mathbb E_\rho X^3=-\frac4{15},
$$
where $\mathbb E_\rho$ denotes expectation with respect to $\mu_\rho$.

Step 2: Convert the two interior values into Poisson-kernel averages

For $x=\cos t$, put
$$
K_+(x)=\frac3{5-4x},
\qquad
K_-(x)=\frac3{5+4x}.
$$
The geometric-series identities
$$
K_+(\cos t)=1+2\sum_{n\geq1}\left(\frac12\right)^n\cos nt,
$$
$$
K_-(\cos t)=1+2\sum_{n\geq1}\left(-\frac12\right)^n\cos nt
$$
converge uniformly in $t$. Using Step 1 term by term gives
$$
\mathbb E_\rho K_+(X)=\operatorname{Re}p\left(\frac{\rho}{2}\right),
\qquad
\mathbb E_\rho K_-(X)=\operatorname{Re}p\left(-\frac{\rho}{2}\right).
$$
Hence, as $\rho\uparrow1$,
$$
\mathbb E_\rho K_-(X)\longrightarrow\frac{77}{57},
$$
while minimizing the problem is equivalent to minimizing the limit of
$\mathbb E_\rho K_+(X)$.

Step 3: Derive and construct the sharp dual certificate

For real $\lambda$ and a real cubic $q$, define
$$
S(x)=K_+(x)-\lambda K_-(x)-q(x),
\qquad
R(x)=(25-16x^2)S(x).
$$
If $S\geq0$ on $[-1,1]$, then integrating against $\mu_\rho$ and taking
$\rho\uparrow1$ gives a lower bound because all limiting moments in Steps 1
and 2 are fixed. The polynomial $R$ has degree at most $5$ and is
nonnegative on $[-1,1]$. Also $R(5/4)=30$, so it is not the zero polynomial
and has only finitely many zeros. Every interior zero of such a polynomial
has even multiplicity.

We first determine the possible contact pattern of a sharp certificate.
If equality is attained, then
$$
\mathbb E_\rho S(X)\longrightarrow0.
$$
For any closed set separated from the zero set of $S$, the minimum of $S$
there is positive, so its $\mu_\rho$-mass tends to $0$. Thus along a
subsequence the finitely many masses near the zeros converge to a
probability distribution on the zero set satisfying the limiting
constraints from Steps 1 and 2.

Such a distribution needs at least three distinct $X$-values. One point is
excluded by
$$
\mathbb E X^2-(\mathbb E X)^2=\frac{19}{45}>0.
$$
For two points, some $x^2-sx+t$ vanishes on the support. Multiplying by $1$
and $X$ and using the first three limiting moments gives
$$
s=-\frac{69}{152},\qquad t=-\frac{569}{1520}.
$$
On the two roots,
$$
\frac1{x+5/4}
=
\frac{s+5/4-x}{t+\frac54s+\frac{25}{16}},
$$
hence
$$
\mathbb E K_-(X)=\frac{2195}{1887}\neq\frac{77}{57}.
$$
So at least three contact values are required.

A degree-$5$ polynomial nonnegative on $[-1,1]$ cannot have four distinct
zeros there: every interior zero counts at least twice and there are only
two endpoints. Three interior zeros are likewise impossible. If the three
contacts were $\{-1,c,1\}$, then
$$
(X^2-1)(X-c)=0
$$
would force
$$
c=\frac{\mathbb E X-\mathbb E X^3}{1-\mathbb E X^2}=\frac2{11}.
$$
On the nodes $-1,2/11,1$,
$$
K_-(x)=\frac{139}{189}-\frac43x+\frac{176}{189}x^2,
$$
so the fixed moments would give
$$
\mathbb E K_-(X)=\frac{1301}{945}\neq\frac{77}{57}.
$$
Therefore a sharp degree-$5$ certificate has one endpoint contact and two
interior double contacts.

The endpoint cannot be $1$. Otherwise
$$
R(x)=C(1-x)(x-a)^2(x-b)^2,\qquad C>0,
$$
with $a,b\in(-1,1)$. But from the definition of $R$,
$$
R\left(\frac54\right)=30,
$$
whereas the displayed factorization is negative at $5/4$. Thus the
endpoint is $-1$ and
$$
R(x)=C(1+x)(x-a)^2(x-b)^2.
$$
Write
$$
(x-a)(x-b)=x^2-sx+t,\qquad
g(x)=(x+1)(x^2-sx+t).
$$
For the limiting equality distribution, $g(X)=0$. The moments give
$$
17s-50t=11.
$$
Also $\mathbb E K_-(X)=77/57$ gives
$$
\mathbb E\frac1{X+5/4}=\frac{308}{171}.
$$
Using
$$
\frac{g(x)}{x+5/4}
=
x^2-\left(s+\frac14\right)x+t+\frac{s}{4}+\frac5{16}
-\frac{\frac{5s}{16}+\frac t4+\frac{25}{64}}{x+5/4}
$$
and taking expectations gives $125s-470t=86$. Therefore
$$
s=\frac12,\qquad t=-\frac1{20},
$$
and the interior contacts are
$$
r_+=\frac{5+3\sqrt5}{20},
\qquad
r_-=\frac{5-3\sqrt5}{20}.
$$
Put $P(x)=20x^2-10x-1$. The slack must have the form
$$
S(x)=C\frac{(1+x)P(x)^2}{25-16x^2}.
$$
After clearing denominators, evaluation at $x=5/4$ and $x=-5/4$ gives
$$
C=\frac{640}{15123},
\qquad
\lambda=\frac{3249}{5041}.
$$
Comparing the remaining coefficients gives
$$
q(x)=\frac{200(80x^3+57x+16)}{15123},
$$
so the exact identity is
$$
\frac3{5-4x}
-\frac{3249}{5041}\frac3{5+4x}
-\frac{200(80x^3+57x+16)}{15123}
=
\frac{640(1+x)(20x^2-10x-1)^2}{15123(25-16x^2)}.
$$
Its right side is nonnegative on $[-1,1]$. Moreover
$$
\lim_{\rho\uparrow1}\mathbb E_\rho q(X)
=
\frac{200}{15123}
\left(80\left(-\frac4{15}\right)+57\left(-\frac16\right)+16\right)
=
-\frac{8900}{45369}.
$$
Therefore
$$
\operatorname{Re}p\left(\frac12\right)
\geq
\frac{3249}{5041}\frac{77}{57}-\frac{8900}{45369}
=
\frac{431}{639}.
$$

Step 4: Determine the equality masses

Suppose equality holds. By Step 3, $\mu_\rho$ concentrates, as
$\rho\uparrow1$, on the five circle points
$$
-1,\qquad
\eta_\pm=r_\pm+is_\pm,\qquad
\overline{\eta_\pm},
\qquad
s_\pm=\sqrt{1-r_\pm^2}.
$$
Indeed these are exactly the points whose real parts are the three zeros of
the slack. Partition the circle into five disjoint arcs $A_j$, each
containing exactly one contact point $\xi_j$. Step 3 implies that the mass
outside arbitrarily small neighborhoods of these five points tends to $0$.
Hence, for every continuous $f$,
$$
\int f\,d\mu_\rho-\sum_j f(\xi_j)\mu_\rho(A_j)\longrightarrow0:
$$
inside small neighborhoods this follows from uniform continuity, and the
remaining mass tends to $0$. Along any sequence $\rho\uparrow1$, the five
numbers $\mu_\rho(A_j)$ have a convergent subsequence, and the displayed
limit turns the Fourier and moment identities into exact linear equations
for its limiting masses.

Let $W_{-1},W_+,W_-$ be the total limiting masses of the three real-part
classes. Since
$$
r_++r_-=\frac12,\qquad
r_+r_-=-\frac1{20},
$$
the equations for total mass, $\mathbb EX$, and $\mathbb EX^2$ form a
Vandermonde system with determinant
$$
(r_++1)(r_-+1)(r_--r_+)\neq0.
$$
Its unique solution is
$$
W_{-1}=W_+=W_-=\frac13.
$$
It also gives the third real moment because
$$
\frac{-1+r_+^3+r_-^3}{3}=-\frac4{15}.
$$

Let $\delta_\pm$ be the limiting mass at $\eta_\pm$ minus the mass at
$\overline{\eta_\pm}$. The imaginary parts of the first two Fourier
identities give
$$
s_+\delta_++s_-\delta_-=\frac1{15},
$$
$$
2r_+s_+\delta_++2r_-s_-\delta_-=\frac1{30}.
$$
Since $r_+\neq r_-$,
$$
s_+\delta_+=s_-\delta_-=\frac1{30}.
$$
Thus every convergent subsequence of the five mass vectors has the same
limit
$$
\mu_*=\frac13\delta_{-1}
+\sum_{\epsilon\in\{+,-\}}
\left[
\left(\frac16+\frac1{60s_\epsilon}\right)\delta_{\eta_\epsilon}
+
\left(\frac16-\frac1{60s_\epsilon}\right)
\delta_{\overline{\eta_\epsilon}}
\right].
$$
Hence the full mass vector converges to these values. Since
$|r_\pm|<3/5$, all weights are positive. The third imaginary moment is
$$
-\frac1{30}\left((4r_+^2-1)+(4r_-^2-1)\right)=\frac1{50},
$$
and the three class masses give
$$
\mathbb E_{\mu_*}K_-(X)
=
\frac13\left(3+\frac3{5+4r_+}+\frac3{5+4r_-}\right)
=
\frac{77}{57}.
$$

Step 5: Reconstruct the unique extremal function

Define
$$
p_*(z)=
\int\frac{\xi+z}{\xi-z}\,d\mu_*(\xi).
$$
This is a finite sum. For $|z|<1$,
$$
\operatorname{Re}\frac{\xi+z}{\xi-z}
=
\frac{1-|z|^2}{|\xi-z|^2}>0,
$$
so $\operatorname{Re}p_*>0$ and $p_*(0)=1$. Using the weights from Step 4,
$$
p_*(z)=\frac13\frac{1-z}{1+z}
+\sum_{\epsilon\in\{+,-\}}
\frac{\frac13(1-z^2)-\frac{i}{15}z}{1-2r_\epsilon z+z^2}.
$$
Since
$$
(1+z)\prod_{\epsilon\in\{+,-\}}(1-2r_\epsilon z+z^2)
=z^5+\frac45z^3+\frac45z^2+1,
$$
combining the three fractions gives
$$
p_*(z)
=
\frac{-15z^5+(5-2i)z^4-(9+i)z^3+(9-i)z^2-(5+2i)z+15}
{15z^5+12z^3+12z^2+15}.
$$
The moments checked in Step 4 give exactly the prescribed first three
Taylor coefficients, and direct substitution gives
$$
p_*\left(\frac12\right)=\frac{431}{639}-\frac{16i}{213},
\qquad
p_*\left(-\frac12\right)=\frac{77}{57}+\frac{8i}{171}.
$$
Thus $p_*$ is admissible and attains the lower bound.

For uniqueness, let $p$ be any minimizer. For every $n\geq1$,
$$
\rho^nm_n=\int\xi^{-n}\,d\mu_\rho(\xi).
$$
Step 4 shows that $\mu_\rho$ concentrates on the five contact points and
that their masses converge to those of $\mu_*$. Uniform continuity of
$\xi^{-n}$ therefore gives
$$
m_n=\int\xi^{-n}\,d\mu_*(\xi)
\qquad(n\geq1).
$$
Hence the Taylor series of $p$ and $p_*$ agree coefficient by coefficient
on $\mathbb D$, so $p=p_*$. The minimizer is unique.

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
- boundary Fourier measures
- Poisson-kernel averages
- rational dual certificate
- equality-support rigidity