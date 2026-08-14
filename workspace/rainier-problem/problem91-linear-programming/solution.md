## Steps

Step 1: Isolate the common mass and identify the minimizing transport structure

Write $b=a-1$ and let $\mu$ and $\nu$ denote the uniform laws on $[-1,1]$ and $[-a,a]$. Their densities are
$$
f_\mu(x)=\frac{1}{2}\mathbf 1_{[-1,1]}(x),
\qquad
f_\nu(x)=\frac{1}{2a}\mathbf 1_{[-a,a]}(x).
$$
The two laws have mean zero. They are in convex order: if $U$ is uniform on $[-1,1]$ and $\varphi$ is convex, then $t\mapsto\varphi(t)+\varphi(-t)$ is nondecreasing for $t\geq0$, so
$$
\mathbb E[\varphi(aU)]\geq\mathbb E[\varphi(U)].
$$
The common part is
$$
\mu\wedge\nu=\frac{1}{2a}\mathbf 1_{[-1,1]}(x)\,dx.
$$
Also, $(\mu-\nu)^+$ is supported on $(-1,1)$, while $(\nu-\mu)^+$ is supported on $[-a,-1]\cup[1,a]$.

The one-dimensional Hobson-Klimmek dispersion theorem for the lower martingale transport cost $|y-x|$ now applies. It states that the unique minimizer couples $\mu\wedge\nu$ on the diagonal. The remaining mass at each $x\in(-1,1)$ is sent to two points $p(x)\in[-a,-1]$ and $q(x)\in[1,a]$, where both maps are decreasing. If
$$
\Delta F=F_\nu-F_\mu,
\qquad
\Delta G(z)=\int_{-\infty}^{z}t\,(\nu-\mu)(dt),
$$
then these maps are characterized by
$$
\Delta F(p(x))+\Delta F(q(x))=\Delta F(x),
\qquad
\Delta G(p(x))+\Delta G(q(x))=\Delta G(x).
$$
This theorem supplies the lower-bound and uniqueness certificate; the remaining work is to solve its two equations and verify the resulting kernel directly.

Step 2: Recover the two decreasing branches from the cumulative data

For $p\in[-a,-1]$, $x\in[-1,1]$, and $q\in[1,a]$, the cumulative differences are
$$
\Delta F(p)=\frac{p+a}{2a},
\qquad
\Delta F(x)=-\frac{bx}{2a},
\qquad
\Delta F(q)=\frac{q-a}{2a}.
$$
The corresponding first-moment differences are
$$
\Delta G(p)=\frac{p^2-a^2}{4a},
\qquad
\Delta G(q)=\frac{q^2-a^2}{4a}.
$$
Inside $[-1,1]$, the density of $\nu-\mu$ is $-b/(2a)$, so
$$
\begin{aligned}
\Delta G(x)
&=\frac{1-a^2}{4a}-\frac{b}{2a}\int_{-1}^{x}t\,dt\\
&=-\frac{b(a+x^2)}{4a}.
\end{aligned}
$$
Substitution into the two dispersion equations gives
$$
p(x)+q(x)=-bx
$$
and
$$
p(x)^2+q(x)^2=a^2+a-bx^2.
$$
This gives
$$
(q(x)-p(x))^2
=2\bigl(p(x)^2+q(x)^2\bigr)-\bigl(p(x)+q(x)\bigr)^2
=(a+1)(2a-bx^2).
$$
Set
$$
d(x)=\sqrt{(a+1)(2a-bx^2)}.
$$
The required ordering $p(x)<q(x)$ fixes the two branches:
$$
p(x)=\frac{-bx-d(x)}{2},
\qquad
q(x)=\frac{-bx+d(x)}{2}.
$$
They satisfy
$$
p(-1)=-1,
\quad p(1)=-a,
\qquad
q(-1)=a,
\quad q(1)=1.
$$
For $-1<x<1$, the identity
$$
d(x)^2-(a+1)^2x^2=2a(a+1)(1-x^2)>0
$$
gives $d(x)>(a+1)|x|$. Since
$$
x-p(x)=\frac{d(x)+(a+1)x}{2}>0,
\qquad
q(x)-x=\frac{d(x)-(a+1)x}{2}>0,
$$
the branch locations satisfy $p(x)<x<q(x)$ throughout the interior.

Step 3: Determine the conditional probabilities

