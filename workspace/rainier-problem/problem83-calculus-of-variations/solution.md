## Steps

Step 1: Establish existence, uniqueness, and a verification principle

Let
$$
H=\{u\in H^2(0,1):u(0)=u'(0)=u(1)=u'(1)=0\}.
$$
On $H$, two integrations show that $\|u''\|_{L^2}$ is equivalent to the $H^2$ norm. Since $\psi_\lambda\in H$ and $H^2(0,1)\hookrightarrow C^1[0,1]$, $\mathcal K_\lambda$ is nonempty, closed, and convex. The direct method and strict convexity give a unique minimizer satisfying
$$
\int_0^1u_\lambda''(v-u_\lambda)''\,dx\geq0\qquad(v\in\mathcal K_\lambda).
$$
For compactly supported $\varphi\geq0$, $u_\lambda+\varphi$ is admissible, so $u_\lambda''''$ is a nonnegative Radon measure. On $\{u_\lambda>\psi_\lambda\}$ both signs are admissible, so $u_\lambda''''=0$ and $u_\lambda$ is cubic.

If $U\in\mathcal K_\lambda$ is $C^2$, piecewise smooth, and $\mu=U''''$ is nonnegative and supported on $\{U=\psi_\lambda\}$, then
$$
\int_0^1U''(v-U)''\,dx=\int_0^1(v-U)\,d\mu\geq0,
$$
so $U$ is the unique minimizer.

Step 2: Derive the limiting spline and verify its contact points

Put
$$
s=\frac{1}{12},\qquad r=\frac{11}{12},\qquad \psi_0(x)=x^2q_0(x).
$$
A cubic clamped at $0$ is $L(x)=x^2(\alpha+\beta x)$. Second-order contact at $t>0$ requires
$$
t^2\psi_0''(t)-4t\psi_0'(t)+6\psi_0(t)=t^4q_0''(t)=0,
$$
after eliminating $\alpha,\beta$. Here
$$
q_0''(x)=-\frac{1}{8}(12x-1)(2880x^3-7440x^2+6204x-1655),
$$
so take the root $s=\frac{1}{12}$. At $s$,
$$
\psi_0(s)=\frac{102487}{2985984},\qquad \psi_0'(s)=\frac{73205}{124416}.
$$
The equations
$$
\alpha s^2+\beta s^3=\psi_0(s),\qquad 2\alpha s+3\beta s^2=\psi_0'(s)
$$
give
$$
\alpha=\frac{161051}{20736},\qquad \beta=-\frac{14641}{432},
$$
and therefore
$$
L(x)=\frac{14641}{20736}x^2(-48x+11).
$$
Since $\psi_0(x)=\psi_0(1-x)$, the right cubic is $L(1-x)$. The symmetric endpoint data and uniqueness of Hermite interpolation give $M(x)=\eta+\theta x(1-x)$. Matching at $s$ gives
$$
\theta=\frac{\psi_0'(s)}{1-2s}=\frac{14641}{20736},\qquad
\eta=\psi_0(s)-\theta s(1-s)=-\frac{14641}{746496}.
$$
This gives
$$
U_0(x)=
\begin{cases}
\frac{14641}{20736}x^2(-48x+11),&0\leq x\leq s,\\
\frac{14641}{746496}(-36x^2+36x-1),&s\leq x\leq r,\\
\frac{14641}{20736}(1-x)^2(48x-37),&r\leq x\leq1.
\end{cases}
$$

On $[0,s]$ and $[s,r]$ the gaps are
$$
\frac{x^2(1-12x)^3}{20736}(-1728x^3+6480x^2-8580x+4235),
$$
$$
\frac{(12x-11)^3(12x-1)^3(36x^2-36x-11)}{746496},
$$
and the right gap is the reflection of the left one. For the first residual cubic,
$$
R'(x)\leq-8580+\frac{12960}{12}<0,\qquad R(s)=3564>0.
$$
The three factors in the second display have signs $-,+,-$. So $U_0>\psi_0$ except at $s,r$. The third derivatives of the pieces are $-\frac{14641}{72},0,\frac{14641}{72}$, so
$$
U_0''''=\frac{14641}{72}\delta_s+\frac{14641}{72}\delta_r.
$$
Step 1 verifies $U_0$ as the minimizer at $\lambda=0$.

