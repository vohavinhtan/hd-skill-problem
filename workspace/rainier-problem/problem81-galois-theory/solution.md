## Steps

Step 1: Determine the cubic Kummer kernel
Put $g_i=a+y_i$ and $M=K(\omega)$. Since
$$
\prod_{i=1}^n g_i=(-1)^nf(-a)=c^3,
$$
the all-ones vector is a cubic relation among the classes of the $g_i$ in $M^\times/(M^\times)^3$.

The unique index-two subgroup of $S_n$ is $A_n$, so the unique quadratic subfield of $K$ is $\mathbb Q(\sqrt\Delta)$. The assumption that $-3\Delta$ is not a rational square therefore gives $K\cap\mathbb Q(\omega)=\mathbb Q$, and the copy of $S_n$ acting on $K$ extends to $M$ while fixing $\omega$.

Because $p\nmid\Delta$, the roots have distinct reduction at primes above $p$. Frobenius acts on the reduced roots by $z\mapsto z^p$; the irreducible factor $h$ therefore gives an orbit of length $n-3$, while $u,v,w$ give fixed roots. Since $n-3\equiv2\pmod3$ and $p\equiv1\pmod3$, the noncube $a+u\in\mathbb F_p^\times$ remains a noncube in $\mathbb F_{p^{n-3}}^\times$. Thus the corresponding $g_i$ is not a cube in $M$.

Let $\mathcal R\subseteq\mathbb F_3^n$ be the relation space. It is $S_n$-invariant and contains $\mathbf1$. If $w\in\mathcal R$ were nonconstant, a transposition exchanging two unequal coordinates would put a nonzero multiple of $e_i-e_j$ in $\mathcal R$. Its conjugates span $\{z:\sum z_i=0\}$. Since $n\equiv2\pmod3$, adjoining $\mathbf1$ then gives all of $\mathbb F_3^n$, contradicting that the root reducing to $u$ gives a noncube $g_i$. Hence
$$
\mathcal R=\langle\mathbf1\rangle.
$$
The pair classes span the quotient because, for distinct $i,j,k$,
$$
2e_i=(e_i+e_j)+(e_i+e_k)-(e_j+e_k).
$$
Every $g_i$ is a $p$-adic unit, since the $g_i$ are integral and their product $c^3=f(-a)$ is a $p$-adic unit. As $p$ is unramified, $v_{\mathfrak p}(p)=1$, so $p\prod g_i^{a_i}$ cannot be a cube. Thus $p$ is independent of the pair classes. Consequently every $M$-automorphism is uniquely described by a pair $(u,s)$ where $u\in\mathbb F_3^n$ and $s\in\mathbb F_3$, subject to the relation
$$
\sum_i u_i=0.
$$
Every such pair defines an automorphism by multiplying chosen cube roots by the corresponding powers of $\omega$.

Step 2: Convert the root-cycle conditions into orbit twists
Choose $\alpha_i^3=g_i$ with $\prod_i\alpha_i=c$, and choose $\eta^3=p$. For an extension fixing $\omega$ and inducing $\pi\in S_n$,
$$
\sigma(\alpha_i)=\omega^{u_i}\alpha_{\pi(i)},\qquad
\sigma(\eta)=\omega^s\eta.
$$
For $\beta_{ij}=\alpha_i\alpha_j$,
$$
\sigma(\beta_{ij})=\omega^{u_i+u_j}\beta_{\pi(i),\pi(j)}.
$$
If an orbit of unordered pairs has length $\ell$ and accumulated exponent $T$, then its three cubic roots form three $\ell$-cycles when $T=0$, and one $3\ell$-cycle when $T\neq0$. For $Q$, the accumulated exponent is $T+\ell s$.

