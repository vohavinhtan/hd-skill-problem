## Steps

Step 1: Reduce the symmetry to a positive-real function

The commutation relation is equivalent to
$$
F(\zeta w)=\zeta F(w).
$$
Set
$$
H(w)=\frac{F(w)}{w},
$$
using the holomorphic extension at $w=0$. Since $F(w)=wG(w)^4$ with $G$ zero free and $|G|<1$, the function
$$
H=G^4
$$
is zero free and satisfies $|H|<1$. The symmetry gives $H(\zeta w)=H(w)$, and the prescribed jet gives $H(0)=e^{-1}$.

Choose the holomorphic logarithm
$$
P(w)=-\log H(w),\qquad P(0)=1.
$$
Because $|H|<1$, we have $\operatorname{Re}P>0$. Also
$$
P(\zeta w)-P(w)\in2\pi i\mathbb Z.
$$
The left-hand side is holomorphic and vanishes at $0$, hence it is identically zero. Therefore $P(\zeta w)=P(w)$, so the Taylor series of $P$ contains only powers divisible by $5$. Thus there is a holomorphic function $p:\mathbb D\to\mathbb C$ such that
$$
\operatorname{Re}p>0,\qquad p(0)=1,\qquad P(w)=p(w^5).
$$
Consequently
$$
F(w)=w e^{-p(w^5)}.
\tag{1}
$$

Step 2: Read the first three moments from the jet

Put $u=w^5$. The hypothesis is
$$
eH(w)=S(u)+O(u^4),
$$
where
$$
S(u)=1-u+\frac7{10}u^2-\frac{17}{30}u^3.
$$
Since $H(w)=e^{-p(u)}$ and $p(0)=1$,
$$
p(u)=1-\log S(u)+O(u^4).
$$
Expanding the logarithm gives
$$
p(u)=1+u-\frac15u^2+\frac15u^3+O(u^4).
\tag{2}
$$
Write
$$
p(u)=1+2\sum_{n\ge1}m_nu^n,
\qquad m_{-n}=\overline{m_n},\qquad m_0=1.
$$
Then
$$
m_1=\frac12,\qquad m_2=-\frac1{10},\qquad m_3=\frac1{10}.
\tag{3}
$$
Moreover,
$$
-\log\left(e\frac{F(w)}{w}\right)=p(w^5)-1,
$$
so
$$
\Lambda_7(F)=2m_7.
\tag{4}
$$

Step 3: Produce a boundary measure from positivity

We need a measure interpretation of the coefficients, so we derive it directly from $\operatorname{Re}p>0$. For $0<r<1$, define a probability measure on the unit circle by
$$
d\mu_r(e^{it})=\frac{\operatorname{Re}p(re^{it})}{2\pi}\,dt.
$$
Its total mass is $1$ because the mean value of $\operatorname{Re}p$ is $\operatorname{Re}p(0)=1$. From the Taylor series of $p$,
$$
\int e^{-int}\,d\mu_r(e^{it})=r^n m_n
\qquad(n\ge1).
\tag{5}
$$
Choose a sequence $r_k\uparrow1$. Since the unit circle is compact, probability measures on it admit a weakly convergent subsequence; for example, one obtains this by a diagonal subsequence argument on integrals against a countable dense family of continuous functions. Let the subsequential limit be $\mu$. Passing to the limit in (5) gives
$$
m_n=\int_{|\xi|=1}\xi^{-n}\,d\mu(\xi)
\qquad(n\ge1).
\tag{6}
$$

Let
$$
X(\xi)=\operatorname{Re}\xi.
$$
Since $m_1,m_2,m_3$ are real, (3) and the identities
$$
\cos2t=2\cos^2t-1,
\qquad
\cos3t=4\cos^3t-3\cos t
$$
give
$$
\mathbb E_\mu X=\frac12,\qquad
\mathbb E_\mu X^2=\frac9{20},\qquad
\mathbb E_\mu X^3=\frac25.
\tag{7}
$$
Also, if
$$
T_7(x)=64x^7-112x^5+56x^3-7x,
$$
then
$$
\operatorname{Re}m_7=\mathbb E_\mu T_7(X).
\tag{8}
$$
Thus the analytic extremal problem has become a seventh-moment problem on $[-1,1]$ with only the three moments in (7) fixed.

