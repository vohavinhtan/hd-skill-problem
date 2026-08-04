## Steps

Step 1:
Recover the candidate from the moment data. In a constrained minimum with $f\geq0$, the Euler equation on any interval where the minimizer is positive has the form
$$
2f''(x)+\lambda_0+\lambda_1x+\lambda_2x^2+\lambda_3\rho(x)+\lambda_4\rho(x)^2=0
$$
for constants $\lambda_0,\ldots,\lambda_4$. On an interval contained in $[0,1/2]$ or in $[1/2,1]$, the right side is a quadratic polynomial. If such an interval has contact with $f=0$ at both endpoints, the $C^1$ condition forces a double zero at each endpoint. Thus the active piece must have the form
$$
A(x-a)^2(b-x)^2.
$$
This is the source of the quartic bump shape; it is not guessed.

The two $\rho$-moments determine the right bump first. Write $z=x-1/2$ and look for the right active piece in the form
$$
A z^2(M-z)^2\qquad(0\leq z\leq M).
$$
For $L>0$,
$$
\int_0^L y^3(L-y)^2\,dy=\frac{L^6}{60},
\qquad
\int_0^L y^4(L-y)^2\,dy=\frac{L^7}{105}.
$$
Using
$$
\int_0^1\rho(x)f(x)\,dx=\frac1{15360},
\qquad
\int_0^1\rho(x)^2f(x)\,dx=\frac1{107520},
$$
the ratio gives
$$
\frac{1/107520}{1/15360}
=\frac{A M^7/105}{A M^6/60}
=\frac{4M}{7}.
$$
Hence
$$
M=\frac14.
$$
Then
$$
A\frac{M^6}{60}=\frac1{15360}
$$
gives
$$
A=16.
$$
So the right piece is
$$
16\max\left\{x-\frac{1}{2},0\right\}^2
\max\left\{\frac{3}{4}-x,0\right\}^2.
$$

Subtracting its ordinary moments from the first two moment constraints leaves the left mass and first moment
$$
\frac{91}{51840}-\frac1{1920}=\frac1{810},
\qquad
\frac{917}{1244160}-\frac1{3072}=\frac1{2430}.
$$
For a left bump
$$
B(x-a)^2\left(\frac12-x\right)^2
\qquad(a\leq x\leq1/2),
$$
its centroid is the midpoint of its support, so
$$
\frac{1/2430}{1/810}=\frac13=\frac{a+1/2}{2}.
$$
Thus
$$
a=\frac16.
$$
The length is $L=1/3$, and the mass condition gives
$$
B\frac{L^5}{30}=\frac1{810},
$$
so
$$
B=9.
$$
The remaining $x^2$ moment is then a check rather than a source of the candidate; it is verified in the next step. Therefore the candidate forced by this active-set calculation is
$$
\phi(x)=9\max\left\{x-\frac{1}{6},0\right\}^2\max\left\{\frac{1}{2}-x,0\right\}^2
+16\max\left\{x-\frac{1}{2},0\right\}^2\max\left\{\frac{3}{4}-x,0\right\}^2 .
$$
Equivalently, on the two nonzero intervals,
$$
\phi(x)=9\left(x-\frac{1}{6}\right)^2\left(\frac{1}{2}-x\right)^2
\qquad \left(\frac{1}{6}\leq x\leq\frac{1}{2}\right),
$$
$$
\phi(x)=16\left(x-\frac{1}{2}\right)^2\left(\frac{3}{4}-x\right)^2
\qquad \left(\frac{1}{2}\leq x\leq\frac{3}{4}\right),
$$
and $\phi(x)=0$ elsewhere. At $x=1/6,1/2,3/4$ the adjacent nonzero factor has a double zero, so the value and first derivative from both sides are $0$. Also $\phi(0)=\phi(1)=0$ and $\phi\geq0$, so $\phi\in\mathcal F$.

