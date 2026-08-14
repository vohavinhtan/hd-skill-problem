## Steps

Step 1: Reduce the radial equation to an exact linear formula
For a solution with $r(0)>0$, set $x=r^2$, $p=x^{-1}$, and
$$
B(t)=\int_0^t\bigl(a+\sin\theta(s)\bigr)\,ds.
$$
Then
$$
\dot x=2x\bigl(a+\sin\theta-x\bigr),
\qquad
\dot p=-2\bigl(a+\sin\theta\bigr)p+2.
$$
Solving the linear equation for $p$ gives
$$
p(t)=e^{-2B(t)}\left(p(0)+2\int_0^t e^{2B(s)}\,ds\right),
$$
or, equivalently,
$$
x(t)=\frac{e^{2B(t)}}{p(0)+2\int_0^t e^{2B(s)}\,ds}.
$$
In particular, $x(t)\leq x(0)e^{2B(t)}$. A uniform upper bound for $B(t)$ gives uniform radial stability. Attraction follows if $B(t)\to-\infty$, or if $B$ stays bounded and $\int_0^t e^{2B(s)}\,ds\to\infty$. The solution $r=0$ is already contained in $\mathcal A$.

Step 2: Analyze the rotating regime $|\lambda|<1$
Here $1+\lambda\cos\theta>0$, so every angular orbit completes one turn in
$$
T=\int_0^{2\pi}\frac{d\theta}{1+\lambda\cos\theta}
=\frac{2\pi}{\sqrt{1-\lambda^2}}.
$$
Indeed, the substitution $u=\tan(\theta/2)$ changes the integral into
$$
2\int_{-\infty}^{\infty}\frac{du}{(1+\lambda)+(1-\lambda)u^2}
=\frac{2\pi}{\sqrt{1-\lambda^2}}.
$$
The sine contribution over one turn is zero. For $\lambda\neq0$,
$$
\int_0^{2\pi}\frac{\sin\theta}{1+\lambda\cos\theta}\,d\theta
=-\frac{1}{\lambda}\left[\log\bigl(1+\lambda\cos\theta\bigr)\right]_0^{2\pi}=0,
$$
and the same conclusion for $\lambda=0$ is $\int_0^{2\pi}\sin\theta\,d\theta=0$. This gives a bounded periodic function $h$ such that
$$
B(t)=at+h\bigl(\theta(t)\bigr)-h\bigl(\theta(0)\bigr).
$$
If $a<0$, this expression is uniformly bounded above and tends to $-\infty$. If $a=0$, both $B$ and $-B$ are uniformly bounded, so the denominator in the exact formula for $x(t)$ grows at least linearly. Both cases give uniform stability and $x(t)\to0$.

For $a>0$, fix an angular phase and examine the return after time $T$. The exact formula has the form
$$
x(T)=\frac{Mx(0)}{1+Dx(0)},
\qquad
M=e^{2aT}>1,
\qquad
D=2\int_0^T e^{2B(s)}\,ds>0.
$$
It has the positive fixed point $x(0)=(M-1)/D$, which produces a nonzero periodic radial solution. Therefore this regime contributes exactly $a\leq0$.

Step 3: Analyze the locked regime $|\lambda|>1$
Put
$$
s=\sqrt{1-\lambda^{-2}}.
$$
The angular equation has two equilibria with sine values $s$ and $-s$. Both angular equilibria generate invariant rays, including the repelling one. On the ray with $\sin\theta=s$, the radial equation is
$$
\dot r=r\bigl(a+s-r^2\bigr).
$$
If $a+s>0$, its positive solutions approach $\sqrt{a+s}$ rather than $0$. Necessity therefore gives $a\leq-s$.

Suppose $a\leq-s$ and write $q(\theta)=a+\sin\theta$, $q_+(\theta)=\max\{q(\theta),0\}$, and $f(\theta)=1+\lambda\cos\theta$. At every zero of $f$, one has $q\leq0$. When equality occurs, necessarily $a=-s$ and $\sin\theta=s$. Near such a zero $\theta_*$,
$$
q(\theta)=\cos\theta_*(\theta-\theta_*)+O\bigl((\theta-\theta_*)^2\bigr),
$$
$$
f(\theta)=-\lambda\sin\theta_*(\theta-\theta_*)+O\bigl((\theta-\theta_*)^2\bigr),
$$
so $q_+(\theta)/|f(\theta)|$ remains bounded there. At a zero where $q<0$, the positive part $q_+$ vanishes in a neighborhood. The quotient is therefore bounded near both zeros and continuous elsewhere, so
$$
C=\int_{\mathbb T}\frac{q_+(\theta)}{|f(\theta)|}\,d\theta<\infty.
$$
The function $f$ has constant sign between consecutive simple zeros. Every nonstationary angular orbit is therefore monotone in one such interval and visits each point there at most once. This gives
$$
B(t)\leq\int_0^t q_+\bigl(\theta(s)\bigr)\,ds\leq C,
$$
which proves uniform radial stability.

