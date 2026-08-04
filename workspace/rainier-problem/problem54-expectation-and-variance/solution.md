## Steps

Step 1: Remove the four anchored atoms and record the residual capacities

The anchored condition contributes mass $1/8$ to each target atom. After multiplying the remaining coupling by $8$, the source and target measures become
$$
\bar\mu_a=\sum_{i=1}^4U_{I_i(a)},
\qquad
\bar\nu=\delta_0+\delta_3+\delta_8+\delta_{11}.
$$
Thus each source interval has mass $1$, each target atom has capacity $1$, and a binary conditional law supported on $u<x<v$ is forced by the martingale condition to be
$$
\frac{v-x}{v-u}\delta_u+\frac{x-u}{v-u}\delta_v.
$$

The no-crossing condition imposes an exhaustion rule. If an earlier source point uses the pair $u<v$, no later source point may use a target atom strictly between $u$ and $v$. Hence a wider pair cannot begin while an interior target capacity that must be used later remains unfilled. Once a wider pair begins, every interior target must already be exhausted. This statement preserves all target capacities because it does not alter a coupling; it only restricts the chronological order in which the fixed capacities may be consumed.

Step 2: Force the support pairs on the first two source intervals

Every $x\in I_1(a)\subset(0,2)$ must use a pair containing $0$ and one of $3,8,11$. The total mass that $I_1(a)$ can send to $3$ through the pair $\{0,3\}$ is
$$
\int_{1-a}^{1+a}\frac{x}{3}\frac{dx}{2a}=\frac13<1.
$$
Therefore target $3$ must also be used at a later source point. If any part of $I_1(a)$ used $\{0,8\}$ or $\{0,11\}$, that later use of $3$ would lie strictly between the earlier pair and violate screening. Consequently all of $I_1(a)$ uses $\{0,3\}$:
$$
K_a^*(x)=\left(1-\frac{x}{3},\frac{x}{3},0,0\right)
\qquad(x\in I_1(a)).
$$
It consumes capacities $2/3$ at $0$ and $1/3$ at $3$.

On $I_2(a)\subset(3,5)$, target $3$ still has capacity $2/3$ and target $8$ has capacity $1$. A pair using $11$ before $8$ is exhausted would screen off the later use of $8$. A pair using $0$ before $3$ is exhausted would screen off the later use of $3$. Thus the pair is $\{3,8\}$ until target $3$ is exhausted, and then it is $\{0,8\}$.

If $x_2^*$ is the switch, capacity conservation at $3$ gives
$$
\int_{4-a}^{x_2^*}\frac{8-x}{5}\frac{dx}{2a}=\frac23.
$$
Solving the quadratic and choosing the root in $I_2(a)$ yields
$$
x_2^*=8-\sqrt{a^2-\frac{16}{3}a+16}.
$$
The integral increases from $0$ to $4/5$ across $I_2(a)$, so this root is strictly interior. The complete kernel on $I_2(a)$ is
$$
K_a^*(x)=
\begin{cases}
\left(0,\frac{8-x}{5},\frac{x-3}{5},0\right),
&4-a\leq x\leq x_2^*,\\
\left(1-\frac{x}{8},0,\frac{x}{8},0\right),
&x_2^*<x\leq4+a.
\end{cases}
$$
Its total capacity use is $1/12$ at $0$, $2/3$ at $3$, and $1/4$ at $8$.

Step 3: Force the remaining support pairs and compute the second switch

After $I_1(a)$ and $I_2(a)$, target $3$ is exhausted, while target $8$ has remaining capacity $3/4$. Since $I_3(a)\subset(6,8)$, its only possible screened binary pairs are first $\{0,8\}$ and then $\{0,11\}$. Using $\{0,11\}$ while capacity remained at $8$ would make every later use of $8$ a forbidden interior point.

If $x_3^*$ is the switch, exhaustion of target $8$ gives
$$
\int_{7-a}^{x_3^*}\frac{x}{8}\frac{dx}{2a}=\frac34,
$$
and hence
$$
x_3^*=\sqrt{a^2+10a+49}.
$$
The integral increases from $0$ to $7/8$ across $I_3(a)$, so $x_3^*$ lies strictly inside $I_3(a)$. Therefore
$$
K_a^*(x)=
\begin{cases}
\left(1-\frac{x}{8},0,\frac{x}{8},0\right),
&7-a\leq x\leq x_3^*,\\
\left(1-\frac{x}{11},0,0,\frac{x}{11}\right),
&x_3^*<x\leq7+a.
\end{cases}
$$
This interval uses capacities $7/44$ at $0$, $3/4$ at $8$, and $1/11$ at $11$.

Only targets $0$ and $11$ remain available on $I_4(a)$, so
$$
K_a^*(x)=\left(1-\frac{x}{11},0,0,\frac{x}{11}\right)
\qquad(x\in I_4(a)).
$$
It uses capacities $1/11$ at $0$ and $10/11$ at $11$.

Step 4: Verify existence, screening, and uniqueness

Together with the anchored rows, the complete kernel is
$$
K_a^*(x)=
\begin{cases}
(1,0,0,0),&x=0,\\
\left(1-\frac{x}{3},\frac{x}{3},0,0\right),&x\in[1-a,1+a],\\
(0,1,0,0),&x=3,\\
\left(0,\frac{8-x}{5},\frac{x-3}{5},0\right),&x\in[4-a,x_2^*],\\
\left(1-\frac{x}{8},0,\frac{x}{8},0\right),&x\in(x_2^*,4+a],\\
\left(1-\frac{x}{8},0,\frac{x}{8},0\right),&x\in[7-a,x_3^*],\\
\left(1-\frac{x}{11},0,0,\frac{x}{11}\right),&x\in(x_3^*,7+a],\\
(0,0,1,0),&x=8,\\
\left(1-\frac{x}{11},0,0,\frac{x}{11}\right),&x\in[10-a,10+a],\\
(0,0,0,1),&x=11.
\end{cases}
$$
Every row has total mass $1$ and barycenter $x$. The four residual target totals are
$$
\begin{aligned}
0:&\quad \frac23+\frac1{12}+\frac7{44}+\frac1{11}=1,\\
3:&\quad \frac13+\frac23=1,\\
8:&\quad \frac14+\frac34=1,\\
11:&\quad \frac1{11}+\frac{10}{11}=1.
\end{aligned}
$$
Thus the second marginal is correct. The successive support pairs are
$$
\{0,3\},\quad\{3,8\},\quad\{0,8\},\quad\{0,11\},
$$
and each wider pair starts only after every newly enclosed target is exhausted, so the no-crossing condition holds.

Conversely, the exhaustion rule forces these pairs in this order. Capacity at $3$ uniquely determines $x_2^*$, and capacity at $8$ uniquely determines $x_3^*$. The martingale condition then fixes every binary row, proving uniqueness of the screened distribution.

Final Answer: $\boxed{\left(8-\sqrt{a^2-\frac{16}{3}a+16},\sqrt{a^2+10a+49}\right)}$

---

## Answer

$\left(8-\sqrt{a^2-\frac{16}{3}a+16},\sqrt{a^2+10a+49}\right)$

---

## Classification

**Problem Type:** Construction under constraints

**Answer Type:** Tuple or ordered list

---

## Solution Concepts

- conditional distributions
- martingale barycentric splitting
- support screening
- capacity exhaustion
- regular conditional probability
