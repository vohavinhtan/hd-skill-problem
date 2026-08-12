## Steps

Step 1: Reduce the equivariant map to a positive-real function

Conjugating the relation $f\circ\sigma=\sigma\circ f$ by $\kappa$ gives
$$
F(\zeta w)=\zeta F(w).
$$
Put $H(w)=F(w)/w$, using the holomorphic value at $0$. Since $F(w)=wG(w)^4$ with $G$ zero free and $|G|<1$, $H=G^4$ is zero free and $|H|<1$. The jet gives $H(0)=e^{-1}$. Choose the holomorphic logarithm
$$
P(w)=-\log H(w),\qquad P(0)=1.
$$
Then $\operatorname{Re}P=-\log|H|>0$. Also $H(\zeta w)=H(w)$, so
$P(\zeta w)-P(w)$ takes values in $2\pi i\mathbb Z$; it is holomorphic and is $0$ at $w=0$, hence it vanishes identically. Therefore the Taylor series of $P$ contains only powers divisible by $5$, and there is a holomorphic $p:\mathbb D\to\mathbb C$ with
$$
\operatorname{Re}p>0,\qquad p(0)=1,\qquad P(w)=p(w^5).
$$
Thus
$$
F(w)=w e^{-p(w^5)}.
$$

Write $u=w^5$ and
$$
eH(w)=1+c_1u+c_2u^2+c_3u^3+O(u^4),
$$
where
$$
c_1=\frac13+\frac{2i}{15},\quad
c_2=\frac{37}{150}+\frac{i}{9},\quad
c_3=\frac{4837}{4050}+\frac{161i}{10125}.
$$
Since $p=1-\log(eH)$,
$$
p(u)=1-c_1u-\left(c_2-\frac{c_1^2}{2}\right)u^2
-\left(c_3-c_1c_2+\frac{c_1^3}{3}\right)u^3+O(u^4),
$$
hence
$$
p(u)=1+\left(-\frac13-\frac{2i}{15}\right)u
+\left(-\frac15-\frac{i}{15}\right)u^2
+\left(-\frac{17}{15}+\frac{i}{25}\right)u^3+O(u^4).
$$

Step 2: Translate the problem to a constrained boundary moment problem

By the Herglotz representation theorem, the conditions $\operatorname{Re}p>0$ and $p(0)=1$ give a unique probability measure $\mu$ on the unit circle such that
$$
p(u)=\int_{|\xi|=1}\frac{\xi+u}{\xi-u}\,d\mu(\xi).
$$
Writing
$$
p(u)=1+2\sum_{n\geq1}m_nu^n
$$
and expanding the kernel gives
$$
m_n=\int\xi^{-n}\,d\mu(\xi),
$$
so the first three coefficients from Step 1 yield
$$
m_1=-\frac16-\frac{i}{15},\qquad
m_2=-\frac1{10}-\frac{i}{30},\qquad
m_3=-\frac{17}{30}+\frac{i}{50}.
$$
Let $X=\operatorname{Re}\xi$. Taking real parts and using
$\cos 2t=2\cos^2t-1$ and $\cos 3t=4\cos^3t-3\cos t$ gives
$$
\mathbb E X=-\frac16,\qquad
\mathbb E X^2=\frac9{20},\qquad
\mathbb E X^3=-\frac4{15}.
$$

For real $u$,
$$
\operatorname{Re}p(u)
=\int\frac{1-u^2}{1+u^2-2uX}\,d\mu.
$$
Since $\tau^5=1/2$, define
$$
K_+(x)=\frac3{5-4x},\qquad K_-(x)=\frac3{5+4x}.
$$
Then
$$
\operatorname{Re}p(1/2)=\mathbb E K_+(X),\qquad
\mathbb E K_-(X)=\operatorname{Re}p(-1/2)=\frac{77}{57}.
$$
Therefore maximizing $|F(\tau)/\tau|$ is equivalent to minimizing
$\mathbb E K_+(X)$ under these four real constraints.

Step 3: Build and verify the sharp dual certificate

