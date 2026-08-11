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
using its holomorphic extension at $w=0$. Since $F(w)=wG(w)^4$ with $G$ zero free and $|G|<1$, the function
$$
H=G^4
$$
is zero free and satisfies $|H|<1$. The symmetry gives $H(\zeta w)=H(w)$, and the jet gives $H(0)=e^{-1}$.

Choose the holomorphic logarithm
$$
P(w)=-\log H(w),\qquad P(0)=1.
$$
Then $\operatorname{Re}P>0$. Also
$$
P(\zeta w)-P(w)\in2\pi i\mathbb Z.
$$
The left-hand side is holomorphic and vanishes at $0$, hence it is identically zero. Therefore $P(\zeta w)=P(w)$, so there is a holomorphic function $p:\mathbb D\to\mathbb C$ such that
$$
\operatorname{Re}p>0,\qquad p(0)=1,\qquad P(w)=p(w^5).
$$
Consequently
$$
F(w)=w e^{-p(w^5)}.
\tag{1}
$$

Step 2: Extract the three complex moments and translate the two point constraints

Put $u=w^5$. The prescribed jet has the form
$$
eH(w)=S(u)+O(u^4),
$$
where
$$
S(u)=1+\left(\frac13+\frac{2i}{15}\right)u
+\left(\frac{37}{150}+\frac{i}{9}\right)u^2
+\left(\frac{4837}{4050}+\frac{161i}{10125}\right)u^3.
$$
Since $H(w)=e^{-p(u)}$ and $p(0)=1$,
$$
p(u)=1-\log S(u)+O(u^4).
$$
Expanding the logarithm gives
$$
p(u)=1+\left(-\frac13-\frac{2i}{15}\right)u
+\left(-\frac15-\frac{i}{15}\right)u^2
+\left(-\frac{17}{15}+\frac{i}{25}\right)u^3
+O(u^4).
\tag{2}
$$
Write
$$
p(u)=1+2\sum_{n\ge1}m_nu^n,
\qquad m_{-n}=\overline{m_n},\qquad m_0=1.
$$
Then
$$
m_1=-\frac16-\frac{i}{15},\qquad
m_2=-\frac1{10}-\frac{i}{30},\qquad
m_3=-\frac{17}{30}+\frac{i}{50}.
\tag{3}
$$

Let
$$
\tau=2^{-1/5}.
$$
Since $\tau^5=1/2$ and $(-\tau)^5=-1/2$, equation (1) gives
$$
\left|\frac{F(\pm\tau)}{\pm\tau}\right|
=e^{-\operatorname{Re}p(\pm1/2)}.
\tag{4}
$$
Thus the constraint at $-\tau$ is
$$
\operatorname{Re}p(-1/2)=\frac{77}{57},
\tag{5}
$$
and maximizing $|F(\tau)/\tau|$ is equivalent to minimizing $\operatorname{Re}p(1/2)$.

Step 3: Derive a representing boundary measure

For $0<r<1$, define a probability measure on the unit circle by
$$
d\mu_r(e^{it})=\frac{\operatorname{Re}p(re^{it})}{2\pi}\,dt.
$$
Its total mass is $1$ because the mean value of $\operatorname{Re}p$ is $\operatorname{Re}p(0)=1$. From the Taylor series of $p$,
$$
\int e^{-int}\,d\mu_r(e^{it})=r^n m_n
\qquad(n\ge1).
$$
Choose $r_k\uparrow1$. Compactness of the unit circle and a diagonal subsequence argument on a countable dense family of continuous functions give a weakly convergent subsequence; call its limit $\mu$. Passing to the limit yields
$$
m_n=\int_{|\xi|=1}\xi^{-n}\,d\mu(\xi)
\qquad(n\ge1).
\tag{6}
$$
Consequently, for $|u|<1$,
$$
p(u)=\int_{|\xi|=1}\frac{\xi+u}{\xi-u}\,d\mu(\xi),
\tag{7}
$$
because the geometric series of the kernel reproduces the moments in (6).

Let
$$
X(\xi)=\operatorname{Re}\xi.
$$
From the real parts of (3),
$$
\mathbb E X=-\frac16,
\qquad
\mathbb E X^2=\frac9{20},
\qquad
\mathbb E X^3=-\frac4{15}.
\tag{8}
$$
Indeed, use $\cos2t=2\cos^2t-1$ and $\cos3t=4\cos^3t-3\cos t$.

For real $u$ equation (7) gives
$$
\operatorname{Re}p(u)
=\int\frac{1-u^2}{1+u^2-2uX}\,d\mu.
$$
Hence, with
$$
K_+(x)=\frac3{5-4x},\qquad
K_-(x)=\frac3{5+4x},
\tag{9}
$$
we have
$$
\operatorname{Re}p(1/2)=\mathbb E K_+(X),
\qquad
\operatorname{Re}p(-1/2)=\mathbb E K_-(X)=\frac{77}{57}.
\tag{10}
$$

Step 4: Derive the sharp two-point dual certificate

