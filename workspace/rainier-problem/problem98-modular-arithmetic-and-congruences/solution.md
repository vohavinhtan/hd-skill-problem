## Steps

Step 1: Encode both recurrence rules by powers of one quadratic unit

Let $f(x)=x^2-6x+1$. Modulo $31$, the number $18$ is a root because $f(18)=217=7\cdot31$, while $f'(18)=30$ is not divisible by $31$. If $r$ is a root modulo $31^m$, then
$$
f(r+c31^m)\equiv f(r)+c31^m f'(r)\pmod{31^{m+1}}.
$$
Since $f'(r)\equiv30\pmod{31}$, exactly one residue $c$ modulo $31$ lifts $r$ to a root modulo $31^{m+1}$. The compatible roots define a $31$-adic unit $\alpha$ satisfying
$$
\alpha^2-6\alpha+1=0,\qquad \alpha\equiv18\pmod{31}.
$$
The quadratic relation gives $\alpha+\alpha^{-1}=6$. For any unit $u$,
$$
(u+u^{-1})^2-2=u^2+u^{-2},
$$
and
$$
(u+u^{-1})^4-4(u+u^{-1})^2+2=u^4+u^{-4}.
$$
The two recurrence rules therefore multiply the exponent of $\alpha$ by $2$ and then by $4$. Induction gives
$$
a_{2r}=\alpha^{2^{3r}}+\alpha^{-2^{3r}},\qquad
a_{2r+1}=\alpha^{2^{3r+1}}+\alpha^{-2^{3r+1}}.
$$

Step 2: Determine the exceptional lifting behavior of $\alpha$

Modulo $31$,
$$
18^2\equiv14,\qquad 18^3\equiv4,\qquad 18^5\equiv25.
$$
Also $25^2\equiv5$ and $25^3\equiv1\pmod{31}$, so $18^{15}\equiv1\pmod{31}$. Since $18\neq1$, $18^3\not\equiv1$, and $18^5\not\equiv1\pmod{31}$, the order of $\alpha$ modulo $31$ is $15$.

Set $\beta=\alpha^5$ and $S_j=\alpha^j+\alpha^{-j}$. Since $S_0=2$, $S_1=6$, and $S_{j+1}=6S_j-S_{j-1}$,
$$
S_2=34,\quad S_3=198,\quad S_4=1154,\quad S_5=6726=7\cdot31^2-1.
$$
This gives
$$
\beta^2+\beta+1=\beta(\beta+\beta^{-1}+1)=7\cdot31^2\beta.
$$
Therefore
$$
\alpha^{15}-1=\beta^3-1=7\cdot31^2\beta(\beta-1).
$$
Modulo $31$, $\beta\equiv25\neq1$. Both $\beta$ and $\beta-1$ are units, so $\alpha^{15}-1$ is divisible by $31^2$ but not by $31^3$.

Step 3: Find the order of $\alpha$ modulo every power of $31$

Write $\alpha^{15}=1+31^2u$ with $u$ a $31$-adic unit. Suppose
$$
(1+31^2u)^{31^r}=1+31^{r+2}u_r
$$
with $u_r$ a unit. Raising to the $31$st power gives
$$
(1+31^{r+2}u_r)^{31}=1+31^{r+3}u_r+\sum_{j=2}^{31}\binom{31}{j}31^{j(r+2)}u_r^j.
$$
For $2\leq j\leq30$, the binomial coefficient $\binom{31}{j}$ is divisible by $31$, and the $j=31$ term contains the factor $31^{31(r+2)}$. Every term in the sum is therefore divisible by $31^{r+4}$. The coefficient at $31^{r+3}$ remains a unit. Induction shows that $\alpha^{15\cdot31^r}-1$ is divisible by $31^{r+2}$ but not by $31^{r+3}$.

Any exponent that kills $\alpha$ modulo $31^n$ must be divisible by $15$, because reduction modulo $31$ has order $15$. If $M_n$ is the order of $\alpha$ modulo $31^n$, then
$$
M_1=M_2=15,\qquad M_n=15\cdot31^{n-2}\quad(n\geq3).
$$

