## Steps

Step 1: Recover the reciprocal parametrization of the roots

For every nonzero $z$, induction on the recurrence gives
$$
P_r(z+z^{-1})=z^r+z^{-r}.
$$
Indeed the identity holds for $r=0,1$, and multiplying the $r$th identity by $z+z^{-1}$ and subtracting the $(r-1)$st gives the $(r+1)$st.

Let $x$ be a root of $F_p$. Choose $z\ne0$ satisfying
$$
z+z^{-1}=x.
$$
Then
$$
z^n+z^{-n}=2t^3.
$$
Writing
$$
u=z^n
$$
gives
$$
u^2-2t^3u+1=0.
$$
Set
$$
s=u-t^3.
$$
Then
$$
s^2=t^6-1,
\qquad
u=t^3+s.
$$

Conversely, if
$$
s^2=t^6-1,
\qquad
z^n=t^3+s,
$$
then
$$
z^{-n}=t^3-s
$$
because
$$
(t^3+s)(t^3-s)=1.
$$
Hence
$$
P_n(z+z^{-1})=z^n+z^{-n}=2t^3.
$$

Thus the roots arise from the two equations
$$
s^2=t^6-1,
\qquad
z^n=t^3+s.
$$

Step 2: Compute the genus of the field containing the reciprocal parameters

Put
$$
K=\mathbb F_p(t),
\qquad
E=K(s),
\qquad
M=E(z),
$$
where
$$
s^2=t^6-1,
\qquad
z^n=t^3+s.
$$

The polynomial $t^6-1$ has six distinct roots because $p\geq7$. The quadratic map from the smooth projective curve of $E$ to the $t$-line is ramified at exactly these six finite places and not at infinity. Riemann-Hurwitz gives
$$
2g(E)-2=2(-2)+6=2,
$$
so
$$
g(E)=2.
$$

Let
$$
f=t^3+s.
$$
There are two places of $E$ above infinity, denoted $P_+$ and $P_-$ according as $s/t^3$ tends to $1$ or $-1$. At $P_+$, the function $f$ has a pole of order $3$. Since
$$
f(t^3-s)=1,
$$
it has a zero of order $3$ at $P_-$ and no other zeros or poles. Therefore
$$
\operatorname{div}(f)=3P_--3P_+.
$$

The class of $f$ in $E^\times/E^{\times n}$ has order exactly $n$. To see this, suppose
$$
f^d=h^n
$$
with $0<d<n$. Comparing valuations at $P_+$ gives
$$
n\mid3d.
$$
If $3\nmid n$, this forces $n\mid d$, impossible. If $3\mid n$, the only possibilities below $n$ are
$$
d=\frac n3
\qquad\text{or}\qquad
d=\frac{2n}{3}.
$$
They would make either $P_--P_+$ or $2(P_--P_+)$ principal. Since $3(P_--P_+)$ is principal, either possibility would make $P_--P_+$ principal. A function with divisor $P_--P_+$ would define a degree-one map from the genus-two curve of $E$ to the projective line, which is impossible.

Since $n\mid p-1$, all $n$th roots of unity lie in $\mathbb F_p$. Hence
$$
[M:E]=n.
$$

Step 3: Determine the ramification and genus of $M$

Put
$$
g=\gcd(n,3).
$$
The extension $M/E$ is tame because $p\nmid n$. At a place where $f$ has valuation $m$, the ramification index in
$$
z^n=f
$$
is
$$
\frac{n}{\gcd(n,m)}.
$$
Indeed the valuation equation
$$
n\,v_Q(z)=e_Qm
$$
shows that $n/\gcd(n,m)$ divides $e_Q$, while adjoining an $n$th root after removing the common divisor realizes that index.

