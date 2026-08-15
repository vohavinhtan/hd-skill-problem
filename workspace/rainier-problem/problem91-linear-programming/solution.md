## Steps

Step 1: Reduce the problem and derive the two-node moment identity

Put $t=x^2$ and write
$$
P(x)=q(t),\qquad q(t)=At^2+Bt+C.
$$
Then
$$
L_\lambda(q)=\int_0^1\frac{3-7\lambda+7(5\lambda-1)t}{\sqrt t}\,q(t)\,dt,
$$
with
$$
q(t)\leq f(t):=\frac{1}{2-t},\qquad
q(t)\leq g_r(t):=\frac{1}{1+r+(1-r)t}.
$$
Their unique crossing is $c_r=(1-r)/(2-r)>3/5$.

For $m_k=L_\lambda(t^k)$,
$$
m_k=\frac{2(3-7\lambda)}{2k+1}+\frac{14(5\lambda-1)}{2k+3},
$$
so
$$
m_0=\frac{4(7\lambda+1)}3,\quad
m_1=\frac{4(35\lambda-3)}{15},\quad
m_2=\frac{4(9\lambda-1)}5.
$$
In particular
$$
\frac{m_1-m_2}{m_0-m_1}=\lambda.
$$
Set
$$
\alpha=\frac{m_0-m_1}{1-\lambda}
=\frac{32}{15(1-\lambda)},
$$
$$
\beta=\frac{m_1-\lambda m_0}{1-\lambda}
=-\frac{4(35\lambda^2-30\lambda+3)}{15(1-\lambda)}.
$$
The polynomial $35\lambda^2-30\lambda+3$ is decreasing on the given interval and equals $-4/7$ at $1/7$, hence $\alpha,\beta>0$. Matching the coefficients of $1,t,t^2$ gives, for every quadratic $q$,
$$
L_\lambda(q)=\alpha q(\lambda)+\beta q(1). \tag{1}
$$

Step 2: Locate the hidden change of optimizer

Let $q_\lambda$ be tangent to $f$ at $\lambda$ and satisfy $q_\lambda(1)=1/2$. Writing
$$
q_\lambda(t)=f(\lambda)+f'(\lambda)(t-\lambda)+C_\lambda(t-\lambda)^2
$$
and imposing the endpoint value gives
$$
q_\lambda(t)=\frac{1}{2-\lambda}
+\frac{t-\lambda}{(2-\lambda)^2}
+\frac{\lambda^2-2}{2(2-\lambda)^2(1-\lambda)^2}(t-\lambda)^2. \tag{2}
$$
Its first slack is
$$
1-(2-t)q_\lambda(t)
=\frac{(t-\lambda)^2\left(6-4\lambda-t(2-\lambda^2)\right)}
{2(2-\lambda)^2(1-\lambda)^2}\geq0, \tag{3}
$$
because the last factor is at least $(2-\lambda)^2$.

Also
$$
q_\lambda'(1)=\frac{\lambda^2-\lambda-1}
{(2-\lambda)^2(1-\lambda)}.
$$
Thus $q_\lambda$ is tangent to $g_r$ at $1$ exactly when
$$
r=\rho(\lambda):=
\frac{\lambda(\lambda^2-9\lambda+12)}
{(\lambda-2)^2(\lambda-1)}. \tag{4}
$$
At $r=\rho(\lambda)$,
$$
1-\bigl(1+r+(1-r)t\bigr)q_\lambda(t)
=\frac{(1-t)^2N_\lambda(t)}
{(2-\lambda)^4(1-\lambda)^3}, \tag{5}
$$
where
$$
N_\lambda(t)=2t(\lambda^2-2)(\lambda^2-\lambda-1)
-3\lambda^5+5\lambda^4+4\lambda^3-16\lambda+8.
$$
Since $0<\lambda<1/4$, the coefficient of $t$ is positive and the constant term is larger than
$$
8-16\cdot\frac14-3\left(\frac14\right)^5>0.
$$
Hence (5) is nonnegative. The quadratic $q_\lambda$ is concave, $q_\lambda(1)=1/2$, and
$$
q_\lambda(0)=
\frac{\lambda^4-4\lambda^3+10\lambda^2-12\lambda+4}
{2(2-\lambda)^2(1-\lambda)^2}>0,
$$
because its numerator is larger than
$$
4-12\left(\frac29\right)-4\left(\frac29\right)^3>0.
$$
Thus $q_\lambda>0$ on $[0,1]$.