Step 4: Turn a return of $a_k$ into a congruence for its hidden exponent

Let $e_k=2^{3r}$ when $k=2r$ and $e_k=2^{3r+1}$ when $k=2r+1$. Step 1 gives
$$
a_k=\alpha^{e_k}+\alpha^{-e_k}.
$$
Put $y=\alpha^{e_k}$. The return condition $a_k\equiv6\pmod{31^n}$ gives
$$
y\left(y+y^{-1}-\alpha-\alpha^{-1}\right)=(y-\alpha)(y-\alpha^{-1})\equiv0\pmod{31^n}.
$$
The two factors differ by $\alpha^{-1}-\alpha\equiv19-18=1\pmod{31}$, so they cannot both be divisible by $31$. One factor is a unit, and the other must be divisible by $31^n$. Therefore
$$
e_k\equiv1\pmod{M_n}\quad\text{or}\quad e_k\equiv-1\pmod{M_n}.
$$

Step 5: Reduce the return condition to divisibility of the exponent index

Because $15$ divides every $M_n$, the negative branch in Step 4 is impossible: powers of $2$ modulo $15$ cycle through $2,4,8,1$ and never equal $-1$. A return occurs exactly when
$$
2^{3r}\equiv1\pmod{M_n}
$$
for $k=2r$, or
$$
2^{3r+1}\equiv1\pmod{M_n}
$$
for $k=2r+1$.

Let $D_n$ be the order of $2$ modulo $M_n$. For $n=1,2$, Step 3 gives $M_n=15$, so $D_n=4$. For $n\geq3$, write $s=n-2$. Since $2^5=1+31$, if
$$
(1+31)^{31^r}=1+31^{r+1}v_r
$$
with $v_r$ a unit, then the binomial expansion after one more $31$st power has leading term $31^{r+2}v_r$ and all remaining terms divisible by $31^{r+3}$. Induction gives
$$
\operatorname{ord}_{31^s}(2)=5\cdot31^{s-1}.
$$
The factors $15$ and $31^s$ are coprime, so
$$
D_n=\operatorname{lcm}\left(4,5\cdot31^{s-1}\right)=20\cdot31^{n-3}\qquad(n\geq3).
$$
The return condition is now $D_n\mid3r$ at an even index and $D_n\mid3r+1$ at an odd index.

Step 6: Minimize over the even and odd indices

For $n=1,2$, $D_n=4$. The least solution of $4\mid3r+1$ is $r=1$, giving $k=3$, while the least positive even-index solution has $r=4$ and $k=8$. Therefore $T_1=T_2=3$.

For $n\geq3$, $D_n=20\cdot31^{n-3}$ is congruent to $2$ modulo $3$. Since $3$ is coprime to $D_n$, the least even-index return has $r=D_n$ and $k=2D_n$. For an odd-index return, $3r+1=mD_n$. The least positive $m$ with $mD_n\equiv1\pmod3$ is $m=2$, so
$$
r=\frac{2D_n-1}{3},\qquad k=2r+1=\frac{4D_n+1}{3}.
$$
This odd-index value is smaller than $2D_n$. Substituting the value of $D_n$ gives the least positive return time.

Final Answer: $\boxed{T_1=T_2=3,\quad T_n=\frac{80\cdot31^{n-3}+1}{3}\quad(n\geq3)}$

---

## Answer

$T_1=T_2=3,\quad T_n=\frac{80\cdot31^{n-3}+1}{3}\quad(n\geq3)$

---

## Classification

**Domain:** Number Theory

**Sub-domain:** Modular arithmetic and congruences

**Problem Type:** Symbolic derivation

**Answer Type:** Sequence or series representation

---

## Solution Concepts

- modular arithmetic
- multiplicative orders
- prime-power lifting
- quadratic algebraic units
- trace-power recurrences
