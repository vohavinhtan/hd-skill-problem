## Steps

Step 1: Factor the hidden Frobenius operator

Let
$$
K=\mathbb F_p(t)
$$
and let $\sigma$ denote Frobenius,
$$
\sigma(x)=x^p.
$$
Dividing $F_p$ by the nonzero element $q^p$ shows that its roots are the kernel of
$$
\sigma^2-(q+q^{-p})\sigma+1.
$$
In the skew action on elements of an extension field,
$$
(\sigma-q)(\sigma-q^{-1})x
=x^{p^2}-(q+q^{-p})x^p+x.
$$
Thus
$$
F_p(x)=0
$$
is equivalent to
$$
(\sigma-q)(\sigma-q^{-1})x=0.
$$

Choose $u$ satisfying
$$
u^{p-1}=q.
$$
Then
$$
u^p=qu,
\qquad
(u^{-1})^p=q^{-1}u^{-1}.
$$
The polynomial $U^{p-1}-q$ is irreducible over $K$: if its degree were smaller, $q$ would be an $\ell$th power in $K$ for some prime $\ell\mid p-1$, contradicting
$$
v_{t=0}(q)=1.
$$
Hence
$$
E=K(u)
$$
has degree $p-1$ over $K$.

Step 2: Reconstruct the full splitting field

Choose $z$ satisfying
$$
z^p-z=u^{p+1}.
$$
For $c,d\in\mathbb F_p$, set
$$
x_{c,d}=u^{-1}(cz+d).
$$
Using Step 1,
$$
(\sigma-q^{-1})x_{c,d}
=q^{-1}u^{-1}c(z^p-z)
=cu.
$$
Since
$$
(\sigma-q)(cu)=cu^p-qcu=0,
$$
every $x_{c,d}$ is a root of $F_p$.

These $p^2$ roots are distinct. Indeed,
$$
x_{c,d}=x_{c',d'}
$$
would give
$$
(c-c')z=d'-d.
$$
If $c\ne c'$, then $z\in\mathbb F_p$, contradicting
$$
z^p-z=u^{p+1}\ne0;
$$
if $c=c'$, then $d=d'$.

The normalized polynomial has degree $p^2$, so these are all its roots. Therefore its splitting field is contained in
$$
E(z)=\mathbb F_p(t,u,z).
$$
Conversely, the splitting field contains
$$
x_{0,1}=u^{-1},
$$
so it contains $u$, and it also contains
$$
x_{1,0}=u^{-1}z,
$$
so it contains $z$. Hence
$$
L_p=E(z).
$$

Step 3: Compute the genus and the divisor of $u$ in $E$

Put
$$
n=p-1.
$$
The Kummer equation
$$
u^n=t(t-1)
$$
defines a degree-$n$ cover of the rational $t$-line.

The divisor of $t(t-1)$ on $K$ has valuations
$$
1,\qquad1,\qquad-2
$$
at $t=0$, $t=1$, and infinity. Since $p$ is odd,
$$
\gcd(n,2)=2.
$$
Thus the two finite places are totally ramified, while infinity has ramification index $n/2$ and splits into two places. The tame different contributions are
$$
n-1,\qquad n-1,\qquad n-2.
$$
Riemann-Hurwitz gives
$$
2g(E)-2=-2n+(n-1)+(n-1)+(n-2)=n-4.
$$
Therefore
$$
g(E)=\frac{p-3}{2}.
$$

Let $P_0,P_1$ be the places above $t=0,1$, and let $P_\infty^+,P_\infty^-$ be the two places above infinity. From
$$
u^n=t(t-1)
$$
and the ramification indices just found,
$$
v_{P_0}(u)=v_{P_1}(u)=1,
$$
and
$$
v_{P_\infty^+}(u)=v_{P_\infty^-}(u)=-1.
$$
Hence
$$
\operatorname{div}(u)=P_0+P_1-P_\infty^+-P_\infty^-.
$$

Step 4: Determine the Artin-Schreier different

By Step 2,
$$
L_p=E(z),
\qquad
z^p-z=u^{p+1}.
$$
The right side has poles only at
$$
P_\infty^+,\qquad P_\infty^-,
$$
and at either one the pole order is
$$
p+1.
$$
Since $p\nmid p+1$, the Artin-Schreier equation cannot be reduced to an element without a pole there. In particular,
$$
[L_p:E]=p,
$$
and each of these two places is totally ramified.

Fix one of them and put
$$
\pi=u^{-1}.
$$
Then $\pi$ is a local uniformizer in $E$, and locally
$$
z^p-z=\pi^{-(p+1)}.
$$
Normalize the extended valuation so that
$$
v(\pi)=p.
$$
The equation then forces
$$
v(z)=-(p+1).
$$
Since
$$
p^2-(p-1)(p+1)=1,
$$
the element
$$
\theta=\pi^p z^{p-1}
$$
is a uniformizer of the completed field.

Every nontrivial local Galois automorphism has the form
$$
\tau_c(z)=z+c,
\qquad
c\in\mathbb F_p^\times.
$$
Therefore
$$
\tau_c(\theta)-\theta
=\pi^p\left((z+c)^{p-1}-z^{p-1}\right).
$$
The highest power surviving in the difference is $z^{p-2}$, with coefficient
$$
(p-1)c=-c\ne0.
$$
All lower powers have larger valuation, so
$$
v(\tau_c(\theta)-\theta)
=p^2-(p-2)(p+1)=p+2.
$$
Summing over the $p-1$ nontrivial automorphisms, the local different exponent is
$$
(p-1)(p+2).
$$
There are two such ramified places, so
$$
\deg\operatorname{Diff}(L_p/E)=2(p-1)(p+2).
$$

Step 5: Apply Riemann-Hurwitz to the Artin-Schreier extension

Using Step 3,
$$
2g(E)-2=p-5.
$$
Using Step 4 and $[L_p:E]=p$, Riemann-Hurwitz gives
$$
2g(L_p)-2
=p(p-5)+2(p-1)(p+2).
$$
The right side simplifies to
$$
3p^2-3p-4.
$$
Therefore
$$
2g(L_p)=3p^2-3p-2,
$$
and
$$
g(L_p)=\frac{3p^2-3p-2}{2}.
$$

Final Answer: $\boxed{\frac{3p^2-3p-2}{2}}$

---

## Answer

$\frac{3p^2-3p-2}{2}$

---

## Classification

**Problem Type:** Exact computation

**Answer Type:** Exact scalar

---

## Solution Concepts

- semilinear Frobenius operators
- Kummer extensions
- Artin-Schreier extensions
- local different exponents
- Riemann-Hurwitz