Step 3: Derive the four free-boundary equations

Write $\psi_\lambda=x^2q_\lambda=(1-x)^2\rho_\lambda$. The clamped endpoint calculation in Step 2 gives
$$
q_\lambda''(a)=0,\qquad \rho_\lambda''(d)=0.
$$
Also
$$
q_\lambda''=q_0''+\lambda(-10+24x),\qquad
\rho_\lambda''=\rho_0''+\lambda(6+24x).
$$
The factor in Step 2 gives $q_0'''(s)=1782$; reflection gives $\rho_0'''(r)=-1782$. With $a=s+a_1\lambda+O(\lambda^2)$ and $d=r+d_1\lambda+O(\lambda^2)$,
$$
1782a_1-8=0,\qquad -1782d_1+28=0,
$$
so
$$
a_\lambda=s+\frac{4}{891}\lambda+O(\lambda^2),\qquad
d_\lambda=r+\frac{14}{891}\lambda+O(\lambda^2).
$$

For the middle interval let $h=c-b$, $f=\psi_\lambda$, and
$$
Q(x)=f(b)+f'(b)y+\alpha y^2+\beta y^3,\qquad y=x-b.
$$
Matching $Q,Q'$ at $c$ gives
$$
\alpha h^2+\beta h^3=f(c)-f(b)-hf'(b),\qquad
2\alpha h+3\beta h^2=f'(c)-f'(b).
$$
Solving for $2\alpha=Q''(b)$ and $Q''(c)=2\alpha+6\beta h$ gives
$$
Q''(b)=\frac{6(f(c)-f(b))}{h^2}-\frac{4f'(b)+2f'(c)}{h},
$$
$$
Q''(c)=-\frac{6(f(c)-f(b))}{h^2}+\frac{2f'(b)+4f'(c)}{h}.
$$
Value and slope already match, so $C^2$ matching is $Q''(b)=f''(b)$ and $Q''(c)=f''(c)$. Multiplying by $h^2$ gives
$$
F_b=h^2f''(b)+4hf'(b)+2hf'(c)-6(f(c)-f(b))=0,
$$
$$
F_c=h^2f''(c)-2hf'(b)-4hf'(c)+6(f(c)-f(b))=0.
$$
At $(b,c,\lambda)=(s,r,0)$ the Jacobian in $(b,c)$ is
$$
\begin{pmatrix}
-\frac{171875}{1296}&0\\
0&\frac{171875}{1296}
\end{pmatrix}.
$$
The implicit function theorem gives unique analytic $b_\lambda,c_\lambda$ near $s,r$.

Step 4: Derive the Taylor coefficients of the inner free boundaries

