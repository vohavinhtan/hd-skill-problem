## Steps

Step 1: Convert the integral mean to logarithmic coordinates

Put
$$
g(s)=f(e^s),\qquad H(s)=\int_0^s g(u)\,du,\qquad a(s)=A(e^s)=\frac{H(s)}{s}.
$$
The improper integral in the problem makes $H$ well defined, and concavity makes $g$ continuous on $(0,\infty)$. Therefore
$$
H'(s)=g(s).
$$
The functional equation and normalization become
$$
a(2s)=\frac{5a(s)+2}{a(s)+4},\qquad a(1)=\frac{1}{2}.
$$

For
$$
r(y)=\frac{y-2}{y+1},
$$
substitution gives
$$
r\left(\frac{5y+2}{y+4}\right)=\frac{1}{2}r(y).
$$
Since $r(a(1))=-1$, induction yields
$$
r(a(2^n))=-2^{-n},
$$
and solving for $a(2^n)$ gives
$$
a(2^n)=\frac{2^{n+1}-1}{2^n+1}\longrightarrow 2.
$$

Step 2: Use concavity to recover the pointwise bound

A concave function on $(0,\infty)$ has a limit in the extended real line. If one secant slope is negative, every later secant slope is at most that negative number, so the function tends to $-\infty$. Otherwise its secant slopes are nonnegative, so the function is nondecreasing and has a finite limit or tends to $+\infty$.

The integral means of a function with an extended limit have the same limit. For a finite limit, split the integral at a fixed point: the fixed initial part divided by $s$ tends to $0$, while the tail average is trapped near the limit. If the limit is $+\infty$ or $-\infty$, the same split shows that the tail forces the means to the same infinity. Since Step 1 gives a subsequence of $a(s)$ converging to $2$, both limits must be finite and equal to $2$:
$$
\lim_{s\to\infty}g(s)=\lim_{s\to\infty}a(s)=2.
$$

The function $g$ cannot decrease. If $g(v)<g(u)$ for some $u<v$, concavity gives
$$
\frac{g(t)-g(v)}{t-v}\leq\frac{g(v)-g(u)}{v-u}<0
$$
for every $t>v$, forcing $g(t)\to-\infty$, contrary to the limit above. Therefore $g$ is nondecreasing, and
$$
g(s)\leq 2\qquad(s>0).
$$

Step 3: Eliminate the dyadic-periodic freedom

The value $a(s)=-1$ cannot occur, because the functional equation would give $a(2^ns)=-1$ for every $n\geq0$, contradicting Step 2. Define
$$
q(s)=\frac{a(s)-2}{a(s)+1},\qquad p(s)=sq(s).
$$
The fractional linear identity from Step 1 gives
$$
q(2s)=\frac{1}{2}q(s),\qquad p(2s)=p(s).
$$
Solving the definition of $q$ for $a$ gives
$$
a(s)=\frac{2s+p(s)}{s-p(s)}.
$$
Therefore
$$
H(s)=sa(s)=2s+\frac{3sp(s)}{s-p(s)}.
$$
Set
$$
K(s)=H(s)-2s.
$$
By Step 2,
$$
K'(s)=g(s)-2\leq0,
$$
so $K$ is nonincreasing and has an extended limit at infinity. For each fixed $u>0$, dyadic periodicity gives
$$
K(2^nu)=\frac{3(2^nu)p(u)}{2^nu-p(u)}\longrightarrow3p(u).
$$
This finite subsequential limit must equal the single limit of $K$, so it cannot depend on $u$. Hence $p$ is constant. The normalization gives
$$
p(1)=q(1)=\frac{\frac{1}{2}-2}{\frac{1}{2}+1}=-1,
$$
so
$$
p(s)=-1\qquad(s>0).
$$

Step 4: Recover the function and verify the conditions

Substituting $p=-1$ into the formula from Step 3 gives
$$
a(s)=\frac{2s-1}{s+1},\qquad H(s)=sa(s)=2s-3+\frac{3}{s+1}.
$$
Differentiating yields
$$
g(s)=2-\frac{3}{(s+1)^2}.
$$
This function is concave because
$$
g''(s)=-\frac{18}{(s+1)^4}<0.
$$
Also $H(0+)=0$, so the improper integral converges and equals $H(s)$. The formula for $a$ gives $a(1)=\frac{1}{2}$, while
$$
\frac{a(s)-2}{a(s)+1}=-\frac{1}{s}
$$
and replacement of $s$ by $2s$ gives the required fractional linear relation. Returning to $s=\log x$ completes the recovery.

Final Answer: $\boxed{f(x)=2-\frac{3}{(1+\log x)^2}}$

---

## Answer

$f(x)=2-\frac{3}{(1+\log x)^2}$

---

## Classification

**Problem Type:** Solve for unknowns

**Answer Type:** Function or mapping

---

## Solution Concepts

- concave functions and secant slopes
- Cesaro integral means
- fractional linear transformations
- dyadic scaling rigidity
