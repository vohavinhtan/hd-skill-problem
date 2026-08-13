## Steps

Step 1: Construct a boundary measure and read off its moments

Write
$$
p(z)=1+2\sum_{n\geq1}m_nz^n.
$$
For $0<\rho<1$, define
$$
d\mu_\rho(e^{it})=\frac{\operatorname{Re}p(\rho e^{it})}{2\pi}\,dt.
$$
This is a probability measure because its density is positive and its integral is $\operatorname{Re}p(0)=1$ by the mean-value property. Taylor expansion and Fourier integration give
$$
\int e^{-int}\,d\mu_\rho(e^{it})=\rho^n m_n
\qquad(n\geq1).
$$
Choose $\rho_k\uparrow1$. For each $j$, partition the circle into $2^j$ equal half-open arcs. Successive subsequence extraction followed by a diagonal choice makes every dyadic arc mass converge. Uniform continuity then lets step functions on sufficiently fine partitions approximate any continuous function uniformly, so this diagonal subsequence has a weak limit probability measure $\mu$. Passing to the limit gives
$$
m_n=\int_{|\xi|=1}\xi^{-n}\,d\mu(\xi).
$$
For $|z|<1$,
$$
\frac{\xi+z}{\xi-z}=1+2\sum_{n\geq1}z^n\xi^{-n}
$$
uniformly in $\xi$ on every disk $|z|\leq r<1$, hence
$$
p(z)=\int_{|\xi|=1}\frac{\xi+z}{\xi-z}\,d\mu(\xi).
$$

The prescribed coefficients give
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
gives
$$
\mathbb E X=-\frac16,
\qquad
\mathbb E X^2=\frac9{20},
\qquad
\mathbb E X^3=-\frac4{15}.
$$

Step 2: Express the objective and the extra constraint as Poisson-kernel averages

For real $r\in(-1,1)$, Step 1 gives
$$
\operatorname{Re}p(r)=\int\frac{1-r^2}{1+r^2-2rX}\,d\mu.
$$
Set
$$
K_+(x)=\frac3{5-4x},
\qquad
K_-(x)=\frac3{5+4x}.
$$
Then
$$
\operatorname{Re}p\left(\frac12\right)=\mathbb E K_+(X),
\qquad
\mathbb E K_-(X)=\frac{77}{57}.
$$
Thus we must minimize $\mathbb E K_+(X)$ subject to the three moments from Step 1 and the fixed value of $\mathbb E K_-(X)$.

Step 3: Derive and construct the sharp dual certificate

For real $\lambda$ and a real cubic $q$, put
$$
S(x)=K_+(x)-\lambda K_-(x)-q(x),
\qquad
R(x)=(25-16x^2)S(x).
$$
If $S\geq0$ on $[-1,1]$, it gives a lower bound because all expectations on the right are fixed. The polynomial $R$ has degree at most $5$ and is nonnegative on $[-1,1]$. If the bound is attained, then $\mathbb E S(X)=0$, hence $S(X)=0$ almost surely; thus the attaining measure is supported on zeros of $R$. Every interior zero of a nonnegative polynomial has even multiplicity.

At least three distinct real-part classes are necessary. A one-point law is excluded by
$$
\mathbb E X^2-(\mathbb E X)^2=\frac{19}{45}>0.
$$
If the support had at most two points, some $x^2-sx+t$ would vanish on it. Taking expectations after multiplying by $1$ and by $X$ gives
$$
s=-\frac{69}{152},
\qquad
t=-\frac{569}{1520}.
$$
On its roots,
$$
\frac1{x+5/4}=\frac{s+5/4-x}{t+\frac54s+\frac{25}{16}},
$$
so
$$
\mathbb E K_-(X)=\frac{2195}{1887}\neq\frac{77}{57}.
$$
Hence an attaining measure has at least three classes.

A degree-$5$ nonnegative polynomial cannot have four distinct zeros in $[-1,1]$: at most two are endpoints and every interior zero counts at least twice. Three interior zeros are also impossible. If the three classes were $\{-1,c,1\}$, then
$$
(X^2-1)(X-c)=0
$$
would give
$$
c=\frac{\mathbb E X-\mathbb E X^3}{1-\mathbb E X^2}=\frac2{11}.
$$
On the three nodes $-1,2/11,1$,
$$
K_-(x)=\frac{139}{189}-\frac43x+\frac{176}{189}x^2,
$$
so the fixed moments would give
$$
\mathbb E K_-(X)=\frac{1301}{945}\neq\frac{77}{57}.
$$
Therefore a sharp certificate has one endpoint contact and two interior double contacts.

The endpoint cannot be $1$. Otherwise
$$
R(x)=C(1-x)(x-a)^2(x-b)^2,
\qquad C>0,
$$
with $a,b\in(-1,1)$. But the definition of $R$ gives $R(5/4)=30$, while this factorization is negative at $5/4$. Thus the endpoint is $-1$, so
$$
R(x)=C(1+x)(x-a)^2(x-b)^2.
$$
Write
$$
(x-a)(x-b)=x^2-sx+t,
\qquad
g(x)=(x+1)(x^2-sx+t).
$$
This derives the contact pattern before choosing $s,t$.