Step 4: Derive a sharp cubic majorant for $T_7$

Because only the expectations of $1,X,X^2,X^3$ are known, a dual bound for $\mathbb E T_7(X)$ should come from a cubic polynomial $q$ satisfying $q\ge T_7$ on $[-1,1]$. We now derive such a polynomial rather than guess it.

For a sharp three-point contact pattern, take one endpoint contact and two interior double contacts. Write the gap in the form
$$
R(x)=64(1-x)(x^2-sx+t)^2(x^2+\alpha x+\beta),
$$
and require
$$
q(x)=T_7(x)+R(x)
$$
to have degree at most $3$. Cancellation of the coefficients of $x^6,x^5,x^4$ gives
$$
\alpha=2s+1,
$$
$$
\beta=3s^2+2s-2t-\frac34,
$$
and
$$
8t(3s+1)=16s^3+12s^2-6s-3.
\tag{9}
$$

For this bound to be sharp for the moments (7), a measure supported on the contact set must satisfy
$$
(X-1)(X^2-sX+t)=0.
$$
Taking expectations and using (7) yields
$$
\frac25-(s+1)\frac9{20}+(s+t)\frac12-t=0,
$$
so
$$
t=\frac{s-1}{10}.
\tag{10}
$$
Combining (9) and (10) gives
$$
(2s-1)(40s^2+44s+11)=0.
\tag{11}
$$
If $40s^2+44s+11=0$, then substituting (10) into the formula for $\beta$ gives
$$
\beta=-\frac{12s+11}{8}<0.
$$
Since then $t\ne0$, the proposed gap satisfies $R(0)<0$, so it cannot be a majorant. Hence the only admissible value from (11) is
$$
s=\frac12.
$$
Equations (9) and (10) now give
$$
t=-\frac1{20},\qquad \alpha=2,\qquad \beta=\frac{11}{10}.
$$
Therefore
$$
R(x)
=\frac2{125}(1-x)(10x^2+20x+11)(20x^2-10x-1)^2.
\tag{12}
$$
Every factor on the right of (12) is nonnegative for $-1\le x\le1$; indeed
$$
10x^2+20x+11=10(x+1)^2+1>0.
$$
Thus $R\ge0$. Expanding $q=T_7+R$ gives the sharp cubic majorant
$$
q(x)
=-\frac{228}{25}x^3+\frac{332}{25}x^2
-\frac{417}{125}x+\frac{22}{125}.
\tag{13}
$$
Using (7),
$$
\mathbb E_\mu T_7(X)
\le \mathbb E_\mu q(X)
=\frac{209}{250}.
$$
By (4) and (8),
$$
\operatorname{Re}\Lambda_7(F)\le\frac{209}{125}.
\tag{14}
$$

Step 5: Analyze equality and recover the unique measure

Equality in (14) implies
$$
\int R(X)\,d\mu=0.
$$
Since $R\ge0$, the measure is supported where $R=0$. By (12), the possible real parts are
$$
1,\qquad
a=\frac{5+3\sqrt5}{20},\qquad
b=\frac{5-3\sqrt5}{20},
\tag{15}
$$
the two roots of $20x^2-10x-1=0$.

Let $W_1,W_a,W_b$ be the total masses carried by the three real-part classes in (15). The equations for total mass, $\mathbb E X$, and $\mathbb E X^2$ are
$$
W_1+W_a+W_b=1,
$$
$$
W_1+aW_a+bW_b=\frac12,
$$
$$
W_1+a^2W_a+b^2W_b=\frac9{20}.
$$
Since the three nodes are distinct, this system has a unique solution, namely
$$
W_1=W_a=W_b=\frac13.
\tag{16}
$$

