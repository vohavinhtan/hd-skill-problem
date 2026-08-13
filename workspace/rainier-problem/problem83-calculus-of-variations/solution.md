## Steps

Step 1: Establish existence, uniqueness, and a verification principle

Let
$$
H=\{u\in H^2(0,1):u(0)=u'(0)=u(1)=u'(1)=0\}.
$$
On $H$, $\|u\|_H=\|u''\|_{L^2}$ is a norm equivalent to the $H^2$ norm: integrating $u''$ twice from $0$ bounds $u'$ and $u$ by $\|u''\|_{L^2}$. The set $\mathcal K_\lambda$ is nonempty because $\psi_\lambda\in H$, and it is closed and convex because $H^2(0,1)\hookrightarrow C^1[0,1]$. Hence the direct method gives a minimizer of $\mathcal J(u)=\frac12\|u\|_H^2$, and strict convexity gives uniqueness.

The minimizer satisfies
$$
\int_0^1u_\lambda''(v-u_\lambda)''\,dx\geq0\qquad(v\in\mathcal K_\lambda).
$$
If $\varphi\geq0$ is smooth and compactly supported, $u_\lambda+\varphi$ is admissible, so $u_\lambda''''$ is a nonnegative Radon measure. On an open set where $u_\lambda>\psi_\lambda$, both signs of sufficiently small compactly supported perturbations are admissible, hence $u_\lambda''''=0$ there. On each connected open subset of the noncontact set, $u_\lambda''''=0$, so $u_\lambda$ agrees there with a cubic polynomial. The global $C^2$ regularity will follow from the verified spline construction below.

Conversely, if $U\in\mathcal K_\lambda$ is $C^2$, piecewise smooth, and $\mu=U''''$ is a nonnegative measure supported on $\{U=\psi_\lambda\}$, then for every $v\in\mathcal K_\lambda$,
$$
\int_0^1U''(v-U)''\,dx=\int_0^1(v-U)\,d\mu\geq0.
$$
Therefore such a $U$ is the unique minimizer.

Step 2: Identify the limiting two-point contact configuration

Put
$$
s=\frac1{12},\qquad r=\frac{11}{12}.
$$
At $\lambda=0$ define
$$
U_0(x)=
\begin{cases}
\frac{14641}{20736}x^2(11-48x),&0\leq x\leq s,\\
\frac{14641}{746496}(-1+36x-36x^2),&s\leq x\leq r,\\
\frac{14641}{20736}(1-x)^2(48x-37),&r\leq x\leq1.
\end{cases}
$$
Subtracting $\psi_0$ and factoring the endpoint multiplicities gives
$$
U_0-\psi_0=
\frac{x^2(1-12x)^3}{20736}
(4235-8580x+6480x^2-1728x^3)
$$
on $[0,s]$, while on $[s,r]$,
$$
U_0-\psi_0=
\frac{(12x-11)^3(12x-1)^3(36x^2-36x-11)}{746496}.
$$
The right gap is the reflection of the left gap. For $0\leq x\leq s$, the cubic
$$
R(x)=4235-8580x+6480x^2-1728x^3
$$
has $R'(x)\leq-8580+12960/12<0$ and $R(s)=3564>0$. On $[s,r]$, the first two cubic factors have opposite signs and $36x^2-36x-11=-36x(1-x)-11<0$. Hence $U_0>\psi_0$ except at $s,r$.