For fixed $\lambda$ define
$$
H_r(t)=1-\bigl(1+r+(1-r)t\bigr)q_\lambda(t).
$$
Then
$$
H_r(t)=H_{\rho(\lambda)}(t)
+(\rho(\lambda)-r)(1-t)q_\lambda(t). \tag{6}
$$
Therefore $q_\lambda$ is feasible for $r\leq\rho(\lambda)$. If $r>\rho(\lambda)$, the negative term linear in $1-t$ in (6) dominates the double zero in (5) for $t<1$ close to $1$, so $q_\lambda$ is infeasible.

When it is feasible, (1) yields
$$
L_\lambda(q)\leq\alpha f(\lambda)+\frac{\beta}{2}
=L_\lambda(q_\lambda).
$$
Equality forces $q(\lambda)=f(\lambda)$ and $q(1)=1/2$; the interior equality also forces $q'(\lambda)=f'(\lambda)$, so $q=q_\lambda$.

Finally
$$
\rho'(\lambda)=
\frac{4(\lambda^3-6\lambda+6)}
{(\lambda-2)^3(\lambda-1)^2}<0,
$$
and
$$
\rho\left(\frac17\right)=-\frac{263}{507}>-\frac35,\qquad
\rho\left(\frac29\right)=-\frac{407}{448}<-\frac9{10}.
$$
Thus each allowed $r$ has a unique $z\in(1/7,2/9)$ with $r=\rho(z)$. The branch (2) is optimal for $\lambda<z$ and loses feasibility for $\lambda>z$, so the exceptional point in the statement is $z=\Lambda(r)$.

Step 3: Derive the optimizer on the right of the phase point

At $\lambda=z$, (3) and (5) have strict slack away from $z$ and $1$ and nondegenerate quadratic contact there. The left contact therefore persists near $z$. The right contact cannot stay at the endpoint for $\lambda>z$: a two-node moment representation on $\{s,1\}$ forces
$$
s=\frac{m_1-m_2}{m_0-m_1}=\lambda,
$$
and then the primal contact conditions give exactly $q_\lambda$, which is infeasible by Step 2. Thus the right contact must move to some $t<1$; being interior, it is tangential. We construct and certify this branch.

Write
$$
q(y)=f(s)+f'(s)(y-s)+C(y-s)^2.
$$
Tangency at $t$ gives
$$
C=\frac{g_r'(t)-f'(s)}{2(t-s)},
$$
and the remaining value condition is
$$
\Phi_r(s,t):=
2(g_r(t)-f(s))-(t-s)(f'(s)+g_r'(t))=0. \tag{7}
$$
Solving the first two moment equations at nodes $s<t$ gives
$$
a=\frac{tm_0-m_1}{t-s},\qquad
b=\frac{m_1-sm_0}{t-s}.
$$
The third moment is then matched exactly when
$$
\Psi_\lambda(s,t):=
m_2-(s+t)m_1+st\,m_0=0. \tag{8}
$$
At $(s,t,\lambda)=(z,1,z)$ both (7) and (8) hold, and $a,b$ equal the positive weights from Step 1. Hence they remain positive locally.

Differentiating (7)-(8) at $(z,1,z)$ and using $r=\rho(z)$ gives
$$
\Phi_s=-\frac{z^3-6z+6}{(z-2)^3(z-1)},\qquad
\Phi_t=\frac{3z^4-4z^3-6z^2+12}{(z-2)^4(z-1)},
$$
$$
\Psi_s=\frac{32}{15},\qquad
\Psi_t=\frac{4(35z^2-30z+3)}{15},\qquad
\Psi_\lambda=-\frac{32}{15}. \tag{9}
$$
Set
$$
D(z)=35z^6-100z^5-123z^4+772z^3-1026z^2+414z+60.
$$
The Jacobian of (7)-(8) in $(s,t)$ is
$$
-\frac{4D(z)}{15(z-2)^4(z-1)}.
$$
Moreover
$$
D(z)>60+\frac{414}{7}
-1026\left(\frac29\right)^2
-123\left(\frac29\right)^4
-100\left(\frac29\right)^5>0.
$$
Hence the implicit-function theorem gives a unique local branch. Solving the differentiated $2\times2$ system gives
$$
s_+'(z)=\frac{8(3z^4-4z^3-6z^2+12)}{D(z)}, \tag{10}
$$
$$
t_+'(z)=\frac{8(z-2)(z^3-6z+6)}{D(z)}. \tag{11}
$$
The strict slack in (3),(5) and the nondegenerate contacts persist for a small perturbation, so this branch is feasible; its positive two-node representation then certifies optimality.

