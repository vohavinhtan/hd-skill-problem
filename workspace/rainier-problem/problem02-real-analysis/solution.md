## Steps

Step 1: Build the centered candidate for the minimum

Set
$$
c=\frac{s}{m}.
$$
The assumptions on $s$ give
$$
\frac{m^2}{2}\leq s
$$
and
$$
s\leq m-\frac{m^2}{2}.
$$
Divide both inequalities by $m>0$:
$$
\frac{m}{2}\leq c
$$
and
$$
c\leq1-\frac{m}{2}.
$$
So the interval
$$
I=\left[c-\frac{m}{2},c+\frac{m}{2}\right]
$$
lies inside $[0,1]$.

Let
$$
g=\mathbf 1_I.
$$
Its mass is
$$
\int_0^1 g(x)\,dx=m.
$$
Its first moment is
$$
\int_0^1 xg(x)\,dx
=\int_{c-m/2}^{c+m/2}x\,dx.
$$
Compute the integral:
$$
\int_{c-m/2}^{c+m/2}x\,dx
=\frac{(c+m/2)^2-(c-m/2)^2}{2}.
$$
Expand the squares:
$$
(c+m/2)^2=c^2+cm+\frac{m^2}{4}
$$
and
$$
(c-m/2)^2=c^2-cm+\frac{m^2}{4}.
$$
The difference is
$$
2cm.
$$
So
$$
\int_0^1 xg(x)\,dx=\frac{2cm}{2}=cm=s.
$$

Step 2: Compute the centered candidate's second moment

Use the change of variable
$$
u=x-c.
$$
Then
$$
\int_0^1 x^2g(x)\,dx
=\int_{-m/2}^{m/2}(c+u)^2\,du.
$$
Expand:
$$
(c+u)^2=c^2+2cu+u^2.
$$
So
$$
\int_{-m/2}^{m/2}(c+u)^2\,du
=\int_{-m/2}^{m/2}c^2\,du
+\int_{-m/2}^{m/2}2cu\,du
+\int_{-m/2}^{m/2}u^2\,du.
$$
The first integral is
$$
\int_{-m/2}^{m/2}c^2\,du=mc^2.
$$
The middle integral is zero because
$$
\int_{-m/2}^{m/2}u\,du=0.
$$
The last integral is
$$
\int_{-m/2}^{m/2}u^2\,du
=2\int_0^{m/2}u^2\,du
=2\cdot\frac{(m/2)^3}{3}
=\frac{m^3}{12}.
$$
So
$$
\int_0^1 x^2g(x)\,dx
=mc^2+\frac{m^3}{12}
=m\left(\frac{s}{m}\right)^2+\frac{m^3}{12}
=\frac{s^2}{m}+\frac{m^3}{12}.
$$

Step 3: Prove this is the minimum

Let $f$ be any admissible function. Define
$$
Q_-(x)=\left(x-c\right)^2-\left(\frac{m}{2}\right)^2.
$$
On $I$,
$$
Q_-(x)\leq0,
$$
and outside $I$,
$$
Q_-(x)\geq0.
$$
Also $g=1$ on $I$ and $g=0$ outside $I$. Since $0\leq f\leq1$, on $I$ we have
$$
f-g\leq0,
$$
and outside $I$ we have
$$
f-g\geq0.
$$
So
$$
Q_-(x)(f(x)-g(x))\geq0
$$
for every $x$ except possibly on endpoints, which do not affect the integral. This gives
$$
\int_0^1 Q_-(x)(f(x)-g(x))\,dx\geq0.
$$
Expand
$$
Q_-(x)=x^2-2cx+c^2-\frac{m^2}{4}.
$$
The admissibility of $f$ and $g$ gives
$$
\int_0^{1}(f-g)\,dx=0
$$
and
$$
\int_0^{1}x(f-g)\,dx=0.
$$
The constant and linear terms in the integral cancel, leaving
$$
\int_0^{1} x^2(f-g)\,dx\geq0.
$$
So
$$
\int_0^{1}x^2f(x)\,dx\geq \frac{s^2}{m}+\frac{m^3}{12}.
$$

Step 4: Build the endpoint candidate for the maximum

Define
$$
\beta=\frac{s-\frac{m^2}{2}}{1-m}
$$
and
$$
\alpha=\frac{m-\frac{m^2}{2}-s}{1-m}.
$$
The assumptions on $s$ give
$$
\alpha\geq0,\qquad \beta\geq0.
$$
Also
$$
\alpha+\beta
=\frac{m-\frac{m^2}{2}-s+s-\frac{m^2}{2}}{1-m}
=\frac{m-m^2}{1-m}
=m.
$$

Let
$$
E=[0,\alpha]\cup[1-\beta,1]
$$
and
$$
h=\mathbf 1_E.
$$
Then
$$
\int_0^{1}h(x)\,dx=\alpha+\beta=m.
$$
Its first moment is
$$
\int_0^{1}xh(x)\,dx
=\int_0^{\alpha} x\,dx+\int_{1-\beta}^{1}x\,dx.
$$
Compute the two pieces:
$$
\int_0^{\alpha} x\,dx=\frac{\alpha^2}{2},
$$
and
$$
\int_{1-\beta}^{1}x\,dx
=\frac{1^2-(1-\beta)^2}{2}
=\frac{1-(1-2\beta+\beta^2)}{2}
=\beta-\frac{\beta^2}{2}.
$$
So
$$
\int_0^{1}xh(x)\,dx
=\frac{\alpha^2}{2}+\beta-\frac{\beta^2}{2}.
$$
Since $\alpha=m-\beta$,
$$
\frac{\alpha^2}{2}+\beta-\frac{\beta^2}{2}
=\frac{(m-\beta)^2}{2}+\beta-\frac{\beta^2}{2}.
$$
Expand:
$$
\frac{(m-\beta)^2}{2}
=\frac{m^2-2m\beta+\beta^2}{2}
=\frac{m^2}{2}-m\beta+\frac{\beta^2}{2}.
$$
Then
$$
\frac{\alpha^2}{2}+\beta-\frac{\beta^2}{2}
=\frac{m^2}{2}-m\beta+\beta
=\frac{m^2}{2}+\beta(1-m).
$$
Substitute the definition of $\beta$:
$$
\frac{m^2}{2}+\beta(1-m)
=\frac{m^2}{2}+s-\frac{m^2}{2}
=s.
$$
So $h$ is admissible.

