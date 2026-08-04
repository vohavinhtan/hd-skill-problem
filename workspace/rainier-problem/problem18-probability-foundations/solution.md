## Steps

Step 1: Convert the first displayed polynomial into an upper bound
Put
$$
a=s^2,\qquad b=t^2,\qquad c=r^2.
$$
Then $0\leq a,b,c\leq 1$, and
$$
R=a+b+c,\qquad Q=ab+bc+ca,\qquad P=abc.
$$
Define
$$
H=(2a-1)(2b-1)(2c-1).
$$
The expansion is short enough to check by hand. First,
$$
(2a-1)(2b-1)=4ab-2a-2b+1.
$$
Multiplying by $2c-1$ gives
$$
\begin{aligned}
H
&=(4ab-2a-2b+1)(2c-1)\\
&=8abc-4ab-4ac+2a-4bc+2b+2c-1\\
&=8P-4Q+2R-1.
\end{aligned}
$$
Squaring $8P-4Q+2R-1$ gives the first integrand in the problem. The square has four square terms and six cross terms:
$$
\begin{aligned}
H^2
&=(8P)^2+(-4Q)^2+(2R)^2+(-1)^2\\
&\quad +2(8P)(-4Q)+2(8P)(2R)+2(8P)(-1)\\
&\quad +2(-4Q)(2R)+2(-4Q)(-1)+2(2R)(-1)\\
&=64P^2+16Q^2+4R^2+1\\
&\quad -64PQ+32PR-16P-16QR+8Q-4R.
\end{aligned}
$$
At the origin $(s,t,r)=(0,0,0)$, one has $H=-1$, so $H^2=1$. Away from the origin, the indicator of the origin is $0$, while $H^2\geq0$. Therefore
$$
\mathbf 1_{\{(0,0,0)\}}\leq H^2
$$
pointwise, and every feasible measure satisfies
$$
\Lambda(\{(0,0,0)\})\leq\int H^2\,d\Lambda=\frac{1}{3}.
$$
So the largest possible atom at the origin is at most $\frac{1}{3}$.

Step 2: Analyze the equality case for the upper bound
Suppose a feasible measure attains the largest possible value $\Lambda(\{(0,0,0)\})=\frac{1}{3}$. Since $H^2-\mathbf 1_{\{(0,0,0)\}}\geq0$ and its integral is
$$
\int H^2\,d\Lambda-\Lambda(\{(0,0,0)\})=\frac{1}{3}-\frac{1}{3}=0,
$$
the nonnegative function $H^2-\mathbf 1_{\{(0,0,0)\}}$ must vanish $\Lambda$-almost everywhere. In particular, outside the origin,
$$
H=0.
$$
Thus at least one of $a,b,c$ is equal to $\frac{1}{2}$ outside the origin.

The second polynomial factors as
$$
2R^3-5R^2+4R-1=(R-1)^2(2R-1),
$$
because
$$
(R^2-2R+1)(2R-1)=2R^3-5R^2+4R-1.
$$
At the origin this value is $-1$. Since the origin has mass $\frac{1}{3}$ and the total integral is $-\frac{1}{3}$, the part of the measure outside the origin has
$$
\int_{\{(0,0,0)\}^c}(R-1)^2(2R-1)\,d\Lambda
=-\frac{1}{3}-\left(-1\cdot\frac{1}{3}\right)=0.
$$
On the outside support already forced by $H=0$, at least one of $a,b,c$ is $\frac{1}{2}$, so $R\geq\frac{1}{2}$. Hence
$$
(R-1)^2(2R-1)\geq0
$$
there. Its integral is $0$, so it must vanish $\Lambda$-almost everywhere outside the origin. Therefore every outside point in the support has
$$
R=\frac{1}{2}\quad\text{or}\quad R=1.
$$

Step 3: Reduce the possible support to three squared-coordinate orbits
The third displayed condition is
$$
\int(32P^2-P)\,d\Lambda=0.
$$
The origin contributes $0$ to this integral. On the outside support, one squared coordinate is $\frac{1}{2}$.

If $R=\frac{1}{2}$, then the squared-coordinate triple must be a permutation of
$$
\left(\frac{1}{2},0,0\right),
$$
so $P=0$.

If $R=1$, write the squared-coordinate triple after a permutation as
$$
\left(\frac{1}{2},x,y\right)
$$
with $x,y\geq0$ and $x+y=\frac{1}{2}$. Then
$$
P=\frac{xy}{2}.
$$
The identity
$$
0\leq(x-y)^2=x^2-2xy+y^2
$$
implies
$$
4xy\leq x^2+2xy+y^2=(x+y)^2=\frac{1}{4},
$$
so
$$
0\leq P=\frac{xy}{2}\leq\frac{1}{32}.
$$
Therefore
$$
32P^2-P=P(32P-1)\leq0
$$
on the outside support. Its integral is $0$, so $P(32P-1)=0$ almost everywhere there.