The data fix the expectations of $1,X,X^2,X^3$ and also of $K_-(X)$. Therefore a lower bound for $\mathbb E K_+(X)$ can be obtained from an inequality
$$
K_+(x)-\lambda K_-(x)-q(x)\ge0
\qquad(-1\le x\le1),
\tag{11}
$$
where $q$ is cubic.

After multiplication by the positive common denominator $25-16x^2$, the left-hand side of (11) becomes a polynomial of degree at most $5$. A sharp certificate with three distinct contact classes can therefore have one endpoint zero and two interior double zeros. The endpoint $x=1$ cannot produce a nonnegative certificate: at the exterior pole $x=5/4$ the numerator of $K_+-\lambda K_-$ is positive, whereas a factor $1-x$ is negative there, forcing the leading constant of the gap to be negative. We therefore use the endpoint $x=-1$ and write the contact polynomial as
$$
(x+1)(x^2-sx+t).
$$

If equality is to occur for a measure supported on these three contact classes, then
$$
(X+1)(X^2-sX+t)=0
$$
there. Taking expectations and using (8) gives
$$
17s-50t=11.
\tag{12}
$$
The fixed value of $K_-$ supplies a second relation. Since
$$
K_-(x)=\frac{3/4}{x+5/4},
$$
equation (10) gives
$$
\mathbb E\frac1{X+5/4}=\frac{308}{171}.
\tag{13}
$$
Divide
$$
g(x)=(x+1)(x^2-sx+t)
$$
by $x+5/4$:
$$
\frac{g(x)}{x+5/4}
=x^2-\left(s+\frac14\right)x
+t+\frac{s}{4}+\frac5{16}
-\frac{\frac{5s}{16}+\frac t4+\frac{25}{64}}{x+5/4}.
$$
Taking expectations, using $g(X)=0$, (8), and (13), yields
$$
125s-470t=86.
\tag{14}
$$
Solving (12)--(14) gives
$$
s=\frac12,
\qquad
t=-\frac1{20}.
\tag{15}
$$
Thus the two interior contact points must be the roots of
$$
20x^2-10x-1=0.
\tag{16}
$$

Now seek an identity of the form
$$
K_+(x)-\lambda K_-(x)-q(x)
=
C\,\frac{(1+x)(20x^2-10x-1)^2}{25-16x^2}.
\tag{17}
$$
The right-hand side must vanish at the two poles $x=\pm5/4$ after moving it to the common numerator. Evaluating there determines $C$ and $\lambda$ uniquely:
$$
C=\frac{640}{15123},
\qquad
\lambda=\frac{3249}{5041}.
\tag{18}
$$
The remaining quotient is the cubic
$$
q(x)=\frac{200(80x^3+57x+16)}{15123}.
\tag{19}
$$
Hence we have the exact identity
$$
\frac3{5-4x}
-\frac{3249}{5041}\frac3{5+4x}
-\frac{200(80x^3+57x+16)}{15123}
=
\frac{640(1+x)(20x^2-10x-1)^2}
{15123(25-16x^2)}.
\tag{20}
$$
For $-1\le x\le1$, every factor on the right is nonnegative and $25-16x^2>0$. Thus (20) is the desired sharp certificate.

Taking expectations and using (8) and (10),
$$
\mathbb E q(X)
=-\frac{8900}{45369},
$$
so
$$
\operatorname{Re}p(1/2)
\ge
\frac{3249}{5041}\frac{77}{57}
-\frac{8900}{45369}
=\frac{431}{639}.
\tag{21}
$$
By (4), every admissible map satisfies
$$
\left|\frac{F(\tau)}{\tau}\right|
\le e^{-431/639}.
\tag{22}
$$

Step 5: Analyze equality and recover the unique boundary measure

Equality in (21) forces equality in (20) $\mu$-almost everywhere. Therefore the real part $X$ is supported on
$$
-1,\qquad
a=\frac{5+3\sqrt5}{20},\qquad
b=\frac{5-3\sqrt5}{20},
\tag{23}
$$
where $a,b$ are the roots of (16). In particular,
$$
a+b=\frac12,\qquad ab=-\frac1{20},\qquad a^2+b^2=\frac7{20}.
\tag{24}
$$

Let $W_{-1},W_a,W_b$ be the total masses of these three real-part classes. Total mass and the first two equations in (8) give
$$
W_{-1}+W_a+W_b=1,
$$
$$
-W_{-1}+aW_a+bW_b=-\frac16,
$$
$$
W_{-1}+a^2W_a+b^2W_b=\frac9{20}.
$$
The three nodes are distinct, so the system has a unique solution. Using (24), it is
$$
W_{-1}=W_a=W_b=\frac13.
\tag{25}
$$