Step 2:
Verify the five constraints from displayed antiderivatives. For $L>0$,
$$
\int_{0}^{L}y^2(L-y)^2\,dy
=L^2\frac{L^3}{3}-2L\frac{L^4}{4}+\frac{L^5}{5}
=L^5\left(\frac{1}{3}-\frac{1}{2}+\frac{1}{5}\right)
=\frac{L^5}{30},
$$
$$
\int_{0}^{L}y^3(L-y)^2\,dy
=L^2\frac{L^4}{4}-2L\frac{L^5}{5}+\frac{L^6}{6}
=L^6\left(\frac{1}{4}-\frac{2}{5}+\frac{1}{6}\right)
=\frac{L^6}{60},
$$
$$
\int_{0}^{L}y^4(L-y)^2\,dy
=L^2\frac{L^5}{5}-2L\frac{L^6}{6}+\frac{L^7}{7}
=L^7\left(\frac{1}{5}-\frac{1}{3}+\frac{1}{7}\right)
=\frac{L^7}{105}.
$$
Write $\phi_L$ and $\phi_R$ for the left and right summands of $\phi$. On the left interval, write $x=1/6+y$ and $L=1/3$. Then
$$
\int_{0}^{1}\phi_L(x)\,dx=9\frac{L^5}{30}
=9\frac{1}{30\cdot3^5}
=\frac{1}{810},
$$
$$
\int_{0}^{1}x\phi_L(x)\,dx
=9\left(\frac{1}{6}\frac{L^5}{30}+\frac{L^6}{60}\right)
=\frac{1}{6}\frac{1}{810}+\frac{9}{60\cdot3^6}
=\frac{1}{4860}+\frac{1}{4860}
=\frac{1}{2430},
$$
$$
\int_{0}^{1}x^2\phi_L(x)\,dx
=9\left(\frac{1}{36}\frac{L^5}{30}+\frac{1}{3}\frac{L^6}{60}+\frac{L^7}{105}\right)
=\frac{1}{29160}+\frac{1}{14580}+\frac{1}{25515}
=\frac{29}{204120}.
$$
Since $x\leq1/2$ on this left interval, the two $\rho$-moments from $\phi_L$ are $0$.

On the right interval, write $x=1/2+z$ and $M=1/4$. Then
$$
\int_{0}^{1}\phi_R(x)\,dx=16\frac{M^5}{30}
=16\frac{1}{30\cdot4^5}
=\frac{1}{1920},
$$
$$
\int_{0}^{1}\rho(x)\phi_R(x)\,dx
=16\frac{M^6}{60}
=16\frac{1}{60\cdot4^6}
=\frac{1}{15360},
$$
$$
\int_{0}^{1}\rho(x)^2\phi_R(x)\,dx
=16\frac{M^7}{105}
=16\frac{1}{105\cdot4^7}
=\frac{1}{107520}.
$$
Also $x=1/2+\rho(x)$ on the right interval, so
$$
\int_{0}^{1}x\phi_R(x)\,dx
=\frac{1}{2}\frac{1}{1920}+\frac{1}{15360}
=\frac{1}{3840}+\frac{1}{15360}
=\frac{1}{3072},
$$
and
$$
\int_{0}^{1}x^2\phi_R(x)\,dx
=\frac{1}{4}\frac{1}{1920}+\frac{1}{15360}+\frac{1}{107520}
=\frac{1}{7680}+\frac{1}{15360}+\frac{1}{107520}
=\frac{11}{53760}.
$$
Adding left and right pieces gives
$$
\int_{0}^{1}\phi(x)\,dx
=\frac{1}{810}+\frac{1}{1920}
=\frac{64}{51840}+\frac{27}{51840}
=\frac{91}{51840},
$$
$$
\int_{0}^{1}x\phi(x)\,dx
=\frac{1}{2430}+\frac{1}{3072}
=\frac{512}{1244160}+\frac{405}{1244160}
=\frac{917}{1244160},
$$
$$
\int_{0}^{1}x^2\phi(x)\,dx
=\frac{29}{204120}+\frac{11}{53760}
=\frac{1856}{13063680}+\frac{2673}{13063680}
=\frac{4529}{13063680}
=\frac{647}{1866240}.
$$
Together with the displayed right-side $\rho$-moments, $\phi$ satisfies all constraints.