Thus only $P_+$ and $P_-$ ramify, both with index
$$
\frac ng.
$$
Over either place there are $g$ geometric points, so its total different contribution is
$$
g\left(\frac ng-1\right)=n-g.
$$
Riemann-Hurwitz for $M/E$ therefore gives
$$
2g(M)-2=n(2g(E)-2)+2(n-g).
$$
Using $g(E)=2$ from Step 2,
$$
2g(M)-2=2n+2n-2g=4n-2g.
$$
Hence
$$
g(M)=2n-g+1.
$$

Step 4: Identify the actual splitting field inside $M$

Choose $\zeta\in\mathbb F_p$ of order $n$. The $n$ elements
$$
x_k=\zeta^kz+\zeta^{-k}z^{-1},
\qquad
0\leq k<n,
$$
satisfy
$$
P_n(x_k)=z^n+z^{-n}=2t^3.
$$
They are distinct. If $x_i=x_j$, then
$$
\zeta^iz=\zeta^jz
$$
or
$$
\zeta^{i+j}z^2=1.
$$
The first gives $i=j$, while the second would make $z^{2n}$ constant, contrary to
$$
z^{2n}=(t^3+s)^2.
$$
Since $P_n$ has degree $n$, these are all roots of $F_p$.

Define an automorphism of $M$ by
$$
\tau(t)=t,\qquad \tau(s)=-s,\qquad \tau(z)=z^{-1}.
$$
It is well defined because
$$
(z^{-1})^n=t^3-s.
$$
Moreover
$$
\tau(x_k)=x_k
$$
for every $k$. Hence the splitting field $L_p$ is contained in $M^{\langle\tau\rangle}$.

Conversely,
$$
x_0=z+z^{-1}\in L_p,
$$
so $z$ satisfies
$$
Z^2-x_0Z+1=0
$$
over $L_p$. Also
$$
s=z^n-t^3.
$$
Therefore
$$
M=L_p(z)
$$
and
$$
[M:L_p]\leq2.
$$
The automorphism $\tau$ is nontrivial and fixes $L_p$, so
$$
[M:L_p]=2,
\qquad
L_p=M^{\langle\tau\rangle}.
$$

Step 5: Count the fixed points of the involution and compute the genus

A geometric point of $M$ fixed by $\tau$ must lie above a point of $E$ fixed by
$$
s\mapsto-s.
$$
The two places at infinity are exchanged, while the finite fixed points are exactly
$$
s=0,
\qquad
t^6=1.
$$
There are six of them.

At such a point,
$$
z^n=t^3\in\{1,-1\},
$$
and $M/E$ is unramified there. A point above it is fixed by $\tau$ exactly when
$$
z=z^{-1},
$$
so $z=\pm1$.

If $n$ is odd, each of the three points with $t^3=1$ has the fixed lift $z=1$, and each of the three with $t^3=-1$ has the fixed lift $z=-1$. If $n$ is even, each point with $t^3=1$ has the two fixed lifts $z=\pm1$, while the points with $t^3=-1$ have none. In either case $\tau$ has exactly
$$
6
$$
fixed geometric points.

Since $p$ is odd, the quadratic extension $M/L_p$ is tame, and these six fixed points are exactly its ramified points. Riemann-Hurwitz gives
$$
2g(M)-2=2(2g(L_p)-2)+6.
$$
Using Step 3,
$$
4n-2g=4g(L_p)+2.
$$
Therefore
$$
g(L_p)=\frac{2n-g-1}{2}.
$$
Finally,
$$
n=\frac{p-1}{2},
\qquad
g=\gcd\left(\frac{p-1}{2},3\right),
$$
so
$$
g(L_p)=\frac{p-2-\gcd((p-1)/2,3)}{2}.
$$

Final Answer: $\boxed{\frac{p-2-\gcd((p-1)/2,3)}{2}}$

---

## Answer

$\frac{p-2-\gcd((p-1)/2,3)}{2}$

---

## Classification

**Problem Type:** Exact computation

**Answer Type:** Exact scalar

---

## Solution Concepts

- finite function fields
- reciprocal parametrization
- Kummer extensions
- ramification of involutions
- Riemann-Hurwitz