To locate a sharp nonnegative gap, seek an equality support with one endpoint contact and two double interior contacts. Put
$$
g(x)=(x+1)(x^2-sx+t).
$$
For a measure supported on the zeros of $g$, the three moments from Step 2 give
$$
0=\mathbb E g(X)=-\frac{17s-50t-11}{60},
$$
so $17s-50t=11$. Also
$$
K_-(x)=\frac{3}{4(x+5/4)},\qquad
\mathbb E\frac1{X+5/4}=\frac{308}{171}.
$$
The division identity
$$
\frac{g(x)}{x+5/4}
=x^2-\left(s+\frac14\right)x+t+\frac{s}{4}+\frac5{16}
-\frac{\frac{5s}{16}+\frac t4+\frac{25}{64}}{x+5/4}
$$
then gives $125s-470t=86$. Solving the two linear equations gives
$$
s=\frac12,\qquad t=-\frac1{20},
$$
so the interior contacts are the roots of $20x^2-10x-1$.

Let $P(x)=20x^2-10x-1$ and seek
$$
K_+(x)-\lambda K_-(x)-q(x)
=C\frac{(1+x)P(x)^2}{25-16x^2},
$$
with $q$ cubic. After multiplication by $25-16x^2$, evaluating at
$x=5/4$ and $x=-5/4$ removes the $q$ term and gives
$$
C=\frac{640}{15123},\qquad \lambda=\frac{3249}{5041}.
$$
Consequently
$$
q(x)=\frac{3(5+4x)-3\lambda(5-4x)-C(1+x)P(x)^2}{25-16x^2}
=\frac{200(80x^3+57x+16)}{15123},
$$
and hence the exact identity
$$
\frac3{5-4x}
-\frac{3249}{5041}\frac3{5+4x}
-\frac{200(80x^3+57x+16)}{15123}
=
\frac{640(1+x)(20x^2-10x-1)^2}
{15123(25-16x^2)}.
$$
For $-1\leq x\leq1$ the right side is nonnegative. Moreover
$$
\mathbb E q(X)
=\frac{200}{15123}\left(80\left(-\frac4{15}\right)
+57\left(-\frac16\right)+16\right)
=-\frac{8900}{45369}.
$$
Taking expectations therefore gives
$$
\operatorname{Re}p(1/2)
\geq
\frac{3249}{5041}\frac{77}{57}-\frac{8900}{45369}
=\frac{431}{639}.
$$
Thus every admissible map satisfies
$$
\left|\frac{F(\tau)}{\tau}\right|\leq e^{-431/639}.
$$

Step 4: Determine every equality measure

Equality in the bound of Step 3 forces the nonnegative gap to vanish $\mu$-almost everywhere. Hence $X$ is supported on
$$
-1,\qquad
r_+=\frac{5+3\sqrt5}{20},\qquad
r_-=\frac{5-3\sqrt5}{20},
$$
the three zeros of $(1+x)(20x^2-10x-1)^2$. They satisfy
$$
r_++r_-=\frac12,\qquad
r_+r_-=-\frac1{20},\qquad
r_+^2+r_-^2=\frac7{20}.
$$
If $W_{-1},W_+,W_-$ are the total masses of the three real-part classes, the equations for total mass, $\mathbb EX$, and $\mathbb EX^2$ form a nonsingular Vandermonde system. The values
$$
W_{-1}=W_+=W_-=\frac13
$$
satisfy all three equations, so they are the unique solution. They also satisfy the remaining real moment because
$$
\frac{-1+r_+^3+r_-^3}{3}
=\frac{-1+\frac15}{3}
=-\frac4{15},
$$
where $r_+^3+r_-^3=(r_++r_-)^3-3r_+r_-(r_++r_-)=1/5$.

