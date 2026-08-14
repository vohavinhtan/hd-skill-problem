## Steps

Step 1: Use the variational principle

For $v\in\mathcal K_\lambda$, convexity makes the segment from $u_\lambda$ to $v$ admissible, and differentiation gives
$$
\int_0^1u_\lambda''(v-u_\lambda)''\,dx\geq0.
$$
For compactly supported $\varphi\geq0$, take $v=u_\lambda+\varphi$; then $u_\lambda''''$ is a nonnegative Radon measure. Off contact both signs are allowed, so $u_\lambda''''=0$ and $u_\lambda$ is cubic.

Conversely, if $U\in\mathcal K_\lambda$ is $C^2$, piecewise smooth, and $\mu=U''''$ is nonnegative and supported on $\{U=\psi_\lambda\}$, integration by parts gives
$$
\int_0^1U''(v-U)''\,dx=\int_0^1(v-U)\,d\mu\geq0.
$$
Strict convexity then gives $U=u_\lambda$.

Step 2: Derive the limiting spline

Put
$$
s=\frac{1}{12},\qquad r=\frac{11}{12},\qquad \psi_0(x)=x^2q_0(x).
$$
Write the left clamped cubic as $L(x)=x^2(\alpha+\beta x)$. Matching value and slope at $t>0$ gives
$$
\alpha=\frac{3\psi_0(t)-t\psi_0'(t)}{t^2},\qquad
\beta=\frac{t\psi_0'(t)-2\psi_0(t)}{t^3}.
$$
Matching the second derivative requires
$$
t^2\psi_0''(t)-4t\psi_0'(t)+6\psi_0(t)=t^4q_0''(t)=0.
$$
Here
$$
q_0''(x)=-\frac{1}{8}(12x-1)P(x),\qquad
P(x)=2880x^3-7440x^2+6204x-1655.
$$
On $[0,\frac{1}{2}]$, $P''=17280x-14880<0$, $P'(\frac{1}{2})=924>0$, and $P(\frac{1}{2})=-53$; so $P'>0$ and $P<0$. The only left-half root is $s=\frac{1}{12}$.

At $s$,
$$
\psi_0(s)=\frac{102487}{2985984},\qquad
\psi_0'(s)=\frac{73205}{124416},
$$
so
$$
\alpha=\frac{161051}{20736},\qquad \beta=-\frac{14641}{432},
\qquad
L(x)=\frac{14641}{20736}x^2(-48x+11).
$$
Hermite uniqueness makes the middle cubic symmetric, so $M(x)=\eta+\theta x(1-x)$, while the right cubic is $L(1-x)$. Here
$$
\theta=\frac{\psi_0'(s)}{1-2s}=\frac{14641}{20736},\qquad
\eta=\psi_0(s)-\theta s(1-s)=-\frac{14641}{746496}.
$$
Also
$$
M''=-\frac{14641}{10368}=\psi_0''(s)=\psi_0''(r),
$$
so the matching is $C^2$. This gives
$$
U_0(x)=
\begin{cases}
\frac{14641}{20736}x^2(-48x+11),&0\leq x\leq s,\\
\frac{14641}{746496}(-36x^2+36x-1),&s\leq x\leq r,\\
\frac{14641}{20736}(1-x)^2(48x-37),&r\leq x\leq1.
\end{cases}
$$
The left and middle gaps are
$$
\frac{x^2(-12x+1)^3}{20736}(-1728x^3+6480x^2-8580x+4235),
$$
$$
\frac{(12x-11)^3(12x-1)^3(36x^2-36x-11)}{746496},
$$
the right gap is its reflection. The first residual cubic has derivative at most $-8580+\frac{12960}{12}<0$ and value $3564$ at $s$; the middle factors have signs $-,+,-$. So $U_0>\psi_0$ off $s,r$.

Their third derivatives are $-\frac{14641}{72},0,\frac{14641}{72}$, so
$$
U_0''''=\frac{14641}{72}\delta_s+\frac{14641}{72}\delta_r.
$$
Step 1 verifies $U_0$ as the minimizer at $\lambda=0$.

Step 3: Derive the free-boundary equations

Write $\psi_\lambda=x^2q_\lambda=(1-x)^2\rho_\lambda$. Step 2 and reflection give
$$
q_\lambda''(a)=0,\qquad \rho_\lambda''(d)=0.
$$
Also,
$$
q_\lambda''=q_0''+\lambda(-10+24x),\qquad
\rho_\lambda''=\rho_0''+\lambda(6+24x).
$$
The polynomial in Step 2 has $P(s)=-1188$, hence
$$
q_0'''(s)=-\frac{12}{8}P(s)=1782,\qquad \rho_0'''(r)=-1782
$$
by reflection. They are nonzero, so the implicit function theorem applies. Writing
$a=s+a_1\lambda+O(\lambda^2)$ and $d=r+d_1\lambda+O(\lambda^2)$ gives
$$
1782a_1-8=0,\qquad -1782d_1+28=0,
$$
so
$$
a_\lambda=s+\frac{4}{891}\lambda+O(\lambda^2),\qquad
d_\lambda=r+\frac{14}{891}\lambda+O(\lambda^2).
$$