For $R=1$, the condition $P=0$ gives $xy=0$. Since $x+y=\frac{1}{2}$, the squared-coordinate triple is a permutation of
$$
\left(\frac{1}{2},\frac{1}{2},0\right).
$$
The condition $P=\frac{1}{32}$ gives $xy=\frac{1}{16}$. Together with $x+y=\frac{1}{2}$, the displayed inequality can be an equality only when $x=y$. Hence $x=y=\frac{1}{4}$, and the squared-coordinate triple is a permutation of
$$
\left(\frac{1}{2},\frac{1}{4},\frac{1}{4}\right).
$$
Thus any maximizing measure is supported on the origin and on the sign-permutation orbits of
$$
\left(\frac1{\sqrt{2}},0,0\right),\qquad
\left(\frac1{\sqrt{2}},\frac1{\sqrt{2}},0\right),\qquad
\left(\frac1{\sqrt{2}},\frac{1}{2},\frac{1}{2}\right).
$$

Step 4: Determine the orbit masses
Let $w_A,w_B,w_C$ be the total masses on the three nonzero orbits whose squared-coordinate representatives are
$$
A=\left(\frac{1}{2},0,0\right),\qquad
B=\left(\frac{1}{2},\frac{1}{2},0\right),\qquad
C=\left(\frac{1}{2},\frac{1}{4},\frac{1}{4}\right).
$$
The atom at the origin is $\frac{1}{3}$, so
$$
w_A+w_B+w_C=\frac{2}{3}.
$$
The values of $P$ on these orbits are
$$
P(A)=0,\qquad P(B)=0,\qquad P(C)=\frac{1}{2}\cdot\frac{1}{4}\cdot\frac{1}{4}=\frac{1}{32}.
$$
Using $\int P\,d\Lambda=\frac{1}{96}$ gives
$$
\frac{1}{32}w_C=\frac{1}{96},
$$
so
$$
w_C=\frac{1}{3}.
$$
Then
$$
w_A+w_B=\frac{2}{3}-\frac{1}{3}=\frac{1}{3}.
$$
The values of $R$ on the three orbits are
$$
R(A)=\frac{1}{2},\qquad R(B)=1,\qquad R(C)=1.
$$
Using $\int R\,d\Lambda=\frac{7}{12}$ gives
$$
\frac{1}{2} w_A+w_B+w_C=\frac{7}{12}.
$$
Substitute $w_C=\frac{1}{3}$ and $w_B=\frac{1}{3}-w_A$:
$$
\frac{1}{2}w_A+\left(\frac{1}{3}-w_A\right)+\frac{1}{3}=\frac{7}{12}.
$$
The left side is
$$
\frac{2}{3}-\frac{1}{2}w_A.
$$
Hence
$$
\frac{2}{3}-\frac{1}{2}w_A=\frac{7}{12},
$$
so
$$
\frac{1}{2}w_A=\frac{2}{3}-\frac{7}{12}=\frac{8}{12}-\frac{7}{12}=\frac{1}{12},
$$
and therefore
$$
w_A=\frac{1}{6},\qquad w_B=\frac{1}{3}-\frac{1}{6}=\frac{1}{6}.
$$
Since $\Lambda$ is invariant under independent sign changes and coordinate permutations, each finite orbit must carry its total mass uniformly. The orbit sizes are $6$, $12$, and $24$, so the per-point masses are
$$
\frac{1}{6\cdot 6}=\frac{1}{36},\qquad
\frac{1}{6\cdot 12}=\frac{1}{72},\qquad
\frac{1}{3\cdot 24}=\frac{1}{72}.
$$