The third derivatives of the three pieces are respectively
$$
-\frac{14641}{72},\qquad0,\qquad\frac{14641}{72},
$$
so
$$
U_0''''=\frac{14641}{72}\delta_s+\frac{14641}{72}\delta_r.
$$
The verification principle from Step 1 proves $U_0$ is the minimizer at $\lambda=0$.

Step 3: Derive and solve the four free-boundary equations

Write $\psi_\lambda=x^2q_\lambda=(1-x)^2\rho_\lambda$. A cubic clamped at $0$ and matching $\psi_\lambda,\psi_\lambda'$ at $a$ also matches the second derivative exactly when
$$
a^2\psi_\lambda''(a)-4a\psi_\lambda'(a)+6\psi_\lambda(a)=a^4q_\lambda''(a)=0.
$$
Similarly the right endpoint condition is $\rho_\lambda''(d)=0$. Differentiation gives
$$
q_\lambda''=q_0''+\lambda(-10+24x),\qquad
\rho_\lambda''=\rho_0''+\lambda(6+24x),
$$
and
$$
q_0''(s)=\rho_0''(r)=0,\qquad
q_0'''(s)=1782,\qquad \rho_0'''(r)=-1782.
$$
The implicit function theorem therefore gives
$$
a_\lambda=s+\frac4{891}\lambda+O(\lambda^2),\qquad
d_\lambda=r+\frac{14}{891}\lambda+O(\lambda^2).
$$

For the middle cubic let $h=c-b$. The Hermite cubic matching $\psi_\lambda,\psi_\lambda'$ at $b,c$ has
$$
Q''(b)=\frac{6(\psi_\lambda(c)-\psi_\lambda(b))}{h^2}
-\frac{4\psi_\lambda'(b)+2\psi_\lambda'(c)}h,
$$
$$
Q''(c)=-\frac{6(\psi_\lambda(c)-\psi_\lambda(b))}{h^2}
+\frac{2\psi_\lambda'(b)+4\psi_\lambda'(c)}h.
$$
Thus $C^2$ matching is equivalent to
$$
F_b=h^2\psi_\lambda''(b)+4h\psi_\lambda'(b)+2h\psi_\lambda'(c)-6(\psi_\lambda(c)-\psi_\lambda(b))=0,
$$
$$
F_c=h^2\psi_\lambda''(c)-2h\psi_\lambda'(b)-4h\psi_\lambda'(c)+6(\psi_\lambda(c)-\psi_\lambda(b))=0.
$$
At $(b,c,\lambda)=(s,r,0)$ their Jacobian in $(b,c)$ is
$$
\begin{pmatrix}
-\frac{171875}{1296}&0\\
0&\frac{171875}{1296}
\end{pmatrix},
$$
so analytic branches $b_\lambda,c_\lambda$ exist uniquely near $(s,r)$.

Step 4: Compute the endpoint expansions to the required order

Set $\beta=b-s$ and $\gamma=c-r$. Expanding the two displayed polynomials from Step 3 through total degree two gives the exact Taylor certificates
$$
F_b=\frac{625}{3888}\left(
2340\beta^2-1980\beta\gamma-24\beta\lambda+990\gamma^2+144\gamma\lambda-825\beta+20\lambda
\right)+O_3,
$$
$$
F_c=\frac{625}{3888}\left(
990\beta^2-1980\beta\gamma-144\beta\lambda+2340\gamma^2+264\gamma\lambda+825\gamma+40\lambda
\right)+O_3,
$$
where $O_3$ contains only monomials of total degree at least three. Since the implicit branches satisfy $\beta,\gamma=O(\lambda)$, write
$$
\beta=b_1\lambda+b_2\lambda^2+O(\lambda^3),\qquad
\gamma=c_1\lambda+c_2\lambda^2+O(\lambda^3).
$$
The coefficients of $\lambda$ give
$$
b_1=\frac4{165},\qquad c_1=-\frac8{165}.
$$
After substitution, the coefficients of $\lambda^2$ reduce to
$$
499125b_2+928=0,\qquad 499125c_2-4768=0,
$$
hence
$$
b_\lambda=s+\frac4{165}\lambda-\frac{928}{499125}\lambda^2+O(\lambda^3),
$$
$$
c_\lambda=r-\frac8{165}\lambda+\frac{4768}{499125}\lambda^2+O(\lambda^3).
$$
Consequently
$$
b_\lambda-a_\lambda=\frac8{405}\lambda+O(\lambda^2),\qquad
d_\lambda-c_\lambda=\frac{26}{405}\lambda+O(\lambda^2).
$$
Thus for all sufficiently small positive $\lambda$,
$$
0<a_\lambda<b_\lambda<c_\lambda<d_\lambda<1.
$$

Step 5: Certify the contact set and positivity of the reaction

Using these four endpoints, form $U_\lambda$ from the left clamped cubic, $\psi_\lambda$ on $[a_\lambda,b_\lambda]$, the middle Hermite cubic, $\psi_\lambda$ on $[c_\lambda,d_\lambda]$, and the right clamped cubic. The four equations in Step 3 make $U_\lambda$ globally $C^2$.

On the three complementary intervals the gap has the forced factorizations
$$
U_\lambda-\psi_\lambda=x^2(a_\lambda-x)^3Q_{L,\lambda}(x),
$$
$$
U_\lambda-\psi_\lambda=(x-b_\lambda)^3(c_\lambda-x)^3Q_{M,\lambda}(x),
$$
$$
U_\lambda-\psi_\lambda=(1-x)^2(x-d_\lambda)^3Q_{R,\lambda}(x).
$$
The quotient coefficients depend continuously on $\lambda$. From the factorizations in Step 2,
$$
Q_{L,0}(x)=\frac1{12}(4235-8580x+6480x^2-1728x^3)>0,
$$
$$
Q_{M,0}(x)=44+144x(1-x)>0,
$$
and $Q_{R,0}(x)=Q_{L,0}(1-x)>0$ on their reference intervals. Uniform continuity therefore keeps all three quotients positive for sufficiently small $\lambda$. Hence the interior contact set is exactly
$$
[a_\lambda,b_\lambda]\cup[c_\lambda,d_\lambda].
$$

On the contact intervals the absolutely continuous part of $U_\lambda''''$ has density $\psi_\lambda''''$. Since
$$
\psi_0''''(s)=\psi_0''''(r)=\frac{3250}{3}>0,
$$
this density is positive on both shrinking contact intervals for small $\lambda$. At $\lambda=0$ the four limiting boundary jumps are
$$
\frac{99}{8},\qquad\frac{6875}{36},\qquad\frac{6875}{36},\qquad\frac{99}{8},
$$
obtained from the third derivatives in Step 2 and
$$
\psi_0'''(s)=-\frac{6875}{36},\qquad
\psi_0'''(r)=\frac{6875}{36}.
$$
Continuity of the spline coefficients makes all four jumps positive for small $\lambda$. Thus $U_\lambda''''$ is a nonnegative measure supported on the contact set, so Step 1 gives $U_\lambda=u_\lambda$. This also proves the required positivity of $\Delta_b,\Delta_c$.

