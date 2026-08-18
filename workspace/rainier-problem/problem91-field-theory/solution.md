## Steps

Step 1: Factor the Frobenius operator hidden in $L_p$

Let
$$
\sigma(\alpha)=\alpha^p.
$$
Then
$$
L_p=(\sigma^{p}-1)(\sigma^2-1),
$$
because
$$
(\sigma^{p}-1)(\sigma^2-1)
=\sigma^{p+2}-\sigma^p-\sigma^2+1.
$$
In characteristic $p$,
$$
Z^p-1=(Z-1)^p,
$$
so the operator polynomial is
$$
R(Z)=(Z-1)^{p+1}(Z+1).
$$
Thus
$$
L_p=R(\sigma).
$$

The associated linearized polynomial is separable because the coefficient of $X$ in $L_p(X)$ is $1$. Its kernel therefore has
$$
p^{\deg R}=p^{p+2}
$$
elements.

A root $\alpha$ of $F_p$ satisfies
$$
L_p(\alpha)^{p+1}=1.
$$
Hence the target
$$
\lambda=L_p(\alpha)
$$
lies in
$$
\mu_{p+1}=\{\lambda:\lambda^{p+1}=1\}.
$$
Every such $\lambda$ lies in $\mathbb F_{p^2}$ and satisfies
$$
\lambda^p=\lambda^{-1}.
$$
There are exactly $p+1$ targets.

Step 2: Split the norm-one targets into three Frobenius types

For $\lambda\in\mu_{p+1}$ define
$$
a=\frac{\lambda+\lambda^p}{2},
\qquad
b=\frac{\lambda-\lambda^p}{2}.
$$
Then
$$
\sigma(a)=a,
\qquad
\sigma(b)=-b,
$$
and
$$
\lambda=a+b.
$$

First, $b=0$ exactly when $\lambda=\lambda^p=\lambda^{-1}$, hence
$$
\lambda^2=1.
$$
Thus there are exactly two fixed targets,
$$
\lambda=1,-1.
$$
For both, $a\ne0$.

Next, $a=0$ exactly when
$$
\lambda^p=-\lambda.
$$
Combining this with $\lambda^p=\lambda^{-1}$ gives
$$
\lambda^2=-1.
$$
If $p\equiv3\pmod4$, the two roots of $X^2+1$ lie in $\mathbb F_{p^2}\setminus\mathbb F_p$ and satisfy $\lambda^p=-\lambda$, so both belong to $\mu_{p+1}$. If $p\equiv1\pmod4$, the roots lie in $\mathbb F_p$ and have norm $\lambda^2=-1$, so neither belongs to $\mu_{p+1}$.

Therefore there are
$$
2e_p
$$
targets with
$$
a=0,\qquad b\ne0.
$$
The remaining
$$
p-1-2e_p
$$
targets satisfy
$$
a\ne0,\qquad b\ne0.
$$

Step 3: Analyze the two primary lifting equations

Put
$$
N=\sigma-1,
\qquad
M=\sigma+1.
$$
The factors $(Z-1)^{p+1}$ and $Z+1$ are coprime, so every fiber of $R(\sigma)$ splits into its $1$-primary and $(-1)$-primary parts.

Suppose first that the fixed component $a$ is nonzero. On the $1$-primary part, $M$ is invertible, so the lifting equation is equivalent to
$$
N^{p+1}u=c
$$
for a nonzero fixed vector $c$. Any solution has
$$
N^{p+1}u\ne0,
\qquad
N^{p+2}u=0.
$$
Thus its annihilator contains $(Z-1)^{p+2}$ but not $(Z-1)^{p+1}$.

If $n=p^rs$ with $p\nmid s$, then the multiplicity of $Z-1$ in $Z^n-1$ is $p^r$. Since
$$
p<p+2\leq p^2,
$$
the least $n$ for which $(Z-1)^{p+2}$ divides $Z^n-1$ is
$$
p^2.
$$
Hence every such $u$ has exact Frobenius period $p^2$. The solution set is a coset of $\ker N^{p+1}$ and therefore has
$$
p^{p+1}
$$
elements.

If instead $a=0$, the $1$-primary component is any element of $\ker N^{p+1}$. Exactly
$$
p^p
$$
of these lie in $\ker N^p$ and have period dividing $p$. The remaining
$$
p^{p+1}-p^p=p^p(p-1)
$$
have annihilator $(Z-1)^{p+1}$ and exact period $p^2$.

