## Steps

Step 1: Reduce the containing-ellipsoid problem to three scalar constraints
Let
$$
R=\operatorname{diag}(1,-1,1).
$$
Since $Rv(t)=v(-t)$ and $Rw_{s;r,q}(t)=-w_{s;r,q}(-t)$, uniqueness of the minimum-volume containing ellipsoid gives
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
Thus $\alpha,\gamma>0$. With $\tau=t^2\in[0,1]$,
$$
v(t)^{\mathsf T}Q_{s;r,q}v(t)
=\alpha+(\beta+2\delta)\tau+\gamma\tau^2.
$$
This is strictly convex in $\tau$, so containment of the whole $v$-curve is equivalent to the two endpoint inequalities
$$
\alpha\leq1,
\qquad
\alpha+\beta+2\delta+\gamma\leq1.
$$
For the other curve,
$$
w_{s;r,q}(t)^{\mathsf T}Q_{s;r,q}w_{s;r,q}(t)
=\frac{\beta}{s}+\gamma\tau(r-q\tau)^2.
$$
By the prompt definition
$$
H=\max_{0\leq u\leq1}u(r-qu)^2,
$$
and the maximum exists by continuity on $[0,1]$. Therefore containment of the $w$-curve is equivalent to
$$
\beta+sH\gamma\leq s.
$$
Minimizing ellipsoid volume is therefore equivalent to maximizing
$$
\log\det Q=\log\beta+\log D
$$
over the positive-definite matrices above under these three affine inequalities. For fixed $s>0$, a sufficiently small $\varepsilon I_3$ satisfies them strictly, so Slater's condition holds. Since $\log\det$ is strictly concave, the KKT conditions are necessary and sufficient and the optimizer is unique.

Step 2: Determine the envelope controlling all contacts with the second curve
Write $\rho=r/q$ and
$$
h(\tau)=\tau(r-q\tau)^2.
$$
Its derivative is
$$
h'(\tau)=(r-q\tau)(r-3q\tau).
$$
The only interior positive-maximizer candidate is $\tau=r/(3q)$, available when $0<\rho<3$, and
$$
h\left(\frac{r}{3q}\right)=\frac{4r^3}{27q},
\qquad
h(1)=(r-q)^2.
$$
Their difference factors as
$$
\frac{4r^3}{27q}-(r-q)^2
=\frac{q^2}{27}(\rho-3)^2(4\rho-3).
$$
Consequently
$$
H=
\begin{cases}
(r-q)^2,&0<\rho\leq\frac34\text{ or }\rho\geq3,\\
\frac{4r^3}{27q},&\frac34\leq\rho\leq3.
\end{cases}
$$
At $\rho=3/4$ both $\tau=1/4$ and $\tau=1$ maximize $h$; for $3/4<\rho<3$ the unique maximizing $\tau$ is $r/(3q)$; otherwise it is $1$. Thus, whenever the third constraint is active,
$$
B_{s;r,q}=\{t\in[-1,1]:h(t^2)=H\},
$$
and this nonempty set is independent of $s$. When the third constraint is slack, $B_{s;r,q}=\varnothing$.

Step 3: Exhaust the possible slack constraints by the KKT equations
Put $K=sH$, and let $\lambda_0,\lambda_1,\mu\geq0$ be the multipliers for
$$
\alpha\leq1,\qquad
\alpha+\beta+2\delta+\gamma\leq1,\qquad
\beta+K\gamma\leq s.
$$
Stationarity gives
$$
\frac{\gamma}{D}=\lambda_0+\lambda_1,\qquad
-\frac{\delta}{D}=\lambda_1,\qquad
\frac1\beta=\lambda_1+\mu,\qquad
\frac{\alpha}{D}=\lambda_1+K\mu.
$$
The middle constraint is always active. Indeed, if $\lambda_1=0$, then $\delta=0$ and $\lambda_0>0$, hence complementary slackness gives $\alpha=1$; the middle inequality would then force $1+\beta+\gamma\leq1$, impossible.

Suppose first that the third constraint is slack, so $\mu=0$. The stationarity equations give
$$
D=\alpha\beta,\qquad
\delta=-\alpha,\qquad
\gamma-\alpha=\beta.
$$
The active middle constraint gives $2\beta=1$. Also
$$
\lambda_0=\frac{\gamma}{D}-\frac1\beta=\frac1\alpha>0,
$$
so $\alpha=1$. Thus
$$
(\alpha,\beta,\gamma,\delta)=\left(1,\frac12,\frac32,-1\right).
$$
For this matrix the third constraint is slack exactly when
$$
\frac12+\frac32sH<s,
$$
or equivalently
$$
1<s(2-3H).
$$
Hence a third-slack phase exists exactly for $H<2/3$, and its boundary is
$$
(2-3H)s=1.
$$

