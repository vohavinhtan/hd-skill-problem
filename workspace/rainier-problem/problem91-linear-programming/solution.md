## Steps

Step 1: Decode the objective as three hidden point evaluations

Put $t=x^2$ and write
$$
q(t)=a_4t^4+a_3t^3+a_2t^2+a_1t+a_0.
$$
Let $s<u$ be the roots of
$$
p(t)=t^2-\sigma t+\lambda.
$$
They are real and distinct because
$$
\sigma^2-4\lambda>
\left(\frac{7}{9}\right)^2-\frac{3}{5}
=\frac{2}{405}>0.
$$
Also $s,u>0$ and $s+u=\sigma<\frac{4}{5}$.

Newton's identities give
$$
s^2+u^2=\sigma^2-2\lambda,
$$
$$
s^3+u^3=\sigma^3-3\sigma\lambda,
$$
$$
s^4+u^4=\sigma^4-4\sigma^2\lambda+2\lambda^2.
$$
Hence the objective is exactly
$$
\Phi_{\sigma,\lambda}(P)=q(s)+q(u)+q(1).
$$
For every polynomial feasible in the relaxed problem,
$$
q(s)\leq\frac{1}{2-s},\qquad
q(u)\leq\frac{1}{2-u},\qquad
q(1)\leq\frac{4}{5}.
$$
Therefore
$$
\Phi_{\sigma,\lambda}(P)
\leq
\frac{4-\sigma}{4-2\sigma+\lambda}+\frac{4}{5}.
$$
Equality forces contact at the two hidden roots and at the endpoint.

Step 2: Construct the unique relaxed optimizer

Keep
$$
p(t)=t^2-\sigma t+\lambda,
\qquad
A=p(1)=1-\sigma+\lambda,
\qquad
B=p(2)=4-2\sigma+\lambda.
$$
Define
$$
h(t)=\frac{1-p(t)^2/B^2}{2-t}.
$$
The numerator vanishes at $t=2$, so $h$ is a cubic polynomial. Moreover
$$
\frac{1}{2-t}-h(t)
=\frac{p(t)^2}{(2-t)B^2},
$$
so $h$ is tangent to $1/(2-t)$ at both roots of $p$.

Now set
$$
q_{\sigma,\lambda}(t)
=
h(t)+
\left(\frac{1}{B^2}-\frac{1}{5A^2}\right)p(t)^2.
$$
This is a quartic polynomial, and
$$
q_{\sigma,\lambda}(s)=\frac{1}{2-s},\qquad
q_{\sigma,\lambda}(u)=\frac{1}{2-u},\qquad
q_{\sigma,\lambda}(1)=\frac{4}{5}.
$$
Its first slack factors as
$$
1-(2-t)q_{\sigma,\lambda}(t)
=
p(t)^2
\left(
\frac{2-t}{5A^2}-\frac{1-t}{B^2}
\right).
$$
On the parameter box,
$$
0<A<\frac{3}{8},\qquad B>\frac{5}{2},
$$
so $B^2>5A^2$. Thus the bracket is positive on $0\leq t\leq1$, and the quartic is feasible for the relaxed problem.

It attains the upper bound from Step 1. If another relaxed maximizer existed, equality would hold at $s,u,1$; the two interior equalities also force tangency to $1/(2-t)$. These five value-and-derivative conditions determine a quartic uniquely. Therefore
$$
P_{\sigma,\lambda}^*(x)=q_{\sigma,\lambda}(x^2).
$$

Step 3: Determine exactly when the relaxed optimizer satisfies the full constraint

Differentiate the construction from Step 2 at $t=1$. Since $p'(1)=2-\sigma$,
$$
q_{\sigma,\lambda}'(1)
=
1-\frac{A^2}{B^2}
-\frac{2(2-\sigma)}{5A}.
$$
Write
$$
g_r(t)=\frac{1}{\frac{5}{4}-r(1-t)}.
$$
Then $g_r(1)=\frac{4}{5}$ and $g_r'(1)=-\frac{16r}{25}$. Define
$$
\rho_\sigma(\lambda)
=
\frac{25}{16}
\left(
-1+\frac{A^2}{B^2}
+\frac{2(2-\sigma)}{5A}
\right).
$$
Thus $q_{\sigma,\lambda}$ and $g_r$ have the same endpoint slope exactly when $r=\rho_\sigma(\lambda)$.

It remains to prove that this slope test is the whole feasibility threshold. The two reciprocal bounds cross at
$$
c_r=\frac{r+\frac{3}{4}}{1+r}>\frac{4}{5}.
$$
We first prove that $q_{\sigma,\lambda}$ is strictly concave on $[\frac{4}{5},1]$. Since
$$
B-p(t)=(2-t)(2+t-\sigma),
$$
the cubic from Step 2 can also be written
$$
h(t)=\frac{(2+t-\sigma)(B+p(t))}{B^2}.
$$
Therefore
$$
q_{\sigma,\lambda}''(t)
=
\frac{H(t)+K(t)}{B^2}-\frac{K(t)}{5A^2},
$$
where
$$
H(t)=2(3t+2-2\sigma),
\qquad
K(t)=2(2t-\sigma)^2+4p(t).
$$
Both roots of $p$ are smaller than $\sigma<\frac{4}{5}$, so $p(t)>0$ on $[\frac{4}{5},1]$. Hence
$$
K(t)>\frac{32}{25},
\qquad
H(t)<\frac{62}{9}.
$$
Also $B>\frac{5}{2}$ and $A<\frac{3}{8}$ give
$$
\frac{B^2}{5A^2}>\frac{80}{9}
>
1+\frac{62/9}{32/25}
>
\frac{H(t)+K(t)}{K(t)}.
$$
Thus $q_{\sigma,\lambda}''(t)<0$ throughout $[\frac{4}{5},1]$.

