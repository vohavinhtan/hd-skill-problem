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
a(2s)=\frac{5a(s)+2}{a(s)+4},\qquad a(1)=\frac12.
$$

For
$$
r(y)=\frac{y-2}{y+1},
$$
substitution gives
$$
r\left(\frac{5y+2}{y+4}\right)=\frac12r(y).
$$
Since $r(a(1))=-1$, induction yields
$$
r(a(2^n))=-2^{-n},
$$
and solving for $a(2^n)$ gives
$$
a(2^n)=\frac{2^{n+1}-1}{2^n+1}\longrightarrow2.
$$

Step 2: Use concavity to recover the missing pointwise bound

A concave function on $(0,\infty)$ has a limit in the extended real line. To see this, if one secant slope is negative, every later secant slope is at most that negative number, so the function tends to $-\infty$. Otherwise its eventual secant slopes are nonnegative, and the function is eventually nondecreasing, so it has a finite limit or tends to $+\infty$.

The integral means of a function with an extended limit have the same limit. For a finite limit this is the Cesaro estimate obtained by splitting the integral at a fixed point. If the limit is $+\infty$ or $-\infty$, the same split shows that the tail of the integral forces the means to the same infinity. Since Step 1 provides a subsequence of the means $a(s)$ converging to $2$, both limits must be finite and equal to $2$:
$$
\lim_{s\to\infty}g(s)=\lim_{s\to\infty}a(s)=2.
$$

The function $g$ cannot decrease. Indeed, if $g(v)<g(u)$ for some $u<v$, concavity gives
$$
\frac{g(t)-g(v)}{t-v}\leq\frac{g(v)-g(u)}{v-u}<0
$$
for every $t>v$, which would force $g(t)\to-\infty$. This proves that $g$ is nondecreasing, and its limit gives
$$
g(s)\leq2\qquad(s>0).
$$

Step 3: Eliminate the dyadic-periodic freedom

The value $a(s)=-1$ cannot occur, because the functional equation would then give $a(2^ns)=-1$ for all $n\geq0$, contradicting the limit from Step 2. Define
$$
q(s)=\frac{a(s)-2}{a(s)+1},\qquad p(s)=sq(s).
$$
The identity for $r$ in Step 1 gives
$$
q(2s)=\frac12q(s),\qquad p(2s)=p(s).
$$
Solving the definition of $q$ for $a$ gives
$$
a(s)=\frac{2s+p(s)}{s-p(s)}.
$$
Multiplying by $s$ gives
$$
H(s)=sa(s)=2s+\frac{3sp(s)}{s-p(s)}.
$$
Set
$$
K(s)=H(s)-2s.
$$
The pointwise bound from Step 2 gives
$$
K'(s)=g(s)-2\leq0,
$$
so $K$ is nonincreasing and has an extended limit at infinity. For each fixed $u>0$, dyadic periodicity gives
$$
K(2^nu)=\frac{3(2^nu)p(u)}{2^nu-p(u)}\longrightarrow3p(u).
$$
This subsequential limit is finite, so it equals the single limit of $K$. It cannot depend on $u$. Therefore $p$ is constant. The normalization gives
$$
p(1)=q(1)=\frac{\frac12-2}{\frac12+1}=-1,
$$
which proves $p(s)=-1$ for every $s>0$.

Step 4: Recover the function and verify the defining conditions

Substitution of $p=-1$ into the formula from Step 3 gives
$$
a(s)=\frac{2s-1}{s+1},\qquad H(s)=sa(s)=2s-3+\frac{3}{s+1}.
$$
Differentiating $H$ gives
$$
g(s)=2-\frac{3}{(s+1)^2}.
$$
This candidate is concave because
$$
g''(s)=-\frac{18}{(s+1)^4}<0.
$$
Also $H(0+)=0$, so the improper integral converges and equals $H(s)$. The formula for $a$ gives $a(1)=1/2$, while
$$
\frac{a(s)-2}{a(s)+1}=-\frac1s
$$
shows that replacing $s$ by $2s$ applies the required fractional linear map. These identities check every condition in the problem. Returning to $s=\log x$ completes the recovery.

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
