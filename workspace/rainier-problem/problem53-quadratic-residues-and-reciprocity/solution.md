## Steps

Step 1: Reduce the count to two character sums and one exceptional-root correction

Let $\chi$ be the quadratic character of $\mathbb F_p$, extended by $\chi(0)=0$. Since $a$ is odd and $4\mid b$,
$$
p=a^2+b^2\equiv1\pmod8.
$$
Hence $\chi(-1)=\chi(2)=1$. In particular $x^4=4$ has four distinct nonzero roots.

For $u\in\mathbb F_p$, the indicator that $u$ is a nonzero square is
$$
\delta(u)=\frac{\chi(u)^2+\chi(u)}2.
$$
With $f(x)=x^4-4$, define
$$
S_1=\sum_{x\in\mathbb F_p}\chi(f(x)),\qquad
S_2=\sum_{x\in\mathbb F_p}\chi(xf(x)),
$$
and
$$
R=\sum_{x^4=4}\chi(x).
$$
Expanding $\delta(x)\delta(f(x))$ gives
$$
4|U_p|
=\sum_x\chi(x)^2\chi(f(x))^2
+\sum_x\chi(x)^2\chi(f(x))
+\sum_x\chi(x)\chi(f(x))^2
+\sum_x\chi(xf(x)).
$$
The first sum counts the $x$ for which $x\ne0$ and $f(x)\ne0$, hence equals $p-5$. For the second,
$$
\sum_x\chi(x)^2\chi(f(x))
=S_1-\chi(f(0))
=S_1-\chi(-4)=S_1-1.
$$
For the third, $\sum_x\chi(x)=0$, so removing the four roots of $f$ gives
$$
\sum_x\chi(x)\chi(f(x))^2=-R.
$$
The fourth sum is $S_2$. Therefore
$$
|U_p|=\frac{p-6+S_1+S_2-R}{4}.
$$

Step 2: Establish the Jacobi-sum and norm certificates

Because $p\equiv1\pmod8$, choose a character $\eta$ of order $8$ on $\mathbb F_p^\times$, extend it by $0$ at $0$, and put
$$
\psi=\eta^2,\qquad \chi=\eta^4.
$$
For nontrivial multiplicative characters $A,B$, write
$$
J(A,B)=\sum_{t\in\mathbb F_p}A(t)B(1-t).
$$
If $A,B,AB$ are nontrivial, then
$$
|J(A,B)|^2=p.
$$
To verify this, in $J(A,B)\overline{J(A,B)}$ write $x=uy$ with $u,y\in\mathbb F_p^\times$. For $u=1$ the inner sum is $p-2$. For $u\ne1$, the map
$$
y\longmapsto\frac{1-uy}{1-y}
$$
sends $\mathbb F_p^\times\setminus\{1\}$ bijectively onto $\mathbb F_p\setminus\{1,u\}$, so the inner sum is $-1-B(u)$. Hence
$$
\begin{aligned}
|J(A,B)|^2
&=(p-2)-\sum_{u\ne0,1}A(u)-\sum_{u\ne0,1}(AB)(u)\\
&=(p-2)+1+1=p.
\end{aligned}
$$
Also
$$
J(A,A^{-1})=-A(-1),
$$
because $t\mapsto t/(1-t)$ sends $\mathbb F_p\setminus\{1\}$ bijectively onto $\mathbb F_p\setminus\{-1\}$.

We shall use uniqueness of the two norm representations. The rings $\mathbb Z[i]$ and $\mathbb Z[\sqrt{-2}]$ are Euclidean for
$$
N(r+si)=r^2+s^2,\qquad N(r+s\sqrt{-2})=r^2+2s^2.
$$
Indeed, after dividing in the fraction field and rounding the two rational coefficients to nearest integers, the norm of the coefficient error is at most $1/2$ in the Gaussian case and at most $3/4$ in the second case. Thus both rings are unique factorization domains. If two elements in one of these rings have norm $p$, each is irreducible; from
$$
p=\alpha\overline\alpha=\beta\overline\beta
$$
and unique factorization, $\alpha$ is associated to either $\beta$ or $\overline\beta$. Hence their integer coordinates agree up to the units and conjugation of the ring.