Set
$$
\beta=b-s,\qquad \gamma=c-r,\qquad
G_b=\frac{3888}{625}F_b,\qquad G_c=\frac{3888}{625}F_c.
$$
First expand
$$
\psi_0=-144x^8+576x^7-853x^6+543x^5-\frac{1655}{16}x^4-\frac{209}{8}x^3+\frac{121}{16}x^2,
$$
$$
\chi=\frac{\partial\psi_\lambda}{\partial\lambda}=4x^5-5x^4-2x^3+3x^2.
$$
For fixed $f$ and $h=c-b$, differentiating $F_b$ gives
$$
F_{b,b}=h^2f'''(b)+2hf''(b)+2(f'(b)-f'(c)),
$$
$$
F_{b,c}=2h(f''(b)+f''(c))+4(f'(b)-f'(c)),
$$
$$
F_{b,bb}=h^2f''''(b),\quad F_{b,bc}=2hf'''(b)+2(f''(b)-f''(c)),\quad
F_{b,cc}=2hf'''(c)+2(f''(b)-f''(c)).
$$
For $F_c$,
$$
F_{c,b}=-F_{b,c},\quad
F_{c,c}=h^2f'''(c)-2hf''(c)-2(f'(b)-f'(c)),
$$
$$
F_{c,bb}=2(f''(c)-f''(b))-2hf'''(b),\quad
F_{c,bc}=2(f''(c)-f''(b))-2hf'''(c),\quad
F_{c,cc}=h^2f''''(c).
$$
Since $\psi_\lambda=\psi_0+\lambda\chi$, mixed $\lambda$ derivatives use $f=\chi$ above and second $\lambda$ derivatives vanish. At $s=\frac{1}{12}$, $r=\frac{11}{12}$, $h=\frac{5}{6}$, with variables $(b,c,\lambda)$, this gives
$$
\nabla G_b=(-825,0,20),\qquad
D^2G_b=
\begin{pmatrix}
4680&-1980&-24\\
-1980&1980&144\\
-24&144&0
\end{pmatrix},
$$
$$
\nabla G_c=(0,825,40),\qquad
D^2G_c=
\begin{pmatrix}
1980&-1980&-144\\
-1980&4680&264\\
-144&264&0
\end{pmatrix}.
$$
For example,
$$
\chi'(s)=\frac{2321}{5184},\quad \chi'(r)=-\frac{4279}{5184},\quad
\chi''(s)=\frac{125}{27},\quad \chi'''(s)=-\frac{61}{3},
$$
and
$$
G_{b,b\lambda}=\frac{3888}{625}\left[
\left(\frac{5}{6}\right)^2\left(-\frac{61}{3}\right)
+\frac{5}{3}\frac{125}{27}
+2\frac{2321+4279}{5184}
\right]=-24.
$$
Taylor's formula gives
$$
G_b=2340\beta^2-1980\beta\gamma-24\beta\lambda+990\gamma^2+144\gamma\lambda-825\beta+20\lambda+O_3,
$$
$$
G_c=990\beta^2-1980\beta\gamma-144\beta\lambda+2340\gamma^2+264\gamma\lambda+825\gamma+40\lambda+O_3,
$$
where $O_3$ contains terms of total degree at least three. Write
$$
\beta=b_1\lambda+b_2\lambda^2+O(\lambda^3),\qquad
\gamma=c_1\lambda+c_2\lambda^2+O(\lambda^3).
$$
The linear terms give
$$
b_1=\frac{4}{165},\qquad c_1=-\frac{8}{165}.
$$
At order $\lambda^2$ the quadratic terms become
$$
-825b_2+\frac{832}{605}+\frac{128}{55}-\frac{32}{55}
+\frac{128}{55}-\frac{384}{55}=0,
$$
$$
825c_2+\frac{32}{55}+\frac{128}{55}-\frac{192}{55}
+\frac{3328}{605}-\frac{64}{5}=0.
$$
So
$$
b_2=-\frac{928}{499125},\qquad c_2=\frac{4768}{499125},
$$
and
$$
b_\lambda=s+\frac{4}{165}\lambda-\frac{928}{499125}\lambda^2+O(\lambda^3),
$$
$$
c_\lambda=r-\frac{8}{165}\lambda+\frac{4768}{499125}\lambda^2+O(\lambda^3).
$$
With Step 3,
$$
b_\lambda-a_\lambda=\frac{8}{405}\lambda+O(\lambda^2),\qquad
d_\lambda-c_\lambda=\frac{26}{405}\lambda+O(\lambda^2).
$$

Step 5: Certify the contact set and positivity of the reaction