Step 4: Compute the two one-sided second derivatives

Let
$$
\mathcal D(q)=\frac{\partial}{\partial\lambda}L_\lambda(q)
=\int_0^1\frac{-7+35t}{\sqrt t}\,q(t)\,dt.
$$
For a unique continuously varying optimizer $q_\lambda$,
$$
V_r'(\lambda)=\mathcal D(q_\lambda). \tag{12}
$$
Indeed, for $h>0$, optimality at $\lambda$ and $\lambda+h$ gives
$$
h\mathcal D(q_\lambda)\leq
V_r(\lambda+h)-V_r(\lambda)
\leq h\mathcal D(q_{\lambda+h}),
$$
and the analogous reversed inequalities hold for $h<0$. Both optimizer branches converge to $q_z$, so $V_r'$ is continuous at $z$.

Since $\mathcal D(1)=\mathcal D(t)=28/3$ and $\mathcal D(t^2)=36/5$, evaluation on the left branch (2) gives
$$
\mathcal D(q_s)=
\frac{2(35s^4-210s^3+447s^2-420s+156)}
{15(s-2)^2(s-1)^2},
$$
and therefore
$$
\frac{d}{ds}\mathcal D(q_s)=
\frac{32(s^3-6s+6)}
{15(s-2)^3(s-1)^3}.
$$
Since $s=\lambda$ on this branch,
$$
V_r''(z-)=
\frac{32(z^3-6z+6)}
{15(z-2)^3(z-1)^3}. \tag{13}
$$

For the right branch use
$$
q(y)=f(s)+f'(s)(y-s)
+\frac{g_r'(t)-f'(s)}{2(t-s)}(y-s)^2.
$$
Differentiating the resulting expression for $\mathcal D(q)$ at $(s,t)=(z,1)$ gives
$$
\mathcal D_s=
\frac{2(35z^2-70z+43)(z^3-6z+6)}
{15(z-2)^3(z-1)^3},
$$
$$
\mathcal D_t=
-\frac{2(35z^2-70z+27)(3z^4-4z^3-6z^2+12)}
{15(z-2)^4(z-1)^3}. \tag{14}
$$
Using (10),(11),
$$
V_r''(z+)=
\frac{256(z^3-6z+6)(3z^4-4z^3-6z^2+12)}
{15(z-2)^3(z-1)^3D(z)}. \tag{15}
$$
Subtracting (13) from (15) gives
$$
-\frac{32(35z^2-30z+3)(z^3-6z+6)^2}
{15(z-2)^2(z-1)^3D(z)}\neq0.
$$
Thus the local switch is indeed $C^1$ but not $C^2$.

Step 5: Form the curvature ratio

Dividing (15) by (13) gives
$$
R(z)=
\frac{8(3z^4-4z^3-6z^2+12)}
{35z^6-100z^5-123z^4+772z^3-1026z^2+414z+60}.
$$

Final Answer: $\boxed{\frac{8(3z^4-4z^3-6z^2+12)}{35z^6-100z^5-123z^4+772z^3-1026z^2+414z+60}}$

---

## Answer

$\frac{8(3z^4-4z^3-6z^2+12)}{35z^6-100z^5-123z^4+772z^3-1026z^2+414z+60}$

---

## Classification

**Problem Type:** Parameter identification

**Answer Type:** Polynomial or rational function

---

## Solution Concepts

- semi-infinite linear programming
- moment contact certificates
- active-set bifurcation
- implicit differentiation
- optimal-value sensitivity
