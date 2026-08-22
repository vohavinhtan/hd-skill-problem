## Steps

Step 1: Introduce a signed fourth-root coordinate

We have
$$
g'(t)=\frac{t^3}{1-t}.
$$
For $t<1$, the denominator is positive. Hence $g$ decreases on $(-\infty,0)$, increases on $(0,1)$, and has minimum value $0$ at $0$. This proves the stated uniqueness of $y(x)$.

Near $0$,
$$
4g(t)=t^4+\frac45t^5+\frac23t^6+\frac47t^7+\cdots.
$$
Write
$$
4g(t)=t^4B(t),
\qquad
B(0)=1.
$$
Define
$$
u=tB(t)^{1/4}.
$$
This is analytic near $0$, satisfies $u'(0)=1$, and obeys
$$
u^4=4g(t).
$$
Let
$$
t=\tau(u)
$$
be its local analytic inverse. If
$$
U=(4g(x))^{1/4}>0,
$$
then
$$
x=\tau(U),
\qquad
y(x)=\tau(-U).
$$

Step 2: Compute the inverse coefficients needed later

Write
$$
\tau(u)=u+a_2u^2+a_3u^3+a_4u^4+a_5u^5+a_6u^6+a_7u^7+O(u^8).
$$
Differentiating
$$
u^4=4g(\tau(u))
$$
and using $g'(t)=t^3/(1-t)$ gives
$$
\tau(u)^3\tau'(u)=u^3\bigl(1-\tau(u)\bigr).
$$
Coefficient comparison from $u^4$ through $u^9$ gives
$$
5a_2+1=0,
$$
$$
6a_3+9a_2^2+a_2=0,
$$
$$
7a_4+7a_2^3+21a_2a_3+a_3=0,
$$
$$
8a_5+2a_2^4+24a_2^2a_3+24a_2a_4+12a_3^2+a_4=0,
$$
$$
9a_6+9a_2^3a_3+27a_2^2a_4+27a_2a_3^2+27a_2a_5+27a_3a_4+a_5=0,
$$
and
$$
10a_7+10a_2^3a_4+15a_2^2a_3^2+30a_2^2a_5
+60a_2a_3a_4+30a_2a_6+10a_3^3+30a_3a_5+15a_4^2+a_6=0.
$$
Solving successively,
$$
a_2=-\frac15,
\qquad
a_3=-\frac2{75},
\qquad
a_4=-\frac{11}{2625},
$$
$$
a_5=-\frac9{35000},
\qquad
a_6=\frac{67}{262500},
\qquad
a_7=\frac{15581}{82687500}.
$$

Step 3: Expand the branch sum and the averaged integral

Put
$$
q=U^2.
$$
The branch sum is
$$
x+y(x)=\tau(U)+\tau(-U).
$$
Only even coefficients remain, so
$$
x+y(x)=
2a_2q+2a_4q^2+2a_6q^3+O(q^4).
$$
Using Step 2,
$$
x+y(x)=
-\frac25q-\frac{22}{2625}q^2+\frac{67}{131250}q^3+O(q^4).
$$

For $M(x)$, substitute $t=\tau(v)$. Since $g(\tau(v))=v^4/4$,
$$
\int_{y(x)}^xg(t)\,dt
=
\frac14\int_{-U}^{U}v^4\tau'(v)\,dv.
$$
Also
$$
g(x)\bigl(x-y(x)\bigr)
=
\frac{U^4}{4}\bigl(\tau(U)-\tau(-U)\bigr).
$$
Only odd coefficients of $\tau$ enter both expressions. Hence
$$
M(x)=
\frac{
\displaystyle
\sum_{m\geq0}
\frac{2m+1}{2m+5}a_{2m+1}q^m
}
{
\displaystyle
\sum_{m\geq0}
a_{2m+1}q^m
}.
$$
Using $a_1=1$ and the odd coefficients from Step 2,
$$
M(x)=
\frac15-\frac{16}{2625}q
-\frac2{7875}q^2
+\frac{84004}{1136953125}q^3
+O(q^4).
$$
Define
$$
D(q)=
\frac{2625}{16}
\left(
\frac15-M(x)
\right).
$$
Then
$$
D(q)=
q+\frac1{24}q^2
-\frac{21001}{1732500}q^3
+O(q^4).
$$

Step 4: Resolve the second implicit branch

Write $z=z(x)$. Its defining equation is
$$
4g(z)=D(q)^2.
$$
Both sides are positive for small $x>0$, so
$$
\sqrt{4g(z)}=D(q).
$$
From the Taylor series of $g$,
$$
\sqrt{4g(z)}
=
z^2+\frac25z^3+\frac{19}{75}z^4
+\frac{484}{2625}z^5
+\frac{4541}{31500}z^6
+O(z^7).
$$
Seek
$$
q=
z^2+b_3z^3+b_4z^4+b_5z^5+b_6z^6+O(z^7).
$$
Substituting this into
$$
D(q)=
q+\frac1{24}q^2
-\frac{21001}{1732500}q^3
+O(q^4)
$$
and matching powers of $z$ gives
$$
b_3=\frac25,
\qquad
b_4=\frac{127}{600},
$$
$$
b_5=\frac{793}{5250},
\qquad
b_6=\frac{1829173}{13860000}.
$$
Thus
$$
q=
z^2+\frac25z^3+\frac{127}{600}z^4
+\frac{793}{5250}z^5
+\frac{1829173}{13860000}z^6
+O(z^7).
$$

Step 5: Compose the two local expansions

From Step 3,
$$
x+y(x)=
-\frac25q-\frac{22}{2625}q^2+\frac{67}{131250}q^3+O(q^4).
$$
Using the series for $q$ from Step 4,
$$
q^2=
z^4+\frac45z^5+\frac{139}{225}z^6+O(z^7),
$$
and
$$
q^3=z^6+O(z^7).
$$
Substitution gives
$$
x+y(x)=
-\frac25z^2
-\frac4{25}z^3
-\frac{977}{10500}z^4
-\frac{881}{13125}z^5
-\frac{132059}{2310000}z^6
+O(z^7).
$$
Therefore
$$
x+y(x)
+\frac25z^2
+\frac4{25}z^3
+\frac{977}{10500}z^4
+\frac{881}{13125}z^5
=
-\frac{132059}{2310000}z^6+O(z^7).
$$
Since $z(x)\to0^+$ as $x\to0^+$, division by $z(x)^6$ gives the requested limit.

Final Answer: $\boxed{-\frac{132059}{2310000}}$

## Answer

$-\frac{132059}{2310000}$

## Classification

**Domain:** Calculus

**Sub-domain:** Limits and continuity

**Problem Type:** Exact computation

**Answer Type:** Exact scalar

## Solution Concepts

- degenerate implicit branches
- signed fourth-root coordinates
- inverse power series
- nested series reversion
- asymptotic limits
