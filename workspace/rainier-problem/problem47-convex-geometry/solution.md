## Steps

Step 1: Reduce containment to three sharp affine inequalities

Let
$$
R=\operatorname{diag}(1,-1,1).
$$
Since $Rv(t)=v(-t)$ and $Rw_{s;r,q}(t)=-w_{s;r,q}(-t)$, the body $K_{s;r,q}$ is $R$-invariant. Uniqueness of the minimum-volume ellipsoid therefore gives
$$
R^{\mathsf T}Q_{s;r,q}R=Q_{s;r,q}.
$$
Hence
$$
Q_{s;r,q}=
\begin{pmatrix}
\alpha&0&\delta\\
0&\beta&0\\
\delta&0&\gamma
\end{pmatrix},
\qquad
\beta>0,
\qquad
D:=\alpha\gamma-\delta^2>0.
$$
In particular $\alpha,\gamma>0$.

Put $\tau=t^2\in[0,1]$. Then
$$
v(t)^{\mathsf T}Q_{s;r,q}v(t)
=\alpha+(\beta+2\delta)\tau+\gamma\tau^2.
$$
Because $\gamma>0$, this is strictly convex in $\tau$, so its maximum on $[0,1]$ occurs at an endpoint. Thus the whole $v$-curve is contained exactly when
$$
\alpha\leq1,
\qquad
\alpha+\beta+2\delta+\gamma\leq1. \tag{1}
$$
For the second curve,
$$
w_{s;r,q}(t)^{\mathsf T}Q_{s;r,q}w_{s;r,q}(t)
=\frac{\beta+\gamma\tau(r-q\tau)^2}{s}.
$$
With
$$
H=\max_{0\leq\tau\leq1}\tau(r-q\tau)^2,
$$
its containment is therefore equivalent to
$$
\beta+H\gamma\leq s. \tag{2}
$$
Consequently the ellipsoid problem is the maximization of
$$
\log\det Q=\log\beta+\log D \tag{3}
$$
over the positive-definite matrices above subject to the three affine inequalities
$$
\alpha\leq1,
\qquad
\alpha+\beta+2\delta+\gamma\leq1,
\qquad
\beta+H\gamma\leq s. \tag{4}
$$
The feasible region is bounded because
$$
0<\alpha\leq1,\qquad 0<\beta\leq s,\qquad 0<\gamma\leq\frac{s}{H},\qquad |\delta|<\sqrt{\alpha\gamma}.
$$
For sufficiently small $\varepsilon>0$, $Q=\varepsilon I_3$ satisfies all three inequalities strictly. Hence Slater's condition holds. Since $\log\det$ is strictly concave on the positive-definite cone, the KKT conditions are necessary and sufficient and the optimizer is unique.

Step 2: Locate the contacts contributed by the second curve

Write $\rho=r/q$ and
$$
h(\tau)=\tau(r-q\tau)^2=q^2\tau(\rho-\tau)^2.
$$
Besides the zero at $\tau=\rho$ when it lies in $[0,1]$, the only interior critical candidate for a maximum is
$$
\tau_* =\frac{\rho}{3}=\frac{r}{3q},
\qquad
h(\tau_*)=\frac{4r^3}{27q},
$$
which exists in $(0,1)$ exactly when $0<\rho<3$. The other possible maximum is the endpoint
$$
h(1)=(r-q)^2.
$$
Their difference factors as
$$
\frac{4r^3}{27q}-(r-q)^2
=\frac{q^2}{27}(\rho-3)^2(4\rho-3). \tag{5}
$$
Therefore
$$
H=
\begin{cases}
(r-q)^2,&0<\rho\leq\frac34\text{ or }\rho\geq3,\\[2mm]
\dfrac{4r^3}{27q},&\frac34\leq\rho\leq3,
\end{cases} \tag{6}
$$
where the formulas agree at the overlap points. If $\rho=3/4$, both $\tau=1/4$ and $\tau=1$ maximize $h$; if $3/4<\rho<3$, the unique maximizing value is $\tau=r/(3q)$; otherwise the maximizing value is $\tau=1$.

This matters only for the location of the $B$-contacts. Whenever (2) is active,
$$
B_{s;r,q}=\{t\in[-1,1]:h(t^2)=H\}, \tag{7}
$$
and whenever (2) is slack, $B_{s;r,q}=\varnothing$. For fixed $r,q$, the set on the right side of (7) is independent of $s$. Thus a change in the $B$-contact set can occur only when the third inequality in (4) changes between active and slack.

Step 3: Exhaust the possible active sets

Let $\lambda_0,\lambda_1,\mu\geq0$ be the KKT multipliers for the three inequalities in (4), in that order. Differentiating (3) gives
$$
\frac{\gamma}{D}=\lambda_0+\lambda_1,
\qquad
-\frac{\delta}{D}=\lambda_1,
\qquad
\frac1\beta=\lambda_1+\mu,
\qquad
\frac{\alpha}{D}=\lambda_1+H\mu. \tag{8}
$$
The middle constraint is always active. Indeed, if $\lambda_1=0$, then (8) gives $\delta=0$ and, since $\gamma/D>0$, also $\lambda_0>0$. Complementary slackness then forces $\alpha=1$, but the middle inequality would read
$$
1+\beta+\gamma\leq1,
$$
which is impossible.

