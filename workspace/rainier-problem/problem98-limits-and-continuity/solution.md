## Steps

Step 1: Convert the alternating binomial sum to a beta integral

For $a>0$,
$$
\frac1{k+an}
=
\int_0^1x^{k+an-1}\,dx.
$$
Therefore
$$
B_n(a)
=
\int_0^1x^{an-1}
\sum_{k=0}^n(-1)^k\binom nkx^k\,dx.
$$
The binomial theorem gives
$$
B_n(a)
=
\int_0^1x^{an-1}(1-x)^n\,dx.
$$
Consequently
$$
B_n(a)
=
\frac{\Gamma(an)\Gamma(n+1)}
{\Gamma((a+1)n+1)}.
$$

Set
$$
u=n(1-a),
$$
so that
$$
a=1-\frac un.
$$
Then
$$
2-a=1+\frac un.
$$
Taking logarithms of
$$
\frac{B_n(a)B_n(2-a)}{B_n(1)^2}
$$
gives
$$
E_n(u)=
\log\Gamma(n+u)+\log\Gamma(n-u)-2\log\Gamma(n)
$$
$$
\qquad
-\log\Gamma(2n+1+u)-\log\Gamma(2n+1-u)
+2\log\Gamma(2n+1).
$$
The defining equation for $a_n(c)$ is therefore
$$
E_n(u_n)=\frac{c}{2n},
\qquad
u_n=n(1-a_n(c)).
$$

Step 2: Prove the relevant root is unique

Let $\psi$ be the logarithmic derivative of $\Gamma$, and let $\psi_1=\psi'$.

For $0<u<n$,
$$
E_n'(u)
=
\psi(n+u)-\psi(n-u)
-\psi(2n+1+u)+\psi(2n+1-u).
$$
Writing the differences as integrals,
$$
E_n'(u)
=
\int_{n-u}^{n+u}\psi_1(t)\,dt
-
\int_{2n+1-u}^{2n+1+u}\psi_1(t)\,dt.
$$
The trigamma function has the positive series
$$
\psi_1(t)=\sum_{j=0}^\infty\frac1{(t+j)^2},
$$
so it is strictly decreasing for $t>0$. The first interval lies strictly to the left of the second and both have length $2u$. Therefore
$$
E_n'(u)>0.
$$
Also
$$
E_n(0)=0.
$$

For fixed bounded $u$, the expansion derived below gives
$$
nE_n(u)\to\frac{u^2}{2}.
$$
In particular,
$$
nE_n(1)\to\frac12>\frac c2.
$$
Since $c\in(0,1)$, for sufficiently large $n$ the equation
$$
E_n(u)=\frac{c}{2n}
$$
has exactly one solution in $(0,1)$. This corresponds to exactly one
$$
a=1-\frac un\in\left(\frac12,1\right).
$$

Step 3: Expand the symmetric gamma ratio

For
$$
g(x)=\log\Gamma(x),
$$
Taylor expansion at fixed bounded $u$ gives
$$
g(x+u)+g(x-u)-2g(x)
=
u^2\psi_1(x)
+\frac{u^4}{12}\psi_3(x)
+O(x^{-5}),
$$
where $\psi_3$ is the third polygamma function.

The large-$x$ expansions needed are
$$
\psi_1(x)
=
\frac1x+\frac1{2x^2}+\frac1{6x^3}
+O(x^{-4})
$$
and
$$
\psi_3(x)
=
\frac2{x^3}+O(x^{-4}).
$$
At $x=2n+1$,
$$
\psi_1(2n+1)
=
\frac1{2n}
-\frac1{8n^2}
+\frac1{48n^3}
+O(n^{-4}).
$$
Therefore
$$
\psi_1(n)-\psi_1(2n+1)
=
\frac1{2n}
+\frac5{8n^2}
+\frac7{48n^3}
+O(n^{-4}).
$$
Similarly,
$$
\psi_3(n)-\psi_3(2n+1)
=
\frac7{4n^3}+O(n^{-4}).
$$

Substitution into the expression for $E_n$ yields, uniformly for bounded $u$,
$$
E_n(u)
=
\frac{u^2}{2n}
+\frac{5u^2}{8n^2}
+\frac{7(u^2+u^4)}{48n^3}
+O(n^{-4}).
$$

Step 4: Resolve the implicit root through two correction orders

Put
$$
r=\sqrt c.
$$
Since
$$
nE_n(u_n)=\frac c2
$$
and
$$
nE_n(u)\to\frac{u^2}{2}
$$
locally uniformly, uniqueness from Step 2 gives
$$
u_n\to r.
$$

Seek
$$
u_n
=
r+\frac{p}{n}+\frac{q}{n^2}+o(n^{-2}).
$$
Then
$$
u_n^2
=
c+\frac{2rp}{n}
+\frac{p^2+2rq}{n^2}
+o(n^{-2}).
$$
Using the expansion from Step 3 in
$$
E_n(u_n)=\frac{c}{2n},
$$
the coefficient of $n^{-2}$ is
$$
rp+\frac{5c}{8}.
$$
It must vanish, so
$$
p=-\frac{5r}{8}.
$$

At order $n^{-3}$ the coefficient is
$$
\frac{p^2+2rq}{2}
+\frac{5rp}{4}
+\frac{7(c+c^2)}{48}.
$$
Substituting
$$
p=-\frac{5r}{8}
$$
gives
$$
rq-\frac{169c}{384}+\frac{7c^2}{48}=0.
$$
Therefore
$$
q=
\frac{\sqrt c(169-56c)}{384}.
$$
Hence
$$
u_n
=
\sqrt c
-\frac{5\sqrt c}{8n}
+
\frac{\sqrt c(169-56c)}{384n^2}
+o(n^{-2}).
$$

Step 5: Return to $a_n(c)$ and evaluate the limiting function

Since
$$
a_n(c)=1-\frac{u_n}{n},
$$
Step 4 gives
$$
a_n(c)
=
1-\frac{\sqrt c}{n}
+\frac{5\sqrt c}{8n^2}
+
\frac{\sqrt c(56c-169)}{384n^3}
+o(n^{-3}).
$$
Therefore
$$
n^3
\left[
a_n(c)-1
+\frac{\sqrt c}{n}
-\frac{5\sqrt c}{8n^2}
\right]
\to
\frac{\sqrt c(56c-169)}{384}.
$$

Final Answer: $\boxed{c\mapsto\frac{\sqrt c(56c-169)}{384}}$

---

## Answer

$c\mapsto\frac{\sqrt c(56c-169)}{384}$

---

## Classification

**Domain:** Calculus

**Sub-domain:** Limits and continuity

**Problem Type:** Symbolic derivation

**Answer Type:** Function or mapping

---

## Solution Concepts

- beta integral representation
- symmetric gamma ratios
- polygamma expansions
- implicit root asymptotics
- parameterized limits