Step 5: Compute the endpoint candidate's second moment

We have
$$
\int_0^{1}x^2h(x)\,dx
=\int_0^{\alpha} x^2\,dx+\int_{1-\beta}^{1}x^2\,dx.
$$
The first piece is
$$
\int_0^{\alpha} x^2\,dx=\frac{\alpha^3}{3}.
$$
The second piece is
$$
\int_{1-\beta}^{1}x^2\,dx
=\frac{1^3-(1-\beta)^3}{3}.
$$
Expand
$$
(1-\beta)^3=1-3\beta+3\beta^2-\beta^3.
$$
So
$$
1-(1-\beta)^3=3\beta-3\beta^2+\beta^3.
$$
Dividing by $3$ gives
$$
\int_{1-\beta}^{1}x^2\,dx
=\beta-\beta^2+\frac{\beta^3}{3}.
$$
This gives
$$
\int_0^{1}x^2h(x)\,dx
=\frac{\alpha^3}{3}+\beta-\beta^2+\frac{\beta^3}{3}.
$$

Step 6: Prove this is the maximum

Let $f$ be any admissible function. Define
$$
Q_+(x)=(x-\alpha)(x-(1-\beta)).
$$
On $E=[0,\alpha]\cup[1-\beta,1]$,
$$
Q_+(x)\geq0,
$$
and on the middle interval $(\alpha,1-\beta)$,
$$
Q_+(x)\leq0.
$$
Since $h=1$ on $E$ and $h=0$ on the middle interval, we have
$$
f-h\leq0
$$
on $E$ and
$$
f-h\geq0
$$
on the middle interval. So
$$
Q_+(x)(f(x)-h(x))\leq0
$$
almost everywhere. This gives
$$
\int_0^1 Q_+(x)(f(x)-h(x))\,dx\leq0.
$$
Expand
$$
Q_+(x)=x^2-(\alpha+1-\beta)x+\alpha(1-\beta).
$$
The mass and first moment of $f$ and $h$ are the same, so the constant and linear terms cancel in the integral. We get
$$
\int_0^{1}x^2(f(x)-h(x))\,dx\leq0.
$$
So
$$
\int_0^{1}x^2f(x)\,dx\leq\frac{\alpha^3}{3}+\beta-\beta^2+\frac{\beta^3}{3}.
$$

Step 7: Show every value between the bounds occurs

For $0\leq t\leq1$, define
$$
f_t=(1-t)g+th.
$$
Since $0\leq g,h\leq1$, we also have
$$
0\leq f_t\leq1.
$$
The mass is
$$
\int_0^{1}f_t=(1-t)\int_0^{1}g+t\int_0^{1}h=(1-t)m+tm=m.
$$
The first moment is
$$
\int_0^{1}xf_t=(1-t)\int_0^{1}xg+t\int_0^{1}xh=(1-t)s+ts=s.
$$
The second moment is
$$
\int_0^{1}x^2f_t
=(1-t)\int_0^{1}x^2g+t\int_0^{1}x^2h.
$$
As $t$ runs from $0$ to $1$, this fills every value between the minimum and maximum.

Final Answer: $\boxed{\left[\frac{s^2}{m}+\frac{m^3}{12},\,\frac{\left(m-\frac{m^2}{2}-s\right)^3}{3(1-m)^3}+\frac{s-\frac{m^2}{2}}{1-m}-\frac{\left(s-\frac{m^2}{2}\right)^2}{(1-m)^2}+\frac{\left(s-\frac{m^2}{2}\right)^3}{3(1-m)^3}\right]}$

---

## Answer

$\left[\frac{s^2}{m}+\frac{m^3}{12},\,\frac{\left(m-\frac{m^2}{2}-s\right)^3}{3(1-m)^3}+\frac{s-\frac{m^2}{2}}{1-m}-\frac{\left(s-\frac{m^2}{2}\right)^2}{(1-m)^2}+\frac{\left(s-\frac{m^2}{2}\right)^3}{3(1-m)^3}\right]$

---

## Classification

**Problem Type:** Optimization

**Answer Type:** Interval

---

## Concepts (1-5)

- Moment constraints for bounded measurable functions.
- Rearrangement sign certificate for the centered interval minimizer.
- Endpoint rearrangement sign certificate for the maximum.
- Exact moment calculation for indicator intervals.
- Convex interpolation to realize the whole range.

---

## Black-Box Audit

- Step 1 -- Level 1: the centered interval is shown to lie in $[0,1]$ and to match mass and first moment.
- Step 2 -- Level 1: the minimum candidate's second moment is computed term by term.
- Step 3 -- Level 1: the lower bound uses an explicit sign inequality and cancellation of mass and first-moment terms.
- Step 4 -- Level 1: the endpoint candidate is constructed and checked against both constraints.
- Step 5 -- Level 1: the endpoint second moment is computed by expanding the cubic.
- Step 6 -- Level 1: the upper bound uses a second explicit sign inequality and the same cancellation principle.
- Step 7 -- Level 1: convex interpolation proves that every value in the interval occurs.