Step 5: Check that the measure really attains the bound
Consider the measure
$$
\begin{aligned}
\Lambda_*&=\frac{1}{3}\delta_{(0,0,0)}\\
&+\frac{1}{36}\sum_{\varepsilon\in\{-1,1\}}\left(\delta_{(\frac{\varepsilon}{\sqrt{2}},0,0)}+\delta_{(0,\frac{\varepsilon}{\sqrt{2}},0)}+\delta_{(0,0,\frac{\varepsilon}{\sqrt{2}})}\right)\\
&+\frac{1}{72}\sum_{\varepsilon,\eta\in\{-1,1\}}\left(\delta_{(\frac{\varepsilon}{\sqrt{2}},\frac{\eta}{\sqrt{2}},0)}+\delta_{(\frac{\varepsilon}{\sqrt{2}},0,\frac{\eta}{\sqrt{2}})}+\delta_{(0,\frac{\varepsilon}{\sqrt{2}},\frac{\eta}{\sqrt{2}})}\right)\\
&+\frac{1}{72}\sum_{\varepsilon,\eta,\theta\in\{-1,1\}}\left(\delta_{(\frac{\varepsilon}{\sqrt{2}},\frac{\eta}{2},\frac{\theta}{2})}+\delta_{(\frac{\eta}{2},\frac{\varepsilon}{\sqrt{2}},\frac{\theta}{2})}+\delta_{(\frac{\eta}{2},\frac{\theta}{2},\frac{\varepsilon}{\sqrt{2}})}\right).
\end{aligned}
$$
It has total mass
$$
\frac{1}{3}+6\cdot\frac{1}{36}+12\cdot\frac{1}{72}+24\cdot\frac{1}{72}
=\frac{1}{3}+\frac{1}{6}+\frac{1}{6}+\frac{1}{3}=1.
$$
It is invariant under all independent sign changes and coordinate permutations by construction.

For the first integrand, the origin contributes $1\cdot\frac{1}{3}$. On each nonzero orbit, at least one squared coordinate equals $\frac{1}{2}$, so $H=0$. Therefore
$$
\int H^2\,d\Lambda_*=\frac{1}{3}.
$$
For the second integrand, the origin contributes $-1\cdot\frac{1}{3}$. On the orbit $A$ one has $R=\frac{1}{2}$, and on the orbits $B$ and $C$ one has $R=1$, so $(R-1)^2(2R-1)=0$ on all nonzero orbits. Hence
$$
\int(2R^3-5R^2+4R-1)\,d\Lambda_*=-\frac{1}{3}.
$$
For the third integrand, $P=0$ on $A$ and $B$, while $P=\frac{1}{32}$ on $C$. Thus
$$
32P^2-P=32\cdot\frac{1}{32^2}-\frac{1}{32}=\frac{1}{32}-\frac{1}{32}=0
$$
on every nonzero orbit, and the integral is $0$.

The remaining two moments are
$$
\int R\,d\Lambda_*=\frac{1}{6}\cdot\frac{1}{2}+\frac{1}{6}\cdot1+\frac{1}{3}\cdot1
=\frac{1}{12}+\frac{2}{12}+\frac{4}{12}=\frac{7}{12},
$$
and
$$
\int P\,d\Lambda_*=\frac{1}{3}\cdot\frac{1}{32}=\frac{1}{96}.
$$
Thus $\Lambda_*$ is feasible and has $\Lambda_*(\{(0,0,0)\})=\frac{1}{3}$. The upper bound in the first part shows no feasible measure can put more mass at the origin, and the equality-case analysis forces the same three orbits and the same three orbit masses. Therefore the maximizer is unique.
Final Answer: $\boxed{\frac{1}{3}\delta_{(0,0,0)}+\frac{1}{36}\sum_{\varepsilon\in\{-1,1\}}\left(\delta_{(\frac{\varepsilon}{\sqrt{2}},0,0)}+\delta_{(0,\frac{\varepsilon}{\sqrt{2}},0)}+\delta_{(0,0,\frac{\varepsilon}{\sqrt{2}})}\right)+\frac{1}{72}\sum_{\varepsilon,\eta\in\{-1,1\}}\left(\delta_{(\frac{\varepsilon}{\sqrt{2}},\frac{\eta}{\sqrt{2}},0)}+\delta_{(\frac{\varepsilon}{\sqrt{2}},0,\frac{\eta}{\sqrt{2}})}+\delta_{(0,\frac{\varepsilon}{\sqrt{2}},\frac{\eta}{\sqrt{2}})}\right)+\frac{1}{72}\sum_{\varepsilon,\eta,\theta\in\{-1,1\}}\left(\delta_{(\frac{\varepsilon}{\sqrt{2}},\frac{\eta}{2},\frac{\theta}{2})}+\delta_{(\frac{\eta}{2},\frac{\varepsilon}{\sqrt{2}},\frac{\theta}{2})}+\delta_{(\frac{\eta}{2},\frac{\theta}{2},\frac{\varepsilon}{\sqrt{2}})}\right)}$

---

## Answer

