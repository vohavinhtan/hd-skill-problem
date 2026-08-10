## Steps

Step 1: Construct a four-point feasible family near the transition

For polynomials of degree at most $4$, let $L$ be the moment functional
$$
L(1)=1,\qquad L(x)=L(x^3)=0,\qquad L(x^2)=\frac1m,\qquad L(x^4)=\frac{3}{m(m+2)}.
$$
Set
$$
a_-=\frac{\sqrt{m+3}-1}{m+2},
\qquad
a_+=\frac{\sqrt{m+3}+1}{m+2}.
$$
Fix $a\in(a_-,a_+)$ and put
$$
r=-\frac1{(m+2)a}.
$$
Since $m\geq3$, one has $a_->1/(m+2)$, hence $-1<r<0<a<1$, and $ar=-1/(m+2)$.

For the four nodes $T=\{-1,r,a,1\}$, let $\ell_z$ be the cubic Lagrange basis polynomial with $\ell_z(z)=1$ and $\ell_z(y)=0$ for $y\in T\setminus\{z\}$, and put $w_z=L(\ell_z)$. For any scalars $\alpha,\beta,\gamma$,
$$
L((x-\alpha)(x-\beta)(x-\gamma))
=-\frac{\alpha+\beta+\gamma}{m}-\alpha\beta\gamma.
$$
Applying this identity to the four Lagrange numerators yields
$$
w_{-1}=\frac{amr+a+r+1}{2m(a+1)(r+1)},
\qquad
w_r=\frac{a(m-1)}{m(a-r)(1-r)(1+r)},
$$
$$
w_a=\frac{-r(m-1)}{m(a-r)(1-a)(1+a)},
\qquad
w_1=\frac{amr-a-r+1}{2m(1-a)(1-r)}.
$$
For example,
$$
w_1=
\frac{L((x+1)(x-r)(x-a))}{2(1-r)(1-a)}
=
\frac{amr-a-r+1}{2m(1-r)(1-a)}.
$$
The middle two weights are positive from $-1<r<0<a<1$. Using $ar=-1/(m+2)$,
$$
amr+a+r+1=
\frac{(m+2)a^2+2a-1}{(m+2)a}>0
$$
because $a>a_-$, while
$$
amr-a-r+1=
\frac{1+2a-(m+2)a^2}{(m+2)a}>0
$$
because $a<a_+$. Thus all four weights are positive.

The Lagrange construction matches $L$ on degrees at most $3$. For
$$
G(x)=(x+1)(x-r)(x-a)(x-1)
$$
the odd moments vanish, so
$$
L(G)=\frac{3}{m(m+2)}+\frac{ar-1}{m}-ar
=\left(\frac{3}{m(m+2)}-\frac1m\right)
+ar\left(\frac1m-1\right)=0.
$$
Every polynomial of degree at most $4$ is its cubic interpolation on $T$ plus a constant multiple of $G$, hence the measure
$$
\nu_a=w_{-1}\delta_{-1}+w_r\delta_r+w_a\delta_a+w_1\delta_1
$$
has exactly the required moments and belongs to $\mathcal P_m$.

Step 2: Prove that the four-point measure is tail-optimal

For the same $a$ and $r$, define
$$
A=(a+1)(a-r)^2,\qquad
B=2(1-r)^2,\qquad
K=(a-r)^2+2a-4r+2.
$$
The definitions satisfy
$$
B-A=2(1-r)^2-(a+1)(a-r)^2
=(1-a)((a-r)^2+2a-4r+2)=(1-a)K.
$$
Thus $K>0$ and, with
$$
d=1+\frac{A}{K},
$$
one has
$$
d-1=\frac{A}{K},
\qquad
d-a=\frac{B}{K},
\qquad
d>1.
$$
Consider the quartic polynomial
$$
q_a(x)=\frac{K}{AB}(x+1)(x-r)^2(d-x).
$$
The displayed identities give
$$
q_a(-1)=q_a(r)=0,
\qquad
q_a(a)=q_a(1)=1.
$$
For $-1\leq x<a$, every factor in $q_a(x)$ is nonnegative, so $q_a(x)\geq0$. On $[a,1]$, put
$$
f(x)=(x+1)(x-r)^2(d-x).
$$
All factors are positive there and
$$
\frac{d^2}{dx^2}\log f(x)
=
-\frac1{(x+1)^2}
-\frac2{(x-r)^2}
-\frac1{(d-x)^2}<0.
$$
Hence $\log f$ is strictly concave. Since $f(a)=f(1)=AB/K$, concavity yields $f(x)\geq AB/K$ on $[a,1]$. Therefore
$$
q_a(x)\geq\mathbf{1}_{[a,1]}(x)
\qquad(-1\leq x\leq1).
$$
For every $\mu\in\mathcal P_m$, the integral of $q_a$ equals the fixed number $L(q_a)$. The measure $\nu_a$ is supported only where equality holds in the majorant, so
$$
L(q_a)=\int q_a\,d\nu_a=\nu_a([a,1]).
$$
Thus $\nu_a([a,1])=M_m(a)$. Since $w_1>0$, every $a\in(a_-,a_+)$ belongs to the set whose supremum defines $\tau_m$. Consequently,
$$
\tau_m\geq a_+.
$$

