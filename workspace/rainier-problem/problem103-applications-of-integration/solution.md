## Steps

Step 1: Pass to logarithmic coordinates and determine the dyadic orbit

Put
$$
g(s)=f(e^s),\qquad J(s)=\int_0^s(s-u)g(u)\,du,\qquad B(s)=A(e^s)=\frac{2J(s)}{s^2}.
$$
Write
$$
T(y)=\frac{5y+2}{y+4}.
$$
The assumptions become
$$
B(2s)=T(B(s)),\qquad B(1)=\frac{1}{2}.
$$
For
$$
q(y)=\frac{y-2}{y+1},
$$
algebra gives
$$
q\left(\frac{5y+2}{y+4}\right)=\frac{1}{2}q(y).
$$
The fractional linear map is one-to-one on its domain, with inverse
$$
T^{-1}(z)=\frac{4z-2}{5-z}.
$$
The relation can therefore be iterated both forward and backward along the orbit of $1$. Since $q(B(1))=-1$, for every integer $n$,
$$
q(B(2^n))=-2^{-n},\qquad
B(2^n)=\frac{2^{n+1}-1}{2^n+1}.
$$
In particular,
$$
\lim_{n\to-\infty}B(2^n)=-1.
$$

Step 2: Find the endpoint value forced by concavity

Changing variables $u=sv$ in the definition of $B$ gives
$$
B(s)=2\int_0^1(1-v)g(sv)\,dv.
$$
A finite concave function on $(0,\infty)$ has a limit at $0$ in $\mathbb{R}\cup\{-\infty\}$. Indeed, its secant slopes are nonincreasing, so the function is monotone on some interval next to $0$. The value $+\infty$ is impossible: for fixed $0<a<b$ and $0<s<a$, concavity gives
$$
\frac{g(a)-g(s)}{a-s}\geq\frac{g(b)-g(a)}{b-a},
$$
which bounds $g(s)$ from above by an affine function of $s$.

The weighted averages $B(s)$ have the same endpoint limit as $g(s)$. For a finite limit, every $sv$ lies near $0$ when $s$ is small. If $g(s)\to-\infty$, the whole integrand is eventually below any prescribed constant, so $B(s)\to-\infty$. The dyadic limit from Step 1 is $-1$, and therefore
$$
\lim_{s\downarrow0}g(s)=\lim_{s\downarrow0}B(s)=-1.
$$
Set $g(0)=-1$. Taking a limit in the concavity inequality shows that this extension is concave on $[0,\infty)$.

Step 3: Determine the endpoint secant slope

For $s>0$, define
$$
h(s)=\frac{g(s)+1}{s}.
$$
Concavity of the extension from Step 2 gives, for $0<s<t$,
$$
g(s)\geq\frac{s}{t}g(t)+\left(1-\frac{s}{t}\right)g(0),
$$
so $h$ is nonincreasing. The extended limit
$$
D=\lim_{s\downarrow0}h(s)
$$
therefore exists in $\mathbb{R}\cup\{+\infty\}$. Using $g(sv)+1=svh(sv)$ in the weighted average gives
$$
\frac{B(s)+1}{s}=2\int_0^1v(1-v)h(sv)\,dv.
$$
For small $s$, the functions $h(sv)$ are bounded below by a fixed value of $h$. Subtracting this lower bound produces nonnegative functions, so monotone convergence applies as $s\downarrow0$. Since
$$
2\int_0^1v(1-v)\,dv=\frac{1}{3},
$$
the last display tends to $D/3$, with the same conclusion if $D=+\infty$.

On the dyadic sequence $s=2^n$ with $n\to-\infty$, Step 1 gives
$$
\frac{B(s)+1}{s}=\frac{3}{1+s}\longrightarrow3.
$$
The two limits force $D=9$ and
$$
B(s)+1\sim3s\qquad(s\downarrow0).
$$

Step 4: Eliminate every log-periodic alternative

The last asymptotic shows that $B(s)>-1$ for all sufficiently small $s$. In fact, $B$ never equals $-1$. If $B(s_0)=-1$, then the equation at $s_0/2$ and the equivalence
$$
\frac{5y+2}{y+4}=-1\quad\Longleftrightarrow\quad y=-1
$$
would give $B(2^{-m}s_0)=-1$ for every positive integer $m$, contradicting the endpoint asymptotic.

The function
$$
F(s)=s\frac{B(s)-2}{B(s)+1}
$$
is now defined for every $s>0$. The conjugacy from Step 1 gives $F(2s)=F(s)$. Also, Step 3 yields
$$
\lim_{s\downarrow0}F(s)=\lim_{s\downarrow0}s\frac{B(s)-2}{B(s)+1}=-1.
$$
For fixed $s>0$,
$$
F(s)=F(2^{-m}s)\longrightarrow-1,
$$
so $F(s)=-1$ on the whole domain. Solving
$$
s\frac{B(s)-2}{B(s)+1}=-1
$$
gives
$$
B(s)=\frac{2s-1}{s+1}.
$$

Step 5: Recover the function and check all conditions

The convergence of $J(s)$ for every $s$ also gives convergence of $\int_0^s g(u)\,du$. To verify this, choose $0<s_1<s_2$ and subtract the two integrals with a common lower cutoff. Their difference contains
$$
(s_2-s_1)\int_0^{s_1}g(u)\,du
$$
plus an ordinary integral over $[s_1,s_2]$. The other terms have limits, so the displayed improper integral converges. Since $g$ is continuous away from $0$,
$$
J'(s)=\int_0^s g(u)\,du,\qquad J''(s)=g(s).
$$
Using the formula for $B$ from Step 4,
$$
J(s)=\frac{s^2B(s)}{2}=s^2-\frac{3}{2}\left(s-1+\frac{1}{s+1}\right).
$$
Two differentiations give
$$
g(s)=2-\frac{3}{(s+1)^3}.
$$
This function is concave because
$$
g''(s)=-\frac{36}{(s+1)^5}<0.
$$
The displayed formula for $J$ has $J(0)=J'(0)=0$. Its difference from the weighted integral of $g$ has zero second derivative. Its value and first derivative vanish at $0$, so the two functions agree. It gives $B(1)=1/2$. Also,
$$
\frac{B(s)-2}{B(s)+1}=-\frac{1}{s},
$$
and replacing $s$ by $2s$ verifies the required fractional linear relation. Returning to $s=\log x$ finishes the recovery.
Final Answer: $\boxed{f(x)=2-\frac{3}{(1+\log x)^3}}$

---

## Answer

$f(x)=2-\frac{3}{(1+\log x)^3}$

---

## Classification

**Problem Type:** Solve for unknowns

**Answer Type:** Function or mapping

---

## Solution Concepts

- concave functions and endpoint secants
- weighted integral means
- fractional linear transformations
- dyadic scaling rigidity