First suppose the third constraint is slack, so $\mu=0$. Since $\lambda_1>0$, (8) gives
$$
D=\alpha\beta,
\qquad
\delta=-\alpha.
$$
Using $D=\alpha\gamma-\delta^2$ gives
$$
\gamma-\alpha=\beta.
$$
The active middle constraint then becomes
$$
\beta+(\gamma-\alpha)=1,
$$
so $\beta=1/2$. Moreover
$$
\lambda_0
=\frac{\gamma}{D}-\frac1\beta
=\frac{\gamma-\alpha}{\alpha\beta}
=\frac1\alpha>0,
$$
so the first constraint is active and $\alpha=1$. Hence
$$
(\alpha,\beta,\gamma,\delta)
=\left(1,\frac12,\frac32,-1\right).
$$
The third inequality is slack exactly when
$$
s>\frac{1+3H}{2}.
$$
Set
$$
s_1(H)=\frac{1+3H}{2}. \tag{9}
$$

Next suppose the first constraint is slack, so $\lambda_0=0$. The impossible case $\lambda_0=\mu=0$ will be ruled out below, so here $\mu>0$ and the third constraint is active. Equations (8) give
$$
\delta=-\gamma,
\qquad
\alpha=1-\beta+\gamma,
$$
$$
\gamma=\frac{\beta(1-\beta)}{H(1-2\beta)},
\qquad
s=\frac{\beta(2-3\beta)}{1-2\beta}. \tag{10}
$$
Dual feasibility gives $0<\beta<1/2$. The strict inequality $\alpha<1$ is equivalent to
$$
1-\beta<H(1-2\beta). \tag{11}
$$
For $H\leq1$, (11) is impossible. For $H>1$, it is equivalent to
$$
0<\beta<\frac{H-1}{2H-1}. \tag{12}
$$
The function of $\beta$ in (10) is strictly increasing on $(0,1/2)$ because
$$
\frac{d}{d\beta}\frac{\beta(2-3\beta)}{1-2\beta}
=\frac{2-6\beta+6\beta^2}{(1-2\beta)^2}>0.
$$
It tends to $0$ with $\beta$, and at the upper endpoint in (12) it equals
$$
s_0(H)=\frac{H^2-1}{2H-1}. \tag{13}
$$
Thus this first-slack regime occurs precisely for
$$
H>1,\qquad 0<s<s_0(H).
$$

Finally, there is no regime in which only the middle constraint is active. If $\lambda_0=\mu=0$, then (8) forces
$$
\delta=-\gamma,
\qquad
\alpha=\gamma,
$$
so $D=\alpha\gamma-\delta^2=0$, contradicting positive definiteness. These cases exhaust the possibilities because the middle constraint is always active. Hence the remaining $s$-intervals are exactly the all-three-active regime:
$$
0<s<s_1(H)\quad(H\leq1),
$$
$$
s_0(H)<s<s_1(H)\quad(H>1). \tag{14}
$$
For $H>1$ the order is strict, since
$$
s_1(H)-s_0(H)
=\frac{4H^2-H+1}{2(2H-1)}>0. \tag{15}
$$

Step 4: Read off exactly when the contact pair changes

The middle inequality in (4) is always active, so $t=\pm1$ always belong to $A_{s;r,q}$. Because the $v$-constraint is a strictly convex quadratic in $\tau=t^2$, there are no other $A$-contacts except possibly $t=0$. The point $t=0$ is a contact exactly when the first inequality is active. Therefore
$$
A_{s;r,q}=\{-1,1\}
$$
in the first-slack regime, and
$$
A_{s;r,q}=\{-1,0,1\}
$$
whenever the first constraint is active.

By Step 2, $B_{s;r,q}$ is the fixed maximizer set in (7) whenever the third constraint is active, and is empty whenever it is slack. Consequently the ordered contact pair can change only when the first or third constraint changes status.

If $0<H\leq1$, the first constraint never becomes slack, while the third changes from active to slack exactly at $s_1(H)$. Thus there is one transition.

If $H>1$, the first constraint changes from slack to active at $s_0(H)$, and the third changes from active to slack at $s_1(H)$. Both changes are genuine, and (15) shows that the two parameters are distinct. No other transition is possible because the active set, and hence both contact sets, is constant on every complementary interval.

Therefore the complete transition set is
$$
\boxed{\left\{\frac{1+3H}{2}\right\}\cup
\left\{\frac{H^2-1}{2H-1}:H>1\right\}}.
$$

Final Answer: $\boxed{\left\{\frac{1+3H}{2}\right\}\cup\left\{\frac{H^2-1}{2H-1}:H>1\right\}}$

---

## Answer

$\left\{\frac{1+3H}{2}\right\}\cup\left\{\frac{H^2-1}{2H-1}:H>1\right\}$

---

## Classification

**Domain/Sub-domain:** Topology and Geometry / Convex geometry

**Problem Type:** Parameter identification

**Answer Type:** Set or multiset of objects

---

## Concepts (1–5)

- minimum-volume circumscribing ellipsoids
- symmetry reduction of quadratic forms
- contact constraints for parametrized convex hulls
- KKT active-set analysis
- one-variable envelope maxima

---

## Black-Box Audit

The only named optimization tool is the KKT criterion. Step 1 verifies the hypotheses needed here: a convex positive-definite domain, affine constraints, strict feasibility by a small multiple of the identity, and strict concavity of the log-determinant objective. Every active-set equation, feasibility range, monotonicity check, and transition value is then derived explicitly by hand. No numerical optimization, exhaustive search, computer algebra, or unshown computation is used.