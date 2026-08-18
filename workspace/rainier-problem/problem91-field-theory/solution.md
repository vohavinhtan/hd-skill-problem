## Steps

Step 1: Convert the roots into square roots of a Frobenius-stable subspace

Define
$$
H(Y)=Y^{p^3}+Y^{p^2}+Y^p+Y.
$$
Then
$$
X^2F_p(X)=H(X^2).
$$
Hence a nonzero $x$ is a root of $F_p$ exactly when
$$
y=x^2\ne0
$$
satisfies
$$
H(y)=0.
$$

If $H(y)=0$, then
$$
H(y)^p-H(y)=y^{p^4}-y,
$$
so
$$
y^{p^4}=y.
$$
Thus every root of $H$ lies in
$$
K=\mathbb F_{p^4}.
$$
For $y\in K$,
$$
H(y)=\operatorname{Tr}_{K/\mathbb F_p}(y).
$$
Therefore the possible values of $y=x^2$ are exactly the nonzero elements of
$$
V=\ker\left(\operatorname{Tr}_{K/\mathbb F_p}\right).
$$
The trace map is onto because
$$
\operatorname{Tr}_{K/\mathbb F_p}(1)=4\ne0,
$$
so
$$
|V|=p^3.
$$

The polynomial $F_p$ is squarefree. Indeed,
$$
H'(Y)=1,
$$
so
$$
\frac{d}{dX}H(X^2)=2X.
$$
At a nonzero root of $F_p$, differentiating $H(X^2)=X^2F_p(X)$ gives
$$
x^2F_p'(x)=2x\ne0.
$$

Step 2: Isolate the degree-two elements of the trace kernel

A nonzero element of $V$ cannot lie in $\mathbb F_p$, since for $y\in\mathbb F_p$,
$$
\operatorname{Tr}_{K/\mathbb F_p}(y)=4y.
$$
Hence every nonzero element of $V$ has degree $2$ or $4$ over $\mathbb F_p$.

For $y\in\mathbb F_{p^2}$,
$$
\operatorname{Tr}_{K/\mathbb F_p}(y)=2(y+y^p).
$$
Thus the degree-two elements of $V$ are the nonzero solutions of
$$
y^p=-y.
$$
There are exactly
$$
p-1
$$
of them.

For such a $y$,
$$
y^{p-1}=-1,
$$
and therefore
$$
y^{(p^2-1)/2}
=(-1)^{(p+1)/2}.
$$
Consequently these $p-1$ elements are squares in $\mathbb F_{p^2}$ exactly when
$$
p\equiv3\pmod4.
$$
Using the notation in the problem, this occurs exactly when $e_p=1$.

Every element of $\mathbb F_{p^2}^{\times}$ is a square in $K$, because
$$
y^{(p^4-1)/2}
=\left(y^{p^2-1}\right)^{(p^2+1)/2}
=1.
$$

Step 3: Count all square elements in the trace kernel

Let
$$
Q(z)=\operatorname{Tr}_{K/\mathbb F_p}(z^2).
$$
The number of nonzero squares in $V$ is determined by the number of zeros of $Q$.

Choose an $\mathbb F_p$-basis $\beta_1,\ldots,\beta_4$ of $K$, and let
$$
A=\left(\beta_j^{p^i}\right)_{0\leq i\leq3,\ 1\leq j\leq4}.
$$
The Gram matrix of the quadratic form $Q$ is
$$
G=\left(\operatorname{Tr}_{K/\mathbb F_p}(\beta_j\beta_k)\right)_{j,k}
=A^TA.
$$
The trace pairing is nondegenerate: for $a\ne0$, taking $b=a^{-1}$ gives
$$
\operatorname{Tr}_{K/\mathbb F_p}(ab)=4\ne0.
$$
Hence $\det A\ne0$.

Applying Frobenius to every entry of $A$ cyclically permutes its four rows. A $4$-cycle has sign $-1$, so
$$
(\det A)^p=-\det A.
$$
Since
$$
\det G=(\det A)^2\in\mathbb F_p,
$$
its quadratic character is
$$
(\det G)^{(p-1)/2}
=(\det A)^{p-1}
=-1.
$$
Thus $Q$ is a nondegenerate four-dimensional quadratic form with nonsquare determinant.

Let $\chi$ be the quadratic character of $\mathbb F_p$, extended by $\chi(0)=0$, and choose a nontrivial additive character $\psi$. Put
$$
\tau=\sum_{u\in\mathbb F_p}\chi(u)\psi(u).
$$
A change of variables gives
$$
\tau^2
=\sum_{t\ne0}\chi(t)\sum_{u\ne0}\psi(u(1+t))
=\chi(-1)p.
$$
Hence
$$
\tau^4=p^2.
$$

