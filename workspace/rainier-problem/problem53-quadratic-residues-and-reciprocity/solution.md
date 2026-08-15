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
The four terms are respectively
$$
p-5,\qquad S_1-\chi(-4)=S_1-1,\qquad -R,\qquad S_2.
$$
Therefore
$$
|U_p|=\frac{p-6+S_1+S_2-R}{4}.
$$

Step 2: Establish the Jacobi-sum certificate used for both character sums

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
Indeed, after writing $x=uy$ in $J(A,B)\overline{J(A,B)}$, the inner sum is $p-2$ for $u=1$. For $u\ne1$, the map
$$
y\longmapsto \frac{1-uy}{1-y}
$$
is a bijection from $\mathbb F_p^\times\setminus\{1\}$ to $\mathbb F_p\setminus\{1,u\}$, so that inner sum is $-1-B(u)$. Thus
$$
|J(A,B)|^2
=(p-2)-\sum_{u\ne0,1}A(u)-\sum_{u\ne0,1}(AB)(u)
=p.
$$
Also
$$
J(A,A^{-1})=-A(-1),
$$
because $t\mapsto t/(1-t)$ sends $\mathbb F_p\setminus\{1\}$ bijectively to $\mathbb F_p\setminus\{-1\}$.

We shall also use uniqueness of norm representations. The rings $\mathbb Z[i]$ and $\mathbb Z[\sqrt{-2}]$ are Euclidean for
$$
N(r+si)=r^2+s^2,\qquad N(r+s\sqrt{-2})=r^2+2s^2.
$$
For the second ring, after division, rounding both rational coefficients gives a remainder with norm at most $1/4+2/4=3/4<1$; the Gaussian case is even smaller. Hence factorization is unique up to units and conjugation in both rings.

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
Put $J(\psi,\chi)=r+si$. Step 2 gives
$$
r^2+s^2=p.
$$
It remains to choose the correct sign of the odd coordinate. Multiplication by a fourth root of unity partitions $\mathbb F_p^\times$ into $(p-1)/4$ orbits, and $\chi(z^4-1)$ is constant on each orbit. The orbit with $z^4=1$ contributes $0$; each of the remaining
$$
\frac{p-5}{4}
$$
orbits contributes $4$ or $-4$. Since $(p-5)/4$ is odd,
$$
S_1\equiv1+4\equiv5\pmod8.
$$
Therefore
$$
r=\frac{S_1+1}{2}\equiv3\pmod4.
$$
The representation $p=a^2+b^2$, with $a\equiv1\pmod4$ and $4\mid b$, and uniqueness in $\mathbb Z[i]$ from Step 2 imply $r=-a$. Hence
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
For characters $A,B$ with $AB$ nontrivial, substituting $u=t/(t-1)$ gives
$$
J(A,B)=A(-1)^{-1}J\left(A,(AB)^{-1}\right).
$$
Because $\eta(-1)=\eta^3(-1)\in\{1,-1\}$ and Jacobi sums are symmetric,
$$
J(\eta^3,\chi)=J(\eta,\chi)=L.
$$
Thus $L$ is fixed by the automorphism $\zeta_8\mapsto\zeta_8^3$ of $\mathbb Q(\zeta_8)$. Its fixed field is $\mathbb Q(\sqrt{-2})$, so, since $L$ is an algebraic integer,
$$
L=r+s_0\sqrt{-2}\qquad(r,s_0\in\mathbb Z).
$$
Step 2 yields
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
The four terms are $L,L,\overline L,\overline L$, respectively, because $L$ is fixed by the exponent-$3$ automorphism and complex conjugation is the exponent-$7$ automorphism. Hence
$$
H=4r.
$$
We now determine the sign of $r$. Let $\mathcal R$ be the subgroup of nonzero fourth powers and put
$$
m=\frac{p-1}{4},\qquad k=\frac{p-1}{8}.
$$
The function $\chi(z^5-z)$ is constant on each orbit $\{z,iz,-z,-iz\}$ because $\chi(i)=1$. The orbit with $z^4=1$ contributes $0$. The other $m-1=2k-1$ orbits correspond to $t\in\mathcal R\setminus\{1\}$ and contribute signs
$$
\sigma_t=\eta(t)\chi(t-1).
$$
Their product is
$$
\prod_{t\ne1}\sigma_t
=\eta\left(\prod_{t\in\mathcal R}t\right)
 \chi\left(\prod_{t\ne1}(t-1)\right).
$$
Since $m$ is even, $\prod_{t\in\mathcal R}t=-1$. Also, differentiating $X^m-1$ at $1$ gives
$$
\prod_{t\ne1}(t-1)=-m\equiv\frac14\pmod p,
$$
whose quadratic character is $1$. Consequently
$$
\prod_{t\ne1}\sigma_t=\eta(-1)=(-1)^k.
$$
If $M$ of the signs are negative, then $M\equiv k\pmod2$, so
$$
\sum_{t\ne1}\sigma_t=(2k-1)-2M\equiv3\pmod4.
$$
Hence
$$
H\equiv12\pmod{16},
\qquad
r=\frac H4\equiv3\pmod4.
$$
By uniqueness in $\mathbb Z[\sqrt{-2}]$ from Step 2 and the given representation
$$
p=c^2+2d^2,\qquad c\equiv3\pmod4,
$$
we obtain $r=c$. Therefore
$$
H=4c,\qquad S_2=4\varepsilon c.
$$

Step 5: Evaluate the exceptional roots and combine all terms

For every root of $x^4=4$, its quadratic character equals $\varepsilon$. Indeed the roots with square $2$ are $\pm s$, while those with square $-2$ are $\pm is$, and $\chi(-1)=\chi(i)=1$. Thus
$$
R=4\varepsilon.
$$
The supplementary law for biquadratic reciprocity, in the normalization used in the problem, states precisely that if
$$
p=A^2+B^2,\qquad A\equiv1\pmod4,\qquad 4\mid B,
$$
then for any square root $u^2=2$ in $\mathbb F_p$,
$$
\chi(u)=2^{(p-1)/4}=(-1)^{B/4}.
$$
Applying it with $A=a$ and $B=b$ gives
$$
\varepsilon=(-1)^{b/4}.
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