Now suppose $b\ne0$. On the $(-1)$-primary part, $N^{p+1}$ is invertible, so the equation reduces to
$$
Mv=c'
$$
for a nonzero vector in $\ker M$. Every solution satisfies
$$
Mv\ne0,
\qquad
M^2v=0.
$$
Thus its annihilator is $(Z+1)^2$. The least $n$ for which $(Z+1)^2$ divides $Z^n-1$ is $2p$: divisibility by $Z+1$ requires $2\mid n$, while multiplicity at least $2$ requires $p\mid n$. Hence every solution has exact period
$$
2p.
$$
There are $p$ such solutions.

If $b=0$, the $(-1)$-primary component is free in $\ker M$. It has one zero element and
$$
p-1
$$
nonzero elements of exact period $2$.

Step 4: Count roots of each exact Frobenius period

Consider first the two targets with
$$
a\ne0,\qquad b=0.
$$
By Step 3, the fixed component has period $p^2$ and $p^{p+1}$ choices. If the free $(-1)$-component is zero, the full period is $p^2$; otherwise it is $2p^2$. Across both targets this gives
$$
E_{p^2}=2p^{p+1},
$$
and contributes
$$
2p^{p+1}(p-1)
$$
roots of period $2p^2$.

Now take one of the $2e_p$ targets with
$$
a=0,\qquad b\ne0.
$$
The forced $(-1)$-component has period $2p$ and $p$ choices. If the $1$-primary component lies in $\ker N^p$, there are $p^p$ choices and the full period is $2p$. Hence these targets contribute
$$
E_{2p}=2e_pp^{p+1}.
$$
The remaining $p^p(p-1)$ choices in the $1$-primary part have period $p^2$, so they contribute
$$
2e_pp^{p+1}(p-1)
$$
roots of period $2p^2$.

Finally, each of the
$$
p-1-2e_p
$$
targets with
$$
a\ne0,\qquad b\ne0
$$
has a forced $p^2$ component and a forced $2p$ component. Every lift therefore has exact period
$$
2p^2.
$$
Each fiber has $p^{p+2}$ elements, so this class contributes
$$
(p-1-2e_p)p^{p+2}
$$
roots of period $2p^2$.

Combining the three contributions,
$$
E_{2p^2}
=p^{p+1}\left(2(p-1)+2e_p(p-1)+p(p-1-2e_p)\right).
$$
The bracket simplifies to
$$
(p-1)(p+2)-2e_p.
$$
Therefore
$$
E_{2p^2}
=p^{p+1}\left((p-1)(p+2)-2e_p\right).
$$

The total root count is
$$
E_{p^2}+E_{2p}+E_{2p^2}
=(p+1)p^{p+2},
$$
which equals $\deg F_p$. Since $L_p$ is separable and every root of $Y^{p+1}-1$ is simple, all roots of $F_p$ are accounted for.

Step 5: Convert Frobenius periods into irreducible-factor degrees

Each monic irreducible factor over $\mathbb F_p$ is one Frobenius orbit, and its degree equals the orbit length. Hence
$$
b_d=\frac{E_d}{d}
$$
for every occurring period.

Using Step 4,
$$
b_{p^2}=2p^{p-1},
$$
$$
b_{2p}=e_pp^p,
$$
and
$$
b_{2p^2}
=\frac{p^{p-1}\left((p-1)(p+2)-2e_p\right)}{2}.
$$
All other $b_d$ vanish. Therefore
$$
\mathcal D_p(t)
=
\frac{p^{p-1}\left((p-1)(p+2)-2e_p\right)}{2}t^{2p^2}
+2p^{p-1}t^{p^2}
+e_pp^pt^{2p}.
$$

Final Answer: $\boxed{\frac{p^{p-1}((p-1)(p+2)-2e_p)}{2}t^{2p^2}+2p^{p-1}t^{p^2}+e_pp^pt^{2p}}$

---

## Answer

$\frac{p^{p-1}((p-1)(p+2)-2e_p)}{2}t^{2p^2}+2p^{p-1}t^{p^2}+e_pp^pt^{2p}$

---

## Classification

**Problem Type:** Exact computation

**Answer Type:** Polynomial or rational function

---

## Solution Concepts

- finite-field Frobenius
- linearized polynomials
- norm-one subgroups
- primary decomposition
- Frobenius orbit counting