For the middle cubic put $h=c-b$, $f=\psi_\lambda$, $y=x-b$, and
$$
Q(x)=f(b)+f'(b)y+\xi y^2+\zeta y^3.
$$
Matching $Q,Q'$ at $c$ gives
$$
\xi h^2+\zeta h^3=f(c)-f(b)-hf'(b),\qquad
2\xi h+3\zeta h^2=f'(c)-f'(b).
$$
Solving yields
$$
Q''(b)=\frac{6(f(c)-f(b))}{h^2}-\frac{4f'(b)+2f'(c)}{h},
$$
$$
Q''(c)=-\frac{6(f(c)-f(b))}{h^2}+\frac{2f'(b)+4f'(c)}{h}.
$$
Since value and slope already match, $C^2$ matching is exactly $Q''(b)=f''(b)$ and $Q''(c)=f''(c)$. Multiplying by $h^2$ gives
$$
F_b=h^2f''(b)+4hf'(b)+2hf'(c)-6(f(c)-f(b))=0,
$$
$$
F_c=h^2f''(c)-2hf'(b)-4hf'(c)+6(f(c)-f(b))=0.
$$

Step 4: Compute the inner free-boundary expansions

Set
$$
\beta=b-s,\qquad \gamma=c-r,\qquad
G_b=\frac{3888}{625}F_b,\qquad G_c=\frac{3888}{625}F_c.
$$
Expand
$$
\psi_0=-144x^8+576x^7-853x^6+543x^5-\frac{1655}{16}x^4-\frac{209}{8}x^3+\frac{121}{16}x^2,
$$
and
$$
\chi=\frac{\partial\psi_\lambda}{\partial\lambda}=4x^5-5x^4-2x^3+3x^2.
$$
Differentiation at $s=\frac{1}{12}$ and $r=\frac{11}{12}$ gives
$$
\begin{aligned}
&\psi_0'(s)=\frac{73205}{124416},\quad
\psi_0'(r)=-\frac{73205}{124416},\quad
\psi_0''(s)=\psi_0''(r)=-\frac{14641}{10368},\\
&\psi_0'''(s)=-\frac{6875}{36},\quad
\psi_0'''(r)=\frac{6875}{36},\quad
\psi_0''''(s)=\psi_0''''(r)=\frac{3250}{3},\\
&\chi(s)=\frac{605}{31104},\quad \chi(r)=\frac{605}{15552},\quad
\chi'(s)=\frac{2321}{5184},\quad \chi'(r)=-\frac{4279}{5184},\\
&\chi''(s)=\frac{125}{27},\quad \chi''(r)=\frac{335}{54},\quad
\chi'''(s)=-\frac{61}{3},\quad \chi'''(r)=\frac{239}{3}.
\end{aligned}
$$
Differentiating Step 3 for fixed $f$ and $h=c-b$ gives
$$
\begin{aligned}
F_{b,b}&=h^2f'''(b)+2hf''(b)+2(f'(b)-f'(c)),\\
F_{b,c}&=2h(f''(b)+f''(c))+4(f'(b)-f'(c)),\\
F_{b,bb}&=h^2f''''(b),\\
F_{b,bc}&=2hf'''(b)+2(f''(b)-f''(c)),\\
F_{b,cc}&=2hf'''(c)+2(f''(b)-f''(c)),
\end{aligned}
$$
and
$$
\begin{aligned}
F_{c,b}&=-F_{b,c},\\
F_{c,c}&=h^2f'''(c)-2hf''(c)-2(f'(b)-f'(c)),\\
F_{c,bb}&=2(f''(c)-f''(b))-2hf'''(b),\\
F_{c,bc}&=2(f''(c)-f''(b))-2hf'''(c),\\
F_{c,cc}&=h^2f''''(c).
\end{aligned}
$$
Since $\psi_\lambda=\psi_0+\lambda\chi$, mixed $\lambda$ derivatives use $f=\chi$ and second $\lambda$ derivatives vanish. At $(b,c,\lambda)=(s,r,0)$, $h=\frac{5}{6}$, so
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
\end{pmatrix},
$$
for variables $(b,c,\lambda)$, and $G_b=G_c=0$ there. For example,
$$
G_{b,b\lambda}=\frac{3888}{625}\left[
\left(\frac{5}{6}\right)^2\left(-\frac{61}{3}\right)
+\frac{5}{3}\frac{125}{27}
+2\frac{2321+4279}{5184}
\right]=-24.
$$
The $(b,c)$ Jacobian is $\operatorname{diag}(-825,825)$, so the implicit function theorem gives unique analytic branches.

