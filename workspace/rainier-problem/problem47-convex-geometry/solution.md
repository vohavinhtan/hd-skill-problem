## Steps

Step 1: Reduce each ellipsoid problem to three affine constraints
Let $R=\operatorname{diag}(1,-1,1)$. Since $Rv(t)=v(-t)$ and $Rw_{s;r,q}(t)=-w_{s;r,q}(-t)$, uniqueness of the minimum-volume ellipsoid gives $R^{\mathsf T}Q_{s;r,q}R=Q_{s;r,q}$. The matrix therefore has the form
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
For $\tau=t^2\in[0,1]$,
$$
v(t)^{\mathsf T}Q_{s;r,q}v(t)
=\alpha+(\beta+2\delta)\tau+\gamma\tau^2.
$$
This quadratic is strictly convex because $\gamma>0$, so its maximum on $[0,1]$ is attained at an endpoint. Put
$$
H(r,q):=\max_{0\leq\tau\leq1}\tau(r-q\tau)^2.
$$
Since
$$
w_{s;r,q}(t)^{\mathsf T}Q_{s;r,q}w_{s;r,q}(t)
=\frac{\beta+\gamma\tau(r-q\tau)^2}{s},
$$
containment is equivalent to
$$
\alpha\leq1,
\qquad
\alpha+\beta+2\delta+\gamma\leq1,
\qquad
\beta+H(r,q)\gamma\leq s. \tag{1}
$$
The ellipsoid volume is a positive constant times $(\det Q)^{-1/2}$, so the objective is to maximize
$$
\log\det Q=\log\beta+\log D. \tag{2}
$$
The positive-definite cone is convex, (2) is strictly concave, and the constraints in (1) are affine. Positive definiteness and (1) give
$$
0<\alpha\leq1,
\qquad
0<\beta\leq s,
\qquad
0<\gamma\leq\frac{s}{H(r,q)},
\qquad
|\delta|<\sqrt{\alpha\gamma}.
$$
The feasible set is bounded, and $\log\det Q$ tends to $-\infty$ at its singular boundary, so the maximum is attained. For sufficiently small $\varepsilon>0$, $Q=\varepsilon I_3$ satisfies all three inequalities strictly. Slater's condition applies, and the KKT conditions are necessary and sufficient. This supplies a global optimality certificate for every active set used below.

Step 2: Identify the two hidden maximum values
Write $\rho=r/q$. The function
$$
h(\tau)=\tau(r-q\tau)^2
$$
has an interior critical maximum at
$$
\tau_* =\frac{r}{3q},
\qquad
h(\tau_*)=\frac{4r^3}{27q},
$$
provided $0<\rho<3$. Its endpoint value is $(r-q)^2$. Their difference is
$$
\frac{4r^3}{27q}-(r-q)^2
=\frac{q^2}{27}(\rho-3)^2(4\rho-3). \tag{3}
$$
It follows from (3) that the interior point is the unique maximizing type when
$$
\frac34<\rho<3. \tag{4}
$$

The definitions of $a$ and $b$ give
$$
\frac{a}{b}=\left(\frac{x}{y}\right)^{1/4}.
$$
The restriction $1<x/y<256/81=(4/3)^4$ yields
$$
1<\frac{a}{b}<\frac43,
\qquad
\frac34<\frac{b}{a}<1.
$$
Condition (4) applies to both ordered pairs. The definitions also give
$$
ab=\frac{27}{4}\sqrt P,
\qquad
\left(\frac{a}{b}\right)^2=\sqrt{\frac{x}{y}},
\qquad
xy=P.
$$
These identities yield
$$
H(a,b)=\frac{4a^3}{27b}
=\frac{4}{27}(ab)\left(\frac{a}{b}\right)^2=x,
$$
and interchange of $a,b$ gives the explicit identity
$$
H(b,a)=\frac{4b^3}{27a}
=\frac{4}{27}(ab)\left(\frac{b}{a}\right)^2=y. \tag{5}
$$
Equation (5) is the bridge between the convex optimization and the symmetric root coordinates.

