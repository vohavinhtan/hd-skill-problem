## Steps

Step 1: Reduce the ellipsoid problem to three sharp inequalities

Let
$$
R=\operatorname{diag}(1,-1,1).
$$
We have $Rv(t)=v(-t)$ and $Rw_{s;r,q}(t)=-w_{s;r,q}(-t)$, so $K_{s;r,q}$ is $R$-invariant. Uniqueness of the minimum-volume containing ellipsoid gives
$$
R^{\mathsf T}Q_{s;r,q}R=Q_{s;r,q},
$$
hence
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

Put $\tau=t^2$. Then
$$
v(t)^{\mathsf T}Q_{s;r,q}v(t)
=\alpha+(\beta+2\delta)\tau+\gamma\tau^2.
$$
This is strictly convex in $\tau$, so its maximum on $[0,1]$ is attained at an endpoint. Thus the $v$-curve is contained exactly when
$$
\alpha\leq1,
\qquad
\alpha+\beta+2\delta+\gamma\leq1. \tag{1}
$$
For the other curve,
$$
w_{s;r,q}(t)^{\mathsf T}Q_{s;r,q}w_{s;r,q}(t)
=\frac{\beta}{s}+\gamma\tau(r-q\tau)^2.
$$
Define, now as part of the derivation,
$$
H:=\max_{0\leq\tau\leq1}\tau(r-q\tau)^2. \tag{2}
$$
Then the $w$-curve is contained exactly when
$$
\beta+sH\gamma\leq s. \tag{3}
$$
Therefore the minimum-volume problem is equivalent to maximizing
$$
\log\det Q=\log\beta+\log D \tag{4}
$$
over the positive-definite matrices above subject to
$$
\alpha\leq1,
\qquad
\alpha+\beta+2\delta+\gamma\leq1,
\qquad
\beta+sH\gamma\leq s. \tag{5}
$$
The feasible set is bounded because
$$
0<\alpha\leq1,
\qquad
0<\beta\leq s,
\qquad
0<\gamma\leq H^{-1},
\qquad
|\delta|<\sqrt{\alpha\gamma}.
$$
For every fixed $s>0$, a sufficiently small $\varepsilon I_3$ satisfies all three inequalities strictly. Thus Slater's condition holds. Since $\log\det$ is strictly concave on the positive-definite cone and the constraints are affine, the KKT conditions are necessary and sufficient and the optimizer is unique.

Step 2: Determine the hidden envelope and the possible $B$-contacts

Write $\rho=r/q$ and
$$
h(\tau)=\tau(r-q\tau)^2.
$$
Since
$$
h'(\tau)=(r-q\tau)(r-3q\tau),
$$
the only interior candidate for a positive maximum is
$$
\tau_* =\frac{r}{3q},
\qquad
h(\tau_*)=\frac{4r^3}{27q},
$$
when $0<\rho<3$. The competing endpoint value is
$$
h(1)=(r-q)^2,
$$
and
$$
\frac{4r^3}{27q}-(r-q)^2
=\frac{q^2}{27}(\rho-3)^2(4\rho-3). \tag{6}
$$
Hence
$$
H=
\begin{cases}
(r-q)^2,&0<\rho\leq\frac34\text{ or }\rho\geq3,\\[2mm]
\dfrac{4r^3}{27q},&\frac34\leq\rho\leq3.
\end{cases} \tag{7}
$$
At $\rho=3/4$, both $\tau=1/4$ and $\tau=1$ maximize $h$; for $3/4<\rho<3$ the maximizing value is $\tau=r/(3q)$; otherwise it is $\tau=1$.

Whenever (3) is active,
$$
B_{s;r,q}=\{t\in[-1,1]:h(t^2)=H\}, \tag{8}
$$
and whenever (3) is slack, $B_{s;r,q}=\varnothing$. The nonempty set in (8) is independent of $s$.

Step 3: Exhaust the active sets, keeping the coefficient $sH$

