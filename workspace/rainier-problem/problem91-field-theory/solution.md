## Steps

Step 1: Recover the affine trace condition

Put
$$
K=\mathbb F_{p^3}
$$
and let
$$
y=x^3.
$$
The equation $F_p(x)=0$ becomes
$$
y^{p^2}+y^p+y=3.
$$
If this equation holds, then raising it to the $p$th power and subtracting gives
$$
y^{p^3}-y=0.
$$
Hence $y\in K$, and the equation is precisely
$$
\operatorname{Tr}_{K/\mathbb F_p}(y)=3.
$$

The trace map is onto because
$$
\operatorname{Tr}_{K/\mathbb F_p}(1)=3\ne0.
$$
Its fiber above $3$ therefore has $p^2$ elements. Exactly one of them lies in $\mathbb F_p$: for $y\in\mathbb F_p$ the trace is $3y$, so that element is
$$
y=1.
$$
Every other target has exact degree $3$ over $\mathbb F_p$.

Also
$$
F_p'(X)=3X^2.
$$
Since $F_p(0)=-3\ne0$, the polynomial is separable. Each of the $p^2$ targets has three distinct cubic roots, accounting for all
$$
3p^2=\deg F_p
$$
roots.

Step 2: Handle the case $p\equiv2\pmod3$

Assume $e=0$. Since
$$
3\nmid p^3-1,
$$
the map
$$
K^\times\to K^\times,
\qquad
z\mapsto z^3
$$
is bijective.

For the rational target $y=1$, exactly one cubic root, namely $1$, lies in $K$. The other two are primitive cube roots of unity. Since $p\equiv2\pmod3$, they lie in $\mathbb F_{p^2}\setminus\mathbb F_p$. Thus this target contributes one root of degree $1$ and two roots of degree $2$.

Now let $y$ have degree $3$. Its unique cubic root $x_0$ in $K$ also has degree $3$, because
$$
\mathbb F_p(y)\subseteq\mathbb F_p(x_0)\subseteq K.
$$
The other roots are $x_0\zeta$ and $x_0\zeta^2$, where $\zeta$ has degree $2$. They lie in $\mathbb F_{p^6}$. Neither lies in $K$, since the cube map on $K^\times$ has only one preimage of $y$. Their degrees are therefore $6$.

There are $p^2-1$ degree-three targets, so
$$
b_1=1,
\qquad
b_2=1,
$$
and
$$
b_3=b_6=\frac{p^2-1}{3}.
$$

Step 3: Count cubic targets when $p\equiv1\pmod3$

Assume $e=1$. Choose a nontrivial cubic character
$$
\chi:\mathbb F_p^\times\to\{1,\rho,\rho^2\},
\qquad
\rho^2+\rho+1=0,
$$
and extend it by $\chi(0)=0$. Let
$$
\eta=\chi\circ N_{K/\mathbb F_p}.
$$
The norm is onto, so $\eta$ is a nontrivial cubic character of $K^\times$. Its kernel is the subgroup of cubes.

Choose a nontrivial additive character $\psi$ of $\mathbb F_p$, and put
$$
g=\sum_{u\in\mathbb F_p}\chi(u)\psi(u),
$$
$$
J=\sum_{u\in\mathbb F_p}\chi(u)\chi(1-u).
$$
Let
$$
\Psi(z)=\psi(\operatorname{Tr}_{K/\mathbb F_p}(z)).
$$
The degree-three Hasse-Davenport lifting identity gives
$$
\sum_{z\in K}\eta(z)\Psi(z)=g^3.
$$

We next reduce $g^3$ to $J$. Since $p\equiv1\pmod6$, $\chi(-1)=1$. Expanding $g\overline g$ and writing the first variable as a nonzero multiple of the second gives
$$
g\overline g=p.
$$
Likewise, grouping the terms of $g^2$ by $s=u+v$ gives
$$
g^2=J\overline g.
$$
Therefore
$$
g^3=pJ.
$$

Let
$$
S=\sum_{\operatorname{Tr}(z)=3}\eta(z).
$$
Additive-character orthogonality gives
$$
S=\frac1p\sum_{r\in\mathbb F_p}\psi(-3r)
\sum_{z\in K}\eta(z)\Psi(rz).
$$
The term $r=0$ vanishes. For $r\ne0$,
$$
\eta(r)=\chi(r^3)=1,
$$
so the inner sum is $g^3$. Since
$$
\sum_{r\ne0}\psi(-3r)=-1,
$$
we obtain
$$
S=-\frac{g^3}{p}=-J.
$$

