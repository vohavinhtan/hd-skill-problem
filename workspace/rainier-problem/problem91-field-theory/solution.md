## Steps

Step 1: Recover the fractional Frobenius action on the roots

Let
$$
\sigma(\alpha)=\alpha^p.
$$
If $\alpha$ is a root of $F_p$, then $\alpha\ne-1$ and
$$
\alpha^{p^2}=-\frac1{\alpha+1}.
$$
Define
$$
M(z)=-\frac1{z+1}.
$$
Thus every root satisfies
$$
\sigma^2(\alpha)=M(\alpha).
$$

The successive iterates are
$$
M^2(z)=-\frac{z+1}{z},
$$
and
$$
M^3(z)=z.
$$
Since $M$ has coefficients in $\mathbb F_p$, it commutes with Frobenius. Therefore
$$
\sigma^6(\alpha)=M^3(\alpha)=\alpha.
$$
Every root lies in $\mathbb F_{p^6}$.

Also
$$
F_p'(X)=X^{p^2}.
$$
The polynomial $F_p$ has no zero root, so every root is simple. Hence $F_p$ has exactly
$$
p^2+1
$$
distinct roots, all in $\mathbb F_{p^6}$.

Step 2: Count the roots in the degree-one and degree-two subfields

Let
$$
N_d=\#\{\alpha\in\mathbb F_{p^d}:F_p(\alpha)=0\}.
$$
Since all roots lie in $\mathbb F_{p^6}$, only divisors of $6$ need to be considered.

If $\alpha\in\mathbb F_p$, then $\sigma^2(\alpha)=\alpha$, so Step 1 gives
$$
M(\alpha)=\alpha.
$$
The fixed-point equation is
$$
-\frac1{\alpha+1}=\alpha,
$$
or
$$
\alpha^2+\alpha+1=0.
$$
Its roots are the two primitive cube roots of unity. They lie in $\mathbb F_p$ exactly when
$$
p\equiv1\pmod3.
$$
Therefore
$$
N_1=2e_p.
$$

If $\alpha\in\mathbb F_{p^2}$, again $\sigma^2(\alpha)=\alpha$, so the same fixed-point equation is necessary and sufficient. Since
$$
p^2\equiv1\pmod3,
$$
both primitive cube roots lie in $\mathbb F_{p^2}$. Hence
$$
N_2=2.
$$

Step 3: Count the roots in the cubic subfield

Now let $\alpha\in\mathbb F_{p^3}$. Since $\sigma^3(\alpha)=\alpha$, the relation
$$
\sigma^2(\alpha)=M(\alpha)
$$
implies
$$
\sigma(\alpha)=M^2(\alpha).
$$
Indeed, applying $\sigma$ to $\sigma^3(\alpha)=\alpha$ gives $\sigma^{-1}=\sigma^2$ on this field, so $\sigma=M^{-1}=M^2$ on a root.

Using the formula for $M^2$ from Step 1,
$$
\alpha^p=-\frac{\alpha+1}{\alpha}.
$$
Thus the cubic-field roots are exactly the roots of
$$
G_p(X)=X^{p+1}+X+1.
$$

This polynomial has degree $p+1$. Its derivative is
$$
G_p'(X)=X^p+1.
$$
A common root of $G_p$ and $G_p'$ would satisfy $X^p=-1$, which gives
$$
G_p(X)=-X+X+1=1,
$$
a contradiction. Hence $G_p$ has $p+1$ distinct roots.

Conversely, if $G_p(\alpha)=0$, then
$$
\sigma(\alpha)=M^2(\alpha).
$$
Iterating three times gives
$$
\sigma^3(\alpha)=M^6(\alpha)=\alpha.
$$
Thus every root of $G_p$ lies in $\mathbb F_{p^3}$ and also satisfies $\sigma^2=M$. Therefore
$$
N_3=p+1.
$$

Step 4: Recover the exact Frobenius orbit lengths

Let $E_d$ be the number of roots of exact degree $d$ over $\mathbb F_p$. Since all roots lie in $\mathbb F_{p^6}$,
$$
N_d=\sum_{r\mid d}E_r
$$
for $d\mid6$.

From Steps 2 and 3,
$$
E_1=N_1=2e_p,
$$
and
$$
E_2=N_2-E_1=2-2e_p.
$$
Also
$$
E_3=N_3-E_1=p+1-2e_p.
$$

By Step 1,
$$
N_6=p^2+1.
$$
Therefore
$$
E_6=N_6-E_1-E_2-E_3.
$$
Substitution gives
$$
E_6=p^2-p-2+2e_p.
$$

These four values sum to $p^2+1$, so every root has been assigned an exact degree.

Step 5: Convert exact root degrees into irreducible-factor counts

Each monic irreducible factor of degree $d$ contributes exactly $d$ roots of exact degree $d$. Hence
$$
b_d=\frac{E_d}{d}.
$$
Using Step 4,
$$
b_1=2e_p,
$$
$$
b_2=1-e_p,
$$
$$
b_3=\frac{p+1-2e_p}{3},
$$
and
$$
b_6=\frac{p^2-p-2+2e_p}{6}.
$$
All other $b_d$ vanish. Therefore
$$
\mathcal D_p(t)
=
\frac{p^2-p-2+2e_p}{6}t^6
+\frac{p+1-2e_p}{3}t^3
+(1-e_p)t^2
+2e_pt.
$$

Final Answer: $\boxed{\frac{p^2-p-2+2e_p}{6}t^6+\frac{p+1-2e_p}{3}t^3+(1-e_p)t^2+2e_pt}$

---

## Answer

$\frac{p^2-p-2+2e_p}{6}t^6+\frac{p+1-2e_p}{3}t^3+(1-e_p)t^2+2e_pt$

---

## Classification

**Problem Type:** Exact computation

**Answer Type:** Polynomial or rational function

---

## Solution Concepts

- finite-field Frobenius
- fractional linear transformations
- semilinear dynamics
- finite-field subextensions
- Frobenius orbit counting