Step 3: Evaluate the quartic sum $S_1$

Choose $u\in\mathbb F_p$ with $u^2=2$. Since $u^4=4$ and $\chi(4)=1$, the substitution $x=uz$ gives
$$
S_1=\sum_{z\in\mathbb F_p}\chi(z^4-1).
$$
For every $t\in\mathbb F_p$, the number of solutions of $z^4=t$ is
$$
1+\psi(t)+\chi(t)+\overline{\psi}(t).
$$
Since $\chi(-1)=1$,
$$
\begin{aligned}
S_1
&=\sum_t\bigl(1+\psi(t)+\chi(t)+\overline{\psi}(t)\bigr)\chi(t-1)\\
&=J(\psi,\chi)+J(\chi,\chi)+J(\overline{\psi},\chi)\\
&=2\operatorname{Re}J(\psi,\chi)-1.
\end{aligned}
$$
Here no integrality theorem is being hidden: $\psi(t)\in\{0,1,-1,i,-i\}$ and $\chi(1-t)\in\{0,1,-1\}$ for every $t$, so each summand of $J(\psi,\chi)$ lies in $\mathbb Z[i]$. Therefore
$$
J(\psi,\chi)=r+vi,\qquad r,v\in\mathbb Z.
$$
Step 2 gives
$$
r^2+v^2=p.
$$
Multiplication by a fourth root of unity partitions $\mathbb F_p^\times$ into $(p-1)/4$ orbits, and $\chi(z^4-1)$ is constant on each orbit. The orbit with $z^4=1$ contributes $0$, while each of the remaining
$$
\frac{p-5}{4}
$$
orbits contributes $4$ or $-4$. Since $(p-5)/4$ is odd and $z=0$ contributes $\chi(-1)=1$,
$$
S_1\equiv5\pmod8.
$$
Therefore
$$
r=\frac{S_1+1}{2}\equiv3\pmod4.
$$
The given representation $p=a^2+b^2$ has $a$ odd with $a\equiv1\pmod4$ and $b$ even. The uniqueness consequence in Step 2 forces
$$
r=-a,\qquad v=\pm b.
$$
Hence
$$
S_1=-1-2a.
$$

Step 4: Evaluate the quintic sum $S_2$ by an octic Jacobi sum

Keep the square root $u$ from Step 3 and set
$$
\varepsilon=\chi(u).
$$
The substitution $x=uz$ gives
$$
S_2=\varepsilon H,\qquad
H=\sum_{z\in\mathbb F_p}\chi(z^5-z).
$$
Let
$$
L=J(\eta,\chi).
$$
For characters $A,B$ with $AB$ nontrivial, the substitution $w=t/(t-1)$ gives
$$
J(A,B)=A(-1)^{-1}J\left(A,(AB)^{-1}\right).
$$
Applying this with $A=\eta$ and with $A=\eta^3$, and using $\eta^3(-1)=\eta(-1)$ and symmetry of Jacobi sums, gives
$$
J(\eta^3,\chi)
=\eta(-1)^{-1}J(\eta^3,\eta)
=\eta(-1)^{-1}J(\eta,\eta^3)
=J(\eta,\chi)=L.
$$
Let $\zeta_8$ be a primitive eighth root of unity and choose the values of $\eta$ in $\langle\zeta_8\rangle$. Then every summand $\eta(t)\chi(1-t)$ belongs to $\mathbb Z[\zeta_8]$, so
$$
L\in\mathbb Z[\zeta_8].
$$
Since $\zeta_8$ satisfies the monic polynomial $X^4+1$, it is an algebraic integer; hence every element of $\mathbb Z[\zeta_8]$, in particular $L$, is integral over $\mathbb Z$.

