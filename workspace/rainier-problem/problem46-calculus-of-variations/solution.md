## Steps

Step 1: Determine the unperturbed active set

Set
$$
a=\tau,\qquad L=8\tau,\qquad b=9\tau,
$$
and write $y=r-a$. On a free arc the Euler equation and smooth fit at the upper obstacle give
$$
U_0''(a+y)=\frac{1}{2}y^2(y-6\tau),\qquad
U_0'(a+y)=\frac{y^4}{8}-\tau y^3,
$$
$$
U_0(a+y)=M_\tau+\frac{y^5}{40}-\frac{\tau y^4}{4}.
$$
At $y=L$, both $U_0'(b)=0$ and
$$
-\int_0^L U_0'(a+y)\,dy
=\frac{\tau L^4}{4}-\frac{L^5}{40}
=\frac{1024}{5}\tau^5=M_\tau.
$$
Consequently
$$
U_0(r)=
\begin{cases}
M_\tau, & 0\leq r\leq a,\\
M_\tau+\dfrac{(r-a)^5}{40}-\dfrac{\tau(r-a)^4}{4}, & a<r<b,\\
0, & b\leq r\leq\dfrac14.
\end{cases}
$$
The KKT signs and equality constraint hold, so strict convexity gives
$$
\mathscr S_\tau(0)(x)=U_0(\rho(x)).
$$
The contact expansions are
$$
U_0(a+y)-M_\tau=-\frac{\tau y^4}{4}+O(y^5),
\qquad
U_0'(b+y)=64\tau^3y+O(y^2).
$$
Thus the contacts are quartic and quadratic.

Step 2: Project out the equality multiplier and obtain the derivative formula

For $p\in X$, let $W_p''(a+y)=\frac12y^2p(a+y)$ with $W_p(a)=W_p(b)=0$. Direct integration gives
$$
W_p(a+y)=
-\frac{L-y}{2L}\int_0^y t^3p(a+t)\,dt
-\frac{y}{2L}\int_y^L(L-t)t^2p(a+t)\,dt.
$$
Two integrations by parts yield
$$
\int_0^L y^2W_p(a+y)\,dy
=-\frac1{24}\int_0^L y^3(L^3-y^3)p(a+y)\,dy.
$$
Define
$$
\overline g_\tau=
\frac{28}{3L^7}\int_0^L y^3(L^3-y^3)g(a+y)\,dy,
\qquad
g_\tau^\circ=g-\overline g_\tau.
$$
Since $\int_0^L y^3(L^3-y^3)\,dy=3L^7/28$, the linearized equality constraint is exactly
$$
\int_0^L y^2W_{g_\tau^\circ}(a+y)\,dy=0.
$$
Set $\Psi_g=0$ outside $(a,b)$ and, for $a<r<b$, set
$$
\Psi_g(r)=
-\frac{b-r}{16\tau}\int_a^r(s-a)^3g_\tau^\circ(s)\,ds
-\frac{r-a}{16\tau}\int_r^b(b-s)(s-a)^2g_\tau^\circ(s)\,ds.
$$
Then the candidate derivative is the explicit bounded linear map
$$
D\mathscr S_\tau(0)[g](x)=\sigma(x)\Psi_g(\rho(x)).
$$

Step 3: Prove active-set persistence and the uniform Frechet estimate

