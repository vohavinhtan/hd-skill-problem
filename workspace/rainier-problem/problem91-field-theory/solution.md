## Steps

Step 1: Recover the two Artin-Schreier generators

Put
$$
a=t^{-p}+t^{-2},
\qquad
b=2t^{-p}+t^{-2},
$$
and
$$
Y=X^p-X-a.
$$
Then
$$
F_p(X)=Y^p-b^{p-1}Y.
$$
Since $b\ne0$,
$$
Y^p-b^{p-1}Y=0
$$
is equivalent to
$$
\left(\frac{Y}{b}\right)^p=\frac{Y}{b}.
$$
Hence every root satisfies
$$
X^p-X=a+cb
$$
for some $c\in\mathbb F_p$.

Choose $u,v$ with
$$
u^p-u=a,
\qquad
v^p-v=b.
$$
Then all roots of $F_p$ are
$$
u+cv+d,
\qquad
c,d\in\mathbb F_p.
$$
They are distinct because
$$
F_p'(X)=b^{p-1}\ne0.
$$
Conversely the splitting field contains a root with $c=0$ and the difference between roots belonging to $c=1$ and $c=0$, so it contains both $u$ and $v$. Therefore
$$
L_p=K(u,v).
$$

Step 2: Remove the misleading pole order $p$

Since
$$
(t^{-1})^p-t^{-1}=t^{-p}-t^{-1},
$$
set
$$
u_0=u-t^{-1},
\qquad
v_0=v-2t^{-1}.
$$
Their equations become
$$
u_0^p-u_0=t^{-2}+t^{-1},
$$
and
$$
v_0^p-v_0=t^{-2}+2t^{-1}.
$$

Now put
$$
y=v_0-u_0,
\qquad
z=u_0.
$$
Then
$$
L_p=K(y,z),
$$
with
$$
y^p-y=t^{-1},
$$
and
$$
z^p-z=t^{-2}+t^{-1}.
$$

The first equation has reduced pole order $1$. In particular it defines a totally ramified extension
$$
K_1=K(y)
$$
of degree $p$.

Step 3: Record the local Artin-Schreier different calculation

Let $E$ be a local field of characteristic $p$ with uniformizer $\pi_0$, and suppose
$$
w^p-w=f
$$
where $f$ has pole order $r>0$ with $p\nmid r$.

The equation cannot split over $E$, because if $h$ has a pole then $h^p-h$ has pole order divisible by $p$, while an integral $h$ gives no pole. Hence the extension has degree $p$ and is totally ramified.

Normalize the extended valuation by
$$
v(\pi_0)=p.
$$
Then
$$
v(w)=-r.
$$
Choose integers $A,B$ with
$$
pA-rB=1,
\qquad
1\leq B<p.
$$
The element
$$
\varpi=\pi_0^Aw^B
$$
is a uniformizer. For a nontrivial automorphism
$$
\tau_c(w)=w+c,
\qquad
c\in\mathbb F_p^\times,
$$
the highest power of $w$ in
$$
(w+c)^B-w^B
$$
is $Bc\,w^{B-1}$, whose coefficient is nonzero. Hence
$$
v(\tau_c(\varpi)-\varpi)
=pA-(B-1)r
=r+1.
$$
Summing over the $p-1$ nontrivial automorphisms gives
$$
d=(p-1)(r+1).
$$

Applying this to
$$
y^p-y=t^{-1}
$$
gives
$$
d(K_1/K)=2(p-1).
$$
Also, with the valuation of $K_1$ normalized integrally,
$$
v_{K_1}(t)=p,
\qquad
v_{K_1}(y)=-1.
$$

Step 4: Reduce the second Artin-Schreier equation over $K_1$

From Step 2,
$$
z^p-z=t^{-2}+t^{-1}.
$$
Using
$$
t^{-1}=y^p-y,
$$
the right side becomes
$$
(y^p-y)^2+(y^p-y).
$$
Expanding,
$$
t^{-2}+t^{-1}
=
y^{2p}-2y^{p+1}+y^2+y^p-y.
$$

Now
$$
(y^2+y)^p-(y^2+y)
=
y^{2p}+y^p-y^2-y.
$$
Set
$$
z_1=z-y^2-y.
$$
Subtracting the two Artin-Schreier coboundaries gives
$$
z_1^p-z_1
=
-2y^{p+1}+2y^2.
$$

By Step 3,
$$
v_{K_1}(y)=-1.
$$
Therefore the right side has pole order exactly
$$
p+1.
$$
Since
$$
p\nmid p+1,
$$
this is already reduced. The extension
$$
L_p=K_1(z_1)
$$
has degree $p$, and Step 3 gives
$$
d(L_p/K_1)
=
(p-1)(p+2).
$$

Step 5: Combine the two wild differents

The tower
$$
K\subset K_1\subset L_p
$$
has
$$
e(L_p/K_1)=p.
$$
For a tower of finite separable local extensions,
$$
d(L_p/K)
=
d(L_p/K_1)
+
e(L_p/K_1)d(K_1/K).
$$
Using Steps 3 and 4,
$$
d_p
=
(p-1)(p+2)
+
2p(p-1).
$$
Factoring gives
$$
d_p=(p-1)(3p+2).
$$

Final Answer: $\boxed{(p-1)(3p+2)}$

---

## Answer

$(p-1)(3p+2)$

---

## Classification

**Problem Type:** Exact computation

**Answer Type:** Exact scalar

---

## Solution Concepts

- Artin-Schreier extensions
- local field valuations
- ramification breaks
- different exponents
- tower law for differents
