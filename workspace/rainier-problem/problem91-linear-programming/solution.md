## Steps

Step 1: Reduce the problem and expose the moment identity

Put $t=x^2$ and write
$$
P(x)=q(t),\qquad q(t)=At^2+Bt+C.
$$
Then
$$
L_\lambda(q):=V_r(\lambda)\text{ evaluated at }q
=\int_0^1\frac{3-7\lambda+7(5\lambda-1)t}{\sqrt t}\,q(t)\,dt.
$$
The two pointwise bounds are
$$
q(t)\leq f(t):=\frac{1}{2-t},
\qquad
q(t)\leq g_r(t):=\frac{1}{1+r+(1-r)t}.
$$
Their unique crossing point is
$$
c_r=\frac{1-r}{2-r}>\frac{3}{5}.
$$
For $k=0,1,2$, let $m_k=L_\lambda(t^k)$. Since
$$
\int_0^1t^{k-\frac12}\,dt=\frac{2}{2k+1},
$$
one has
$$
m_k=\frac{2(3-7\lambda)}{2k+1}+\frac{14(5\lambda-1)}{2k+3},
$$
so
$$
m_0=\frac{4(7\lambda+1)}{3},\qquad
m_1=\frac{4(35\lambda-3)}{15},\qquad
m_2=\frac{4(9\lambda-1)}{5}.
$$
These moments satisfy
$$
\frac{m_1-m_2}{m_0-m_1}=\lambda.
$$
Define
$$
\alpha=\frac{m_0-m_1}{1-\lambda}=\frac{32}{15(1-\lambda)},
$$
$$
\beta=\frac{m_1-\lambda m_0}{1-\lambda}
=-\frac{4(35\lambda^2-30\lambda+3)}{15(1-\lambda)}.
$$
On $(\frac17,\frac29)$ the quadratic $35\lambda^2-30\lambda+3$ is negative, because it is decreasing there and its value at $1/7$ is $-4/7$. Thus $\alpha,\beta>0$. Matching the first three moments now gives, for every quadratic $q$,
$$
L_\lambda(q)=\alpha q(\lambda)+\beta q(1). \tag{1}
$$

Step 2: Find the hidden phase point without assuming its contact pattern

Let $q_\lambda$ be the quadratic tangent to $f$ at $t=\lambda$ and satisfying $q_\lambda(1)=1/2$. Writing
$$
q_\lambda(t)=f(\lambda)+f'(\lambda)(t-\lambda)+C_\lambda(t-\lambda)^2
$$
and imposing the endpoint value gives
$$
C_\lambda=\frac{\lambda^2-2}{2(2-\lambda)^2(1-\lambda)^2}.
$$
Hence
$$
q_\lambda(t)=\frac{1}{2-\lambda}
+\frac{t-\lambda}{(2-\lambda)^2}
+\frac{\lambda^2-2}{2(2-\lambda)^2(1-\lambda)^2}(t-\lambda)^2. \tag{2}
$$
The first slack factors as
$$
1-(2-t)q_\lambda(t)
=\frac{(t-\lambda)^2\left(6-4\lambda-t(2-\lambda^2)\right)}
{2(2-\lambda)^2(1-\lambda)^2}\geq0, \tag{3}
$$
because the last factor is at least $(2-\lambda)^2$.

The derivative of (2) at $1$ is
$$
q_\lambda'(1)=\frac{\lambda^2-\lambda-1}{(2-\lambda)^2(1-\lambda)}.
$$
It agrees with
$$
g_r'(1)=-\frac{1-r}{4}
$$
exactly when
$$
r=\rho(\lambda):=
\frac{\lambda(\lambda^2-9\lambda+12)}{(\lambda-2)^2(\lambda-1)}. \tag{4}
$$
At $r=\rho(\lambda)$ the second slack factors as
$$
1-\bigl(1+r+(1-r)t\bigr)q_\lambda(t)
=\frac{(1-t)^2N_\lambda(t)}{(2-\lambda)^4(1-\lambda)^3}, \tag{5}
$$
where
$$
N_\lambda(t)=2t(\lambda^2-2)(\lambda^2-\lambda-1)
-3\lambda^5+5\lambda^4+4\lambda^3-16\lambda+8.
$$
For $0<\lambda<1/4$, the coefficient of $t$ is positive and the constant term is larger than
$$
8-16\cdot\frac14-3\left(\frac14\right)^5>0.
$$
Thus (5) is nonnegative. Also $q_\lambda$ is concave and positive on $[0,1]$: its minimum is at an endpoint, $q_\lambda(1)=1/2$, and its numerator at $t=0$ is larger than $4-12(1/4)-4(1/4)^3>0$.

For general $r$,
$$
H_r(t):=1-\bigl(1+r+(1-r)t\bigr)q_\lambda(t)
=H_{\rho(\lambda)}(t)+(\rho(\lambda)-r)(1-t)q_\lambda(t). \tag{6}
$$
Therefore $q_\lambda$ is feasible when $r\leq\rho(\lambda)$. If $r>\rho(\lambda)$, the negative linear term in $(1-t)$ in (6) dominates the double zero in (5) for $t<1$ close to $1$, so $q_\lambda$ is infeasible.

Whenever it is feasible, (1) gives
$$
L_\lambda(q)\leq\alpha f(\lambda)+\frac{\beta}{2}=L_\lambda(q_\lambda),
$$
so $q_\lambda$ is the unique optimizer; equality forces contact at $\lambda$ and $1$, and the interior contact at $\lambda$ also forces tangency.

