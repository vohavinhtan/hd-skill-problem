## Steps

Step 1: Recover the two-stage additive extension

Let $\alpha$ be a root of $F$ and put
$$
y=\alpha^p-z\alpha.
$$
Since $z^p=z$,
$$
y^p-zy=\alpha^{p^2}-2z\alpha^p+z^2\alpha=t.
$$
Thus
$$
y^p-zy=t,\qquad \alpha^p-z\alpha=y.
$$

We first compute the degree of $K(\alpha)/K$. Let $v_\infty$ be the valuation of $K$ with $v_\infty(t)=-1$, and extend it to a valuation $w$ of $K(y)$. If $e$ is the ramification index, then $w(t)=-e$.

The equation $y^p-zy=t$ forces $w(y)<0$. Hence
$$
w(y^p-zy)=pw(y)=-e.
$$
Therefore $p\mid e$. Since $y$ satisfies a polynomial of degree $p$ over $K$,
$$
e\leq[K(y):K]\leq p,
$$
so
$$
[K(y):K]=p.
$$

Also $t=y^p-zy$, so $K(y)=\mathbb F_p(y)$. At the pole of $y$ in this rational function field, repeat the same argument with
$$
\alpha^p-z\alpha=y.
$$
Any extension of that pole to $K(\alpha)$ has ramification index divisible by $p$, while $\alpha$ has degree at most $p$ over $K(y)$. Hence
$$
[K(\alpha):K(y)]=p.
$$
Consequently,
$$
[K(\alpha):K]=p^2.
$$

Step 2: Determine the full translation kernel

The difference of any two roots of $F$ belongs to
$$
V=\{u:(u^p-zu)^p-z(u^p-zu)=0\}.
$$
Equivalently,
$$
V=\ker(\tau-z)^2,
$$
where $\tau(u)=u^p$.

Choose $\beta\neq0$ with
$$
\beta^p=z\beta.
$$
Such a $\beta$ exists in the algebraic closure. Since $z^3=1$,
$$
\beta^{p^3}=\beta.
$$
Choose $\gamma$ satisfying
$$
\gamma^p-z\gamma=\beta.
$$
Then
$$
(\tau-z)^2\gamma=0,
$$
while $(\tau-z)\gamma=\beta\neq0$. Hence $\beta,\gamma$ are linearly independent over $\mathbb F_p$.

The polynomial $(\tau-z)^2(X)$ is separable of degree $p^2$, so its kernel has exactly $p^2$ elements. Therefore
$$
V=\mathbb F_p\beta\oplus\mathbb F_p\gamma.
$$
The roots of $F$ are precisely
$$
\alpha+V.
$$

Step 3: Find the minimal constant field containing the kernel

Frobenius acts on the basis $\beta,\gamma$ by
$$
\beta^p=z\beta,\qquad \gamma^p=z\gamma+\beta.
$$
For every integer $n\geq1$, induction gives
$$
\gamma^{p^n}=z^n\gamma+nz^{n-1}\beta.
$$
Indeed, applying Frobenius to the formula for $n$ gives
$$
\gamma^{p^{n+1}}=z^{n+1}\gamma+(n+1)z^n\beta.
$$

Thus $\gamma^{p^n}=\gamma$ exactly when
$$
z^n=1
$$
and
$$
n=0\quad\text{in }\mathbb F_p.
$$
The first condition is equivalent to $3\mid n$, and the second to $p\mid n$. Since $p\neq3$, the least positive such $n$ is $3p$. Hence
$$
[\mathbb F_p(\gamma):\mathbb F_p]=3p,
$$
so
$$
\mathbb F_p(\gamma)=\mathbb F_{p^{3p}}.
$$
This field also contains $\beta=\gamma^p-z\gamma$. Write
$$
C=\mathbb F_{p^{3p}}.
$$
Because every root is $\alpha+i\beta+j\gamma$ with $i,j\in\mathbb F_p$,
$$
L=C(\alpha).
$$

Step 4: Compute the degree of the splitting field

Since
$$
t=(\alpha^p-z\alpha)^p-z(\alpha^p-z\alpha),
$$
we have
$$
K(\alpha)=\mathbb F_p(\alpha).
$$
This is a rational function field over $\mathbb F_p$, so its constant field is exactly $\mathbb F_p$. Therefore
$$
K(\alpha)\cap C=\mathbb F_p.
$$
Using Step 1 and $[C:\mathbb F_p]=3p$,
$$
[L:K]=[K(\alpha):K][C:\mathbb F_p]=p^2\cdot3p=3p^3.
$$

Step 5: Construct the translation and Frobenius automorphisms

Define $K$-automorphisms $a,b$ of $L$ by fixing $C$ and setting
$$
a(\alpha)=\alpha+\beta,\qquad b(\alpha)=\alpha+\gamma.
$$
Because $\beta,\gamma\in V$, both images are roots of the same equation as $\alpha$. Hence
$$
a^p=b^p=1,\qquad [a,b]=1.
$$

Define $r$ by
$$
r(\alpha)=\alpha,\qquad r(c)=c^p\quad(c\in C).
$$
Since $C=\mathbb F_{p^{3p}}$, the automorphism $r$ has order $3p$.

The Frobenius formulas from Step 3 give
$$
rar^{-1}(\alpha)=\alpha+\beta^p=\alpha+z\beta=a^z(\alpha),
$$
and
$$
rbr^{-1}(\alpha)=\alpha+\gamma^p=\alpha+\beta+z\gamma=ab^z(\alpha).
$$
All these automorphisms act identically on $C$ where required, so
$$
rar^{-1}=a^z,\qquad rbr^{-1}=ab^z.
$$

Step 6: Prove that these relations give the full Galois group

The relations allow every word in $r,a,b$ to be rewritten in the form
$$
a^ib^jr^k,
$$
where
$$
0\leq i,j<p,\qquad 0\leq k<3p.
$$
The $3p^3$ automorphisms of these forms are distinct. Their restrictions to $C$ distinguish $k$, since $r$ has order $3p$. Once $k$ is fixed, their images of $\alpha$ differ by
$$
i\beta+j\gamma,
$$
and the linear independence of $\beta,\gamma$ distinguishes $(i,j)$.

They therefore form a subgroup of $\operatorname{Gal}(L/K)$ of order $3p^3$. Step 4 gives $[L:K]=3p^3$, and $L$ is a splitting field of the separable polynomial $F$. Hence this subgroup is the full Galois group.

Final Answer: $\boxed{\langle r,a,b\mid r^{3p}=a^p=b^p=1,\ [a,b]=1,\ rar^{-1}=a^z,\ rbr^{-1}=ab^z\rangle}$

---

## Answer

$\langle r,a,b\mid r^{3p}=a^p=b^p=1,\ [a,b]=1,\ rar^{-1}=a^z,\ rbr^{-1}=ab^z\rangle$

---

## Classification

**Domain:** Abstract Algebra

**Sub-domain:** Field theory

**Problem Type:** Exact computation

**Answer Type:** Other

---

## Solution Concepts

- splitting fields
- additive polynomials
- ramification of rational function fields
- finite-field Frobenius
- semidirect products