For $x=a,b$, set
$$
s_x=\sqrt{1-x^2},
\qquad
\eta_x=x+is_x.
$$
Let $\delta_x$ be the mass at $\eta_x$ minus the mass at $\overline{\eta_x}$. Since
$$
m_n=\int e^{-in\theta}\,d\mu,
$$
the imaginary parts of $m_1$ and $m_2$ in (3) give
$$
s_a\delta_a+s_b\delta_b=\frac1{15},
$$
$$
2a s_a\delta_a+2b s_b\delta_b=\frac1{30}.
$$
Because $a\ne b$, these equations have the unique solution
$$
s_a\delta_a=s_b\delta_b=\frac1{30}.
\tag{26}
$$
Thus equality forces the unique measure
$$
\mu_*
=\frac13\delta_{-1}
+\sum_{x\in\{a,b\}}
\left[
\left(\frac16+\frac1{60s_x}\right)\delta_{\eta_x}
+
\left(\frac16-\frac1{60s_x}\right)\delta_{\overline{\eta_x}}
\right].
\tag{27}
$$
The weights are positive; indeed the explicit values in (23) give $|a|<2/3$ and $|b|<1/3$, hence $s_a,s_b>1/10$. Finally, (24) and (26) give
$$
\operatorname{Im}m_3
=-\frac1{30}\bigl((4a^2-1)+(4b^2-1)\bigr)
=\frac1{50},
$$
so the full third complex moment is also exactly the one prescribed in (3).

Step 6: Reconstruct the extremal positive-real function and map

The measure (27) gives
$$
p_*(u)=\int\frac{\xi+u}{\xi-u}\,d\mu_*(\xi).
$$
For each $x=a,b$, combining the two conjugate atoms using (25)--(26) gives
$$
\left(\frac16+\frac1{60s_x}\right)
\frac{\eta_x+u}{\eta_x-u}
+
\left(\frac16-\frac1{60s_x}\right)
\frac{\overline{\eta_x}+u}{\overline{\eta_x}-u}
=
\frac{\frac13(1-u^2)-\frac{i}{15}u}
{1-2xu+u^2}.
$$
Therefore
$$
p_*(u)
=\frac13\frac{1-u}{1+u}
+\sum_{x\in\{a,b\}}
\frac{\frac13(1-u^2)-\frac{i}{15}u}
{1-2xu+u^2}.
\tag{28}
$$
Using (24), this simplifies to
$$
p_*(u)
=
\frac{
15-(5+2i)u+(9-i)u^2-(9+i)u^3+(5-2i)u^4-15u^5
}
{15+12u^2+12u^3+15u^5}.
\tag{29}
$$
Because (28) is a convex combination of Cayley kernels with positive weights, $\operatorname{Re}p_*>0$ on $\mathbb D$.

Its Taylor expansion begins
$$
p_*(u)
=1+\left(-\frac13-\frac{2i}{15}\right)u
+\left(-\frac15-\frac{i}{15}\right)u^2
+\left(-\frac{17}{15}+\frac{i}{25}\right)u^3
+O(u^4),
$$
so exponentiating $1-p_*(w^5)$ reproduces the prescribed jet. Direct substitution gives
$$
p_*(-1/2)=\frac{77}{57}+\frac{8i}{171},
\qquad
p_*(1/2)=\frac{431}{639}-\frac{16i}{213}.
\tag{30}
$$
Hence the negative-point modulus constraint is satisfied and equality holds in (22).

Finally set
$$
F_*(w)=w e^{-p_*(w^5)}.
$$
Explicitly,
$$
F_*(w)
=
w\exp\left(
-\frac{
15-(5+2i)w^5+(9-i)w^{10}-(9+i)w^{15}+(5-2i)w^{20}-15w^{25}
}
{15+12w^{10}+12w^{15}+15w^{25}}
\right).
\tag{31}
$$
Since $\operatorname{Re}p_*>0$,
$$
G_*(w)=\exp\left(-\frac14p_*(w^5)\right)
$$
is holomorphic, zero free, and maps $\mathbb D$ into $\mathbb D$, with $F_*(w)=wG_*(w)^4$. Also $(\zeta w)^5=w^5$, so $F_*(\zeta w)=\zeta F_*(w)$. Thus $F_*$ is admissible.

By Step 5, equality in the sharp bound determines the representing measure uniquely, hence determines $p_*$ and therefore $F_*$ uniquely.

Final Answer: $\boxed{\left(M,F_*(w)\right)=\left(e^{-431/639},\;w\exp\left(-\frac{15-(5+2i)w^5+(9-i)w^{10}-(9+i)w^{15}+(5-2i)w^{20}-15w^{25}}{15+12w^{10}+12w^{15}+15w^{25}}\right)\right)}$

---

## Answer

$\left(M,F_*(w)\right)=\left(e^{-431/639},\;w\exp\left(-\frac{15-(5+2i)w^5+(9-i)w^{10}-(9+i)w^{15}+(5-2i)w^{20}-15w^{25}}{15+12w^{10}+12w^{15}+15w^{25}}\right)\right)$

---

## Classification

**Problem Type:** Optimization

**Answer Type:** Tuple or ordered list

---

## Solution Concepts

- cyclic disk symmetries
- zero-free Schur lifts
- positive-real logarithms
- Herglotz moment measures
- coupled Poisson-kernel constraints
- rational dual minorants
- equality-support rigidity
- asymmetric conjugate masses