For the Galois automorphism $\sigma_j$ defined by $\sigma_j(\zeta_8)=\zeta_8^j$, applying $\sigma_j$ termwise raises each character value to the $j$th power. Since $\chi^3=\chi$,
$$
\sigma_3(L)=J(\eta^3,\chi)=L.
$$
Now $\mathbb Q(\zeta_8)$ has degree $4$. Writing
$$
i=\zeta_8^2,\qquad \sqrt2=\zeta_8+\zeta_8^{-1},
$$
we have $\sigma_3(i)=-i$ and $\sigma_3(\sqrt2)=-\sqrt2$, so $\sqrt{-2}=i\sqrt2$ is fixed. The fixed field of the order-two automorphism $\sigma_3$ has degree $2$ over $\mathbb Q$; since $\mathbb Q(\sqrt{-2})$ is a degree-two fixed subfield, it is exactly that fixed field. Thus
$$
L\in\mathbb Q(\sqrt{-2}).
$$

It remains to identify the integral elements of this quadratic field. Let
$$
\alpha=r+s\sqrt{-2}\in\mathbb Q(\sqrt{-2}),\qquad r,s\in\mathbb Q,
$$
be integral over $\mathbb Z$. Its trace and norm are integers, so for some $m,n\in\mathbb Z$,
$$
2r=m,\qquad r^2+2s^2=n.
$$
Write $s=q/v$ in lowest terms with $v>0$. Then
$$
8s^2=4n-m^2\in\mathbb Z,
$$
so $v^2\mid8$, hence $v\in\{1,2\}$. If $v=2$, then $q$ is odd and
$$
n=\frac{m^2+2q^2}{4},
$$
whose numerator is congruent to $2$ or $3$ modulo $4$, a contradiction. Hence $s\in\mathbb Z$. Then $r^2=n-2s^2\in\mathbb Z$; since $r=m/2$, $m$ must be even, so $r\in\mathbb Z$. Conversely $\sqrt{-2}$ is integral because it satisfies $X^2+2=0$. Therefore the ring of integers of $\mathbb Q(\sqrt{-2})$ is exactly $\mathbb Z[\sqrt{-2}]$. Since $L$ is integral and lies in this field,
$$
L=r+s_0\sqrt{-2}\qquad(r,s_0\in\mathbb Z).
$$
Step 2 gives
$$
r^2+2s_0^2=p.
$$

For $t=z^4$, we have $\chi(z)=\eta(t)$. Using the fourth-power fiber count from Step 3,
$$
\begin{aligned}
H
&=\sum_t\eta(t)\bigl(1+\psi(t)+\chi(t)+\overline{\psi}(t)\bigr)\chi(t-1)\\
&=J(\eta,\chi)+J(\eta^3,\chi)+J(\eta^5,\chi)+J(\eta^7,\chi).
\end{aligned}
$$
Complex conjugation is $\sigma_7$, while $\sigma_5=\sigma_7\sigma_3$. Therefore the four terms are $L,L,\overline L,\overline L$, so
$$
H=4r.
$$

Let
$$
m=\frac{p-1}{4},\qquad k=\frac{p-1}{8}.
$$
Choose $\iota\in\mathbb F_p$ with $\iota^2=-1$. Since $p\equiv1\pmod8$,
$$
\chi(\iota)=\iota^{(p-1)/2}=1.
$$
Thus $\chi(z^5-z)$ is constant on every orbit $\{z,\iota z,-z,-\iota z\}$. The orbit with $z^4=1$ contributes $0$. The other $m-1=2k-1$ orbits are indexed by the subgroup $\mathcal R$ of nonzero fourth powers, excluding $1$, and contribute signs
$$
\sigma_t=\eta(t)\chi(t-1).
$$
Their product is
$$
\prod_{t\ne1}\sigma_t
=\eta\left(\prod_{t\in\mathcal R}t\right)
 \chi\left(\prod_{t\ne1}(t-1)\right).