Step 4: Identify the real part of the Jacobi sum

From Step 3,
$$
J\overline J=p.
$$
Write
$$
J=a+b\rho
$$
with $a,b\in\mathbb Z$.

Consider the order-three map
$$
u\mapsto\frac1{1-u}
$$
on $\mathbb F_p\setminus\{0,1\}$. Its summand in $J$,
$$
\chi(u)\chi(1-u),
$$
is unchanged along each orbit, because its ratio after applying the map is the cubic character of
$$
-\frac1{(1-u)^3},
$$
which equals $1$.

There are two fixed points, the roots of
$$
u^2-u+1=0,
$$
and each contributes $1$ because $u(1-u)=1$. Every other orbit has three elements. Hence
$$
J\equiv2\equiv-1\pmod3
$$
in $\mathbb Z[\rho]$. Thus
$$
a\equiv-1\pmod3,
\qquad
b\equiv0\pmod3.
$$

Set
$$
A'=J+\overline J=2a-b.
$$
Using
$$
J\overline J=a^2-ab+b^2=p
$$
gives
$$
4p=(2a-b)^2+3b^2.
$$
Since $3\mid b$,
$$
4p=(A')^2+27\left(\frac b3\right)^2,
$$
and
$$
A'\equiv1\pmod3.
$$
By the definition of $A$ in the problem,
$$
A'=A.
$$

The number $C_0$ of cubes among all $p^2$ elements of trace $3$ is
$$
C_0=
\frac13
\sum_{\operatorname{Tr}(z)=3}
\left(1+\eta(z)+\eta(z)^2\right).
$$
Using Step 3 and $J+\overline J=A$,
$$
C_0=\frac{p^2-A}{3}.
$$
The rational target $1$ is one of these cubes. Hence among the $p^2-1$ degree-three targets, exactly
$$
C=\frac{p^2-A-3}{3}
$$
are cubes in $K$.

Step 5: Lift the cubic targets and assemble the answer

Continue with $e=1$. The target $y=1$ has all three cube roots in $\mathbb F_p$, since the primitive cube roots of unity already lie there. It contributes three degree-one roots.

Each of the $C$ cubic targets counted in Step 4 has three cube roots in $K$. Every such root has exact degree $3$, so
$$
E_3=3C=p^2-A-3.
$$

For each of the remaining
$$
p^2-1-C
$$
targets, $X^3-y$ has no root in $K$ and is therefore irreducible over $K$. Its roots lie in the cubic extension $\mathbb F_{p^9}$ of $K$. Since $y$ itself generates $K$ over $\mathbb F_p$, every such root has exact degree $9$. Hence
$$
E_9=3(p^2-1-C)=2p^2+A.
$$
Thus, when $e=1$,
$$
b_1=3,
\qquad
b_3=\frac{p^2-A-3}{3},
\qquad
b_9=\frac{2p^2+A}{9}.
$$

Combining this with Step 2 gives, for both residue classes of $p$,
$$
b_1=1+2e,
$$
$$
b_2=1-e,
$$
$$
b_3=\frac{p^2-1-e(A+2)}{3},
$$
$$
b_6=\frac{(1-e)(p^2-1)}{3},
\qquad
b_9=\frac{e(2p^2+A)}{9}.
$$
Their degree-weighted sum is $3p^2$, so all irreducible factors are accounted for.

Final Answer: $\boxed{\frac{e(2p^2+A)}{9}t^9+\frac{(1-e)(p^2-1)}{3}t^6+\frac{p^2-1-e(A+2)}{3}t^3+(1-e)t^2+(1+2e)t}$

---

## Answer

$\frac{e(2p^2+A)}{9}t^9+\frac{(1-e)(p^2-1)}{3}t^6+\frac{p^2-1-e(A+2)}{3}t^3+(1-e)t^2+(1+2e)t$

---

## Classification

**Problem Type:** Exact computation

**Answer Type:** Polynomial or rational function

---

## Solution Concepts

- finite-field trace
- cubic characters
- Jacobi sums
- cubic residue classes
- Frobenius orbit counting