Now suppose the first constraint is slack, so $\lambda_0=0$. The simultaneous choice $\mu=0$ would force $\delta=-\gamma$ and $\alpha=\gamma$, hence $D=0$; therefore $\mu>0$ and the third constraint is active. The stationarity equations and the active middle constraint yield
$$
\delta=-\gamma,\qquad
\alpha=1-\beta+\gamma,\qquad
D=\gamma(1-\beta),
$$
and hence
$$
\lambda_1=\frac1{1-\beta},
\qquad
\mu=\frac{1-2\beta}{\beta(1-\beta)}.
$$
Thus $0<\beta<1/2$. The last stationarity equation gives
$$
\gamma=\frac{\beta(1-\beta)}{K(1-2\beta)}.
$$
Using the active third constraint,
$$
s=\beta+K\gamma
=\frac{\beta(2-3\beta)}{1-2\beta}
=:f(\beta).
$$
Moreover
$$
f'(\beta)=\frac{2-6\beta+6\beta^2}{(1-2\beta)^2}>0,
$$
so $f$ maps $(0,1/2)$ bijectively onto $(0,\infty)$. Finally, the first constraint is genuinely slack exactly when $\alpha<1$, equivalently $\gamma<\beta$, which becomes
$$
H\beta(2-3\beta)>1-\beta.
$$

Step 4: Locate every genuine loss or re-entry of the contact at zero
Set
$$
F_H(\beta)=-3H\beta^2+(2H+1)\beta-1.
$$
The first constraint is slack exactly when $F_H(\beta)>0$. If $H\leq1$, then $F_H$ is increasing on $(0,1/2)$ and
$$
F_H\left(\frac12\right)=\frac{H-2}{4}<0,
$$
so it is never slack. If $H>1$, the unique critical point in $(0,1/2)$ is
$$
\beta_*=\frac{2H+1}{6H},
$$
where
$$
F_H(\beta_*)=\frac{4H^2-8H+1}{12H}.
$$
Therefore an open first-slack interval exists exactly when
$$
4H^2-8H+1>0
$$
in the range $H>1$. At equality the graph only touches zero, so the first constraint is active on both sides and the contact set does not change.

At a genuine boundary, $F_H(\beta)=0$, so
$$
1-\beta=K(1-2\beta).
$$
Since $0<\beta<1/2$, this implies $K>1$ and
$$
\beta=\frac{K-1}{2K-1}.
$$
Substitution into $s=f(\beta)$ gives
$$
s=\frac{K^2-1}{2K-1}.
$$
With $K=sH$, multiplication by the positive denominator $2K-1$ gives
$$
H(2-H)s^2-s+1=0.
$$
Conversely, assume
$$
s>H^{-1},\qquad
H(2-H)s^2-s+1=0,\qquad
4H^2-8H+1>0.
$$
Then $K=sH>1$ and $\beta=(K-1)/(2K-1)$ lies in $(0,1/2)$. Reversing the displayed algebra gives $s=f(\beta)$ and $F_H(\beta)=0$, so every such root is an actual boundary of the first-slack phase. Thus the inequality $s>H^{-1}$ removes the algebraic roots that do not correspond to admissible KKT data, while the strict discriminant inequality removes the tangency case.

Step 5: Translate the active-set boundaries into the complete contact-transition set
Because the middle constraint is always active, the $v$-contact function equals $1$ at $\tau=1$, so $\pm1\in A_{s;r,q}$. If the first constraint is active, it also equals $1$ at $\tau=0$; strict convexity then makes it strictly below $1$ for $0<\tau<1$, giving
$$
A_{s;r,q}=\{-1,0,1\}.
$$
If the first constraint is slack, strict convexity gives
$$
A_{s;r,q}=\{-1,1\}.
$$
For the second curve, Step 2 shows that the contact set is the fixed nonempty maximizer set of $h(t^2)$ when the third constraint is active and is empty when it is slack.

Hence the boundary $(2-3H)s=1$ changes $B_{s;r,q}$, and the admissible roots of $H(2-H)s^2-s+1=0$ change whether $0$ belongs to $A_{s;r,q}$. Step 3 exhausts the possible active sets, so no other contact change can occur. The tangency case $4H^2-8H+1=0$ is excluded because neither contact set changes across it.

Final Answer: $\boxed{\{s>0:(2-3H)s=1\}\cup\{s>H^{-1}:H(2-H)s^2-s+1=0,4H^2-8H+1>0\}}$

---

## Answer

$\{s>0:(2-3H)s=1\}\cup\{s>H^{-1}:H(2-H)s^2-s+1=0,4H^2-8H+1>0\}$

---

## Classification

**Problem Type:** Parameter identification

**Answer Type:** Set or multiset of objects

---

## Solution Concepts

- minimum-volume circumscribing ellipsoids
- symmetry reduction of quadratic forms
- KKT active-set analysis
- parametric contact transitions
- envelope maxima