Each angular orbit is either stationary or converges to an angular equilibrium. If the limiting value of $q$ is negative, then $B(t)\to-\infty$ and $x(t)\to0$. If the limiting value is zero, a stationary orbit satisfies $\dot x=-2x^2$. A nonstationary orbit can approach a zero-rate equilibrium only when that equilibrium is hyperbolic; then $q(\theta(t))$ decays exponentially, $B(t)$ has a finite limit, and the integral in the denominator of the formula for $x(t)$ grows linearly. This proves attraction for every initial point. The locked regime is therefore exactly
$$
a\leq-\sqrt{1-\lambda^{-2}}.
$$

Step 4: Resolve the parabolic endpoints $\lambda=1$ and $\lambda=-1$
For $\lambda=1$, use $u=\tan(\theta/2)$ on every nonstationary angular orbit. Then $\dot u=1$ and
$$
\sin\theta=\frac{2u}{1+u^2},
\qquad
B(t)=a(u-u_0)+\log\frac{1+u^2}{1+u_0^2}.
$$
If $a<0$, the positive part of the derivative of $au+\log(1+u^2)$ is supported on a bounded interval. This makes $B(t)$ uniformly bounded above, while $B(t)\to-\infty$ as $u\to\infty$. On the invariant ray $\theta=\pi$, one has $\dot x=2x(a-x)$, which tends to $0$ for $a<0$ and excludes $a>0$.

At $a=0$, the exact linear formula becomes
$$
p(u)=\frac{p_0(1+u_0^2)^2+2\displaystyle\int_{u_0}^{u}(1+v^2)^2\,dv}{(1+u^2)^2},
\qquad u\geq u_0.
$$
This tends to infinity because the integral grows like $u^5/5$ while the denominator grows like $u^4$. It also gives uniform stability. First suppose $u_0\geq0$. Either $u_0\geq u/2$, which gives $p(u)\geq p_0/16$, or $0\leq u_0<u/2$. In the latter case, $u<1$ gives $p(u)\geq p_0/4$, while $u\geq1$ gives
$$
p(u)\geq\frac{p_0}{4u^4}+\frac{31u}{320}
\geq\frac{31}{320}p_0^{1/5}.
$$
The last inequality follows by separating $u\leq p_0^{1/5}$ from $u\geq p_0^{1/5}$.

Now suppose $u_0<0$. Since $\sin\theta<0$ until $u=0$,
$$
\dot p=-2\sin\theta\,p+2>0
$$
on that interval. At the time when $u=0$, set $p_*=p(0)$. Then $p_*\geq p_0$. Restarting the exact formula at $u=0$ gives
$$
p(u)=\frac{p_*+2\displaystyle\int_0^u(1+v^2)^2\,dv}{(1+u^2)^2},
\qquad u\geq0.
$$
The estimates for nonnegative initial $u$ apply with initial data $(0,p_*)$. Before the restart, $p(u)\geq p_0$; afterward,
$$
p(u)\geq
\begin{cases}
\frac{p_*}{4}\geq\frac{p_0}{4}, & 0\leq u<1,\\
\frac{31}{320}p_*^{1/5}\geq\frac{31}{320}p_0^{1/5}, & u\geq1.
\end{cases}
$$
These bounds give $\inf p(u)\to\infty$ as $p_0\to\infty$, uniformly over every initial angular phase. On the invariant ray $\theta=\pi$, the equation is $\dot x=-2x^2$. This proves that $a=0$ is included when $\lambda=1$.

For $\lambda=-1$, take $u=-\cot(\theta/2)$. Then $\dot u=1$ and
$$
\sin\theta=-\frac{2u}{1+u^2},
\qquad
B(t)=a(u-u_0)-\log\frac{1+u^2}{1+u_0^2}.
$$
For $a<0$, the derivative of $au-\log(1+u^2)$ is $a-2u/(1+u^2)$, whose positive part is supported on a bounded interval. Also $au-\log(1+u^2)\to-\infty$ as $u\to\infty$. So $B$ is uniformly bounded above and tends to $-\infty$. On the invariant ray $\theta=0$, one has $\dot x=2x(a-x)$, which tends to $0$ for $a<0$ and excludes $a>0$.