The diagonal part has conditional mass
$$
\frac{f_\nu(x)}{f_\mu(x)}=\frac{1}{a}.
$$
So the two off-diagonal probabilities obey
$$
\ell_a(x)+u_a(x)=\frac{b}{a}.
$$
The conditional-mean constraint adds
$$
\frac{x}{a}+\ell_a(x)p(x)+u_a(x)q(x)=x.
$$
Solving these two linear equations and using $q(x)-p(x)=d(x)$ yields
$$
\ell_a(x)=\frac{b}{a}\frac{q(x)-x}{q(x)-p(x)}
=\frac{b\bigl(d(x)-(a+1)x\bigr)}{2a\,d(x)},
$$
$$
u_a(x)=\frac{b}{a}\frac{x-p(x)}{q(x)-p(x)}
=\frac{b\bigl(d(x)+(a+1)x\bigr)}{2a\,d(x)}.
$$
The inequality $d(x)>(a+1)|x|$ for $-1<x<1$ proves that both probabilities are positive. Therefore the candidate disintegration is
$$
K_{a,x}^*
=\frac{1}{a}\delta_x
+\ell_a(x)\delta_{p(x)}
+u_a(x)\delta_{q(x)}.
$$

Step 4: Verify both marginals and certify uniqueness

Differentiating the two branch maps gives
$$
p'(x)=-\frac{b}{2}+\frac{(a^2-1)x}{2d(x)},
\qquad
q'(x)=-\frac{b}{2}-\frac{(a^2-1)x}{2d(x)}.
$$
The probability formulas match these Jacobians exactly:
$$
-p'(x)=a\ell_a(x),
\qquad
-q'(x)=au_a(x).
$$
Since the source density is $1/2$, the pushforward density along the lower branch is
$$
\frac{\frac{1}{2}\ell_a(x)}{|p'(x)|}=\frac{1}{2a}
$$
on $[-a,-1]$. The upper branch gives the same density on $[1,a]$, while the diagonal mass gives density
$$
\frac{1}{2}\cdot\frac{1}{a}=\frac{1}{2a}
$$
on $[-1,1]$. The second marginal is therefore exactly uniform on $[-a,a]$. The identities
$$
\ell_a(x)+u_a(x)=\frac{b}{a},
\qquad
\ell_a(x)p(x)+u_a(x)q(x)=\frac{bx}{a}
$$
also give
$$
\int_{-a}^{a}y\,K_{a,x}^*(dy)=x.
$$
This is a feasible martingale coupling. Its two decreasing branches solve both dispersion equations, so the equality characterization in the Hobson-Klimmek theorem makes it the unique minimizer.

Step 5: Integrate the product of the two off-diagonal probabilities

Multiplication of the two probabilities gives
$$
\begin{aligned}
\ell_a(x)u_a(x)
&=\frac{b^2\bigl(d(x)^2-(a+1)^2x^2\bigr)}{4a^2d(x)^2}\\
&=\frac{b^2(1-x^2)}{2a(2a-bx^2)}.
\end{aligned}
$$
Use the decomposition
$$
\frac{1-x^2}{2a-bx^2}
=\frac{1}{b}-\frac{a+1}{b(2a-bx^2)}.
$$
Put $s=\sqrt{b/(2a)}$ and substitute $t=x\sqrt{b/(2a)}$. Then
$$
\int_{-1}^{1}\frac{dx}{2a-bx^2}
=\frac{1}{\sqrt{2ab}}\int_{-s}^{s}\frac{dt}{1-t^2}
=\frac{2}{\sqrt{2ab}}\operatorname{artanh}s
=\frac{2}{\sqrt{2ab}}\operatorname{artanh}\sqrt{\frac{b}{2a}}.
$$
Therefore
$$
\begin{aligned}
J(a)
&=\frac{b^2}{2a}\int_{-1}^{1}\frac{1-x^2}{2a-bx^2}\,dx\\
&=\frac{b}{a}\left(
1-\frac{a+1}{\sqrt{2ab}}
\operatorname{artanh}\sqrt{\frac{b}{2a}}
\right).
\end{aligned}
$$
Replacing $b$ by $a-1$ gives the requested function.

Step 6: Check the boundary behavior and reject the symmetric false trail

At $a=2$, the formula uses $\operatorname{artanh}(1/2)=\frac{1}{2}\log 3$ and becomes
$$
J(2)=\frac{1}{2}-\frac{3}{8}\log 3.
$$
For $b=a-1\to0^+$, the exact integrand satisfies
$$
\frac{\ell_a(x)u_a(x)}{b^2}
\longrightarrow\frac{1-x^2}{4},
$$
uniformly for $x\in[-1,1]$. Integration gives $J(a)/(a-1)^2\to1/3$. This agrees with the collapse to the diagonal coupling when the two marginals coincide.

The tempting ansatz $p(x)=-q(x)$ cannot describe the minimizer. It would give $p(x)+q(x)=0$, whereas the forced cumulative-mass equation is
$$
p(x)+q(x)=-(a-1)x,
$$
which is nonzero for almost every $x$. This also explains why a kernel supported at $\pm r(|x|)$ produces the wrong value of $J(a)$.
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
- convex order
- common-mass decomposition
- cumulative shadow equations
- change of variables
