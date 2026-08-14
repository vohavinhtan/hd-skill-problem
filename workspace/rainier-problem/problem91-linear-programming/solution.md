## Steps

Step 1: Construct a feasible three-point kernel

Write $b=a-1$, and let $\mu$ and $\eta$ denote the uniform probability laws on $[-1,1]$ and $[-a,a]$, respectively. For $x\in[-1,1]$, define
$$
d(x)=\sqrt{(a+1)(2a-bx^2)},
\qquad
p(x)=\frac{-bx-d(x)}{2},
\qquad
q(x)=\frac{-bx+d(x)}{2}.
$$
The endpoint values are
$$
p(-1)=-1,\quad p(1)=-a,
\qquad
q(-1)=a,\quad q(1)=1.
$$
Moreover,
$$
d(x)^2-(a+1)^2x^2=2a(a+1)(1-x^2),
$$
so $p(x)<x<q(x)$ for $-1<x<1$. Differentiation gives
$$
p'(x)=-\frac{b}{2}+\frac{(a^2-1)x}{2d(x)},
\qquad
q'(x)=-\frac{b}{2}-\frac{(a^2-1)x}{2d(x)}.
$$
Define
$$
\ell_a(x)=\frac{b\bigl(d(x)-(a+1)x\bigr)}{2a\,d(x)},
\qquad
\nu_a(x)=\frac{b\bigl(d(x)+(a+1)x\bigr)}{2a\,d(x)}.
$$
Both are positive on $(-1,1)$, and
$$
\ell_a(x)+\nu_a(x)=\frac{b}{a},
\qquad
-p'(x)=a\ell_a(x),
\qquad
-q'(x)=a\nu_a(x).
$$
Since
$$
\ell_a(x)=\frac{b}{a}\frac{q(x)-x}{q(x)-p(x)},
\qquad
\nu_a(x)=\frac{b}{a}\frac{x-p(x)}{q(x)-p(x)},
$$
one also has
$$
\ell_a(x)p(x)+\nu_a(x)q(x)=\frac{bx}{a}.
$$
Hence
$$
K_x^0=\frac{1}{a}\delta_x+\ell_a(x)\delta_{p(x)}+\nu_a(x)\delta_{q(x)}
$$
is a probability measure with mean $x$.

Step 2: Verify the prescribed second marginal

Because $p'(x)=-a\ell_a(x)<0$ and $q'(x)=-a\nu_a(x)<0$ on $(-1,1)$, $p$ and $q$ are strictly decreasing bijections from $[-1,1]$ onto $[-a,-1]$ and $[1,a]$, respectively, with the latter interval traversed from $a$ to $1$.