Let
$$
K=sH
$$
and let $\lambda_0,\lambda_1,\mu\geq0$ be the multipliers for the three inequalities in (5). Stationarity for (4) is
$$
\frac{\gamma}{D}=\lambda_0+\lambda_1,
\qquad
-\frac{\delta}{D}=\lambda_1,
\qquad
\frac1\beta=\lambda_1+\mu,
\qquad
\frac{\alpha}{D}=\lambda_1+K\mu. \tag{9}
$$
The middle constraint is always active. If $\lambda_1=0$, then $\delta=0$ and $\lambda_0>0$, so $\alpha=1$; the middle inequality would then be
$$
1+\beta+\gamma\leq1,
$$
a contradiction.

First suppose the third constraint is slack, so $\mu=0$. From (9),
$$
D=\alpha\beta,
\qquad
\delta=-\alpha,
\qquad
\gamma-\alpha=\beta.
$$
The active middle constraint gives $2\beta=1$. Also
$$
\lambda_0
=\frac{\gamma}{D}-\frac1\beta
=\frac1\alpha>0,
$$
so $\alpha=1$. Thus necessarily
$$
(\alpha,\beta,\gamma,\delta)
=\left(1,\frac12,\frac32,-1\right). \tag{10}
$$
For this matrix the third inequality is slack exactly when
$$
\frac12+\frac32sH<s,
$$
i.e.
$$
1<s(2-3H). \tag{11}
$$
Consequently a $B$-slack phase exists exactly when $H<2/3$, and then it occurs for
$$
s>\frac1{2-3H}. \tag{12}
$$

Next suppose the first constraint is slack, so $\lambda_0=0$. The case $\lambda_0=\mu=0$ is impossible: (9) would force $\delta=-\gamma$ and $\alpha=\gamma$, hence $D=0$. Therefore $\mu>0$ and the third constraint is active.

From (9) and the active middle constraint,
$$
\delta=-\gamma,
\qquad
\alpha=1-\beta+\gamma,
\qquad
D=\gamma(1-\beta).
$$
Hence
$$
\lambda_1=\frac1{1-\beta},
\qquad
\mu=\frac{1-2\beta}{\beta(1-\beta)},
$$
so
$$
0<\beta<\frac12. \tag{13}
$$
The last equation in (9) then reduces to
$$
\gamma=\frac{\beta(1-\beta)}{K(1-2\beta)}. \tag{14}
$$
Using the active third constraint gives the striking cancellation
$$
s=\beta+K\gamma
=\frac{\beta(2-3\beta)}{1-2\beta}
=:f(\beta). \tag{15}
$$
Moreover
$$
f'(\beta)=\frac{2-6\beta+6\beta^2}{(1-2\beta)^2}>0,
$$
and $f$ maps $(0,1/2)$ bijectively onto $(0,\infty)$.

Finally, the first constraint is genuinely slack precisely when $\alpha<1$, equivalently $\gamma<\beta$. By (14), (15), and $K=sH$, this is
$$
1-\beta<K(1-2\beta)
$$
$$
\Longleftrightarrow\quad
H\beta(2-3\beta)>1-\beta. \tag{16}
$$
Thus the existence of the first-slack phase is controlled by a single quadratic sign condition.

Step 4: Find the loss and re-entry of the $t=0$ contact

Set
$$
F_H(\beta)
:=H\beta(2-3\beta)+\beta-1
=-3H\beta^2+(2H+1)\beta-1. \tag{17}
$$
For $H\leq1$, $F_H$ is increasing on $(0,1/2)$ and
$$
F_H(1/2)=\frac{H-2}{4}<0,
$$
so $F_H<0$ throughout.

Assume $H>1$. The unique critical point in $(0,1/2)$ is
$$
\beta_* =\frac{2H+1}{6H},
$$
and
$$
F_H(\beta_*)
=\frac{4H^2-8H+1}{12H}. \tag{18}
$$
Put
$$
\Delta=4H^2-8H+1.
$$
Since $H>1$, the maximum in (18) is positive exactly when
$$
H>1+\frac{\sqrt3}{2}. \tag{19}
$$
At equality in (19), $F_H$ merely touches zero: the first constraint remains active on both sides, so the contact set does not change.

