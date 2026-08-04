## Steps


Step 1: Derive the conditioned hitting rule
At box $B_k$, the upward and downward transition probabilities are
$$
p_k=\frac{k}{k+(k+2)}=\frac{k}{2(k+1)},\qquad q_k=\frac{k+2}{2(k+1)}.
$$
For the unconditioned chain, the scale increments satisfy
$$
\frac{s_{j+1}-s_j}{s_j-s_{j-1}}=\frac{q_j}{p_j}=\frac{j+2}{j}.
$$
Starting with $s_0=0$ and $s_1=1$, this gives
$$
s_{j+1}-s_j=\prod_{r=1}^{j}\frac{r+2}{r}
=\frac{3\cdot4\cdots(j+2)}{1\cdot2\cdots j}
=\frac{(j+2)!}{2j!}
=\frac{(j+1)(j+2)}{2}.
$$
So
$$
s_j=\sum_{r=0}^{j-1}\frac{(r+1)(r+2)}{2}
=\sum_{t=1}^{j}\frac{t(t+1)}{2}
=\binom{j+2}{3}
=\frac{C(j)}{6}.
$$
For $u<i<v$, the unconditioned hitting probability is
$$
\mathbb P_i(\tau_v<\tau_u)=\frac{s_i-s_u}{s_v-s_u}
=\frac{C(i)-C(u)}{C(v)-C(u)}.
$$
The conditioning harmonic function is
$$
h_i=\mathbb P_i(\tau_n<\tau_0)=\frac{C(i)}{C(n)}.
$$
The conditioned one-step transition from $k$ to $k+1$ is
$$
p_k\frac{h_{k+1}}{h_k}
=\frac{k}{2(k+1)}\cdot\frac{(k+1)(k+2)(k+3)}{k(k+1)(k+2)}
=\frac{k+3}{2(k+1)}.
$$
The conditioned one-step transition from $k$ to $k-1$ is
$$
q_k\frac{h_{k-1}}{h_k}
=\frac{k+2}{2(k+1)}\cdot\frac{(k-1)k(k+1)}{k(k+1)(k+2)}
=\frac{k-1}{2(k+1)}.
$$
Under the conditioned chain, for any event determined before hitting $u$ or $v$,
$$
\mathbb P_i^*(E)=\frac{\mathbb E_i[\mathbf 1_Eh_{X_{\tau_u\wedge\tau_v}}]}{h_i}.
$$
Applying this identity to $E=\{\tau_v<\tau_u\}$ gives
$$
\mathbb P_i^*(\tau_v<\tau_u)
=\frac{h_v}{h_i}\mathbb P_i(\tau_v<\tau_u)
=\frac{C(v)(C(i)-C(u))}{C(i)(C(v)-C(u))}.
$$

Step 2: Compute the generating functions for one sojourn at $b$
Consider the conditioned chain started at $b$ and stopped when it first hits $a$ or $c$. Let $F_a$ be the generating function for the number of visits to $b$, including the initial visit, with exit at $a$. Let $F_c$ be the same generating function with exit at $c$.

