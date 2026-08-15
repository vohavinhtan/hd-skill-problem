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
To verify this, in $J(A,B)\overline{J(A,B)}$ write $x=uy$ with $u\in\mathbb F_p^\times$ and $y\in\mathbb F_p^\times$. For $u=1$ the inner sum is $p-2$. For $u\ne1$, the map
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
Indeed, after dividing in the fraction field and rounding the two rational coefficients to nearest integers, the norm of the coefficient error is at most $1/2$ in the Gaussian case and at most $3/4$ in the second case. Thus both rings are unique factorization domains. Consequently, if an element in either ring has norm equal to the rational prime $p$, then its two integer coordinates agree with the corresponding representation of $p$ up to units and conjugation.

Step 3: Evaluate the quartic sum $S_1$

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
The sum $J(\psi,\chi)$ is an algebraic integer in $\mathbb Q(i)$, hence lies in $\mathbb Z[i]$; write it as $r+si$. Step 2 gives
$$
r^2+s^2=p.
$$
It remains to choose the sign of the odd coordinate. Multiplication by a fourth root of unity partitions $\mathbb F_p^\times$ into $(p-1)/4$ orbits, and $\chi(z^4-1)$ is constant on each orbit. The orbit with $z^4=1$ contributes $0$, while each of the remaining
$$
\frac{p-5}{4}
$$
orbits contributes $4$ or $-4$. Since $(p-5)/4$ is odd and the omitted point $z=0$ contributes $\chi(-1)=1$,
$$
S_1\equiv1+4\equiv5\pmod8.
$$
Therefore
$$
r=\frac{S_1+1}{2}\equiv3\pmod4.
$$
The given representation $p=a^2+b^2$ has $a$ odd with $a\equiv1\pmod4$ and $b$ even. The uniqueness consequence in Step 2 therefore forces $r=-a$. Hence
$$
S_1=-1-2a.
$$

Step 4: Evaluate the quintic sum $S_2$ by an octic Jacobi sum

Choose $s\in\mathbb F_p$ with $s^2=2$ and set
$$
\varepsilon=\chi(s).
$$
Since $s^4=4$, the substitution $x=sz$ gives
$$
S_2=\varepsilon H,\qquad
H=\sum_{z\in\mathbb F_p}\chi(z^5-z).
$$
Let
$$
L=J(\eta,\chi).
$$
For characters $A,B$ with $AB$ nontrivial, the substitution $u=t/(t-1)$ gives
$$
J(A,B)=A(-1)^{-1}J\left(A,(AB)^{-1}\right).
$$
Applying this once with $A=\eta$ and once with $A=\eta^3$, and using $\eta^3(-1)=\eta(-1)$ and symmetry of Jacobi sums, gives
$$
J(\eta^3,\chi)
=\eta(-1)^{-1}J(\eta^3,\eta)
=\eta(-1)^{-1}J(\eta,\eta^3)
=J(\eta,\chi)=L.
$$
For the Galois automorphism $\sigma_j$ defined by $\sigma_j(\zeta_8)=\zeta_8^j$, applying $\sigma_j$ termwise to a Jacobi sum raises each character value to the $j$th power. Thus $\sigma_3(L)=L$. The fixed field of $\sigma_3$ is $\mathbb Q(\sqrt{-2})$, whose ring of integers is $\mathbb Z[\sqrt{-2}]$. Hence
$$
L=r+s_0\sqrt{-2}\qquad(r,s_0\in\mathbb Z),
$$
and Step 2 gives
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
Complex conjugation is $\sigma_7$, while $\sigma_5=\sigma_7\sigma_3$. Therefore the four terms are $L,L,\overline L,\overline L$, and
$$
H=4r.
$$

It remains to determine the sign of $r$. Let $\mathcal R$ be the subgroup of nonzero fourth powers and put
$$
m=\frac{p-1}{4},\qquad k=\frac{p-1}{8}.
$$
The function $\chi(z^5-z)$ is constant on each orbit $\{z,iz,-z,-iz\}$ because
$$
\chi(i)=i^{(p-1)/2}=1
$$
for $p\equiv1\pmod8$. The orbit with $z^4=1$ contributes $0$. The other $m-1=2k-1$ orbits correspond to $t\in\mathcal R\setminus\{1\}$ and contribute signs
$$
\sigma_t=\eta(t)\chi(t-1).
$$
Their product is
$$
\prod_{t\ne1}\sigma_t
=\eta\left(\prod_{t\in\mathcal R}t\right)
 \chi\left(\prod_{t\ne1}(t-1)\right).
$$
Since $m$ is even, the product of the roots of $X^m-1$ is $-1$. Also, differentiating $X^m-1$ at $1$ gives
$$
\prod_{t\ne1}(t-1)=-m\equiv\frac14\pmod p,
$$
whose quadratic character is $1$. Finally, if $g$ generates $\mathbb F_p^\times$, then $-1=g^{4k}$ and $\eta(g)$ is a primitive eighth root, so
$$
\eta(-1)=(-1)^k.
$$
Consequently
$$
\prod_{t\ne1}\sigma_t=(-1)^k.
$$
If $M$ of the $2k-1$ signs are negative, then $M\equiv k\pmod2$, and hence
$$
\sum_{t\ne1}\sigma_t=(2k-1)-2M\equiv3\pmod4.
$$
Therefore
$$
H\equiv12\pmod{16},
\qquad
r=\frac H4\equiv3\pmod4.
$$
The given representation $p=c^2+2d^2$ has $c\equiv3\pmod4$. By the uniqueness consequence in Step 2, $r=c$. Thus
$$
H=4c,\qquad S_2=4\varepsilon c.
$$

Step 5: Evaluate the exceptional roots and combine all terms

For every root of $x^4=4$, its quadratic character equals $\varepsilon$. Indeed the roots with square $2$ are $\pm s$, while those with square $-2$ are $\pm is$; here $\chi(-1)=1$ and, as in Step 4, $\chi(i)=1$. Thus
$$
R=4\varepsilon.
$$
We now use Gauss's supplementary law for biquadratic reciprocity in the following precise form: if
$$
p=A^2+B^2,\qquad A\equiv1\pmod4,\qquad 4\mid B,
$$
then
$$
2^{(p-1)/4}=(-1)^{B/4}\pmod p.
$$
The hypotheses hold with $A=a$ and $B=b$. Moreover, since $s^2=2$, Euler's criterion gives
$$
\varepsilon=\chi(s)
=s^{(p-1)/2}
=(s^2)^{(p-1)/4}
=2^{(p-1)/4}
=(-1)^{b/4}.
$$
Substituting the values from Steps 3 and 4 into the formula from Step 1,
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
- biquadratic reciprocity