When $a=0$, each nonstationary orbit has $B(t)=-\log((1+u^2)/(1+u_0^2))\to-\infty$, and the stationary ray has $\dot x=-2x^2$. Every fixed initial condition is therefore attracted to $\mathcal A$, but uniform stability fails. Choose $p_0=M$ and $u_0=-M$, and evaluate when $u=0$:
$$
p(0)=\frac{M}{(1+M^2)^2}+2\int_{-M}^0\frac{dv}{(1+v^2)^2}
\longrightarrow\frac{\pi}{2}.
$$
Here $x(0)=1/M\to0$, whereas later $x=1/p\to2/\pi$. Therefore $a=0$ is excluded when $\lambda=-1$ only because uniform stability fails.

Step 5: Assemble the complete parameter region
The rotating regime gives $a\leq0$ for $-1<\lambda<1$. The endpoint $\lambda=1$ keeps equality $a=0$, while $\lambda=-1$ requires the strict inequality $a<0$. The locked regime gives $a\leq-\sqrt{1-\lambda^{-2}}$ for $|\lambda|>1$. These alternatives are exhaustive.
Final Answer: $\boxed{\{(a,\lambda):a\leq-\sqrt{\max(0,\lambda^2-1)}/\max(1,|\lambda|)\}\setminus\{(0,-1)\}}$

---

## Answer

$\{(a,\lambda):a\leq-\sqrt{\max(0,\lambda^2-1)}/\max(1,|\lambda|)\}\setminus\{(0,-1)\}$

---

## Black-Box Audit

Step 1: Level 1. The Bernoulli substitution and its integrating-factor formula are displayed in full.

Step 2: Level 1. The angular average and the positive fixed point of the return map are computed explicitly.

Step 3: Level 1. Both invariant rays are checked, and the only possible singularity in the uniform integral bound is resolved by local expansions.

Step 4: Level 1. Both parabolic endpoints are handled through exact half-angle formulas; the uniform estimate at $\lambda=1$ and the instability sequence at $\lambda=-1$ are written out.

Step 5: Level 1. The four disjoint parameter regimes are collected without adding a new inference.

No Level 2 or Level 3 finding.

---

## Verification

Check 1 (independent angular identity): pass. Away from angular equilibria,
$$
\frac{d}{dt}\log|1+\lambda\cos\theta(t)|=-\lambda\sin\theta(t).
$$
For $|\lambda|<1$, its integral over a turn is zero. For $|\lambda|>1$, it reproduces the limiting radial rates at both angular equilibria. At $\lambda=\pm1$, the half-angle formulas recover the logarithmic terms with opposite signs.

Check 2 (Counterexample Attack Gate): no counterexample was found after included, excluded, boundary, and local-to-global attacks. For $|\lambda|<1$ and $a>0$, the positive fixed point of the return map violates attraction. For $|\lambda|>1$ and $a> -\sqrt{1-\lambda^{-2}}$, the invariant ray with positive sine has a nonzero radial limit. At $(a,\lambda)=(0,-1)$, the explicit sequence $p_0=M$, $u_0=-M$ violates uniform stability even though every fixed trajectory is attracted. At $(a,\lambda)=(0,1)$, the displayed lower bound for $p$ proves both attraction and uniform stability, so this endpoint cannot be removed.

Check 3 (necessity and sufficiency): pass. Each excluded region has an explicit invariant or periodic counterexample. Each included region has a uniform upper bound for the radial exponent and an exact denominator-growth argument proving attraction.

Check 4 (answer formulation): pass. The result is one explicit subset of $\mathbb R^2$, all four angular regimes are covered, and no symbol outside the problem statement is used in the answer.

Check 5 (numerical sanity, not used in the derivation): pass. For $\lambda=-1$, $a=0$, $M=1000$ gives $p(0)=1.5707963271$ at the test time and $x=0.6366197722$, matching the limits $\pi/2$ and $2/\pi$. For $\lambda=1$, $a=0$, $p_0=10^{10}$ and $u_0=0$, a direct sample of the exact formula has minimum $p\approx79.25$, consistent with the proved divergence of the minimum as $p_0\to\infty$.

Check 6 (Answer Length Gate): pass. The answer has $85$ characters before adding math delimiters and $87$ characters with both dollar-sign delimiters, below the limit of $100$ under either count used by the portal.

---

## Classification

**Domain/Sub-domain:** Differential Equations and Dynamical Systems / Stability theory

**Problem Type:** Symbolic derivation

**Answer Type:** Interval or region description

---

## Solution Concepts

- Bernoulli transformation
- angular flow classification
- Floquet return map
- uniform Lyapunov stability
- parabolic equilibrium analysis

---

## Confidence

High. The argument proves necessity and sufficiency in every angular regime, and the two degenerate endpoints are certified by exact formulas with opposite stability behavior.