The conditioned one-step probabilities at $b$ are
$$
d=\mathbb P_b^*(b\to b-1)=\frac{b-1}{2(b+1)},\qquad
u=\mathbb P_b^*(b\to b+1)=\frac{b+3}{2(b+1)}.
$$
After a downward step to $b-1$, the chance to hit $a$ before returning to $b$ is
$$
\frac{C(a)(C(b)-C(b-1))}{C(b-1)(C(b)-C(a))}.
$$
Since
$$
C(b)-C(b-1)=b(b+1)(b+2)-(b-1)b(b+1)=3b(b+1),
$$
and $C(b-1)=(b-1)b(b+1)$, the left-exit probability in one attempt from $b$ is
$$
d\cdot\frac{C(a)(C(b)-C(b-1))}{C(b-1)(C(b)-C(a))}
=\frac{b-1}{2(b+1)}\cdot\frac{3C(a)}{(b-1)P}
=\frac{KC(a)}{C(b)P}.
$$
After an upward step to $b+1$, the chance to hit $c$ before returning to $b$ is
$$
\frac{C(c)(C(b+1)-C(b))}{C(b+1)(C(c)-C(b))}.
$$
Here
$$
C(b+1)-C(b)=(b+1)(b+2)(b+3)-b(b+1)(b+2)=3(b+1)(b+2),
$$
and $C(b+1)=(b+1)(b+2)(b+3)$. The right-exit probability in one attempt from $b$ is
$$
u\cdot\frac{C(c)(C(b+1)-C(b))}{C(b+1)(C(c)-C(b))}
=\frac{b+3}{2(b+1)}\cdot\frac{3C(c)}{(b+3)Q}
=\frac{KC(c)}{C(b)Q}.
$$
The probability that an attempt returns to $b$ before hitting $a$ or $c$ is
$$
\theta=1-\frac{KC(a)}{C(b)P}-\frac{KC(c)}{C(b)Q}.
$$
Here $P=C(b)-C(a)$, $Q=C(c)-C(b)$, and $K=\frac{3b(b+2)}{2}$. Putting the two exit probabilities over the common denominator $C(b)PQ$ gives
$$
1-\theta
=\frac{KC(a)}{C(b)P}+\frac{KC(c)}{C(b)Q}
=\frac{K(C(a)Q+C(c)P)}{C(b)PQ}.
$$
The bracketed numerator is
$$
C(a)Q+C(c)P=C(a)(C(c)-C(b))+C(c)(C(b)-C(a)).
$$
The $C(a)C(c)$ terms cancel, leaving
$$
C(b)(C(c)-C(a))=C(b)(P+Q).
$$
Substituting this into the common-denominator expression gives the explicit cancellation
$$
1-\theta
=\frac{K\,C(b)(P+Q)}{C(b)PQ}
=\frac{K(P+Q)}{PQ}.
$$
A sojourn at $b$ has one counted visit, then either exits left, exits right, or returns to $b$ and starts another attempt. This gives
$$
F_a=x\frac{KC(a)}{C(b)P}\sum_{j\geq0}(x\theta)^j,
\qquad
F_c=x\frac{KC(c)}{C(b)Q}\sum_{j\geq0}(x\theta)^j.
$$
Since
$$
1-x\theta=1-x+x(1-\theta)
=1-x+\frac{Kx(P+Q)}{PQ}
=\frac{W}{PQ},
$$
the two sojourn generating functions are
$$
F_a=\frac{KxC(a)Q}{C(b)W},\qquad
F_c=\frac{KxC(c)P}{C(b)W}.
$$

Step 3: Build the trace equations with side information
When the reduced trace is at $a$, the next marked state must be $b$. When the reduced trace is at $c$, the next marked state is either $b$ or $n$. The conditioned hitting rule gives
$$
g=\mathbb P_c^*(\tau_n<\tau_b)
=\frac{C(n)(C(c)-C(b))}{C(c)(C(n)-C(b))}
=\frac{C(n)Q}{C(c)(Q+S)},
$$
and
$$
h=\mathbb P_c^*(\tau_b<\tau_n)
=\frac{C(b)(C(n)-C(c))}{C(c)(C(n)-C(b))}
=\frac{C(b)S}{C(c)(Q+S)}.
$$
Let $U_0$ be the desired generating function starting at $b$ with no previous side. Let $U_L$ be the same continuation value when the previous marked state before the current $b$ is $a$, and let $U_R$ be the continuation value when the previous marked state before the current $b$ is $c$.