Step 3:
Build the energy certificate. On the two intervals where $\phi>0$, compute second derivatives.
For $1/6\leq x\leq1/2$, put $y=x-1/6$ and $L=1/3$. Since
$$
\frac{d^2}{dy^2}\left(y^2(L-y)^2\right)=2L^2-12Ly+12y^2,
$$
we get
$$
\phi''(x)=9\left(\frac{2}{9}-4y+12y^2\right)
=2-36\left(x-\frac{1}{6}\right)+108\left(x-\frac{1}{6}\right)^2
=108x^2-72x+11.
$$
For $1/2\leq x\leq3/4$, put $z=x-1/2$ and $M=1/4$. Then
$$
\phi''(x)=16\left(\frac{1}{8}-3z+12z^2\right)
=2-48\left(x-\frac{1}{2}\right)+192\left(x-\frac{1}{2}\right)^2
=192x^2-240x+74.
$$
Define
$$
G(x)=-22+144x-216x^2+168\rho(x)-168\rho(x)^2.
$$
For $x\leq1/2$, $\rho(x)=0$, so
$$
G(x)=-22+144x-216x^2=-2(108x^2-72x+11)=-2\phi''(x)
$$
on the left active interval. For $x\geq1/2$, $\rho(x)=x-1/2$, and
$$
168\rho(x)-168\rho(x)^2
=168\left(x-\frac{1}{2}\right)-168\left(x^2-x+\frac{1}{4}\right)
=-168x^2+336x-126.
$$
So
$$
G(x)=-384x^2+480x-148=-2(192x^2-240x+74)=-2\phi''(x)
$$
on the right active interval.