Build $U_\lambda$ from these cubics and $\psi_\lambda$ on the contact intervals. Step 3 makes it $C^2$. With $G_\lambda=U_\lambda-\psi_\lambda$,
$$
\begin{aligned}
G_\lambda&=x^2(a_\lambda-x)^3Q_{L,\lambda}(x),\\
G_\lambda&=(x-b_\lambda)^3(c_\lambda-x)^3Q_{M,\lambda}(x),\\
G_\lambda&=(1-x)^2(x-d_\lambda)^3Q_{R,\lambda}(x).
\end{aligned}
$$
The coefficients are continuous in $\lambda$. Step 2 gives
$$
Q_{L,0}=\frac{1}{12}(-1728x^3+6480x^2-8580x+4235)>0,
$$
$$
Q_{M,0}=44+144x(1-x)>0,\qquad Q_{R,0}(x)=Q_{L,0}(1-x)>0.
$$
They stay positive for small $\lambda$; Step 4 gives
$$
\mathcal C_\lambda^\circ=[a_\lambda,b_\lambda]\cup[c_\lambda,d_\lambda].
$$
There $U_\lambda''''$ has density $\psi_\lambda''''$, positive for small $\lambda$ because
$$
\psi_0''''(s)=\psi_0''''(r)=\frac{3250}{3}.
$$
Using Step 2 and
$$
\psi_0'''(s)=-\frac{6875}{36},\qquad \psi_0'''(r)=\frac{6875}{36},
$$
the four jumps tend to
$$
\frac{99}{8},\qquad\frac{6875}{36},\qquad\frac{6875}{36},\qquad\frac{99}{8},
$$
so they remain positive. Then $U_\lambda''''$ is nonnegative and supported on the contact set, so Step 1 gives $U_\lambda=u_\lambda$.

Step 6: Evaluate the four limits and derive the jump correction

Steps 3 and 4 give
$$
A=\frac{8}{26}=\frac{4}{13},\qquad B=-\frac{4}{165},\qquad
C=\frac{-928+4768}{499125}=\frac{256}{33275}.
$$
For the middle cubic,
$$
\kappa_\lambda=Q'''=
\frac{\psi_\lambda''(c_\lambda)-\psi_\lambda''(b_\lambda)}
{c_\lambda-b_\lambda}.
$$
Step 4 gives
$$
\chi''(x)=80x^3-60x^2-12x+6,\qquad
\chi'''(x)=240x^2-120x-12,
$$
so
$$
\chi''(s)=\frac{125}{27},\quad \chi''(r)=\frac{335}{54},\quad
\chi'''(s)=-\frac{61}{3},\quad \chi'''(r)=\frac{239}{3}.
$$
With $b_1=\frac{4}{165}$, $c_1=-\frac{8}{165}$ and Step 5, the numerator coefficient is
$$
\psi_0'''(r)c_1-\psi_0'''(s)b_1+\chi''(r)-\chi''(s)
=-\frac{250}{27}+\frac{125}{27}+\frac{85}{54}=-\frac{55}{18}.
$$
So
$$
\psi_\lambda''(c_\lambda)-\psi_\lambda''(b_\lambda)
=-\frac{55}{18}\lambda+O(\lambda^2).
$$
Since $c_\lambda-b_\lambda=\frac{5}{6}+O(\lambda)$,
$$
\kappa_\lambda=-\frac{11}{3}\lambda+O(\lambda^2).
$$
The two first-order Taylor coefficients are
$$
\psi_0''''(s)b_1+\chi'''(s)=\frac{2600-2013}{99}=\frac{587}{99},
\qquad
\psi_0''''(r)c_1+\chi'''(r)=\frac{-5200+7887}{99}=\frac{2687}{99}.
$$
So
$$
\psi_\lambda'''(b_\lambda)=-\frac{6875}{36}+\frac{587}{99}\lambda+O(\lambda^2),
\qquad
\psi_\lambda'''(c_\lambda)=\frac{6875}{36}+\frac{2687}{99}\lambda+O(\lambda^2).
$$
By definition,
$$
\Delta_b=\kappa_\lambda-\psi_\lambda'''(b_\lambda),\qquad
\Delta_c=\psi_\lambda'''(c_\lambda)-\kappa_\lambda,
$$
so
$$
\Delta_b=\frac{6875}{36}-\frac{950}{99}\lambda+O(\lambda^2),\qquad
\Delta_c=\frac{6875}{36}+\frac{3050}{99}\lambda+O(\lambda^2).
$$
Therefore
$$
\frac{\Delta_c}{\Delta_b}
=1+\frac{4000}{99}\frac{36}{6875}\lambda+O(\lambda^2)
=1+\frac{128}{605}\lambda+O(\lambda^2),
$$
and $D=\frac{128}{605}$.

Final Answer: $\boxed{\left(\frac{4}{13},-\frac{4}{165},\frac{256}{33275},\frac{128}{605}\right)}$

---

## Answer

$\left(\frac{4}{13},-\frac{4}{165},\frac{256}{33275},\frac{128}{605}\right)$

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