$$
Because $m$ is even, the product of the roots of $X^m-1$ is $-1$. Differentiating $X^m-1$ at $1$ gives
$$
\prod_{t\ne1}(t-1)=-m\equiv\frac14\pmod p,
$$
whose quadratic character is $1$. If $g$ generates $\mathbb F_p^\times$, then $-1=g^{4k}$ and $\eta(g)$ is a primitive eighth root, so
$$
\eta(-1)=(-1)^k.
$$
Hence $\prod_{t\ne1}\sigma_t=(-1)^k$. If $M$ of the $2k-1$ signs are negative, then $M\equiv k\pmod2$, and
$$
\sum_{t\ne1}\sigma_t=(2k-1)-2M\equiv3\pmod4.
$$
Therefore
$$
H\equiv12\pmod{16},
\qquad
r=\frac H4\equiv3\pmod4.
$$
Since $p=c^2+2d^2$ with $c\equiv3\pmod4$, the uniqueness consequence in Step 2 forces $r=c$. Thus
$$
H=4c,\qquad S_2=4\varepsilon c.
$$

Step 5: Determine the quartic sign, evaluate the exceptional roots, and finish

The same quartic Jacobi sum from Step 3 determines $\varepsilon$. Keep
$$
J(\psi,\chi)=-a+vi,\qquad v=\pm b.
$$
Choose a generator $g$ of $\mathbb F_p^\times$ so that $\psi(g)=i$, put $\mathcal R=(\mathbb F_p^\times)^4$, and set
$$
\iota=g^m,
\qquad
m=\frac{p-1}{4}=2k.
$$
Then $\iota^2=-1$, and the coset
$$
C=\{t\in\mathbb F_p^\times:\psi(t)=i\}=g\mathcal R
$$
is precisely the root set of $X^m-\iota$.

Put
$$
A=\sum_{t\in C}\chi(1-t).
$$
Inversion sends $C$ bijectively to the coset on which $\psi=-i$. For $t\in C$, $\chi(t)=\psi(t)^2=-1$, and hence
$$
\chi(1-t^{-1})
=\chi\left(\frac{t-1}{t}\right)
=-\chi(1-t).
$$
Therefore the imaginary part of $J(\psi,\chi)$ is
$$
v=2A.
$$
If exactly $M$ terms in the sum defining $A$ equal $-1$, then
$$
A=m-2M=2(k-M).
$$
On the other hand,
$$
(-1)^M
=\chi\left(\prod_{t\in C}(1-t)\right)
=\chi(1-\iota),
$$
because $C$ is the root set of $X^m-\iota$. Since $(1-\iota)^2=-2\iota$ and
$$
\varepsilon=\chi(u)=u^{(p-1)/2}=2^{(p-1)/4}=2^m,
$$
we obtain
$$
\chi(1-\iota)
=(-2\iota)^m
=\varepsilon(-1)^k.
$$
Thus $(-1)^{M-k}=\varepsilon$. Since $v=4(k-M)$,
$$
\varepsilon=(-1)^{v/4}=(-1)^{b/4},
$$
where the last equality uses $v=\pm b$ and $4\mid b$.

The four roots of $x^4=4$ are $\pm u$ and $\pm\iota u$. Since $\chi(-1)=\chi(\iota)=1$, all four have quadratic character $\varepsilon$, so
$$
R=4\varepsilon.
$$
Substituting the values from Steps 3 and 4 into the formula from Step 1 gives
$$
\begin{aligned}
|U_p|
&=\frac{p-6+(-1-2a)+4\varepsilon c-4\varepsilon}{4}\\
&=\frac{p-7-2a+4(-1)^{b/4}(c-1)}4.
\end{aligned}
$$

Final Answer: $\boxed{\frac{p-7-2a+4(-1)^{b/4}(c-1)}{4}}$

---

## Answer

$\frac{p-7-2a+4(-1)^{b/4}(c-1)}{4}$

---

## Classification

**Problem Type:** Symbolic derivation

**Answer Type:** Exact symbolic expression

---

## Solution Concepts

- quadratic characters
- quartic and octic Jacobi sums
- finite-field orbit decomposition
- Euclidean quadratic integer rings
- higher residuacity