From a $b$-sojourn with no previous side, exiting left contributes $F_aU_L$, and exiting right contributes $F_c(g+hU_R)$. This gives
$$
U_0=F_aU_L+F_c(g+hU_R).
$$
If the previous side is $a$, then an exit from $b$ to $c$ creates one strict side switch and contributes a factor $z$. This gives
$$
U_L=F_aU_L+zF_c(g+hU_R).
$$
If the previous side is $c$, then an exit from $b$ to $a$ creates one strict side switch. This gives
$$
U_R=zF_aU_L+F_c(g+hU_R).
$$
Move the unknown terms in the last two equations to the left:
$$
(1-F_a)U_L-zhF_cU_R=zgF_c,
$$
$$
-zF_aU_L+(1-hF_c)U_R=gF_c.
$$
The determinant of this system is
$$
D=(1-F_a)(1-hF_c)-z^{2}hF_aF_c.
$$
Solving the two equations gives
$$
U_L=\frac{zgF_c}{D},
$$
and
$$
U_R=\frac{gF_c(1-F_a+z^{2}F_a)}{D}.
$$
Substitute these two values into $U_0=F_aU_L+F_c(g+hU_R)$:
$$
U_0=\frac{zF_agF_c}{D}+gF_c+\frac{hF_cgF_c(1-F_a+z^{2}F_a)}{D}.
$$
Put the terms over $D$:
$$
U_0=\frac{gF_c(D+zF_a+hF_c(1-F_a+z^{2}F_a))}{D}.
$$
Now expand the numerator inside the parentheses:
$$
D+zF_a+hF_c(1-F_a+z^{2}F_a)
$$
$$
=(1-F_a)(1-hF_c)-z^{2}hF_aF_c+zF_a+hF_c-hF_aF_c+z^{2}hF_aF_c.
$$
The $z^{2}hF_aF_c$ terms cancel. The remaining $hF_c$ terms also cancel:
$$
(1-F_a)(1-hF_c)+hF_c-hF_aF_c=1-F_a.
$$
So
$$
U_0=\frac{gF_c(1-F_a+zF_a)}{D}
=\frac{gF_c(1-F_a(1-z))}{(1-F_a)(1-hF_c)-z^{2}hF_aF_c}.
$$

Step 4: Substitute the closed forms and simplify the rational function
The three quantities in the trace formula are
$$
F_a=\frac{KxC(a)Q}{C(b)W},
$$
$$
F_c=\frac{KxC(c)P}{C(b)W},
$$
and
$$
hF_c=\frac{C(b)S}{C(c)(Q+S)}\cdot\frac{KxC(c)P}{C(b)W}
=\frac{KxSP}{(Q+S)W}.
$$
Also
$$
gF_c=\frac{C(n)Q}{C(c)(Q+S)}\cdot\frac{KxC(c)P}{C(b)W}
=\frac{C(n)KxPQ}{C(b)(Q+S)W}.
$$
The factor $1-F_a(1-z)$ is
$$
1-\frac{KxC(a)Q}{C(b)W}(1-z)
=\frac{C(b)W-KxC(a)Q(1-z)}{C(b)W}.
$$
For the denominator,
$$
(1-F_a)(1-hF_c)-z^{2}hF_aF_c
$$
equals
$$
\left(1-\frac{KxC(a)Q}{C(b)W}\right)
\left(1-\frac{KxSP}{(Q+S)W}\right)
-z^{2}\frac{KxC(a)Q}{C(b)W}\frac{KxSP}{(Q+S)W}.
$$
Put this over the common denominator $C(b)(Q+S)W^{2}$:
$$
\frac{(C(b)W-KxC(a)Q)((Q+S)W-KxSP)-z^{2}K^{2}x^{2}C(a)SPQ}{C(b)(Q+S)W^{2}}.
$$
Expand the numerator:
$$
C(b)(Q+S)W^{2}-KxW(C(a)Q(Q+S)+C(b)SP)+K^{2}x^{2}C(a)SPQ
$$
$$
-z^{2}K^{2}x^{2}C(a)SPQ.
$$
Combining the last two terms gives
$$
C(b)(Q+S)W^{2}-KxW(C(a)Q(Q+S)+C(b)SP)+K^{2}x^{2}C(a)SPQ(1-z^{2}).
$$
Substituting these pieces into $U_0$ cancels the common factor $(Q+S)W^{2}$ and gives
$$
U_0=
\frac{C(n)KxPQ(C(b)W-KxC(a)Q(1-z))}
{C(b)(C(b)(Q+S)W^{2}-KxW(C(a)Q(Q+S)+C(b)SP)+K^{2}x^{2}C(a)SPQ(1-z^{2}))}.
$$
Since $U_0$ was built under the chain already conditioned on $\tau_n<\tau_0$, this is exactly the required conditional generating function.
Final Answer: $\boxed{\begin{gathered}C(u)=u(u+1)(u+2),\quad P=C(b)-C(a),\quad Q=C(c)-C(b),\\ S=C(n)-C(c),\quad K=\frac{3b(b+2)}{2},\quad W=(1-x)PQ+Kx(P+Q),\\ \mathbb E_b[x^{V_b}z^R\mid \tau_n<\tau_0]=\frac{C(n)KxPQ(C(b)W-KxC(a)Q(1-z))}{C(b)(C(b)(Q+S)W^{2}-KxW(C(a)Q(Q+S)+C(b)SP)+K^{2}x^{2}C(a)SPQ(1-z^{2}))}\end{gathered}}$