Step 6: Evaluate the four limits and independently check the jump correction

The expansions from Steps 3 and 4 give
$$
A=\frac{8/405}{26/405}=\frac4{13},\qquad
B=\frac4{165}-\frac8{165}=-\frac4{165},
$$
and
$$
C=-\frac{928}{499125}+\frac{4768}{499125}
=\frac{256}{33275}.
$$

For the middle cubic,
$$
\kappa_\lambda=Q'''=
\frac{\psi_\lambda''(c_\lambda)-\psi_\lambda''(b_\lambda)}
{c_\lambda-b_\lambda}.
$$
Besides the derivative values in Step 5, differentiation of
$\chi(x)=x^2(1-x)^2(3+4x)$ gives
$$
\chi''(s)=\frac{125}{27},\quad
\chi''(r)=\frac{335}{54},\quad
\chi'''(s)=-\frac{61}{3},\quad
\chi'''(r)=\frac{239}{3}.
$$
Using $b_\lambda-s=\frac4{165}\lambda+O(\lambda^2)$ and
$c_\lambda-r=-\frac8{165}\lambda+O(\lambda^2)$ in the quotient gives
$$
\kappa_\lambda=-\frac{11}{3}\lambda+O(\lambda^2).
$$
Therefore
$$
\Delta_b=\kappa_\lambda-\psi_\lambda'''(b_\lambda)
=\frac{6875}{36}-\frac{950}{99}\lambda+O(\lambda^2),
$$
$$
\Delta_c=\psi_\lambda'''(c_\lambda)-\kappa_\lambda
=\frac{6875}{36}+\frac{3050}{99}\lambda+O(\lambda^2).
$$
The common positive leading term independently checks the jump signs, and
$$
\frac{\Delta_c}{\Delta_b}
=1+\frac{4000/99}{6875/36}\lambda+O(\lambda^2)
=1+\frac{128}{605}\lambda+O(\lambda^2).
$$
Hence $D=\frac{128}{605}$.

Final Answer: $\boxed{\left(\frac4{13},-\frac4{165},\frac{256}{33275},\frac{128}{605}\right)}$

---

## Answer

$\left(\frac4{13},-\frac4{165},\frac{256}{33275},\frac{128}{605}\right)$

---

## Classification

**Problem Type:** Parameter identification

**Answer Type:** Tuple or ordered list

---

## Solution Concepts

- fourth-order obstacle problem
- variational inequality
- cubic Hermite interpolation
- implicit function theorem
- free-boundary asymptotics