Taylor's formula now gives
$$
G_b=2340\beta^2-1980\beta\gamma-24\beta\lambda+990\gamma^2+144\gamma\lambda-825\beta+20\lambda+O_3,
$$
$$
G_c=990\beta^2-1980\beta\gamma-144\beta\lambda+2340\gamma^2+264\gamma\lambda+825\gamma+40\lambda+O_3,
$$
where $O_3$ contains terms of total degree at least three. Put
$$
\beta=b_1\lambda+b_2\lambda^2+O(\lambda^3),\qquad
\gamma=c_1\lambda+c_2\lambda^2+O(\lambda^3).
$$
The linear terms give
$$
b_1=\frac{4}{165},\qquad c_1=-\frac{8}{165}.
$$
At order $\lambda^2$,
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
Together with Step 3,
$$
b_\lambda-a_\lambda=\frac{8}{405}\lambda+O(\lambda^2),\qquad
d_\lambda-c_\lambda=\frac{26}{405}\lambda+O(\lambda^2).
$$
So $0<a_\lambda<b_\lambda<c_\lambda<d_\lambda<1$ for small $\lambda>0$.

Step 5: Verify contact and reaction signs

Build $U_\lambda$ from the three cubics and the two contact pieces. Step 3 makes it $C^2$. For $G_\lambda=U_\lambda-\psi_\lambda$, contact multiplicities force
$$
\begin{aligned}
G_\lambda&=x^2(a_\lambda-x)^3Q_{L,\lambda}(x),\\
G_\lambda&=(x-b_\lambda)^3(c_\lambda-x)^3Q_{M,\lambda}(x),\\
G_\lambda&=(1-x)^2(x-d_\lambda)^3Q_{R,\lambda}(x).
\end{aligned}
$$
The quotients vary continuously, and Step 2 gives
$$
Q_{L,0}=\frac{1}{12}(-1728x^3+6480x^2-8580x+4235)>0,
$$
$$
Q_{M,0}=-144x^2+144x+44>0,\qquad Q_{R,0}(x)=Q_{L,0}(1-x)>0.
$$
They stay positive on the moving intervals, so the contact set is
$$
[a_\lambda,b_\lambda]\cup[c_\lambda,d_\lambda].
$$

On contact, $\psi_\lambda''''$ stays positive since the intervals shrink to $s,r$ and
$$
\psi_0''''(s)=\psi_0''''(r)=\frac{3250}{3}.
$$
By Steps 2 and 4, the jumps at $a,b,c,d$ tend to
$$
\left(-\frac{6875}{36}\right)-\left(-\frac{14641}{72}\right)=\frac{99}{8},
$$
$$
0-\left(-\frac{6875}{36}\right)=\frac{6875}{36},\qquad
\frac{6875}{36}-0=\frac{6875}{36},
$$
$$
\frac{14641}{72}-\frac{6875}{36}=\frac{99}{8}.
$$
They stay positive. The measure $U_\lambda''''$ is therefore nonnegative and supported on contact; Step 1 gives $U_\lambda=u_\lambda$.

Step 6: Evaluate the four limits

Steps 3 and 4 give
$$
A=\frac{8}{26}=\frac{4}{13},\qquad
B=\frac{4}{165}-\frac{8}{165}=-\frac{4}{165},
$$
$$
C=\frac{-928+4768}{499125}=\frac{256}{33275}.
$$
For the middle cubic set
$$
\kappa_\lambda=Q'''=
\frac{\psi_\lambda''(c_\lambda)-\psi_\lambda''(b_\lambda)}
{c_\lambda-b_\lambda}.
$$
Step 4 gives numerator coefficient
$$
\psi_0'''(r)c_1-\psi_0'''(s)b_1+\chi''(r)-\chi''(s)
=-\frac{250}{27}+\frac{125}{27}+\frac{85}{54}=-\frac{55}{18}.
$$
Since $c_\lambda-b_\lambda=\frac{5}{6}+O(\lambda)$,
$$
\kappa_\lambda=-\frac{11}{3}\lambda+O(\lambda^2).
$$
Also
$$
\psi_0''''(s)b_1+\chi'''(s)=\frac{587}{99},\qquad
\psi_0''''(r)c_1+\chi'''(r)=\frac{2687}{99},
$$
so
$$
\psi_\lambda'''(b_\lambda)=-\frac{6875}{36}+\frac{587}{99}\lambda+O(\lambda^2),
$$
$$
\psi_\lambda'''(c_\lambda)=\frac{6875}{36}+\frac{2687}{99}\lambda+O(\lambda^2).
$$
By definition,
$$
\Delta_b=\kappa_\lambda-\psi_\lambda'''(b_\lambda),\qquad
\Delta_c=\psi_\lambda'''(c_\lambda)-\kappa_\lambda,
$$
which gives
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