Let $\delta=\|g\|_X$. In the well of sign $s\in\{1,-1\}$, write the free interval as $[a+A_s,b+B_s]$, put $z_s=A_s^3$, and introduce the equality multiplier $\lambda$. Set $A(z)=\operatorname{sgn}(z)|z|^{1/3}$ and
$$
f_s(y)=y^2\bigl(y-6\tau+s(g(a+y)+\lambda)\bigr),
$$
$$
P_s=\frac12\int_{A(z_s)}^{L+B_s}f_s(y)\,dy,
\qquad
Q_s=M_\tau+\frac12\int_{A(z_s)}^{L+B_s}(L+B_s-y)f_s(y)\,dy.
$$
On the free interval define
$$
U_s(a+y)=M_\tau+\frac12\int_{A(z_s)}^y(y-t)f_s(t)\,dt,
$$
and extend it by $M_\tau$ to the left and by $0$ to the right. Let
$$
E=2\int_0^{1/4}(r-a)^2(U_+(r)-U_-(r))\,dr.
$$
For $\xi=(z_+,B_+,z_-,B_-,\lambda)$, the five matching equations are
$$
\mathcal F(g,\xi)=(P_+,Q_+,P_-,Q_-,E)=0.
$$
Moreover,
$$
\int_0^{A(z)}y^2p(a+y)\,dy
=\frac13\int_0^z p(a+\sqrt[3]{t})\,dt.
$$
Hence $\mathcal F$ is $C^1$ near $(0,0)$; the contact contributions to $E$ are $O(|z|^{7/3})$ and $O(|B|^3)$.

Differentiating the five displayed equations at $(0;0)$ gives
$$
D_\xi\mathcal F(0,0)=
\begin{pmatrix}
\tau&64\tau^3&0&0&\dfrac{L^3}{6}\\
L\tau&0&0&0&\dfrac{L^4}{24}\\
0&0&\tau&64\tau^3&-\dfrac{L^3}{6}\\
0&0&L\tau&0&-\dfrac{L^4}{24}\\
0&0&0&0&-\dfrac{L^7}{56}
\end{pmatrix}.
$$
Its determinant is $-\frac{512}{7}L^9\tau^8\neq0$; call the matrix $J$. For sufficiently small $\|g\|_X+\|\xi\|$,
$$
\left\|J^{-1}\bigl(D_\xi\mathcal F(g,\xi)-J\bigr)\right\|\leq\frac12,
\qquad
\|\mathcal F(g,0)\|\leq c_0\|g\|_X.
$$
With $R_g(\xi)=\mathcal F(g,\xi)-\mathcal F(g,0)-J\xi$, define
$$
T_g(\xi)=-J^{-1}\mathcal F(g,0)-J^{-1}R_g(\xi).
$$
On the ball of radius $r_g=2\|J^{-1}\|c_0\|g\|_X$, integration along line segments gives
$$
\|T_g(\xi)-T_g(\eta)\|\leq\frac12\|\xi-\eta\|,
\qquad \|T_g(\xi)\|\leq r_g.
$$
Iteration from $0$ is Cauchy, its limit is the unique local solution, and
$$
|z_s|+|B_s|+|\lambda|\leq C_\tau\delta.
$$
For active-set verification, write
$$
H_s(y)=y-6\tau+s\bigl(g(a+y)+\lambda\bigr),
\qquad f_s(y)=y^2H_s(y).
$$
The parameter bound gives $A_s=O(\delta^{1/3})$, $B_s,\lambda=O(\delta)$, while
$$
H_s(A_s)<0<H_s(L+B_s),
\qquad H_s'\geq\frac12.
$$
Thus $f_s$ changes sign once. Using $P_s=0$ from either endpoint gives
$$
U_s'(a+y)=\frac12\int_{A_s}^y f_s(t)\,dt
=-\frac12\int_y^{L+B_s}f_s(t)\,dt<0.
$$
Together with $Q_s=0$, this proves $0<U_s<M_\tau$; the residual signs are $f_s\leq0$ on upper contact and $f_s\geq0$ on lower contact. Hence the profile satisfies KKT and, by strict convexity, is $\mathscr S_\tau(g)$.

