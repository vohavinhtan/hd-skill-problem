## Steps

Step 1: Convert the variational problem into a monotone moment problem

At almost every point where both derivatives exist, symmetry gives
$$
\varphi'(1-x)=-\varphi'(x).
$$
The derivative of a concave function is nonincreasing. For $0<x<\frac{1}{2}$ this yields $\varphi'(x)\geq \varphi'(1-x)=-\varphi'(x)$, so $\varphi'(x)\geq 0$ almost everywhere on the left half. Define
$$
H(z)=\varphi'\left(\frac{1-z}{2}\right)-1,
\qquad 0<z<1.
$$
Then $H\in L^2(0,1)$ is nondecreasing and $H\geq -1$ almost everywhere. Reversing the order of integration gives
$$
\int_0^1\varphi(x)\,dx
=2\int_0^{1/2}\left(\frac{1}{2}-t\right)\varphi'(t)\,dt
=\frac{1}{2}\int_0^1z\bigl(1+H(z)\bigr)\,dz,
$$
and
$$
\int_0^1|1-2x|\varphi(x)\,dx
=2\int_0^{1/2}\varphi'(t)
\int_t^{1/2}(1-2x)\,dx\,dt
=\frac{1}{4}\int_0^1z^2\bigl(1+H(z)\bigr)\,dz.
$$
The energy becomes
$$
E(\varphi)=\int_0^1H(z)^2\,dz.
$$
The two constraints are therefore
$$
\int_0^1zH(z)\,dz=\delta,
\qquad
\int_0^1z^2H(z)\,dz=\rho\delta. \tag{1}
$$
Conversely, any nondecreasing $H\in L^2(0,1)$ with $H\geq-1$ defines the left half of a candidate by
$$
\varphi_H(x)=\int_0^x\bigl(1+H(1-2t)\bigr)\,dt,
\qquad 0\leq x\leq\frac{1}{2},
$$
and $\varphi_H(x)=\varphi_H(1-x)$ on the right half. Its slopes are nonincreasing, including at $x=\frac{1}{2}$, and equations (1) give the prescribed moments. No feasible function is lost in this change of variables.

Step 2: Construct the quadratic-plus-plateau profile and compute its moments

For $0<q<1$, set
$$
f_q(z)=
\begin{cases}
(4q+2)z-3z^2, & 0\leq z\leq q,\\
q(q+2), & q\leq z\leq 1.
\end{cases}
$$
The two formulas agree at $z=q$. On the first interval,
$$
f_q'(z)=4q+2-6z\geq 2(1-q)>0,
$$
so $f_q$ is nonnegative and nondecreasing, with a constant tail. Its first moment is
$$
\begin{aligned}
m_1(q)
&=\int_0^qz\bigl((4q+2)z-3z^2\bigr)\,dz
+q(q+2)\int_q^1z\,dz\\
&=\frac{(4q+2)q^3}{3}-\frac{3q^4}{4}
+\frac{q(q+2)(1-q^2)}{2}\\
&=\frac{q\left(q^3-4q^2+6q+12\right)}{12}.
\end{aligned}
$$
The second moment is
$$
\begin{aligned}
m_2(q)
&=\int_0^qz^2\bigl((4q+2)z-3z^2\bigr)\,dz
+q(q+2)\int_q^1z^2\,dz\\
&=\frac{(4q+2)q^4}{4}-\frac{3q^5}{5}
+\frac{q(q+2)(1-q^3)}{3}\\
&=\frac{q\left(2q^4-5q^3+10q+20\right)}{30}.
\end{aligned}
$$
Since $m_1(q)>0$, choose
$$
K=\frac{\delta}{m_1(q)}
=\frac{12\delta}{q\left(q^3-4q^2+6q+12\right)}
$$
and put $H_q=Kf_q$. The first equation in (1) holds, while the second holds exactly when
$$
\rho=\rho(q)
=\frac{m_2(q)}{m_1(q)}
=\frac{2\left(2q^4-5q^3+10q+20\right)}
{5\left(q^3-4q^2+6q+12\right)}. \tag{2}
$$

Step 3: Certify minimality and uniqueness with the pooled-tail slack

