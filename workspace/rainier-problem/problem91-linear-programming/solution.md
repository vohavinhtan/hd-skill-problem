## Steps

Step 1: Reduce the point-weight LP by an affine symmetry

For $a\in\mathbb F_p^{\times}$ and $b\in\mathbb F_p$, define
$$
T_{a,b}(x,y)=(ax+b,a^2y+2abx+b^2).
$$
Then
$$
\bigl(a^2y+2abx+b^2\bigr)-(ax+b)^2=a^2(y-x^2),
$$
so $T_{a,b}$ preserves whether $y-x^2$ is zero, a nonzero square, or a nonsquare. It also maps vertical lines to vertical lines and nonvertical affine lines to nonvertical affine lines. Hence averaging any feasible family over all $T_{a,b}$ preserves feasibility and the objective.

The action is transitive on each of the three classes. Indeed, if $d=y-x^2$ and $d'=y'-x'^2$ have the same quadratic-character class, choose $a$ with $a^2d=d'$ when $d\neq0$, and then choose $b=x'-ax$; the case $d=d'=0$ is immediate. Thus the optimal value is attained by a family taking constant values
$$
a,\qquad b,\qquad c
$$
on the classes
$$
y=x^2,\qquad \chi(y-x^2)=1,\qquad \chi(y-x^2)=-1,
$$
respectively.

There are $p$ points in the first class and $p(p-1)/2$ in each of the other two. Therefore the objective becomes
$$
p a+\frac{p(p-1)}{2}\left(\lambda b+\lambda^3c\right).
$$

Step 2: Derive the line-incidence constraints

Consider a nonvertical line $y=mx+d$. Put
$$
\Delta=m^2+4d.
$$
After replacing $x$ by $u+m/2$,
$$
y-x^2=\frac{\Delta}{4}-u^2.
$$
If $\Delta=0$, there is one point with $y=x^2$. Since $p\equiv1\pmod{4}$, one has $\chi(-1)=1$, so all other $p-1$ points satisfy $\chi(y-x^2)=1$.

Now suppose $\Delta\neq0$ and write $A=\Delta/4$. Choose $i\in\mathbb F_p$ with $i^2=-1$. The number of pairs $(u,v)$ satisfying
$$
u^2+v^2=A
$$
is $p-1$: for every $s\in\mathbb F_p^{\times}$, the equations
$$
u+iv=s,\qquad u-iv=\frac{A}{s}
$$
determine a unique pair. On the other hand this number equals
$$
\sum_{u\in\mathbb F_p}\left(1+\chi(A-u^2)\right).
$$
Hence
$$
\sum_{u\in\mathbb F_p}\chi(A-u^2)=-1.
$$
Combining this with the number of zeros gives the three nonvertical line types
$$
\begin{array}{c|ccc}
&y=x^2&\chi(y-x^2)=1&\chi(y-x^2)=-1\\ \hline
\Delta=0&1&p-1&0\\
\chi(\Delta)=1&2&\frac{p-3}{2}&\frac{p-1}{2}\\
\chi(\Delta)=-1&0&\frac{p-1}{2}&\frac{p+1}{2}.
\end{array}
$$
A vertical line contains one point of the first class and $(p-1)/2$ points of each other class.

Consequently the original LP has the same optimal value as the three-variable LP
$$
\max\ p a+\frac{p(p-1)}{2}\left(\lambda b+\lambda^3c\right)
$$
subject to
$$
a+(p-1)b\leq1,
$$
$$
2a+\frac{p-3}{2}b+\frac{p-1}{2}c\leq1,
$$
$$
\frac{p-1}{2}b+\frac{p+1}{2}c\leq1,
$$
$$
a+\frac{p-1}{2}(b+c)\leq\frac{9}{10},
$$
and $a,b,c\geq0$.

Step 3: Certify the optimizer before the transition

Define
$$
Q_p(\lambda)=(3p-1)\lambda^3+(p-1)\lambda-2(p-1).
$$
The dual of the reduced LP minimizes
$$
y_T+y_S+y_E+\frac{9}{10}y_V
$$
over nonnegative multipliers subject to
$$
y_T+2y_S+y_V\geq p,
$$
$$
(p-1)y_T+\frac{p-3}{2}y_S+\frac{p-1}{2}y_E+\frac{p-1}{2}y_V
\geq\frac{p(p-1)}{2}\lambda,
$$
$$
\frac{p-1}{2}y_S+\frac{p+1}{2}y_E+\frac{p-1}{2}y_V
\geq\frac{p(p-1)}{2}\lambda^3.
$$

