## Steps

Step 1: Find the hidden scalar dynamics

Write
$$
M=\mu A^2B^2+\nu AB(A^2+B^2)-(A^2+B^2)^2
$$
and
$$
N=A^3B^3-(A^2+B^2-5AB)^2(x^2-y^2-A)^2.
$$
Set $z=x+iy$. Then
$$
A=|z|^4,
\qquad
B=|1-z^2|^2,
$$
and the two cubic factors in the system are the real and imaginary parts of $z(1-z^2)$. Hence the system is
$$
\dot z=z(1-z^2)(M+iN).
$$
Any periodic orbit avoids the equilibria $z=\pm1$, so along such an orbit introduce
$$
w=\frac{z^2}{1-z^2}.
$$
Since
$$
\frac{dw}{dz}=\frac{2z}{(1-z^2)^2},
$$
we obtain
$$
\dot w=2w(M+iN).
$$
Put
$$
s=|w|^2=\frac{A}{B},
\qquad
t=s+\frac1s=\frac{A^2+B^2}{AB}.
$$
Then
$$
M=(AB)^2q(t),
\qquad
q(t)=\mu+\nu t-t^2,
$$
so
$$
\dot s=4s(AB)^2q(t).
$$
A root level of $q(t)$ is invariant. Between consecutive root levels the sign of $\dot s$ is fixed, so $s$ is strictly monotone on every non-equilibrium orbit there. Therefore every limit cycle must lie over a root of $q(t)$.

Step 2: Determine which invariant levels are actually periodic

Write
$$
w=\sqrt{s}e^{i\theta}.
$$
Because
$$
\operatorname{Re}w=\frac{x^2-y^2-A}{B}
$$
and
$$
A^2+B^2-5AB=AB(t-5),
$$
the angular factor becomes
$$
N=s^3B^6\left(1-(t-5)^2\cos^2\theta\right).
$$
On a root level of $q$, the angular equation is
$$
\dot\theta=2N.
$$
For $t>2$, this angular velocity is nonzero for every $\theta$ exactly when
$$
|t-5|<1,
$$
that is,
$$
4<t<6.
$$
If $2<t\leq4$ or $t\geq6$, the angular factor vanishes somewhere on the invariant level, producing equilibria on that level instead of a periodic orbit. At $t=2$ the only solution of $s+s^{-1}=2$ is $s=1$, whose lifted level is noncompact. Hence only roots of $q$ in $(4,6)$ can generate limit cycles.

Step 3: Count the lifted cycles and determine their stability

For $t>2$, the equation
$$
s+\frac1s=t
$$
has reciprocal roots
$$
0<s_-<1<s_+.
$$
Set $u=z^2$. Since
$$
u=\frac{w}{1+w},
$$
the circle $|w|=\sqrt{s}$ maps to
$$
|u|=\sqrt{s}|1-u|.
$$
When $s<1$, this circle surrounds $u=0$. Its inverse image under $z\mapsto z^2$ is therefore one connected oval. When $s>1$, the circle does not surround $0$, and its inverse image is two disjoint ovals. Thus every root $t\in(4,6)$ of $q$ produces exactly three limit cycles.

Let $\alpha<\beta$ be the two roots of $q$ when they exist. Since
$$
q(t)=-(t-\alpha)(t-\beta),
$$
we have
$$
q'(\alpha)>0,
\qquad
q'(\beta)<0.
$$
At a root level, linearizing the scalar equation for $s$ in the transverse direction leaves the sign
$$
q'(t)\left(1-\frac1{s^2}\right),
$$
because all other factors are positive there. Hence the single cycle over $s_-$ is stable exactly when $q'(t)>0$, while the two cycles over $s_+$ are stable exactly when $q'(t)<0$.

Therefore a root $t=\alpha$ in $(4,6)$ produces one stable and two unstable cycles, whereas a root $t=\beta$ in $(4,6)$ produces two stable and one unstable cycle. The transverse coefficient is nonzero in either case, so all of these cycles are hyperbolic.

Step 4: Identify the parameter region

Exactly three limit cycles with exactly two asymptotically stable means that exactly one root of $q$ lies in $(4,6)$ and that this root is the upper root $\beta$. The interior of that parameter set is therefore characterized by
$$
\alpha<4<\beta<6.
$$
Since $q$ opens downward, it is positive precisely between its roots. Thus
$$
\alpha<4<\beta
$$
is equivalent to
$$
q(4)>0.
$$
Once $4$ lies between the roots, the condition $\beta<6$ is equivalent to
$$
q(6)<0.
$$
These inequalities are
$$
\mu+4\nu>16,
\qquad
\mu+6\nu<36.
$$

Final Answer: $\boxed{\{(\mu,\nu):\mu+4\nu>16,\ \mu+6\nu<36\}}$

---

## Answer

$\{(\mu,\nu):\mu+4\nu>16,\ \mu+6\nu<36\}$

---

## Classification

**Problem Type:** Parameter identification

**Answer Type:** Interval or region description

---

## Solution Concepts

- nonlinear coordinate changes
- invariant radial variables
- covering-space topology
- transverse stability
- bifurcation regions
