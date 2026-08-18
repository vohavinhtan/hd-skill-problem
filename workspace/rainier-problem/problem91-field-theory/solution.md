## Steps

Step 1: Identify the linearized map and the two target fibers

Let $\sigma(\alpha)=\alpha^p$ and define
$$
C(Z)=\sum_{i=0}^8c_iZ^i.
$$
The inner expression in $F_p$ is the linearized map
$$
L(\alpha)=(\sigma^p-1)C(\sigma)\alpha.
$$
Direct multiplication gives
$$
C(Z)=(Z^2+Z+1)^2(Z^2+1)^2.
$$
Since
$$
Z^p-1=(Z-1)^p
$$
in characteristic $p$, put
$$
R(Z)=(Z-1)^p(Z^2+Z+1)^2(Z^2+1)^2.
$$
Then
$$
L(\alpha)=R(\sigma)\alpha.
$$

A root $\alpha$ of $F_p$ satisfies
$$
L(\alpha)^2+L(\alpha)+1=0.
$$
Let $\lambda,\lambda^{-1}$ be the two roots of
$$
Y^2+Y+1=0.
$$
They are the two nontrivial cube roots of unity. If $p\equiv1\pmod3$, they lie in $\mathbb F_p$ and have Frobenius period $1$. If $p\equiv2\pmod3$, then
$$
\lambda^p=\lambda^{-1}\ne\lambda,
$$
so both have period $2$. Thus their common Frobenius period is exactly $s_p$.

The derivative of $L$ is $-1$. At a root of $F_p$,
$$
F_p'(\alpha)=-(2L(\alpha)+1).
$$
The equality $2L(\alpha)+1=0$ together with $L(\alpha)^2+L(\alpha)+1=0$ would give $3=0$, impossible for $p\geq5$. Hence $F_p$ is separable.

Step 2: Decompose one affine fiber into Frobenius-primary parts

Fix one target $\lambda$. Since $\sigma^{s_p}\lambda=\lambda$, every solution of
$$
R(\sigma)\alpha=\lambda
$$
belongs to
$$
W=\ker\left((\sigma^{s_p}-1)R(\sigma)\right).
$$

Write
$$
f_3(Z)=Z^2+Z+1,
\qquad
f_4(Z)=Z^2+1.
$$
For $s_p=1$,
$$
(Z^{s_p}-1)R(Z)=(Z-1)^{p+1}f_3(Z)^2f_4(Z)^2.
$$
For $s_p=2$,
$$
(Z^{s_p}-1)R(Z)=(Z-1)^{p+1}(Z+1)f_3(Z)^2f_4(Z)^2.
$$
All displayed factors are pairwise coprime for $p\geq5$. Bezout identities for these polynomial factors therefore decompose $W$ as
$$
W=U_1\oplus U_3\oplus U_4
$$
when $s_p=1$, and as
$$
W=U_1\oplus U_{-1}\oplus U_3\oplus U_4
$$
when $s_p=2$, where the annihilators are respectively
$$
(Z-1)^{p+1},\qquad Z+1,\qquad f_3^2,\qquad f_4^2.
$$

A polynomial $H(Z)$ of degree $r$ with nonzero constant term gives a separable linearized polynomial $H(\sigma)X$ of degree $p^r$. Hence its kernel has dimension $r$. Therefore
$$
\dim U_1=p+1,
\qquad
\dim U_3=\dim U_4=4,
$$
and $\dim U_{-1}=1$ when that component occurs.

The operator $R(\sigma)$ vanishes on $U_3$ and $U_4$. Thus those two components are free, while the equation $R(\sigma)\alpha=\lambda$ determines an affine condition only on $U_1$ and, when $s_p=2$, on $U_{-1}$.

Step 3: Determine the exact period of every point in the constrained part

On $U_1$, put
$$
N=\sigma-1.
$$
The factor $C(\sigma)$ is invertible there because
$$
C(1)=36\ne0
$$
in every characteristic $p\geq5$. The operator $N$ has nilpotency index $p+1$: otherwise $N^p$ would annihilate the $(p+1)$-dimensional space $U_1$, contradicting that the nonzero linearized polynomial corresponding to $(Z-1)^p$ has only $p^p$ roots. Thus $N$ is one nilpotent chain of length $p+1$, and
$$
\operatorname{im}N^p=\ker N.
$$

The fixed space $\ker N$ is one-dimensional. The $U_1$-component of $\lambda$ is a nonzero fixed vector. After applying the Frobenius-equivariant automorphism $C(\sigma)$ and multiplying by a nonzero scalar in $\mathbb F_p$, its equation becomes
$$
N^pu=1.
$$
This equation has $p^p$ solutions because $\dim\ker N^p=p$.