Step 3: Solve the one-parameter active-set problem
Fix $H>0$. Let $\lambda_0,\lambda_1,\mu\geq0$ be the multipliers for the three inequalities in (1), in order. Differentiating the Lagrangian for (2) gives
$$
\frac{\gamma}{D}=\lambda_0+\lambda_1,
\qquad
-\frac{\delta}{D}=\lambda_1,
\qquad
\frac1\beta=\lambda_1+\mu,
\qquad
\frac{\alpha}{D}=\lambda_1+H\mu. \tag{6}
$$
The middle constraint is always active. If $\lambda_1=0$, then (6) gives $\delta=0$ and $\lambda_0>0$, so $\alpha=1$; this would make
$$
\alpha+\beta+2\delta+\gamma=1+\beta+\gamma>1,
$$
which is impossible.

First suppose the third constraint is slack, so $\mu=0$. Equations (6), the active middle constraint, and complementary slackness give
$$
\delta=-\alpha,
\qquad
\gamma-\alpha=\beta,
\qquad
2\beta=1,
\qquad
\alpha=1.
$$
The entries are
$$
(\alpha,\beta,\gamma,\delta)=left(1,\frac12,\frac32,-1\right),
$$
and the third constraint becomes inactive exactly for
$$
s>s_1(H):=\frac{1+3H}{2}. \tag{7}
$$

Next suppose the first constraint is slack, so $\lambda_0=0$, while the middle and third constraints are active. Equations (6) give
$$
\delta=-\gamma,
\qquad
\alpha=1-\beta+\gamma,
\qquad
\gamma=\frac{\beta(1-\beta)}{H(1-2\beta)},
\qquad
s=\frac{\beta(2-3\beta)}{1-2\beta}. \tag{8}
$$
Dual feasibility requires $0<\beta<1/2$. The condition $\alpha<1$ is equivalent to
$$
1-\beta<H(1-2\beta). \tag{9}
$$
For $H\leq1$, inequality (9) is impossible. For $H>1$, it becomes
$$
0<\beta<\frac{H-1}{2H-1}.
$$
The last expression in (8) is strictly increasing on $(0,1/2)$ because its derivative is
$$
\frac{2-6\beta+6\beta^2}{(1-2\beta)^2}>0.
$$
At the upper endpoint of the allowed interval, it equals
$$
s_0(H):=\frac{H^2-1}{2H-1}. \tag{10}
$$
There is no phase in which only the middle constraint is active: setting $\lambda_0=\mu=0$ in (6) forces $\delta=-\gamma$ and $\alpha=\gamma$, contradicting $D>0$. KKT sufficiency now leaves the all-three-active phase between the two regimes already found.

Let
$$
L=(2,2,0),
\qquad
M=(3,2,0),
\qquad
U=(3,0,0).
$$
The strictly convex quadratic $\alpha+(\beta+2\delta)\tau+\gamma\tau^2$ shows that these are exactly the contact signatures for, respectively, the last-two-active, all-three-active, and first-two-active regimes. Reading in increasing order of $s$ gives
$$
\begin{array}{c|c|c}
\text{condition}&\text{transition values}&\text{phase word}\\
\hline
0<H\leq1&s_1(H)&(M,U)\\
H>1&s_0(H)<s_1(H)&(L,M,U).
\end{array} \tag{11}
$$
The inequality in the second row follows from
$$
s_1(H)-s_0(H)=\frac{4H^2-H+1}{2(2H-1)}>0. \tag{12}
$$

Step 4: Classify every merged-word bifurcation
Since $x>y$, equation (7) gives
$$
s_1(y)<s_1(x). \tag{13}
$$
For $H>1$,
$$
s_0'(H)=\frac{2(H^2-H+1)}{(2H-1)^2}>0, \tag{14}
$$
so $s_0(y)<s_0(x)$ whenever both values exist. Equations (12)-(14) fix every relative order except possibly that of $s_0(x)$ and $s_1(y)$. The alternative equality $s_0(y)=s_1(x)$ cannot occur: if $y>1$, then
$$
s_0(y)<s_1(y)<s_1(x),
$$
and if $y\leq1$, the transition $s_0(y)$ does not exist.

There are therefore exactly two mechanisms by which the merged word can change locally:
$$
x=1\text{ or }y=1, \tag{15}
$$
where an $L$-phase appears or disappears, and
$$
s_0(x)=s_1(y), \tag{16}
$$
where two existing transitions exchange order. The crossing in (16) is genuine. Immediately around the two transition values, the relevant part of the merged word is
$$
(L,M),(M,M),(M,U)
$$
on one side and
$$
(L,M),(L,U),(M,U)
$$
on the other side; at equality the middle letter disappears because both coordinates change simultaneously.