Put $s_\pm=\sqrt{1-r_\pm^2}$ and
$\eta_\pm=r_\pm+i s_\pm$. Let $\delta_\pm$ be the mass at $\eta_\pm$ minus the mass at $\overline{\eta_\pm}$. Since
$m_n=\int\xi^{-n}\,d\mu$, the imaginary parts of $m_1,m_2$ give
$$
s_+\delta_++s_-\delta_-=\frac1{15},
$$
$$
2r_+s_+\delta_++2r_-s_-\delta_-=\frac1{30}.
$$
Because $r_+\neq r_-$ and $r_++r_-=1/2$, the unique solution is
$$
s_+\delta_+=s_-\delta_-=\frac1{30}.
$$
Thus equality forces the unique probability measure
$$
\mu_*=\frac13\delta_{-1}
+\sum_{\epsilon\in\{+,-\}}
\left[
\left(\frac16+\frac1{60s_\epsilon}\right)\delta_{\eta_\epsilon}
+\left(\frac16-\frac1{60s_\epsilon}\right)\delta_{\overline{\eta_\epsilon}}
\right].
$$
Here $|r_\pm|<3/5$, so $s_\pm>4/5$ and all weights are positive. The third imaginary moment also matches:
$$
\operatorname{Im}m_3
=-\frac1{30}\left((4r_+^2-1)+(4r_-^2-1)\right)
=\frac1{50}.
$$
Thus $\mu_*$ has exactly the three complex moments fixed in Step 2. Its real-part masses also give
$$
\mathbb E_{\mu_*}K_-(X)
=\frac13\left(3+\frac3{5+4r_+}+\frac3{5+4r_-}\right)
=\frac{77}{57},
$$
using $r_++r_-=1/2$ and $r_+r_-=-1/20$.

Step 5: Reconstruct the unique extremal map and attain the bound

The Herglotz function of $\mu_*$ is
$$
p_*(u)=\frac13\frac{1-u}{1+u}
+\sum_{\epsilon\in\{+,-\}}
\frac{\frac13(1-u^2)-\frac{i}{15}u}
{1-2r_\epsilon u+u^2}.
$$
Since
$$
(1+u)\prod_{\epsilon\in\{+,-\}}
(1-2r_\epsilon u+u^2)
=1+\frac45u^2+\frac45u^3+u^5,
$$
putting the three terms over this common denominator gives
$$
p_*(u)=
\frac{
15-(5+2i)u+(9-i)u^2-(9+i)u^3+(5-2i)u^4-15u^5
}{
15+12u^2+12u^3+15u^5
}.
$$
The measure construction gives $\operatorname{Re}p_*>0$ and the first three Taylor coefficients from Step 1. At $u=1/2$ the numerator and denominator are
$$
\frac{431}{32}-\frac{3i}{2},\qquad \frac{639}{32},
$$
while at $u=-1/2$ they are
$$
\frac{693}{32}+\frac{3i}{4},\qquad \frac{513}{32}.
$$
Hence
$$
p_*(1/2)=\frac{431}{639}-\frac{16i}{213},\qquad
p_*(-1/2)=\frac{77}{57}+\frac{8i}{171}.
$$

Define
$$
F_*(w)=w\exp\left(
-\frac{
15-(5+2i)w^5+(9-i)w^{10}-(9+i)w^{15}+(5-2i)w^{20}-15w^{25}
}{
15+12w^{10}+12w^{15}+15w^{25}
}
\right).
$$
Then
$$
G_*(w)=\exp\left(-\frac14p_*(w^5)\right)
$$
is holomorphic, zero free, and satisfies $|G_*|<1$, while
$F_*(w)=wG_*(w)^4$. Also $F_*(\zeta w)=\zeta F_*(w)$. Thus
$f_*=\kappa^{-1}\circ F_*\circ\kappa$ belongs to $\mathcal F$, and $F_*$ belongs to $\mathcal A$. The value of $p_*(-1/2)$ gives the required modulus at $-\tau$, and the value at $1/2$ gives
$$
\left|\frac{F_*(\tau)}{\tau}\right|=e^{-431/639}.
$$
Therefore the upper bound is attained. If another admissible map attained it, equality in the dual identity would force the same measure $\mu_*$ by Step 4; uniqueness in the Herglotz representation would then force the same $p_*$ and the same $F_*$. Hence the maximizer is unique.

Final Answer: $\boxed{\left(e^{-431/639},\frac{15-(5+2i)u+(9-i)u^2-(9+i)u^3+(5-2i)u^4-15u^5}{15+12u^2+12u^3+15u^5}\right)}$

---

## Answer

$\left(e^{-431/639},\frac{15-(5+2i)u+(9-i)u^2-(9+i)u^3+(5-2i)u^4-15u^5}{15+12u^2+12u^3+15u^5}\right)$

---

## Classification

**Problem Type:** Optimization

**Answer Type:** Tuple or ordered list

---

## Solution Concepts

- disk automorphisms
- positive-real functions
- Herglotz representation
- moment duality
- equality-support rigidity