For every such solution,
$$
\sigma^pu=(1+N)^pu=u+N^pu=u+1,
$$
where the middle equality uses characteristic $p$. Hence
$$
\sigma^{p^2}u=u,
\qquad
\sigma^pu\ne u.
$$
Since the only divisors of $p^2$ are $1,p,p^2$, the exact period of $u$ is $p^2$.

If $s_p=2$, write
$$
\lambda=a+b,
\qquad
a=\frac{\lambda+\lambda^p}{2},
\qquad
b=\frac{\lambda-\lambda^p}{2}.
$$
Since $\lambda+\lambda^p=-1$,
$$
a=-\frac12\ne0,
$$
and $b\ne0$. The vector $a$ is fixed and $b$ is negated by Frobenius. On the one-dimensional space $U_{-1}$,
$$
R(\sigma)=R(-1)=-8,
$$
so there is exactly one $U_{-1}$-component mapping to $b$, and it has period $2$.

Consequently, for either value of $s_p$, the constrained part has exactly
$$
p^p
$$
solutions over each target $\lambda$, and every such solution has exact period
$$
s_pp^2.
$$

Step 4: Add the two free primary components

Every nonzero element of $U_3$ has Frobenius period $3$ or $3p$. Indeed, its annihilator divides $f_3^2$, while
$$
f_3\mid Z^3-1
$$
and
$$
f_3^2\mid Z^{3p}-1=(Z^3-1)^p;
$$
coprimality with $Z-1$ excludes period $1$.

Similarly, every nonzero element of $U_4$ has period $4$ or $4p$, because
$$
f_4\mid Z^4-1,
\qquad
f_4^2\mid Z^{4p}-1,
$$
and a root of $f_4$ has multiplicative order $4$.

The base period $s_pp^2$ already contains $p^2$. Therefore adding a nonzero $U_3$-component changes the exact period to
$$
3s_pp^2,
$$
while adding a nonzero $U_4$-component changes it to
$$
4p^2.
$$
If both components are nonzero, the exact period is
$$
12p^2.
$$

Each of $U_3,U_4$ has $p^4$ elements. There are two possible targets $\lambda$. Hence the numbers of roots of the four exact periods are
$$
2p^p,
$$
$$
2p^p(p^4-1),
$$
$$
2p^p(p^4-1),
$$
and
$$
2p^p(p^4-1)^2,
$$
for periods $s_pp^2,3s_pp^2,4p^2,12p^2$, respectively.

Their sum is
$$
2p^p\left(1+2(p^4-1)+(p^4-1)^2\right)=2p^{p+8},
$$
which equals $\deg F_p$. Together with separability from Step 1, this accounts for every root.

Step 5: Convert exact Frobenius periods into factor degrees

A monic irreducible factor over $\mathbb F_p$ consists of one Frobenius orbit, and its degree is the orbit length. Dividing the four root counts from Step 4 by their exact periods gives
$$
b_{s_pp^2}=\frac{2p^{p-2}}{s_p},
$$
$$
b_{3s_pp^2}=\frac{2p^{p-2}(p^4-1)}{3s_p},
$$
$$
b_{4p^2}=\frac{p^{p-2}(p^4-1)}2,
$$
and
$$
b_{12p^2}=\frac{p^{p-2}(p^4-1)^2}{6}.
$$
All other $b_d$ vanish. Factoring the four terms yields
$$
\mathcal D_p(t)=
\frac{p^{p-2}}{6s_p}
\left[
12t^{s_pp^2}
+4(p^4-1)t^{3s_pp^2}
+3s_p(p^4-1)t^{4p^2}
+s_p(p^4-1)^2t^{12p^2}
\right].
$$

Final Answer: $\boxed{\frac{p^{p-2}}{6s_p}[12t^{s_pp^2}+4(p^4-1)t^{3s_pp^2}+3s_p(p^4-1)t^{4p^2}+s_p(p^4-1)^2t^{12p^2}]}$

---

## Answer

$\frac{p^{p-2}}{6s_p}[12t^{s_pp^2}+4(p^4-1)t^{3s_pp^2}+3s_p(p^4-1)t^{4p^2}+s_p(p^4-1)^2t^{12p^2}]$

---

## Classification

**Problem Type:** Exact computation

**Answer Type:** Polynomial or rational function

---

## Solution Concepts

- finite-field Frobenius
- linearized polynomials
- primary decomposition
- affine Frobenius fibers
- orbit factorization