Consider
$$
(a_-,b_-,c_-)
=
\left(\frac{p+1}{3p-1},\frac{2}{3p-1},0\right).
$$
The first two primal constraints are equalities, while the third left side is $(p-1)/(3p-1)<1$ and the fourth is $2p/(3p-1)<9/10$. Thus this point is feasible.

Set $y_E=y_V=0$ and
$$
y_T=\frac{p\left(2\lambda p-2\lambda-p+3\right)}{3p-1},
$$
$$
y_S=\frac{p(2-\lambda)(p-1)}{3p-1}.
$$
They are positive for $\frac{1}{2}<\lambda<1$. The first two dual coordinate constraints are equalities, while the slack in the third is
$$
-\frac{p(p-1)}{2(3p-1)}Q_p(\lambda).
$$
Hence this dual point is feasible exactly when $Q_p(\lambda)\leq0$. Its objective equals the primal value because the first two primal constraints are tight. Therefore, whenever $Q_p(\lambda)\leq0$,
$$
V_p(\lambda)
=
\frac{p\left(p+1+(p-1)\lambda\right)}{3p-1}.
$$

Step 4: Certify the optimizer after the transition and locate the kink

Now consider
$$
(a_+,b_+,c_+)
=
\left(
\frac{p+9}{10p},
\frac{9}{10p},
\frac{7p-9}{10p(p-1)}
\right).
$$
The first, second, and fourth primal constraints are equalities, and the third left side is
$$
\frac{4p-5}{5(p-1)}<1.
$$
Thus this point is feasible.

Set $y_E=0$ and
$$
y_T=
\frac{(1-\lambda)\left(\lambda^2p+\lambda^2+\lambda p+\lambda+2\right)}{2},
$$
$$
y_S=
\frac{(1-\lambda)(p-1)(\lambda^2+\lambda+2)}{2},
$$
$$
y_V=\frac{Q_p(\lambda)}{2}.
$$
The first two are positive on $(\frac{1}{2},1)$, and $y_V\geq0$ exactly when $Q_p(\lambda)\geq0$. Substitution shows equality in all three dual coordinate constraints, so these multipliers certify
$$
V_p(\lambda)
=
\frac{2(p+9)+9(p-1)\lambda+(7p-9)\lambda^3}{20}
$$
whenever $Q_p(\lambda)\geq0$.

Also
$$
Q_p'(\lambda)=3(3p-1)\lambda^2+(p-1)>0,
$$
while
$$
8Q_p\left(\frac{1}{2}\right)=-9p+11<0,
\qquad
Q_p(1)=2p>0.
$$
Hence $Q_p$ has a unique zero $\Lambda_p\in(\frac{1}{2},1)$.

The two displayed formulas for $V_p$ differ by
$$
-\frac{7p-9}{20(3p-1)}Q_p(\lambda).
$$
Their derivatives therefore differ at $\Lambda_p$, because $Q_p'(\Lambda_p)>0$. Thus $V_p$ is differentiable on each side and has exactly one nondifferentiability point, namely $\Lambda_p$.

Step 5: Determine the primitive irreducible relation

The unique transition point satisfies
$$
(3p-1)\Lambda_p^3+(p-1)\Lambda_p-2(p-1)=0.
$$
Therefore set
$$
F(p,z)=(3p-1)z^3+(p-1)z-2(p-1).
$$
Its coefficient of $pz^3$ is $3>0$.

Viewed as a polynomial in $p$ over $\mathbb Q[z]$,
$$
F(p,z)=p(3z^3+z-2)+(-z^3-z+2).
$$
The two coefficient polynomials are coprime: any common divisor would divide their difference $2z^3$, but $-z^3-z+2$ is not divisible by $z$. Thus $F$ is primitive in $\mathbb Q[z][p]$ and has degree $1$ in $p$, so it is irreducible over $\mathbb Q(z)$ and hence over $\mathbb Z[p,z]$ by Gauss's lemma. Its integer content is $1$.

Final Answer: $\boxed{(3p-1)z^3+(p-1)z-2(p-1)}$

---

## Answer

$(3p-1)z^3+(p-1)z-2(p-1)$

---

## Classification

**Problem Type:** Parameter identification

**Answer Type:** Polynomial or rational function

---

## Solution Concepts

- affine symmetry reduction
- quadratic character sums
- finite incidence geometry
- linear-programming dual certificates
- polynomial irreducibility
