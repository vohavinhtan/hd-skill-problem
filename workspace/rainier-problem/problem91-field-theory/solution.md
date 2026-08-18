## Steps

Step 1: Reduce the equation to an intermediate Frobenius problem

Put
$$
Y=X^{p+1}.
$$
Then
$$
F_p(X)=G_p(Y),
\qquad
G_p(Y)=Y^{p+1}+Y+1.
$$
We first determine the degrees of the roots of $G_p$.

Let
$$
M(z)=-\frac{z+1}{z}.
$$
If $y$ is a root of $G_p$, then $y\ne0$ and
$$
y^p=M(y).
$$
The iterates are
$$
M^2(z)=-\frac1{z+1},
\qquad
M^3(z)=z.
$$
Since $M$ has coefficients in $\mathbb F_p$, Frobenius commutes with $M$. Hence
$$
y^{p^3}=M^3(y)=y.
$$
Every root of $G_p$ lies in $\mathbb F_{p^3}$.

Also
$$
G_p'(Y)=Y^p+1.
$$
If $G_p(y)=G_p'(y)=0$, then $y^p=-1$, and substitution into
$$
y^{p+1}+y+1=0
$$
gives $1=0$. Thus $G_p$ is separable and has exactly $p+1$ distinct roots.

Step 2: Separate the rational and cubic intermediate roots

A root $y$ lies in $\mathbb F_p$ exactly when
$$
y^p=y.
$$
Together with the equation from Step 1, this gives
$$
y=-\frac{y+1}{y},
$$
or
$$
y^2+y+1=0.
$$
These are the two primitive cube roots of unity. They lie in $\mathbb F_p$ exactly when
$$
p\equiv1\pmod3.
$$
Therefore $G_p$ has exactly
$$
2e_p
$$
roots of degree $1$.

All its roots lie in $\mathbb F_{p^3}$, and $3$ is prime. Hence every remaining root has exact degree $3$. Their number is
$$
p+1-2e_p=h_p.
$$

Step 3: Lift a rational intermediate root

Assume $e_p=1$ and let $y\in\mathbb F_p$ be one of the two roots from Step 2. We must solve
$$
x^{p+1}=y.
$$

The norm map
$$
\mathbb F_{p^2}^{\times}\to\mathbb F_p^{\times},
\qquad
x\mapsto x^{p+1},
$$
is surjective and has kernel of order $p+1$. Thus all $p+1$ solutions lie in $\mathbb F_{p^2}$.

Since $p\equiv1\pmod3$ and $p$ is odd,
$$
p\equiv1\pmod6.
$$
A primitive cube root in $\mathbb F_p^{\times}$ is therefore a square: if $g$ generates $\mathbb F_p^{\times}$, it equals
$$
g^{(p-1)/3}
$$
or its square, and $(p-1)/3$ is even. Hence
$$
x^2=y
$$
has two roots in $\mathbb F_p$.

For each rational $y$, exactly two lifts have degree $1$, while the remaining
$$
p-1
$$
lifts have exact degree $2$. Since there are $2e_p$ such intermediate roots, they contribute
$$
E_1=4e_p,
\qquad
E_2=2e_p(p-1)
$$
roots of exact degrees $1$ and $2$.

Step 4: Lift a cubic intermediate root

Now let $y$ have exact degree $3$. From Step 1,
$$
y^p=-\frac{y+1}{y}.
$$
Applying Frobenius once more gives
$$
y^{p^2}=-\frac1{y+1}.
$$
Therefore
$$
y^{1+p+p^2}=1.
$$
So $y$ lies in the norm-one subgroup
$$
H=\{z\in\mathbb F_{p^3}^{\times}:z^{p^2+p+1}=1\},
$$
whose order is $p^2+p+1$.

Since
$$
\gcd(p+1,p^2+p+1)=1,
$$
there is an integer $r$ with
$$
r(p+1)\equiv1\pmod{p^2+p+1}.
$$
Then
$$
x=y^r
$$
satisfies $x^{p+1}=y$. The kernel of $x\mapsto x^{p+1}$ on $\mathbb F_{p^3}^{\times}$ has size
$$
\gcd(p+1,p^3-1)=2.
$$
Hence exactly two of the $p+1$ lifts of $y$ lie in $\mathbb F_{p^3}$, and both have exact degree $3$.

It remains to locate the other lifts. For any solution of
$$
x^{p+1}=y,
$$
we have
$$
x^p=\frac{y}{x}.
$$
Successive Frobenius applications give
$$
x^{p^2}=\frac{y^px}{y},
$$
and
$$
x^{p^3}=\frac{y^{p^2}y}{y^px}.
$$
The coefficient
$$
c=\frac{y^{p^2}y}{y^p}
$$
lies in $\mathbb F_{p^3}$, so
$$
x^{p^6}=\frac{c}{x^{p^3}}=x.
$$
Thus every lift lies in $\mathbb F_{p^6}$.

A lift of degree $1$ or $2$ would make
$$
y=x^{p+1}\in\mathbb F_{p^2}.
$$
Since also $y\in\mathbb F_{p^3}$, this would imply
$$
y\in\mathbb F_{p^2}\cap\mathbb F_{p^3}=\mathbb F_p,
$$
contrary to the degree of $y$. Therefore the remaining $p-1$ lifts have exact degree $6$.

There are $h_p$ cubic intermediate roots, so they contribute
$$
E_3=2h_p,
\qquad
E_6=(p-1)h_p.
$$

Step 5: Convert exact root degrees into irreducible-factor counts

The polynomial $F_p$ is separable. Indeed, with $Y=X^{p+1}$,
$$
F_p'(X)=X^p(Y^p+1),
$$
and Step 1 showed that $Y^p+1$ cannot vanish at a root of $G_p$. Also $X=0$ is not a root.

Thus each irreducible factor of degree $d$ contributes exactly $d$ roots of exact degree $d$. From Steps 3 and 4,
$$
b_1=4e_p,
$$
$$
b_2=e_p(p-1),
$$
$$
b_3=\frac{2h_p}{3},
$$
and
$$
b_6=\frac{(p-1)h_p}{6}.
$$
The weighted root count is
$$
4e_p+2e_p(p-1)+2h_p+(p-1)h_p
=(p+1)^2,
$$
which equals $\deg F_p$. Hence no other degrees occur.

Therefore
$$
\mathcal D_p(t)
=
\frac{(p-1)h_p}{6}t^6
+\frac{2h_p}{3}t^3
+e_p(p-1)t^2
+4e_pt.
$$

Final Answer: $\boxed{\frac{(p-1)h_p}{6}t^6+\frac{2h_p}{3}t^3+e_p(p-1)t^2+4e_pt}$

---

## Answer

$\frac{(p-1)h_p}{6}t^6+\frac{2h_p}{3}t^3+e_p(p-1)t^2+4e_pt$

---

## Classification

**Problem Type:** Exact computation

**Answer Type:** Polynomial or rational function

---

## Solution Concepts

- finite-field Frobenius
- semilinear dynamics
- finite-field norm maps
- power-map fibers
- Frobenius orbit counting
