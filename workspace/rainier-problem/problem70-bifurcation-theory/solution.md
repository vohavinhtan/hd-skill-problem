## Steps

Step 1: Find the scalar quantity that controls every possible periodic orbit

The derivatives of $E$ are
$$
E_x=g(x),\qquad E_y=y.
$$
Put
$$
F(h)=h(\mu+\nu h-h^2).
$$
Along a solution,
$$
\dot E
=
g(x)\dot x+y\dot y
=
\left(g(x)^2+y^2\right)F(E).
$$
The factor $g(x)^2+y^2$ is nonnegative and vanishes only when $g(x)=y=0$, which gives an equilibrium of the full system.

If a non-equilibrium periodic orbit were not contained in a zero level of $F(E)$, then $F(E)$ would have a fixed sign along that orbit until a zero level was reached. Such a zero level is invariant because $\dot E=0$ there. Hence $E$ would be strictly monotone on the periodic orbit, which is impossible. Therefore every limit cycle is contained in a level
$$
E=c
$$
with
$$
c(\mu+\nu c-c^2)=0.
$$
Conversely, on such a level the dissipative terms vanish and the system becomes
$$
\dot x=y,\qquad \dot y=-g(x).
$$
Thus every regular compact component of $E=c$ is a periodic orbit.

Step 2: Count the periodic components of each relevant energy level

Write
$$
E(x,y)=\frac{y^2}{2}+V(x),
\qquad
V(x)=\frac{x^6}{8}-\frac{15x^4}{16}+\frac{3x^2}{2}.
$$
Since
$$
V'(x)=g(x)=\frac34x(x^2-1)(x^2-4),
$$
the critical points of $V$ are $0,\pm1,\pm2$. Their values are
$$
V(0)=0,\qquad V(\pm1)=\frac{11}{16},\qquad V(\pm2)=-1.
$$
For $x>0$, the sign of $V'$ is positive on $(0,1)$, negative on $(1,2)$, and positive on $(2,\infty)$. Hence $0$ and $\pm2$ are minima, while $\pm1$ are maxima.

It follows from the one-dimensional mechanical level sets
$$
\frac{y^2}{2}+V(x)=c
$$
that:
$$
-1<c<0 \quad\Longrightarrow\quad 2\text{ periodic components},
$$
$$
0<c<\frac{11}{16}
\quad\Longrightarrow\quad
3\text{ periodic components},
$$
$$
c>\frac{11}{16}
\quad\Longrightarrow\quad
1\text{ periodic component}.
$$
At $c=0$ there are still two regular outer periodic components, together with the equilibrium $(0,0)$. At $c=-1$ only the two outer minima occur, and at $c=11/16$ the level contains the saddle separatrices through $(\pm1,0)$.

Therefore the parameter-independent root $c=0$ of $F$ always supplies two limit cycles unless it loses hyperbolicity.

Step 3: Determine the stability contributed by each zero of the energy equation

For a simple zero $c$ of $F$, let $\eta=E-c$. Along the corresponding periodic component,
$$
\dot\eta
=
\left(g(x)^2+y^2\right)F'(c)\eta+O(\eta^2).
$$
Over one period $T$, the transverse multiplier is
$$
\exp\left(
F'(c)\int_0^T\left(g(x(t))^2+y(t)^2\right)\,dt
\right).
$$
The integral is positive, so the cycle is attracting exactly when $F'(c)<0$.

At $c=0$,
$$
F'(0)=\mu.
$$
Hence the two persistent cycles on $E=0$ are stable exactly when $\mu<0$.

The other two possible energy levels are the roots $c_-<c_+$ of
$$
q(c)=\mu+\nu c-c^2.
$$
When they are distinct,
$$
q'(c_-)>0,\qquad q'(c_+)<0.
$$
Since
$$
F'(c_\pm)=c_\pm q'(c_\pm),
$$
if both roots lie in $(0,11/16)$, the three cycles on $E=c_-$ are unstable and the three cycles on $E=c_+$ are stable. Together with the two stable cycles on $E=0$, this gives exactly eight hyperbolic limit cycles, five stable and three unstable.

Conversely, eight limit cycles require six cycles in addition to the two on $E=0$. A single nonzero root can contribute at most three periodic components, so both $c_-$ and $c_+$ must contribute three. By Step 2 this forces
$$
0<c_-<c_+<\frac{11}{16}.
$$
Thus the required cycle configuration is equivalent to both roots of $q$ lying in this interval.

Step 4: Convert the root-location condition into the parameter region

Let
$$
b=\frac{11}{16}.
$$
The roots of
$$
q(c)=\mu+\nu c-c^2
$$
are distinct and positive exactly when
$$
\nu>0,\qquad \mu<0,\qquad \nu^2+4\mu>0.
$$
The last inequality is
$$
\mu>-\frac{\nu^2}{4}.
$$

For both roots to lie below $b$, the vertex $\nu/2$ must lie below $b$ and $q(b)$ must be negative. These conditions are
$$
0<\nu<2b=\frac{11}{8}
$$
and
$$
\mu+\frac{11\nu}{16}-\frac{121}{256}<0.
$$
Combining them with the positivity and distinctness conditions gives
$$
0<\nu<\frac{11}{8},
\qquad
-\frac{\nu^2}{4}<\mu<0,
\qquad
\mu+\frac{11\nu}{16}<\frac{121}{256}.
$$
Every inequality is strict, so all eight cycles are regular and all three zero levels of $F$ are simple. Hence all eight cycles are hyperbolic.

Final Answer: $\boxed{\{(\mu,\nu):0<\nu<\frac{11}{8},-\frac{\nu^2}{4}<\mu<0,\mu+\frac{11\nu}{16}<\frac{121}{256}\}}$

---

## Answer

$\{(\mu,\nu):0<\nu<\frac{11}{8},-\frac{\nu^2}{4}<\mu<0,\mu+\frac{11\nu}{16}<\frac{121}{256}\}$

---

## Classification

**Problem Type:** Parameter identification

**Answer Type:** Interval or region description

---

## Solution Concepts

- energy monotonicity
- Hamiltonian level sets
- limit-cycle hyperbolicity
- root-location inequalities
- bifurcation regions