Put
$$
V_a(g)=\Psi_g'(a),\qquad V_b(g)=\Psi_g'(b),
\qquad \ell=\lambda+\overline g_\tau.
$$
Expanding the five equations gives, for $s\in\{1,-1\}$,
$$
0=-\tau z_s+sV_a(g)-s\frac{L^3}{24}\ell+R_{a,s},
$$
$$
0=64\tau^3B_s+sV_b(g)+s\frac{L^3}{8}\ell+R_{b,s},
$$
$$
0=-\frac{L^7}{56}\ell+R_E,
$$
with
$$
|R_{a,s}|+|R_{b,s}|
\leq C_\tau\left(|z_s|^{4/3}+B_s^2+(\delta+|\ell|)(|z_s|+|B_s|)\right),
\qquad
|R_E|\leq C_\tau\left(|z_+|^{7/3}+|z_-|^{7/3}+|B_+|^3+|B_-|^3\right).
$$
These bounds follow respectively from $U_0'(a+A_s)+\tau A_s^3=A_s^4/8$, the outer Taylor remainder, and the two swept contact layers. Therefore
$$
\left|A_s^3-\frac{sV_a(g)}{\tau}\right|
+\left|B_s+\frac{sV_b(g)}{64\tau^3}\right|
+|\lambda+\overline g_\tau|
\leq C_\tau\delta^{4/3}.
$$
The common-arc remainder is $O(\delta^{4/3})$ in $H^1$. Inner mismatches have length $O(\delta^{1/3})$ and derivative $O(\delta)$; outer ones have length and derivative $O(\delta)$. Thus
$$
\|\mathcal Q_\tau(g)\|_{H^1(0,1)}
\leq C_\tau\delta^{7/6}.
$$
Therefore
$$
\lim_{\|g\|_X\to0}
\frac{\|\mathscr S_\tau(g)-\mathscr S_\tau(0)-D\mathscr S_\tau(0)[g]\|_{H^1(0,1)}}{\|g\|_X}=0.
$$

Step 4: Derive the two-sided boundary-layer law

Only $k=3$ and $k=1$ occur. In a signed coordinate pointing into the old free interval, write
$$
U_0'(t)=-\gamma t^k+O(t^{k+1}),
\qquad
v_1'(t)=v+O(t),
$$
and let $\delta_\varepsilon$ be the interface displacement. Smooth fit gives
$$
0=-\gamma\delta_\varepsilon^k+\varepsilon v
+O\left(|\delta_\varepsilon|^{k+1}
+|\varepsilon|\,|\delta_\varepsilon|+\varepsilon^2\right).
$$
The endpoint estimates give $|\delta_\varepsilon|^k=O(|\varepsilon|)$, so for $v\ne0$ and $d_\varepsilon=|\delta_\varepsilon|$,
$$
\gamma d_\varepsilon^k=|\varepsilon v|+o(|\varepsilon|).
$$
On the swept interval $0\leq t\leq d_\varepsilon$, Taylor's formula gives uniformly
$$
\mathcal Q_\tau'(\varepsilon h;t)
=\operatorname{sgn}(\varepsilon v)\,
\gamma\left(d_\varepsilon^k-t^k\right)+r_\varepsilon(t),
\qquad
\sup_{0\le t\le d_\varepsilon}|r_\varepsilon(t)|
=o(d_\varepsilon^k).
$$
Indeed, the two omitted terms are $O(d_\varepsilon^{k+1})$ and
$O(|\varepsilon|d_\varepsilon)=o(d_\varepsilon^k)$. Scaling $t=d_\varepsilon z$ now gives
$$
\int_{\mathrm{layer}}|\mathcal Q_\tau'(\varepsilon h)|^2
=\gamma^2d_\varepsilon^{2k+1}
\int_0^1(1-z^k)^2\,dz
+o(d_\varepsilon^{2k+1}),
$$
and hence
$$
\int_{\mathrm{layer}}|\mathcal Q_\tau'(\varepsilon h)|^2
=\gamma^{-1/k}|\varepsilon v|^{2+1/k}
\int_0^1(1-z^k)^2\,dz
+o\left(|\varepsilon|^{2+1/k}\right).
$$
Also
$$
\sup_{\mathrm{layer}}|\mathcal Q_\tau(\varepsilon h)|
=O(d_\varepsilon^{k+1}),
\qquad
\int_{\mathrm{layer}}|\mathcal Q_\tau(\varepsilon h)|^2
=O(d_\varepsilon^{2k+3})
=o(d_\varepsilon^{2k+1}).
$$
For $v=0$ the layer is lower order. Finally,
$$
\int_0^1(1-z^k)^2\,dz
=1-\frac{2}{k+1}+\frac{1}{2k+1},
$$
equal to $9/14$ for $k=3$ and $1/3$ for $k=1$. Dependence only on $|\varepsilon v|$ proves both one-sided limits agree.