The source density is $1/2$. Along the lower branch the pushforward density is
$$
\frac{\frac{1}{2}\ell_a(x)}{|p'(x)|}=\frac{1}{2a},
$$
and along the upper branch it is
$$
\frac{\frac{1}{2}\nu_a(x)}{|q'(x)|}=\frac{1}{2a}.
$$
The diagonal part has density
$$
\frac{1}{2}\cdot\frac{1}{a}=\frac{1}{2a}
$$
on $[-1,1]$. Therefore the second marginal of
$$
\pi^0(dx,dy)=\frac{1}{2}\,dx\,K_x^0(dy)
$$
is uniform on $[-a,a]$. By Step 1 its conditional mean is $x$, so $\pi^0\in\mathcal M_a$.

Step 3: Build a pointwise lower-bound certificate

Set
$$
h(x)=-2\int_0^x\frac{dt}{d(t)},
\qquad
A(x)=\frac{(a+1)x}{d(x)}.
$$
Then $h'(x)=-2/d(x)<0$. Let $P=p^{-1}$ on $[-a,-1]$ and $Q=q^{-1}$ on $[1,a]$. Define a continuous function $\psi$ on $[-a,a]$ by
$$
\psi(x)=\int_0^x\bigl(A(t)-h(t)\bigr)\,dt
\quad(-1\leq x\leq1),
$$
$$
\psi(y)=\psi(-1)+\int_{-1}^y\bigl(-1-h(P(s))\bigr)\,ds
\quad(-a\leq y\leq-1),
$$
and
$$
\psi(y)=\psi(1)+\int_1^y\bigl(1-h(Q(s))\bigr)\,ds
\quad(1\leq y\leq a).
$$
For fixed $x\in(-1,1)$ put
$$
R_x(y)=|y-x|-\psi(y)+\psi(x)-h(x)(y-x).
$$
On the lower tail,
$$
R_x'(y)=h(P(y))-h(x).
$$
Since both $p$ and $h$ are decreasing, this derivative is negative for $y<p(x)$ and positive for $y>p(x)$; hence the unique lower-tail minimum occurs at $p(x)$. Let $L(x)=R_x(p(x))$. Using
$$
\psi'(p(x))=-1-h(x),
\qquad
x-p(x)=\frac{d(x)+(a+1)x}{2},
$$
we obtain
$$
\begin{aligned}
L'(x)
&=h'(x)(x-p(x))+(1+h(x))+\psi'(x)\\
&=-\left(1+A(x)\right)+(1+h(x))+A(x)-h(x)=0.
\end{aligned}
$$
As $p(-1)=-1$, continuity gives $L(-1)=0$, so $R_x(p(x))=0$.

Similarly, on the upper tail,
$$
R_x'(y)=h(Q(y))-h(x),
$$
whose unique minimum is at $q(x)$. If $U(x)=R_x(q(x))$, then
$$
\begin{aligned}
U'(x)
&=-h'(x)(q(x)-x)-(1-h(x))+\psi'(x)\\
&=\left(1-A(x)\right)-1+h(x)+A(x)-h(x)=0.
\end{aligned}
$$
Since $q(1)=1$, one has $U(1)=0$. Thus
$$
R_x(p(x))=R_x(x)=R_x(q(x))=0,
$$
and $R_x(y)\geq0$ on both tails.

Step 4: Prove optimality and uniqueness without an external transport theorem

For $-1<y<1$ with $y\neq x$,
$$
R_x''(y)=-\psi''(y).
$$
Now
$$
d'(y)=-\frac{(a^2-1)y}{d(y)},
\qquad
A'(y)=\frac{2a(a+1)^2}{d(y)^3},
$$
and therefore
$$
\psi''(y)=A'(y)-h'(y)
=\frac{2a(a+1)^2}{d(y)^3}+\frac{2}{d(y)}>0.
$$
Hence $R_x$ is strictly concave on each of $[-1,x]$ and $[x,1]$. Step 3 gives $R_x(-1)\geq0$, $R_x(1)\geq0$, and $R_x(x)=0$. A concave function lies above each chord joining its endpoint values, so
$$
R_x(y)\geq0\qquad(-1\leq y\leq1).
$$
For $x\in(-1,1)$ one has $p(x)<-1$ and $q(x)>1$, so the tail minima are attained strictly outside the central interval. Consequently the equality set is exactly
$$
R_x(y)=0
\quad\Longleftrightarrow\quad
y\in\{p(x),x,q(x)\}.
$$
Thus, for every $x\in(-1,1)$ and $y\in[-a,a]$,
$$
|y-x|\geq\psi(y)-\psi(x)+h(x)(y-x).
$$
Integrating this pointwise inequality against any $\pi\in\mathcal M_a$, the martingale constraint gives
$$
\int h(x)(y-x)\,d\pi(x,y)=0,
$$
while the fixed marginals give
$$
\int\bigl(\psi(y)-\psi(x)\bigr)\,d\pi(x,y)
=\int\psi\,d\eta-\int\psi\,d\mu.
$$
Therefore every feasible coupling has cost at least this common lower bound. The coupling $\pi^0$ from Step 2 is supported on the equality set, so it attains the bound and is a minimizer.

If another feasible coupling attains the same cost, then the nonnegative gap $R_x(y)$ has integral zero, so its conditional kernel is supported on $\{p(x),x,q(x)\}$ for almost every $x$. Write $r(x)$ for its mass at $x$. Since the two off-diagonal branches lie outside $[-1,1]$, for every Borel set $B\subset(-1,1)$ the second marginal gives
$$
\frac{1}{2}\int_B r(x)\,dx=\frac{|B|}{2a}.
$$
Hence $r(x)=1/a$ almost everywhere. The remaining two masses have sum $b/a$, and the conditional-mean equation uniquely determines them as
$$
\frac{b}{a}\frac{q(x)-x}{q(x)-p(x)}
\quad\text{and}\quad
\frac{b}{a}\frac{x-p(x)}{q(x)-p(x)}.
$$
They are exactly $\ell_a(x)$ and $\nu_a(x)$. Thus $\pi^0$ is the unique minimizer and equals $\pi_a^*$.

Step 5: Integrate the product of the two off-diagonal probabilities

Multiplication gives
$$
\begin{aligned}
\ell_a(x)\nu_a(x)
&=\frac{b^2\bigl(d(x)^2-(a+1)^2x^2\bigr)}{4a^2d(x)^2}\\
&=\frac{b^2(1-x^2)}{2a(2a-bx^2)}.
\end{aligned}
$$
Use
$$
\frac{1-x^2}{2a-bx^2}
=\frac{1}{b}-\frac{a+1}{b(2a-bx^2)}.
$$
With $s=\sqrt{b/(2a)}$ and $t=x\sqrt{b/(2a)}$,
$$
\int_{-1}^{1}\frac{dx}{2a-bx^2}
=\frac{2}{\sqrt{2ab}}\operatorname{artanh}\sqrt{\frac{b}{2a}}.
$$
Therefore
$$
J(a)=\frac{b}{a}\left(
1-\frac{a+1}{\sqrt{2ab}}
\operatorname{artanh}\sqrt{\frac{b}{2a}}
\right).
$$
Replacing $b$ by $a-1$ gives the requested expression.

Step 6: Check limiting and special cases

At $a=2$, $\operatorname{artanh}(1/2)=\frac{1}{2}\log 3$, so
$$
J(2)=\frac{1}{2}-\frac{3}{8}\log 3.
$$
As $a\to1^+$, the exact integrand from Step 5 satisfies
$$
\frac{\ell_a(x)\nu_a(x)}{(a-1)^2}\longrightarrow\frac{1-x^2}{4}
$$
uniformly on $[-1,1]$ because its denominator converges uniformly to $4$. Hence $J(a)/(a-1)^2\to1/3$. The symmetric guess $p(x)=-q(x)$ is also impossible except at $x=0$, since the explicit branches satisfy
$$
p(x)+q(x)=-(a-1)x.
$$
Final Answer: $\boxed{\frac{a-1}{a}\left(1-\frac{a+1}{\sqrt{2a(a-1)}}\operatorname{artanh}\sqrt{\frac{a-1}{2a}}\right)}$

---

## Answer

$\frac{a-1}{a}\left(1-\frac{a+1}{\sqrt{2a(a-1)}}\operatorname{artanh}\sqrt{\frac{a-1}{2a}}\right)$

---

## Classification

**Problem Type:** Optimization

**Answer Type:** Exact symbolic expression

---

## Solution Concepts

- martingale transport
- explicit dual certificate
- pushforward densities
- concavity
- change of variables