Away from (15) and (16), the existence of each transition and the strict ordering of all transition values persist on a neighborhood. Both individual contact types also remain interior throughout $\mathcal U$, so the merged word is locally constant there. This proves both necessity and sufficiency of (15)-(16), rather than only producing candidate curves.

Step 5: Pass to the normalized polynomial in $S$ and $P$
Since $x+y=S$ and $xy=P$, condition (15) is
$$
(x-1)(y-1)=P-S+1=0,
$$
whose normalized defining factor is $S-P-1$.

Using (7) and (10), condition (16) becomes
$$
\frac{x^2-1}{2x-1}=\frac{1+3y}{2},
$$
or
$$
R(x,y):=2x^2-2x-6xy+3y-1=0. \tag{17}
$$
Substituting $y=S-x$, $xy=P$, and $x^2=Sx-P$ into (17) gives
$$
R(x,y)=(2S-5)x+3S-8P-1. \tag{18}
$$
The conjugate expression is obtained by replacing $x$ by $y$. Their product is
$$
\begin{aligned}
R(x,y)R(y,x)
&=(2S-5)^2P+(2S-5)(3S-8P-1)S\\
&\quad +(3S-8P-1)^2\\
&=6S^3-12S^2P-8S^2-28SP-S+64P^2+41P+1.
\end{aligned} \tag{19}
$$
This calculation is an explicit norm certificate, so no implicit resultant is being used.

The cubic in (19) is primitive as a polynomial in $P$ over $\mathbb Q[S]$. Viewed as a quadratic in $P$, it has discriminant
$$
3(2S-5)^2(12S^2-12S+19). \tag{20}
$$
The factor $3(12S^2-12S+19)=36S^2-36S+57$ is not the square of a polynomial in $\mathbb Q[S]$. Therefore (20) is not a square in $\mathbb Q[S]$, and the cubic is irreducible in $\mathbb Q[S,P]$.

Both factors contain genuine arcs from $\mathscr E$. For the linear factor, $x=1$, $y=1/2$ lies in $\mathcal U$. For the cubic factor, the exact point
$$
x=20,
\qquad
y=\frac{253}{39}
$$
satisfies $R(x,y)=0$ and
$$
1<\frac{x}{y}=\frac{780}{253}<\frac{256}{81}.
$$
At this point $\partial R/\partial x=4x-2-6y\neq0$, so the crossing set contains a real arc. The map $(x,y)\mapsto(S,P)=(x+y,xy)$ has Jacobian $x-y\neq0$ on $\mathcal U$, and therefore sends this arc to a real arc in $\mathcal U$. A polynomial vanishing on such an arc vanishes identically on its irreducible ambient curve, so each arc is Zariski dense there. The two factors are distinct because substituting $S=P+1$ into the cubic gives
$$
-2(3P+1)(P^2-4P+1),
$$
which is not identically zero.

Any integer polynomial vanishing on $\mathscr E$ must therefore be divisible by both primitive irreducible factors. Their product is primitive and squarefree, has the least possible total degree, and has positive leading term $6S^4$ in lexicographic order $S>P$.
Final Answer: $\boxed{F_{\mathscr E}(S,P)=(S-P-1)(6S^3-12S^2P-8S^2-28SP-S+64P^2+41P+1)}$

---

## Answer

$F_{\mathscr E}(S,P)=(S-P-1)(6S^3-12S^2P-8S^2-28SP-S+64P^2+41P+1)$

---

## Classification

**Domain/Sub-domain:** Topology and Geometry / Convex geometry

**Problem Type:** Canonicalization or normalization

**Answer Type:** Polynomial or rational function

---

## Concepts (1–5)

- Minimum-volume circumscribing ellipsoids
- Karush Kuhn Tucker active-set analysis
- Coupled transition ordering
- Symmetric polynomial norms
- Zariski closure and irreducibility

---

## Black-Box Audit

No Level 2 or Level 3 black-box issues were found. The KKT system, active-set exhaustion, transition ordering, symmetric norm, irreducibility test, and Zariski-density certificates are all displayed in the numbered steps.