---

## Answer

$\begin{gathered}C(u)=u(u+1)(u+2),\quad P=C(b)-C(a),\quad Q=C(c)-C(b),\\ S=C(n)-C(c),\quad K=\frac{3b(b+2)}{2},\quad W=(1-x)PQ+Kx(P+Q),\\ \mathbb E_b[x^{V_b}z^R\mid \tau_n<\tau_0]=\frac{C(n)KxPQ(C(b)W-KxC(a)Q(1-z))}{C(b)(C(b)(Q+S)W^{2}-KxW(C(a)Q(Q+S)+C(b)SP)+K^{2}x^{2}C(a)SPQ(1-z^{2}))}\end{gathered}$

---

## Black-Box Audit

- Step 1: no Level 2 or Level 3 issue. The scale function is derived from the displayed product and binomial sum.
- Step 2: no Level 2 or Level 3 issue. The left and right exit probabilities from a $b$-attempt are computed with all cancellations shown.
- Step 3: no Level 2 or Level 3 issue. The trace orientation equations are written explicitly and the $2\times2$ system is solved on the page.
- Step 4: no Level 2 or Level 3 issue. The substitution into the final rational function shows the common denominator and the numerator expansion.

---

## Verification

- Normalization check: set $x=1$ and $z=1$. Then $W=K(P+Q)$. The numerator becomes
$$
C(n)KPQ\cdot C(b)K(P+Q)=C(n)C(b)K^{2}PQ(P+Q).
$$
The denominator becomes
$$
C(b)\left(C(b)(Q+S)K^{2}(P+Q)^2-K^{2}(P+Q)(C(a)Q(Q+S)+C(b)SP)\right).
$$
The inner factor after removing $K^{2}(P+Q)$ is
$$
C(b)(Q+S)(P+Q)-C(a)Q(Q+S)-C(b)SP.
$$
Since $C(b)(P+Q)-C(a)Q=P(C(b)+Q)=PC(c)$, this inner factor is
$$
PC(c)(Q+S)-C(b)SP=P(C(c)(C(n)-C(b))-C(b)(C(n)-C(c)))=PC(n)Q.
$$
The denominator is also $C(n)C(b)K^{2}PQ(P+Q)$, so the value is $1$.
- Boundary check: if $z=1$, the side-switch statistic is ignored. The trace equations reduce to
$$
U_0=\frac{gF_c}{1-F_a-hF_c},
$$
which is the one-variable visit generating function with left returns through $a$ and right returns through $c$ both allowed.
- Shortcut falsification: the tempting shortcut treats every trace visit to $b$ as one original-time visit, which is false. For $a=1$, $b=3$, $c=5$, $n=7$, $x=\frac{1}{2}$, and $z=1$, that shortcut gives $\frac{945}{2203}$, while the sojourn calculation gives $\frac{63}{211}$. Since these two fractions are different, the shortcut does not satisfy the actual definition of $V_b$.
- By-hand gate: the solution uses a scale calculation, two one-attempt exit probabilities, three trace equations, and one displayed rational simplification. No external computation is needed to derive the answer.
- Accepted-style step certificate: the orientation equations in Step 3 are the certificate that the non-additive statistic $R$ has been counted with the correct previous-side state.

---

## Classification

**Domain/Sub-domain:** Probability and Statistics / Stochastic processes

**Problem Type:** Symbolic derivation

**Answer Type:** Polynomial or rational function

---

## Concepts (1-5)

- Birth death chain scale functions
- Doob conditioning by a harmonic function
- Excursion generating functions
- Trace chain orientation states
- Rational probability generating functions

---

## Confidence

High because the result is derived from first-step decompositions and passes normalization, boundary, and shortcut-falsification checks.