Extend the quadratic part of $H_q$ to all of $[0,1]$ by
$$
p_q(z)=K\bigl((4q+2)z-3z^2\bigr),
$$
and set $r_q=H_q-p_q$. The slack vanishes on $[0,q]$. For $q\leq t\leq1$,
$$
r_q(t)=K(t-q)(3t-q-2)
$$
and its cumulative integral is
$$
F_q(t)=\int_q^t r_q(z)\,dz
=-K(t-q)^2(1-t)\leq0,
\qquad F_q(q)=F_q(1)=0. \tag{3}
$$
Let $G$ be any other feasible monotone profile satisfying (1), represented by a right-continuous nondecreasing function. Since $p_q$ is a linear combination of $z$ and $z^2$, the equal moment constraints give
$$
\int_0^1p_q(z)\bigl(G(z)-H_q(z)\bigr)\,dz=0. \tag{4}
$$
On $[q,1]$ the function $H_q$ is constant, so the Stieltjes measure of $G-H_q$ is the nonnegative measure $dG$. Integration by parts, using (3), gives
$$
\int_q^1r_q(z)\bigl(G(z)-H_q(z)\bigr)\,dz
=-\int_q^1F_q(z)\,dG(z)\geq0. \tag{5}
$$
The endpoint term at $1$ vanishes: monotonicity and $G\in L^2(0,1)$ imply $G(t)=O((1-t)^{-1/2})$ as $t\uparrow1$, while $F_q(t)=O(1-t)$. Combining (4) and (5) yields
$$
\int_0^1H_q(z)\bigl(G(z)-H_q(z)\bigr)\,dz\geq0.
$$
The norm identity
$$
\|G\|_2^2
=\|H_q\|_2^2
+2\int_0^1H_q(G-H_q)\,dz
+\|G-H_q\|_2^2
\geq\|H_q\|_2^2
$$
proves minimality, and equality forces $G=H_q$ almost everywhere. Whenever (2) holds, the corresponding minimizer $\varphi$ exists and is unique.

The tempting smooth-contact profile
$$
\widetilde f_q(z)=
\begin{cases}
2qz-z^2, & 0\leq z\leq q,\\
q^2, & q\leq z\leq1
\end{cases}
$$
does not satisfy the pooled-tail condition. Its tail residual has mean
$$
\int_q^1\left(q^2-(2qz-z^2)\right)\,dz
=\int_q^1(z-q)^2\,dz
=\frac{(1-q)^3}{3}>0.
$$
This rules out the cubic-over-quadratic relation obtained by imposing smooth contact instead of (3).

Step 4: Locate the unique breakpoint and recover the flat interval

Write
$$
A(q)=2q^4-5q^3+10q+20,
\qquad
B(q)=q^3-4q^2+6q+12.
$$
Since
$$
B(q)=12+q\left((q-2)^2+2\right),
$$
the denominator is positive on $0\leq q\leq1$. Differentiating (2) gives
$$
\rho'(q)=\frac{4q}{5B(q)^2}
\left(q^5-8q^4+28q^3+8q^2-100q+80\right). \tag{6}
$$
For $y=1-q\in[0,1]$, the last factor in (6) is
$$
9+27y+54y^2-6y^3-3y^4-y^5
\geq9+27y+44y^2>0.
$$
Here $6y^3+3y^4+y^5\leq10y^2$ was used in the inequality.
Therefore $\rho(q)$ is strictly increasing. Its endpoint values are
$$
\rho(0)=\frac{2}{3},
\qquad
\rho(1)=\frac{18}{25}.
$$
Every allowed $\rho$ determines a unique $q\in(0,1)$. The profile $H_q$ is constant for $q\leq z\leq1$ and strictly increasing for $0<z<q$. Since $z=1-2x$, the derivative of the minimizing function is constant exactly on
$$
0\leq x\leq\frac{1-q}{2}.
$$
Its maximal length is
$$
\ell=\frac{1-q}{2},
\qquad q=1-2\ell. \tag{7}
$$
The limits $q\downarrow0$ and $q\uparrow1$ also give $\ell\uparrow\frac{1}{2}$ and $\ell\downarrow0$, matching the excluded endpoint values of $\rho$.

Step 5: Eliminate the breakpoint and normalize the rational function

For $q=1-2X$,
$$
q^3=1-6X+12X^2-8X^3,
$$
$$
q^4=1-8X+24X^2-32X^3+16X^4.
$$
Substitution into the numerator and denominator in (2) gives
$$
A(1-2X)=32X^4-24X^3-12X^2-6X+27,
$$
$$
B(1-2X)=-8X^3-4X^2-2X+15.
$$
Equations (2) and (7) now give
$$
R(X)=\frac{64X^4-48X^3-24X^2-12X+54}
{-40X^3-20X^2-10X+75}. \tag{8}
$$
The identity
$$
A(q)=(2q+3)B(q)-16(2q+1)
$$
shows that a common nonconstant factor of $A$ and $B$ would have to vanish at $q=-\frac{1}{2}$. But
$$
B\left(-\frac{1}{2}\right)=\frac{63}{8}\neq0,
$$
so the numerator and denominator in (8) are coprime. Their combined coefficient gcd is $1$, and the denominator has constant term $75>0$. This is the normalization required in the problem.
Final Answer: $\boxed{R(X)=\frac{64X^4-48X^3-24X^2-12X+54}{-40X^3-20X^2-10X+75}}$

---

## Answer

$R(X)=\frac{64X^4-48X^3-24X^2-12X+54}{-40X^3-20X^2-10X+75}$

---

## Classification

**Problem Type:** Parameter identification

**Answer Type:** Polynomial or rational function

---

## Solution Concepts

- symmetry reduction
- moment-constrained Hilbert-space projection
- isotonic pooling
- active-set slack certificate
- rational parameter elimination