On an attaining measure, $g(X)=0$. The moments give
$$
0=\mathbb E g(X)=-\frac{17s-50t-11}{60},
$$
so $17s-50t=11$. Also
$$
\mathbb E\frac1{X+5/4}=\frac{308}{171}.
$$
Using
$$
\frac{g(x)}{x+5/4}
=x^2-\left(s+\frac14\right)x+t+\frac{s}{4}+\frac5{16}
-\frac{\frac{5s}{16}+\frac t4+\frac{25}{64}}{x+5/4}
$$
and taking expectations gives $125s-470t=86$. Hence
$$
s=\frac12,
\qquad
t=-\frac1{20},
$$
and the two interior contacts are
$$
r_+=\frac{5+3\sqrt5}{20},
\qquad
r_-=\frac{5-3\sqrt5}{20}.
$$
Put $P(x)=20x^2-10x-1$. We seek
$$
S(x)=C\frac{(1+x)P(x)^2}{25-16x^2}.
$$
After clearing denominators and evaluating at $x=5/4$ and $x=-5/4$,
$$
30=C\frac94\left(\frac{71}{4}\right)^2,
\qquad
-30\lambda=-C\frac14\left(\frac{171}{4}\right)^2,
$$
so
$$
C=\frac{640}{15123},
\qquad
\lambda=\frac{3249}{5041}.
$$
Solving the remaining polynomial identity for $q$ gives
$$
q(x)=\frac{200(80x^3+57x+16)}{15123},
$$
and therefore
$$
\frac3{5-4x}
-\frac{3249}{5041}\frac3{5+4x}
-\frac{200(80x^3+57x+16)}{15123}
=
\frac{640(1+x)(20x^2-10x-1)^2}{15123(25-16x^2)}.
$$
The right side is nonnegative on $[-1,1]$. Moreover
$$
\mathbb E q(X)
=\frac{200}{15123}\left(80\left(-\frac4{15}\right)+57\left(-\frac16\right)+16\right)
=-\frac{8900}{45369}.
$$
Thus
$$
\operatorname{Re}p\left(\frac12\right)
\geq
\frac{3249}{5041}\frac{77}{57}-\frac{8900}{45369}
=\frac{431}{639}.
$$

Step 4: Determine the equality measure and prove its uniqueness

Equality in Step 3 forces
$$
X\in\{-1,r_+,r_-\}
$$
almost surely. The contact points satisfy
$$
r_++r_-=\frac12,
\qquad
r_+r_-=-\frac1{20},
\qquad
r_+^2+r_-^2=\frac7{20}.
$$
Let $W_{-1},W_+,W_-$ be their total masses. Total mass, $\mathbb EX$, and $\mathbb EX^2$ form a Vandermonde system with determinant
$$
(r_++1)(r_-+1)(r_--r_+)\neq0,
$$
so the solution is unique. Substitution gives
$$
W_{-1}=W_+=W_-=\frac13.
$$
It also gives the third real moment because
$$
\frac{-1+r_+^3+r_-^3}{3}=-\frac4{15}.
$$

Put
$$
s_{\pm}=\sqrt{1-r_{\pm}^2},
\qquad
\eta_{\pm}=r_{\pm}+is_{\pm}.
$$
Let $\delta_{\pm}$ be the mass at $\eta_{\pm}$ minus the mass at $\overline{\eta_{\pm}}$. The imaginary parts of $m_1,m_2$ give
$$
s_+\delta_++s_-\delta_-=\frac1{15},
\qquad
2r_+s_+\delta_++2r_-s_-\delta_-=\frac1{30}.
$$
Since $r_+\neq r_-$, the unique solution is
$$
s_+\delta_+=s_-\delta_-=\frac1{30}.
$$
Thus equality forces
$$
\mu_*=\frac13\delta_{-1}
+\sum_{\epsilon\in\{+,-\}}
\left[
\left(\frac16+\frac1{60s_\epsilon}\right)\delta_{\eta_\epsilon}
+
\left(\frac16-\frac1{60s_\epsilon}\right)\delta_{\overline{\eta_\epsilon}}
\right].
$$
Since $|r_{\pm}|<3/5$, all weights are positive. Also
$$
\operatorname{Im}m_3
=-\frac1{30}\left((4r_+^2-1)+(4r_-^2-1)\right)=\frac1{50},
$$
and
$$
\mathbb E_{\mu_*}K_-(X)
=\frac13\left(3+\frac3{5+4r_+}+\frac3{5+4r_-}\right)=\frac{77}{57}.
$$
Hence $\mu_*$ satisfies every constraint.

Step 5: Reconstruct the extremal function

Step 1 applied to $\mu_*$ gives
$$
p_*(z)=\frac13\frac{1-z}{1+z}
+\sum_{\epsilon\in\{+,-\}}
\frac{\frac13(1-z^2)-\frac{i}{15}z}{1-2r_\epsilon z+z^2}.
$$
Using $r_++r_-=1/2$ and $r_+r_-=-1/20$,
$$
(1+z)\prod_{\epsilon\in\{+,-\}}(1-2r_\epsilon z+z^2)
=z^5+\frac45z^3+\frac45z^2+1,
$$
so
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
and the positive representing measure gives $\operatorname{Re}p_*>0$ on $\mathbb D$. Direct substitution yields
$$
p_*\left(\frac12\right)=\frac{431}{639}-\frac{16i}{213},
\qquad
p_*\left(-\frac12\right)=\frac{77}{57}+\frac{8i}{171}.
$$
Thus the lower bound is attained. Any other minimizer has a boundary measure from Step 1; equality in Step 3 forces that measure to be $\mu_*$ by Step 4, and the integral representation then forces the same function. Hence $p_*$ is the unique minimizer.

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
- boundary integral representation
- boundary moments
- rational dual certificate
- equality-support rigidity