When (19) is strict, the transition values for the first constraint occur at $F_H(\beta)=0$. At such a point (16) is an equality, so with $K=sH$,
$$
K(1-2\beta)=1-\beta.
$$
Because $0<\beta<1/2$, this forces $K>1$ and
$$
\beta=\frac{K-1}{2K-1}. \tag{20}
$$
Substituting (20) into (15) yields
$$
s=\frac{K^2-1}{2K-1}.
$$
Since $K=sH$, the transition equation becomes
$$
H(2-H)s^2-s+1=0. \tag{21}
$$
Its discriminant is exactly $\Delta$.

If
$$
1+\frac{\sqrt3}{2}<H<2,
$$
then $0<\Delta<1$ and (21) has two positive roots
$$
s_- =\frac{2}{1+\sqrt\Delta},
\qquad
s_+ =\frac{2}{1-\sqrt\Delta}. \tag{22}
$$
The first constraint is slack precisely for $s_-<s<s_+$, so the contact $t=0$ disappears at $s_-$ and reappears at $s_+$.

If $H=2$, equation (21) reduces to $s=1$, giving one transition. If $H>2$, (21) has exactly one positive root, namely
$$
s_- =\frac{2}{1+\sqrt\Delta}, \tag{23}
$$
and the first constraint is slack for all larger $s$.

Equivalently, all genuine first-constraint transitions are characterized without cases by
$$
s>H^{-1},
\qquad
H(2-H)s^2-s+1=0,
\qquad
\Delta>0. \tag{24}
$$
The inequality $s>H^{-1}$ removes the extraneous positive roots of (21) that occur for very small $H$, where (20) would not give $0<\beta<1/2$.

Step 5: Convert active-set changes into contact-set changes

The middle constraint in (5) is always active, so $t=\pm1$ always belong to $A_{s;r,q}$. The $v$-contact function is strictly convex in $\tau=t^2$. Hence
$$
A_{s;r,q}=\{-1,0,1\}
$$
when the first constraint is active, while
$$
A_{s;r,q}=\{-1,1\}
$$
when it is slack; there are no other $A$-contacts.

By Step 2, the third constraint being active or slack is exactly the distinction between the fixed nonempty set in (8) and $B_{s;r,q}=\varnothing$. Therefore every crossing found in (12) and (24) changes the ordered contact pair, and no other change is possible because Step 3 exhausted all active sets.

The transition caused by $B$ is characterized by
$$
s>0,
\qquad
(2-3H)s=1, \tag{25}
$$
which automatically has a positive solution only for $H<2/3$. Combining (24) and (25) gives the complete transition set.

Final Answer:
$$
\boxed{H:=\max_{0\le u\le1}u(r-qu)^2;\ \{s>0:(2-3H)s=1\}\cup\{s>H^{-1}:H(2-H)s^2-s+1=0,\ 4H^2-8H+1>0\}}.
$$

---

## Answer

$H:=\max_{0\le u\le1}u(r-qu)^2;\{s>0:(2-3H)s=1\}\cup\{s>H^{-1}:H(2-H)s^2-s+1=0,4H^2-8H+1>0\}$

---

## Classification

**Domain/Sub-domain:** Topology and Geometry / Convex geometry

**Problem Type:** Parameter identification

**Answer Type:** Set or multiset of objects

---

## Concepts (1–5)

- minimum-volume circumscribing ellipsoids
- symmetry reduction of quadratic forms
- KKT active-set analysis
- parametric contact bifurcations
- envelope maxima of cubic curves

---

## Black-Box Audit

The KKT criterion is the only named optimization result used. Step 1 verifies strict feasibility, affine constraints, and strict concavity, so its hypotheses are explicit. The envelope maximum, every active-set equation, the monotonic parametrization by $\beta$, the quadratic sign analysis, the tangency exclusion, and the final transition equations are all derived by hand. No numerical optimization, CAS, exhaustive search, or unshown computation is used.