For $x=a,b$, choose
$$
\xi_x=x+i\sqrt{1-x^2}.
$$
The only circle points with real part $x$ are $\xi_x$ and $\overline{\xi_x}$. Let
$$
\delta_a=\mu(\{\xi_a\})-\mu(\{\overline{\xi_a}\}),
\qquad
\delta_b=\mu(\{\xi_b\})-\mu(\{\overline{\xi_b}\}).
$$
Because $m_1$ and $m_2$ are real, their imaginary parts give
$$
\sqrt{1-a^2}\,\delta_a+\sqrt{1-b^2}\,\delta_b=0,
$$
$$
a\sqrt{1-a^2}\,\delta_a+b\sqrt{1-b^2}\,\delta_b=0.
$$
The determinant is nonzero because $a\ne b$ and $|a|,|b|<1$. Hence
$$
\delta_a=\delta_b=0.
$$
Together with (16), this proves that every extremizer has the same measure
$$
\mu_*
=\frac13\delta_1
+\frac16\left(
\delta_{\xi_a}+\delta_{\overline{\xi_a}}
+\delta_{\xi_b}+\delta_{\overline{\xi_b}}
\right).
\tag{17}
$$
Thus the boundary measure, and therefore every coefficient $m_n$ in (6), is uniquely determined at equality.

Step 6: Reconstruct the extremal positive-real function

For $|\xi|=1$,
$$
\operatorname{Re}\frac{\xi+u}{\xi-u}
=\frac{1-|u|^2}{|\xi-u|^2}>0
\qquad(|u|<1).
$$
Hence the measure (17) produces the positive-real function
$$
p_*(u)
=\frac13\frac{1+u}{1-u}
+\frac13(1-u^2)
\left(
\frac1{1-2au+u^2}
+\frac1{1-2bu+u^2}
\right).
\tag{18}
$$
Using
$$
a+b=\frac12,\qquad ab=-\frac1{20},
$$
formula (18) simplifies to
$$
p_*(u)
=\frac{(1+u)(5u^4-10u^3+13u^2-10u+5)}
{(1-u)(5u^4-5u^3+9u^2-5u+5)}.
\tag{19}
$$
Its Taylor expansion begins
$$
p_*(u)
=1+u-\frac15u^2+\frac15u^3+\cdots+\frac{209}{125}u^7+\cdots,
$$
so the corresponding map attains the bound (14).

Finally substitute $u=w^5$ into (1):
$$
F_*(w)
=w\exp\left(
-\frac{(1+w^5)(5w^{20}-10w^{15}+13w^{10}-10w^5+5)}
{(1-w^5)(5w^{20}-5w^{15}+9w^{10}-5w^5+5)}
\right).
\tag{20}
$$
Because $\operatorname{Re}p_*>0$,
$$
G_*(w)=\exp\left(-\frac14p_*(w^5)\right)
$$
is holomorphic, zero free, and maps $\mathbb D$ into $\mathbb D$. Thus $F_*(w)=wG_*(w)^4$. Also $(\zeta w)^5=w^5$, so
$$
F_*(\zeta w)=\zeta F_*(w).
$$
The first three coefficients in (19) reproduce the prescribed jet after exponentiating $1-p_*(w^5)$. Hence $F_*$ belongs to $\mathcal A$ and attains
$$
\operatorname{Re}\Lambda_7(F_*)=\frac{209}{125}.
$$
By Step 5, equality determines the measure uniquely, so it determines $p_*$ and therefore $F_*$ uniquely.

Final Answer: $\boxed{\left(M,F_*(w)\right)=\left(\frac{209}{125},\;w\exp\left(-\frac{(1+w^5)(5w^{20}-10w^{15}+13w^{10}-10w^5+5)}{(1-w^5)(5w^{20}-5w^{15}+9w^{10}-5w^5+5)}\right)\right)}$

---

## Answer

$\left(M,F_*(w)\right)=\left(\frac{209}{125},\;w\exp\left(-\frac{(1+w^5)(5w^{20}-10w^{15}+13w^{10}-10w^5+5)}{(1-w^5)(5w^{20}-5w^{15}+9w^{10}-5w^5+5)}\right)\right)$

---

## Classification

**Problem Type:** Optimization

**Answer Type:** Tuple or ordered list

---

## Solution Concepts

- cyclic disk symmetries
- zero-free Schur lifts
- positive-real logarithms
- boundary moment measures
- Chebyshev polynomials
- dual polynomial majorants
- equality-support rigidity