Finally,
$$
\rho'(\lambda)=
\frac{4(\lambda^3-6\lambda+6)}{(\lambda-2)^3(\lambda-1)^2}<0,
$$
and
$$
\rho\left(\frac17\right)=-\frac{263}{507}>-\frac35,
\qquad
\rho\left(\frac29\right)=-\frac{407}{448}<-\frac9{10}.
$$
Thus for each allowed $r$ there is a unique $z\in(\frac17,\frac29)$ with $r=\rho(z)$. The optimizer is the branch (2) for $\lambda<z$, while it loses feasibility for $\lambda>z$. This is the unique phase point $z=\Lambda(r)$ from the statement.

Step 3: Derive the optimizer branch on the other side of the phase point

At $\lambda=z$ the factorizations (3) and (5) show strict slack away from $t=z$ and $t=1$, with nondegenerate quadratic contact at both points. For $\lambda>z$ sufficiently close, the competing optimal branch therefore has one interior contact $s$ with $f$ and one interior contact $t$ with $g_r$.

A quadratic tangent to $f$ at $s$ can be written
$$
q(y)=f(s)+f'(s)(y-s)+C(y-s)^2.
$$
Tangency to $g_r$ at $t$ gives
$$
C=\frac{g_r'(t)-f'(s)}{2(t-s)}
$$
and the remaining value condition is
$$
\Phi_r(s,t):=
2\bigl(g_r(t)-f(s)\bigr)
-(t-s)\bigl(f'(s)+g_r'(t)\bigr)=0. \tag{7}
$$
The moment vector has a positive two-contact representation exactly when
$$
\Psi_\lambda(s,t):=m_2-(s+t)m_1+st\,m_0=0. \tag{8}
$$
At $(s,t,\lambda)=(z,1,z)$, equations (7) and (8) hold by (4) and Step 1.

Differentiating the displayed functions and then substituting $r=\rho(z)$ gives
$$
\Phi_s=-\frac{z^3-6z+6}{(z-2)^3(z-1)},
$$
$$
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
The Jacobian determinant of (7)-(8) in $(s,t)$ is
$$
-\frac{4D(z)}{15(z-2)^4(z-1)}.
$$
It is nonzero: on $(\frac17,\frac29)$,
$$
D(z)>60+\frac{414}{7}-1026\left(\frac29\right)^2
-123\left(\frac29\right)^4-100\left(\frac29\right)^5>0.
$$
Thus the implicit-function theorem gives a unique differentiable local branch. Solving the two linear differentiated equations from (9) yields
$$
s_+'(z)=\frac{8(3z^4-4z^3-6z^2+12)}{D(z)}, \tag{10}
$$
$$
t_+'(z)=\frac{8(z-2)(z^3-6z+6)}{D(z)}. \tag{11}
$$
Since the dual weights at the phase point are positive, they stay positive on this branch. The strict slack and nondegenerate contacts from (3) and (5) persist under a sufficiently small perturbation, so this branch is feasible and its positive contact representation certifies optimality.

Step 4: Compute the two one-sided curvatures

Let
$$
\mathcal D(q)=\frac{\partial}{\partial\lambda}L_\lambda(q)
=\int_0^1\frac{-7+35t}{\sqrt t}\,q(t)\,dt.
$$
For a unique continuously varying optimizer $q_\lambda$,
$$
V_r'(\lambda)=\mathcal D(q_\lambda). \tag{12}
$$
Indeed, optimality at $\lambda$ and $\lambda+h$ gives
$$
h\mathcal D(q_\lambda)
\leq V_r(\lambda+h)-V_r(\lambda)
\leq h\mathcal D(q_{\lambda+h})
$$
for $h>0$, with the reversed inequalities for $h<0$; continuity of the optimizer gives (12). Both branches converge to the same $q_z$, so $V_r'$ is continuous at $z$.

For the endpoint branch (2), evaluating $\mathcal D$ by the three monomial integrals gives
$$
\mathcal D(q_s)=
\frac{2(35s^4-210s^3+447s^2-420s+156)}
{15(s-2)^2(s-1)^2}.
$$
Differentiation gives
$$
\frac{d}{ds}\mathcal D(q_s)
=\frac{32(s^3-6s+6)}{15(s-2)^3(s-1)^3}.
$$
On the left branch $s=\lambda$, hence
$$
V_r''(z-)=
\frac{32(z^3-6z+6)}{15(z-2)^3(z-1)^3}. \tag{13}
$$

For the interior branch from Step 3, use
$$
q(y)=f(s)+f'(s)(y-s)
+\frac{g_r'(t)-f'(s)}{2(t-s)}(y-s)^2.
$$
Differentiating the resulting explicit expression for $\mathcal D(q)$ at $(s,t)=(z,1)$ gives
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
Combining (10), (11), and (14), and collecting the two terms over the common denominator, gives
$$
V_r''(z+)=
\frac{256(z^3-6z+6)(3z^4-4z^3-6z^2+12)}
{15(z-2)^3(z-1)^3D(z)}. \tag{15}
$$
The difference between (15) and (13) factors as
$$
-\frac{32(35z^2-30z+3)(z^3-6z+6)^2}
{15(z-2)^2(z-1)^3D(z)},
$$
which is nonzero on $(\frac17,\frac29)$. Thus this is exactly the stated $C^1$ but non-$C^2$ transition.

Step 5: Form the reduced rational function

Dividing (15) by (13) cancels the common nonzero factors and gives
$$
R(z)=
\frac{8(3z^4-4z^3-6z^2+12)}
{35z^6-100z^5-123z^4+772z^3-1026z^2+414z+60}.
$$
The numerator polynomial and denominator polynomial are coprime over $\mathbb Q$; applying the Euclidean algorithm to them ends in a nonzero constant, so the displayed fraction is reduced. The denominator is positive on the required interval by Step 3.

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