Step 4:
Prove minimality. Let $f$ be any feasible function and set $h=f-\phi$. The five moment constraints for $f$ and $\phi$ give
$$
\int_{0}^{1}h\,dx=\int_{0}^{1}xh\,dx=\int_{0}^{1}x^2h\,dx
=\int_{0}^{1}\rho h\,dx=\int_{0}^{1}\rho^2h\,dx=0.
$$
Because $G$ is a linear combination of $1,x,x^2,\rho,\rho^2$, this gives
$$
\int_{0}^{1}G(x)h(x)\,dx=0.
$$
Now expand the energy difference:
$$
E(f)-E(\phi)
=\int_{0}^{1}\bigl((\phi'+h')^2-(\phi')^2\bigr)\,dx
=\int_{0}^{1}(h')^2\,dx+2\int_{0}^{1}\phi'h'\,dx.
$$
The function $\phi'$ is zero on the contact intervals $[0,1/6]$ and $[3/4,1]$. Integrating by parts on $[1/6,1/2]$ and $[1/2,3/4]$, the boundary terms are zero because $\phi'=0$ at $1/6,1/2,3/4$. Thus
$$
2\int_{0}^{1}\phi'h'\,dx
=\int_{1/6}^{1/2}G(x)h(x)\,dx+\int_{1/2}^{3/4}G(x)h(x)\,dx.
$$
Using $\int_0^1Gh=0$, this becomes
$$
2\int_{0}^{1}\phi'h'\,dx
=-\int_{0}^{1/6}G(x)h(x)\,dx-\int_{3/4}^{1}G(x)h(x)\,dx.
$$
On the left contact interval,
$$
G(x)=2-216\left(x-\frac{1}{3}\right)^2.
$$
Since $0\leq x\leq1/6$, we have $\left|x-\frac{1}{3}\right|\geq\frac{1}{6}$, so
$$
G(x)\leq 2-216\frac{1}{36}=-4.
$$
On the right contact interval,
$$
G(x)=2-384\left(x-\frac{5}{8}\right)^2.
$$
Since $3/4\leq x\leq1$, we have $\left|x-\frac{5}{8}\right|\geq\frac{1}{8}$, so
$$
G(x)\leq 2-384\frac{1}{64}=-4.
$$
On both contact intervals $\phi=0$, so $h=f-\phi=f\geq0$. Hence
$$
-\int_{0}^{1/6}G(x)h(x)\,dx-\int_{3/4}^{1}G(x)h(x)\,dx\geq0.
$$
Therefore
$$
E(f)-E(\phi)
=\int_{0}^{1}(h')^2\,dx
-\int_{0}^{1/6}G(x)h(x)\,dx
-\int_{3/4}^{1}G(x)h(x)\,dx
\geq0.
$$
If equality holds, then $\int_0^1(h')^2\,dx=0$, so $h$ is constant on $[0,1]$. Since $h(0)=f(0)-\phi(0)=0$, the constant is $0$. Thus $f=\phi$, so the minimizer is unique.

Step 5:
The unique minimizer is the displayed function
$$
f(x)=9\max\left\{x-\frac{1}{6},0\right\}^2\max\left\{\frac{1}{2}-x,0\right\}^2
+16\max\left\{x-\frac{1}{2},0\right\}^2\max\left\{\frac{3}{4}-x,0\right\}^2 .
$$
Final Answer: $\boxed{f(x)=9\max\left\{x-\frac{1}{6},0\right\}^2\max\left\{\frac{1}{2}-x,0\right\}^2+16\max\left\{x-\frac{1}{2},0\right\}^2\max\left\{\frac{3}{4}-x,0\right\}^2}$

---

## Answer

$f(x)=9\max\left\{x-\frac{1}{6},0\right\}^2\max\left\{\frac{1}{2}-x,0\right\}^2+16\max\left\{x-\frac{1}{2},0\right\}^2\max\left\{\frac{3}{4}-x,0\right\}^2$

---

## Black-Box Audit

- Step 1 -- Level 1: the quartic bump shape is derived from the Euler equation on positive intervals, and the two bump locations and coefficients are recovered from moment ratios.
- Step 2 -- Level 1: every moment value is obtained from the three displayed antiderivative identities.
- Step 3 -- Level 1: the dual function $G$ is derived term by term from $\phi''$.
- Step 4 -- Level 1: the lower bound is a displayed energy gap identity; no optimality theorem is used as a black box.

---

## Verification

- Feasibility check: Step 2 verifies all five moment constraints and Step 1 verifies nonnegativity and endpoint conditions.
- Lower-bound check: Step 4 proves $E(f)-E(\phi)\geq0$ for every feasible $f$ by an explicit gap identity.
- Counterexample attack: a competing function with the same five moments would have $h=f-\phi$. The moment equations force $\int Gh=0$, and the contact-set sign of $G$ forces the energy gap in Step 4 to be nonnegative. No lower-energy counterexample survives this attack.
- Boundary attack: on $[0,1/6]$, $G(x)\leq-4$; on $[3/4,1]$, $G(x)\leq-4$; at the interior contact point $x=1/2$, both adjacent pieces and their first derivatives are $0$.
- Independent re-derivation: the expression in the final answer is equivalent to the piecewise form with nonzero pieces $9(x-1/6)^2(1/2-x)^2$ on $[1/6,1/2]$ and $16(x-1/2)^2(3/4-x)^2$ on $[1/2,3/4]$.
- Accepted-style step certificate: Step 4 contains the certificate, namely the explicit dual function $G$ and the energy gap identity.

---

## Classification

**Domain/Sub-domain:** Calculus / Integration

**Problem Type:** Optimization

**Answer Type:** Function or mapping

---

## Concepts (1-5)

- Constrained energy minimization
- Active set reconstruction
- Moment constraints
- Integration by parts
- Dual energy gap certificate

---

## Confidence

High because the candidate is feasible by exact moment calculations, and the energy gap proves global optimality and uniqueness.