Diagonalize $Q$ over $\mathbb F_p$ as
$$
Q(z)=a_1z_1^2+a_2z_2^2+a_3z_3^2+a_4z_4^2.
$$
The product $a_1a_2a_3a_4$ has the same square class as $\det G$, so
$$
\chi(a_1a_2a_3a_4)=-1.
$$
If $Z$ denotes the number of zeros of $Q$, additive-character orthogonality gives
$$
Z=\frac1p\sum_{s\in\mathbb F_p}\sum_{z\in\mathbb F_p^4}\psi(sQ(z)).
$$
The term $s=0$ contributes $p^4$. For $s\ne0$,
$$
\sum_{r\in\mathbb F_p}\psi(sa_ir^2)=\chi(sa_i)\tau,
$$
so the fourfold product equals
$$
\chi(a_1a_2a_3a_4)\tau^4=-p^2.
$$
Therefore
$$
Z=p^3-p^2+p.
$$

The zero vector contributes once, while each nonzero square $y\in V$ has exactly two square roots. Hence the number of nonzero squares in $V$ is
$$
\frac{Z-1}{2}
=\frac{(p-1)(p^2+1)}2.
$$

Step 4: Determine the exact degrees of the roots of $F_p$

Step 2 gave $p-1$ elements of $V$ of degree $2$. All of them are squares in $K$. Removing them from the square count in Step 3, the number of degree-four elements of $V$ that are squares in $K$ is
$$
\frac{(p-1)(p^2+1)}2-(p-1)
=\frac{(p-1)(p^2-1)}2.
$$
Since the total number of degree-four elements of $V$ is
$$
p^3-p,
$$
the number that are nonsquares in $K$ is
$$
\frac{(p-1)(p+1)^2}{2}.
$$

If a degree-two $y$ is a square already in $\mathbb F_{p^2}$, its two square roots have exact degree $2$. By Step 2 this happens exactly when $e_p=1$. Hence
$$
E_2=2e_p(p-1),
$$
where $E_d$ denotes the number of roots of $F_p$ of exact degree $d$.

When $e_p=0$, each of the $p-1$ degree-two values of $y$ has two square roots in $K\setminus\mathbb F_{p^2}$, contributing
$$
2(1-e_p)(p-1)
$$
roots of degree $4$.

Each degree-four square $y$ has two square roots in $K$, both of exact degree $4$. Therefore
$$
E_4
=(p-1)(p^2-1)+2(1-e_p)(p-1)
=(p-1)(p^2+1-2e_p).
$$

Finally, if a degree-four $y$ is a nonsquare in $K$, a square root $x$ satisfies
$$
x^{p^4}=-x,
$$
so
$$
x^{p^8}=x.
$$
It cannot have degree dividing $4$, because then $y=x^2$ would be a square in $K$. Thus its exact degree is $8$. Hence
$$
E_8=(p-1)(p+1)^2.
$$

Step 5: Convert exact root degrees into irreducible-factor counts

Since $F_p$ is squarefree, every irreducible factor of degree $d$ contributes exactly $d$ roots of exact degree $d$. From Step 4,
$$
b_2=e_p(p-1),
$$
$$
b_4=\frac{(p-1)(p^2+1-2e_p)}4,
$$
and
$$
b_8=\frac{(p-1)(p+1)^2}{8}.
$$
The weighted count is
$$
2b_2+4b_4+8b_8
=2p^3-2
=\deg F_p,
$$
so no other degrees occur.

Therefore
$$
\mathcal D_p(t)
=
\frac{(p-1)(p+1)^2}{8}t^8
+\frac{(p-1)(p^2+1-2e_p)}4t^4
+e_p(p-1)t^2.
$$

Final Answer: $\boxed{\frac{(p-1)(p+1)^2}{8}t^8+\frac{(p-1)(p^2+1-2e_p)}4t^4+e_p(p-1)t^2}$

---

## Answer

$\frac{(p-1)(p+1)^2}{8}t^8+\frac{(p-1)(p^2+1-2e_p)}4t^4+e_p(p-1)t^2$

---

## Classification

**Problem Type:** Exact computation

**Answer Type:** Polynomial or rational function

---

## Solution Concepts

- finite-field trace
- quadratic characters
- trace quadratic forms
- finite-field subextensions
- Frobenius orbit counting