Step 3: Construct the sharp optimizer above the transition

Now fix $a>a_+$. Since
$$
m(\sqrt{m+3}+1)^2-(m+2)^2=2(m\sqrt{m+3}-2)>0,
$$
one has $ma^2>1$. Put
$$
\beta^2=\frac3{m+2},
\qquad
e=\frac{a(a^2-\beta^2)}{a^2-\frac1m},
$$
and define
$$
P(x)=x^3-ex^2-\beta^2x+\frac em=(x-a)h(x),
$$
where
$$
h(x)=x^2+
\frac{2a(m-1)}{(m+2)(ma^2-1)}x
-\frac{(m+2)a^2-3}{(m+2)(ma^2-1)}.
$$
The moment identities give
$$
L(P)=-\frac em+\frac em=0,
\qquad
L(xP)=\frac{3}{m(m+2)}-\frac{\beta^2}{m}=0.
$$
Let
$$
r=-\frac1{(m+2)a},
\qquad
c=-\frac1{ma}.
$$
Then $-1<c<r<0<a$. The displayed formula for $h$ gives
$$
h(-1)=
\frac{(m-1)((m+2)a^2-2a-1)}{(m+2)(ma^2-1)}>0,
$$
$$
h(r)=
-\frac{((m+2)a^2-2a-1)((m+2)a^2+2a-1)}
{a^2(m+2)^2(ma^2-1)}<0,
\qquad
h(c)=-\frac{ma^2-1}{a^2m^2}<0.
$$
Also
$$
h(a)=
\frac{m(m+2)a^4-6a^2+3}{(m+2)(ma^2-1)}>0.
$$
For the last inequality, setting $y=ma^2$ makes the numerator equal
$$
\frac{(m+2)y^2-6y+3m}{m},
$$
whose discriminant is $36-12m(m+2)<0$.

Thus the quadratic $h$ has one root $u\in(-1,c)$ and one root $v\in(r,a)$. Let $\ell_u,\ell_v,\ell_a$ be the quadratic Lagrange basis on $\{u,v,a\}$ and set $\omega_z=L(\ell_z)$. Their signs follow from
$$
\omega_u=\frac{\frac1m+av}{(u-v)(u-a)}>0,
\qquad
\omega_v=\frac{\frac1m+au}{(v-u)(v-a)}>0,
$$
because $u<c=-1/(ma)<v$, and
$$
\omega_a=\frac{L(h)}{h(a)}
=
\frac{2(m-1)}{m(m+2)(ma^2-1)h(a)}>0.
$$
These weights reproduce $L$ through degree $2$. Every polynomial $F$ of degree at most $4$ can be written as $F=sP+t$ with $\deg s\leq1$ and $\deg t\leq2$; since $L(P)=L(xP)=0$, the measure
$$
\eta_a=\omega_u\delta_u+\omega_v\delta_v+\omega_a\delta_a
$$
reproduces all five prescribed moments and lies in $\mathcal P_m$.

Step 4: Exclude endpoint mass above the transition and determine the supremum

For $a>a_+$, define
$$
Q_a(x)=\left(\frac{h(x)}{h(a)}\right)^2.
$$
This is nonnegative on $[-1,a)$. The coefficient of $x$ in $h$ is positive, so for $x\in[a,1]$,
$$
h'(x)=2x+\frac{2a(m-1)}{(m+2)(ma^2-1)}>0.
$$
Since $h(a)>0$, it follows that $Q_a(x)\geq1$ on $[a,1]$, with the strict inequality $Q_a(1)>1$. Hence
$$
Q_a(x)\geq\mathbf{1}_{[a,1]}(x)
\qquad(-1\leq x\leq1).
$$
The measure $\eta_a$ is supported at the two zeros of $h$ and at $a$, so
$$
L(Q_a)=\int Q_a\,d\eta_a=\eta_a([a,1]).
$$
Therefore $\eta_a([a,1])=M_m(a)$. If another $\mu\in\mathcal P_m$ also attains $M_m(a)$, then
$$
0=
\int_{-1}^1\left(Q_a-\mathbf{1}_{[a,1]}\right)d\mu.
$$
The integrand is nonnegative and is strictly positive at $x=1$, so necessarily $\mu(\{1\})=0$. Thus no $a>a_+$ belongs to the set defining $\tau_m$, and $\tau_m\leq a_+$.

Together with Step 2,
$$
\tau_m=a_+=\frac{\sqrt{m+3}+1}{m+2}.
$$

Final Answer: $\boxed{\frac{\sqrt{m+3}+1}{m+2}}$

---

## Answer

$\frac{\sqrt{m+3}+1}{m+2}$

---

## Classification

**Problem Type:** Parameter identification

**Answer Type:** Exact symbolic expression

---

## Solution Concepts

- truncated moment problem
- Lagrange interpolation
- polynomial majorant
- log concavity
- extremal measure