Write $\alpha$ for the sum of the $u_i$ on the $2$-cycle, $\phi_i$ for the sum on the $i$th $5$-cycle, and $\psi_j$ for the sum on the $j$th $7$-cycle. The relevant pair orbits are:
- two length-$5$ orbits inside each $5$-cycle, each with twist $-\phi_i$;
- five length-$5$ orbits between two $5$-cycles, with twist $\phi_i+\phi_{i'}$;
- one length-$35$ orbit between a $5$- and a $7$-cycle, with twist $\phi_i-\psi_j$;
- three length-$7$ orbits inside each $7$-cycle, each with twist $-\psi_j$;
- seven length-$7$ orbits between two $7$-cycles, with twist $\psi_j+\psi_{j'}$.
Pairs involving the $2$-cycle have lengths $1$, $10$, or $14$, so they cannot contribute to the requested lengths.

Step 3: Reduce the three cycle counts to three distribution equations
For $a\in\mathbb F_3$, let
$$
n_a=\#\{i:\phi_i=a\},\qquad p_a=\#\{j:\psi_j=a\}.
$$
For the $Q$ condition put $q_a=p_{a+s}$, with indices modulo $3$. A zero-twist base orbit contributes three root cycles of the same length. Hence the three conditions are equivalent to
$$
2n_0+5\left(\binom{n_0}{2}+n_1n_2\right)=\frac{5r^2-r+8}{6},
$$
$$
n_0p_0+n_1p_1+n_2p_2=\frac{r^2-1}{3},
$$
$$
3q_0+7\left(\binom{q_0}{2}+q_1q_2\right)=\frac{7r^2-r+12}{6}.
$$
Since $r=3t+1$, write
$$
\begin{aligned}
n_0&=t+1+x,&
n_1&=t+\frac{-x+d}{2},&
n_2&=t+\frac{-x-d}{2},\\
q_0&=t+1+y,&
q_1&=t+\frac{-y+e}{2},&
q_2&=t+\frac{-y-e}{2}.
\end{aligned}
$$
Direct substitution gives the exact residuals
$$
5d^2=15x^2+18x,\qquad 7e^2=21y^2+26y.
$$
The middle equation becomes, according as $s=0,1,2$,
$$
\begin{aligned}
0&=de+3xy+2x+2y+2,\\
0&=de-3dy-2d+3ex+2e+3xy+2x+2y,\\
0&=de+3dy+2d-3ex-2e+3xy+2x+2y.
\end{aligned}
$$

Step 4: Classify all possibilities for the $5$-cycle distribution
Set $A=15x+9$ and $C=5d$. The first quadratic equation is
$$
A^2-3C^2=81.
$$
Reducing twice modulo $3$ shows $9\mid A$ and $9\mid C$, so $(A+C\sqrt3)/9$ has norm $1$ in $\mathbb Z[\sqrt3]$. The standard Pell description for $a^2-3b^2=1$, whose fundamental positive solution is $2+\sqrt3$, gives
$$
\frac{A+C\sqrt3}{9}=\pm(2+\sqrt3)^k.
$$
Since $5\mid C$, the coefficient of $\sqrt3$ must vanish modulo $5$. Because
$$
(2+\sqrt3)^3=26+15\sqrt3\equiv1\pmod5,
$$
while the first two powers have nonzero $\sqrt3$-coefficient modulo $5$, this forces $3\mid k$. The congruence $A\equiv9\pmod{15}$ fixes the positive sign. Interchanging the labels $1$ and $2$ if necessary permits $d\geq0$, so
$$
A+5d\sqrt3=9(2+\sqrt3)^{3j},\qquad j\geq0.
$$
The first values are
$$
(x,d)=(0,0),\ (15,27),\ (810,1404).
$$
Multiplication by $26+15\sqrt3$ gives
$$
A_{j+1}=26A_j+225d_j,\qquad d_{j+1}=3A_j+26d_j.
$$
Thus $d_3=72981$, and $d_j$ is increasing for $j\geq1$.

Step 5: Eliminate the two shifted cases for every nonzero Pell branch
For $j=0$, $x=d=0$. When $s=0$, the middle equation gives $y=-1$, incompatible with $7e^2=21y^2+26y$. When $s=1$ or $2$, it gives $e=-y$ or $e=y$, and the second quadratic then forces $y=e=0$. Hence there are exactly two balanced branches.

Now let $j\geq1$, so $x\geq15$ and $d>0$. Since
$$
d^2=3x^2+\frac{18}{5}x,
$$
we have $x<d<2x$. For $s=2$, eliminating $e$ from the middle equation and the quadratic for $e$ gives a quadratic in $y$ with discriminant
$$
8(-d+3x+2)^2(6x^2+47x+338-1011dx-702d)<0,
$$
because $d>x$ and $x\geq15$.

For $s=1$, the middle equation gives
$$
e=\frac{(3d-3x-2)y+2d-2x}{d+3x+2}.
$$
Define
$$
H(y)=7\left((3d-3x-2)y+2d-2x\right)^2-(d+3x+2)^2(21y^2+26y).
$$
Using the relation for $d^2$, its leading coefficient is negative and
$$
\begin{aligned}
H(-2)&=16(-26dx-22d+4x^2+8x-1)<0,\\
H(-1)&=\frac85(10dx-5d+55x^2+82x+30)>0,\\
H(0)&=\frac{56x}{5}(-5d+10x+9)>0,\\
H(1)&=\frac85(-395dx-205d+85x^2+23x-100)<0.
\end{aligned}
$$
Therefore its roots lie in $(-2,-1)$ and $(0,1)$, so no integer $y$ occurs. Interchanging labels $1$ and $2$ sends $(d,e,s)$ to $(-d,-e,-s)$, so the same conclusion covers $d<0$.

Step 6: Solve the remaining unshifted case and isolate the exceptional branch
For $s=0$ and $d\neq0$, the middle equation gives
$$
e=-\frac{(3x+2)y+2x+2}{d}.
$$
Substituting this into $7e^2=21y^2+26y$ and using $5d^2=15x^2+18x$ yields
$$
(21x+70)y^2+(15x^2+116x+140)y+70(x+1)^2=0.
$$
Its discriminant is
$$
d^2S^2,\qquad S^2=75x^2-890x-3500=\frac{A^2-196A-8817}{3}.
$$
For $j=1$, $x=15,d=27$, and the quadratic is a nonzero multiple of
$$
(y+7)(77y+512),
$$
so $y=-7$, and the middle equation gives $e=11$.

For $j=2$, $S^2=48483100$, while
$$
6962^2<S^2<6963^2,
$$
so $S^2$ is not a square. For $j\geq3$,
$$
3\left(S^2-(5d-56)^2\right)=1680d-196A-18144<0,
$$
because $A/d>\sqrt{75}>60/7$. Also $d\geq72981$ and, since $d>27$,
$$
\frac Ad=\sqrt{75+\frac{81}{d^2}}<\frac{26}{3}.
$$
Hence
$$
3\left(S^2-(5d-57)^2\right)=1710d-196A-18483>\frac{34}{3}d-18483>0.
$$
Thus $(5d-57)^2<S^2<(5d-56)^2$, impossible for a square. The only nonzero branch is
$$
(x,d,y,e,s)=(15,27,-7,11,0)
$$
and its label-swapped partner $(15,-27,-7,-11,0)$.

Step 7: Count the admissible lifts
The balanced branches have
$$
(n_0,n_1,n_2)=(t+1,t,t)
$$
and two possible $p$-distributions, obtained by placing the entry $t+1$ in position $1$ or $2$. Their labeled-cycle contribution is
$$
2\left(\frac{r!}{(t+1)!t!^2}\right)^2.
$$
The exceptional branches have
$$
(n_0,n_1,n_2)=(t+16,t+6,t-21),\qquad (p_0,p_1,p_2)=(t-6,t+9,t-2),
$$
or the simultaneous swap of positions $1$ and $2$. Since $t\geq22$, all entries are nonnegative. Their contribution is
$$
2\frac{r!}{(t+16)!(t+6)!(t-21)!}\frac{r!}{(t-6)!(t+9)!(t-2)!}.
$$
For fixed cycle sums, the sum $\alpha$ on the $2$-cycle is forced by $\sum_i u_i=0$. The permutation has $2r+1$ index cycles, so the number of $u$-vectors realizing prescribed cycle sums is
$$
3^{n-(2r+1)}=3^{10r+1}.
$$
The number of permutations of type $(2,5^r,7^r)$ is
$$
\frac{n!}{2\cdot5^r7^r(r!)^2}=\frac{n!}{2\cdot35^r(r!)^2}.
$$
Multiplying the permutation count, the Kummer lifts, and the two distribution contributions, then cancelling $(r!)^2$, gives the final expression.

Final Answer: $\boxed{\frac{3^{10r+1}n!}{35^r}(\frac{1}{(t+1)!^2t!^4}+\frac{1}{(t+16)!(t+6)!(t-21)!(t-6)!(t+9)!(t-2)!})}$

---

## Answer

$\frac{3^{10r+1}n!}{35^r}(\frac{1}{(t+1)!^2t!^4}+\frac{1}{(t+16)!(t+6)!(t-21)!(t-6)!(t+9)!(t-2)!})$

---

## Classification

**Problem Type:** Symbolic derivation

**Answer Type:** Exact symbolic expression

---

## Solution Concepts

- cubic Kummer theory
- permutation modules over finite fields
- orbit decomposition on two-subsets
- Pell equations
- multinomial counting