When $r=\rho_\sigma(\lambda)$, the function
$$
g_r(t)-q_{\sigma,\lambda}(t)
$$
has value and derivative zero at $t=1$. On $[c_r,1]$ its second derivative is positive because $g_r''>0$ and $q_{\sigma,\lambda}''<0$. Hence it is nonnegative there. On $[0,c_r]$ one has $q_{\sigma,\lambda}\leq1/(2-t)\leq g_r$. Therefore the full constraint holds.

If $r>\rho_\sigma(\lambda)$, the same difference is still strictly convex on $[c_r,1]$, has value zero at $1$, and has derivative
$$
-\frac{16}{25}\bigl(r-\rho_\sigma(\lambda)\bigr)<0
$$
there; it is therefore positive to the left of $1$. If $r<\rho_\sigma(\lambda)$, that derivative is positive, so the difference is negative immediately to the left of $1$. Consequently
$$
P_{\sigma,\lambda}^*\text{ satisfies the full constraint}
\quad\Longleftrightarrow\quad
r\geq\rho_\sigma(\lambda).
$$

Step 4: Prove that the threshold parameter exists uniquely

Using $A=1-\sigma+\lambda$ and $B=4-2\sigma+\lambda$,
$$
\frac{\partial\rho_\sigma}{\partial\lambda}
=
\frac{25}{8}
\left(
\frac{A(3-\sigma)}{B^3}
-\frac{2-\sigma}{5A^2}
\right)<0.
$$
Indeed, the first term in parentheses is less than $\frac{4}{75}$, while the second is greater than $\frac{128}{75}$.

Also
$$
\frac{\partial\rho_\sigma}{\partial\sigma}
=
\frac{25}{16}
\left(
\frac{2A(\lambda-2)}{B^3}
+\frac{2(1-\lambda)}{5A^2}
\right)>0,
$$
because the magnitude of the negative term is less than $\frac{12}{125}$, whereas the positive term is greater than $\frac{544}{225}$.

At the two relevant corners,
$$
\rho_{7/9}\left(\frac{1}{9}\right)
=\frac{9595}{12696}>\frac{3}{4},
$$
and
$$
\rho_{4/5}\left(\frac{3}{20}\right)
=\frac{22205}{36414}<\frac{7}{10}.
$$
Thus for every allowed $(\sigma,r)$ there is exactly one
$$
z\in\left(\frac{1}{9},\frac{3}{20}\right)
$$
such that $r=\rho_\sigma(z)$. By Step 3, the full constraint fails for $\lambda<z$ and holds for $\lambda\geq z$. Therefore this $z$ is precisely $\Lambda_\sigma(r)$.

Step 5: Eliminate the threshold and normalize the polynomial

At $z=\Lambda_\sigma(r)$, put
$$
A_0=1-\sigma+z,\qquad B_0=4-2\sigma+z.
$$
The equation $r=\rho_\sigma(z)$ is equivalent to
$$
(16r+25)A_0B_0^2-25A_0^3-10(2-\sigma)B_0^2=0.
$$
Hence the required polynomial is
$$
F(\sigma,r,z)
=
(16r+25)(1-\sigma+z)(4-2\sigma+z)^2
-25(1-\sigma+z)^3
-10(2-\sigma)(4-2\sigma+z)^2.
$$

Its coefficient of $rz^3$ is $16>0$. As a polynomial in $r$ over $\mathbb Q[\sigma,z]$, its leading coefficient is $16A_0B_0^2$. The constant coefficient is not divisible by $A_0$, because substituting $z=\sigma-1$ gives $-10(2-\sigma)(3-\sigma)^2\neq0$, and it is not divisible by $B_0$, because substituting $z=2\sigma-4$ gives $-25(\sigma-3)^3\neq0$. Thus the two coefficients are coprime. The polynomial is linear in $r$, so Gauss's lemma gives irreducibility in $\mathbb Z[\sigma,r,z]$. Its integer content is $1$, since the expanded polynomial has coefficients $16$ and $-35$.

Final Answer: $\boxed{(16r+25)(1-\sigma+z)(4-2\sigma+z)^2-25(1-\sigma+z)^3-10(2-\sigma)(4-2\sigma+z)^2}$

---

## Answer

$(16r+25)(1-\sigma+z)(4-2\sigma+z)^2-25(1-\sigma+z)^3-10(2-\sigma)(4-2\sigma+z)^2$

---

## Classification

**Problem Type:** Parameter identification

**Answer Type:** Polynomial or rational function

---

## Solution Concepts

- semi-infinite linear programming
- newton sums
- hermite interpolation
- convexity certificate
- polynomial irreducibility