Step 5: Compute the generic sharp exponent and first exceptional space

The endpoint slopes in the explicit derivative are
$$
V_a(h)=-\frac{J_\tau(h)}{16\tau},\qquad
V_b(h)=\frac{K_\tau(h)}{16\tau},
$$
where
$$
J_\tau(h)=\int_a^b(b-r)(r-a)^2h_\tau^\circ(r)\,dr,
\qquad
K_\tau(h)=\int_a^b(r-a)^3h_\tau^\circ(r)\,dr.
$$
At each inner interface, $k=3$ and $\gamma=\tau$. Summing the four identical physical interfaces gives
$$
\mathfrak C_{\tau,1}(h)=
\frac{3\sqrt{14}}7\tau^{-1/6}
\left|\frac{J_\tau(h)}{16\tau}\right|^{7/6},
$$
and hence
$$
Z_{\tau,1}=\{h\in X:J_\tau(h)=0\}.
$$
For $h(a+y)=y$, one has
$$
\overline h_\tau=\frac{7L}{10},
\qquad
J_\tau(h)=-\frac{L^5}{120}\neq0.
$$
This nonzero coefficient and the uniform upper bound prove
$$
\alpha_{\tau,1}=\frac76.
$$

Step 6: Compute the exceptional sharp exponent and second exceptional space

For $g\in Z_{\tau,1}$, the inner endpoint equation has no linear term. Its remainder bound gives
$$
|A_s|\leq C_\tau\|g\|_X^{2/3}.
$$
The equality equation and outer endpoint equation then give
$$
|\lambda+\overline g_\tau|\leq C_\tau\|g\|_X^3,
\qquad
\left|B_s+\frac{sV_b(g)}{64\tau^3}\right|
\leq C_\tau\|g\|_X^2.
$$
The common, inner-mismatch, and outer-mismatch contributions are respectively $O(\|g\|_X^2)$, $O(\|g\|_X^{7/3})$, and $O(\|g\|_X^{3/2})$. Thus, uniformly on $Z_{\tau,1}$,
$$
\|\mathcal Q_\tau(g)\|_{H^1(0,1)}
\leq C_\tau\|g\|_X^{3/2}.
$$
At each outer interface, $k=1$ and $\gamma=64\tau^3$. The four-interface, two-sided layer formula yields
$$
\mathfrak C_{\tau,2}(h)=
\frac{\sqrt3}{12}\tau^{-3/2}
\left|\frac{K_\tau(h)}{16\tau}\right|^{3/2}
\qquad(h\in Z_{\tau,1}),
$$
$$
Z_{\tau,2}=\{h\in X:J_\tau(h)=0\text{ and }K_\tau(h)=0\}.
$$
The direction
$$
h(a+y)=y^2-\frac{32L}{27}y
$$
satisfies $J_\tau(h)=0$ and $K_\tau(h)=L^6/135\neq0$. Therefore the uniform bound is attained and
$$
\alpha_{\tau,2}=\frac32.
$$

Step 7: Assemble the sharpness summary

Final Answer: $\boxed{\Theta_\tau=\left(\frac{7}{6},\frac{3}{2}\right)}$

---

## Answer

$\Theta_\tau=\left(\frac{7}{6},\frac{3}{2}\right)$

---

## Classification

**Problem Type:** Optimization

**Answer Type:** Tuple or ordered list

---

## Concepts (1–5)

- Double-obstacle variational inequalities
- Equality-constrained Lagrange multipliers
- Dirichlet Green operators
- Degenerate free-boundary layers
- Stratified Frechet sensitivity
