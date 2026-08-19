## Steps

Step 1: Recover the hidden dihedral group

Choose a generator
$$
\zeta\in\mathbb F_p^\times
$$
and put
$$
\eta=\zeta^2.
$$
Then $\eta$ has order
$$
q=\frac m2.
$$

Define automorphisms of $L$ by
$$
\rho(x)=\eta x,
\qquad
\rho(y)=\eta^{-1}y,
$$
and
$$
\tau(x)=y,
\qquad
\tau(y)=x.
$$
They preserve
$$
x^m+y^m=1
$$
because
$$
\eta^m=1.
$$
Moreover
$$
\rho^q=1,
\qquad
\tau^2=1,
\qquad
\tau\rho\tau=\rho^{-1}.
$$
Hence
$$
H=\langle\rho,\tau\rangle
$$
is dihedral of order
$$
2q=m.
$$

Put
$$
r=xy,
\qquad
z=x^q+y^q.
$$
Both are fixed by $\rho$ and $\tau$, so
$$
K_p\subseteq L^H.
$$
Therefore
$$
[L:K_p]\geq|H|=m.
$$

Step 2: Prove that these two invariants already generate the fixed field

Set
$$
A=x^q,
\qquad
B=y^q.
$$
From the definitions of $r$ and $z$,
$$
A+B=z
$$
and
$$
AB=(xy)^q=r^q.
$$
Thus $A$ and $B$ are the roots of
$$
T^2-zT+r^q.
$$
Consequently
$$
[K_p(A):K_p]\leq2.
$$

Since
$$
x^q=A,
$$
we have
$$
[K_p(A,x):K_p(A)]\leq q.
$$
Finally
$$
y=\frac r x,
$$
so
$$
L=K_p(A,x).
$$
Hence
$$
[L:K_p]\leq2q=m.
$$
Together with Step 1 this gives
$$
[L:K_p]=m
$$
and therefore
$$
K_p=L^H.
$$

Step 3: Compute the genus of the Fermat field

Work over an algebraic closure of $\mathbb F_p$; genus is unchanged by extending constants.

The map given by $x$ has degree $m$, since
$$
y^m=1-x^m.
$$
The $m$ zeros of $1-x^m$ are simple because
$$
p\nmid m.
$$
Each is totally ramified with index $m$.

At infinity, the pole order of $1-x^m$ is $m$, so there is no ramification there. Thus Riemann-Hurwitz gives
$$
2g(L)-2
=
-2m+m(m-1).
$$
Therefore
$$
2g(L)-2=m^2-3m.
$$

Step 4: Count the fixed points of the nontrivial rotations

Use the smooth projective model
$$
X^m+Y^m=Z^m.
$$

Consider
$$
\rho^j:
[X:Y:Z]\mapsto
[\eta^jX:\eta^{-j}Y:Z],
\qquad
1\leq j<q.
$$

At an affine point $Z\ne0$, a fixed point would require
$$
\eta^jX=X,
\qquad
\eta^{-j}Y=Y.
$$
Since $\eta^j\ne1$, this forces
$$
X=Y=0,
$$
which is impossible on the curve.

At infinity, both $X$ and $Y$ are nonzero. Such a point is fixed projectively exactly when
$$
\eta^j=\eta^{-j},
$$
or equivalently
$$
\eta^{2j}=1.
$$

If $q$ is odd, no nontrivial rotation satisfies this.

If $q$ is even, the unique possibility is
$$
j=\frac q2.
$$
Then
$$
\eta^j=-1,
$$
and $\rho^{q/2}$ fixes every point at infinity. There are exactly $m$ such points, since
$$
\left(\frac XY\right)^m=-1.
$$

Thus the total fixed-point contribution from nontrivial rotations is
$$
0
$$
when $q$ is odd, and
$$
m
$$
when $q$ is even.

Step 5: Count the fixed points of the reflections

The $q$ reflections are
$$
\tau\rho^j,
\qquad
0\leq j<q.
$$
Such a reflection acts by
$$
[X:Y:Z]
\mapsto
[\eta^{-j}Y:\eta^jX:Z].
$$

At an affine fixed point,
$$
X=\eta^{-j}Y.
$$
Because $\eta^m=1$,
$$
X^m=Y^m.
$$
The Fermat equation becomes
$$
2Y^m=1.
$$
Since $p\ne2$, this has exactly $m$ geometric solutions. Hence every reflection fixes exactly $m$ affine points.

There are no fixed points at infinity. Indeed, an eigenvector of the reflection has
$$
X=\pm\eta^{-j}Y.
$$
Since $m$ is even,
$$
X^m=Y^m,
$$
so the equation at infinity would give
$$
2Y^m=0,
$$
which is impossible.

Therefore the reflections contribute
$$
qm=\frac{m^2}{2}
$$
fixed points in total.

Step 6: Apply Riemann-Hurwitz to the quotient

The group order is
$$
|H|=m=p-1,
$$
which is prime to $p$, so the quotient is tame.

For a tame group action,
$$
\deg\operatorname{Diff}(L/K_p)
=
\sum_{1\ne h\in H}\#\operatorname{Fix}(h).
$$

Suppose first that $q$ is odd, equivalently
$$
p\equiv3\pmod4.
$$
Steps 4 and 5 give
$$
\deg\operatorname{Diff}(L/K_p)=\frac{m^2}{2}.
$$
Hence
$$
m^2-3m
=
m(2g(K_p)-2)+\frac{m^2}{2}.
$$
Dividing by $m$,
$$
2g(K_p)-2=\frac m2-3.
$$
Therefore
$$
g(K_p)=\frac{m-2}{4}
=
\frac{p-3}{4}.
$$

Now suppose that $q$ is even, equivalently
$$
p\equiv1\pmod4.
$$
The central rotation contributes the additional $m$ fixed points, so
$$
\deg\operatorname{Diff}(L/K_p)
=
\frac{m^2}{2}+m.
$$
Thus
$$
m^2-3m
=
m(2g(K_p)-2)+\frac{m^2}{2}+m.
$$
Hence
$$
2g(K_p)-2=\frac m2-4,
$$
and
$$
g(K_p)=\frac m4-1
=
\frac{p-5}{4}.
$$

The two cases combine as
$$
g(K_p)=\left\lfloor\frac{p-3}{4}\right\rfloor.
$$

Final Answer: $\boxed{\left\lfloor\frac{p-3}{4}\right\rfloor}$

---

## Answer

$\left\lfloor\frac{p-3}{4}\right\rfloor$

---

## Classification

**Problem Type:** Exact computation

**Answer Type:** Exact scalar

---

## Solution Concepts

- Fermat function fields
- invariant subfields
- dihedral group actions
- fixed-point ramification
- Riemann-Hurwitz