$\frac{1}{3}\delta_{(0,0,0)}+\frac{1}{36}\sum_{\varepsilon\in\{-1,1\}}\left(\delta_{(\frac{\varepsilon}{\sqrt{2}},0,0)}+\delta_{(0,\frac{\varepsilon}{\sqrt{2}},0)}+\delta_{(0,0,\frac{\varepsilon}{\sqrt{2}})}\right)+\frac{1}{72}\sum_{\varepsilon,\eta\in\{-1,1\}}\left(\delta_{(\frac{\varepsilon}{\sqrt{2}},\frac{\eta}{\sqrt{2}},0)}+\delta_{(\frac{\varepsilon}{\sqrt{2}},0,\frac{\eta}{\sqrt{2}})}+\delta_{(0,\frac{\varepsilon}{\sqrt{2}},\frac{\eta}{\sqrt{2}})}\right)+\frac{1}{72}\sum_{\varepsilon,\eta,\theta\in\{-1,1\}}\left(\delta_{(\frac{\varepsilon}{\sqrt{2}},\frac{\eta}{2},\frac{\theta}{2})}+\delta_{(\frac{\eta}{2},\frac{\varepsilon}{\sqrt{2}},\frac{\theta}{2})}+\delta_{(\frac{\eta}{2},\frac{\theta}{2},\frac{\varepsilon}{\sqrt{2}})}\right)$

---

## Black-Box Audit

- Step 1: no Level 2 or Level 3 issue. The factorization of the first integrand is expanded from the three linear factors and then squared with the cross terms displayed.
- Step 2: no Level 2 or Level 3 issue. The equality case for the nonnegative bound and the second polynomial are both shown explicitly.
- Step 3: no Level 2 or Level 3 issue. The reduction to three orbits uses the inequality $4xy\leq(x+y)^2$ and lists all equality cases.
- Step 4: no Level 2 or Level 3 issue. The orbit masses are solved from two linear equations, with the arithmetic written out.
- Step 5: no Level 2 or Level 3 issue. Every condition in the problem is substituted back into the displayed measure.

---

## Verification

- Feasibility check: the displayed measure has total mass
$$
\frac{1}{3}+\frac{1}{6}+\frac{1}{6}+\frac{1}{3}=1,
$$
and the sign-permutation sums make the required invariances automatic.
- Constraint check: the five constraints give
$$
\int H^2\,d\Lambda_*=\frac{1}{3},\qquad
\int(2R^3-5R^2+4R-1)\,d\Lambda_*=-\frac{1}{3},
$$
$$
\int(32P^2-P)\,d\Lambda_*=0,\qquad
\int R\,d\Lambda_*=\frac{7}{12},\qquad
\int P\,d\Lambda_*=\frac{1}{96}.
$$
- Upper-bound check: the pointwise inequality $\mathbf 1_{\{(0,0,0)\}}\leq H^2$ gives $\Lambda(\{(0,0,0)\})\leq\frac{1}{3}$, so the candidate reaches the maximum.
- Counterexample attack: no counterexample found after testing the excluded boundary triple with squared coordinates $(1,0,0)$. It has $H^2=1$ off the origin, so it cannot appear in any maximizing measure because equality in $\mathbf 1_{\{(0,0,0)\}}\leq H^2$ requires $H=0$ away from the origin.
- Boundary attack: no counterexample found after testing the line $(\frac{1}{2},x,\frac{1}{2}-x)$ in squared coordinates. The condition $P(32P-1)=0$ permits only $x=0$, $x=\frac{1}{2}$, or $x=\frac{1}{4}$, which gives exactly the listed nonzero orbit types.
- Independent re-derivation: the support can also be read as the common equality set of
$$
H^2-\mathbf 1_{\{(0,0,0)\}},\qquad (R-1)^2(2R-1),\qquad P(32P-1).
$$
Solving those equality conditions gives the same three nonzero squared-coordinate orbits and the same orbit masses from $\int R$ and $\int P$.
- By-hand gate: the proof uses three short factorizations, the inequality $4xy\leq(x+y)^2$, and two linear equations for the orbit masses. No code, numerical search, or calculator-dependent step is needed.
- Triviality Probe: P1 state-space count is no finite enumeration, since the problem ranges over Borel probability measures and the solution uses equality cases of integral certificates. P2 decoration-deletion passes: deleting the first integral removes the upper bound, deleting the second leaves a continuum on $H=0$, deleting the third leaves a continuum on $R=1$, and deleting either $\int R$ or $\int P$ leaves the orbit weights undetermined. P3 passes because the answer is a nondegenerate finite probability measure. P4 passes with skeleton `certificate-equality-support`, not coefficient matching or finite search. P5 passes because guessing the three orbits still requires the hidden equality certificates to prove maximality and uniqueness.

---

## Classification

**Domain/Sub-domain:** Probability and Statistics / Probability foundations

**Problem Type:** Optimization

**Answer Type:** Function or mapping

---

## Concepts (1-5)

- Moment constraints
- Symmetric probability measures
- Extremal measure
- Equality cases
- Support certificate

---

## Confidence

High. The upper bound, equality cases, orbit weights, and all five defining constraints are checked directly in the numbered solution.
