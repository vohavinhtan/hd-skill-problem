## Steps

Step 1: Convert the constraints to a quadratic minorant problem and compute the objective moments

Write
$$
z=x^2-\frac{1}{2}.
$$
Since $P$ is even of degree at most $4$, there is a quadratic polynomial
$$
q(z)=A+Bz+Cz^2
$$
such that $P(x)=q(x^2-1/2)$. As $x$ runs through $[-1,1]$, one has $z\in[-1/2,1/2]$. Also,
$$
2-x^2=\frac{3}{2}-z,
\qquad
1+x^2=\frac{3}{2}+z.
$$
Both factors are positive on this interval, so the two pointwise constraints are equivalent to
$$
q(z)\leq \min\left(\frac{1}{\frac{3}{2}-z},\frac{1}{\frac{3}{2}+z}\right)
=\frac{1}{\frac{3}{2}+|z|}.
$$

Let
$$
M_k(\lambda)=\int_{-1}^{1}(1+\lambda x^2)\left(x^2-\frac{1}{2}\right)^k dx
\qquad(k=0,1,2).
$$
Direct integration gives
$$
M_0=2+\frac{2\lambda}{3}=\frac{2(\lambda+3)}{3},
$$
$$
M_1=\left(\frac{2}{3}-1\right)
+\lambda\left(\frac{2}{5}-\frac{1}{3}\right)
=\frac{\lambda-5}{15},
$$
and
$$
\begin{aligned}
M_2
&=\left(\frac{2}{5}-\frac{2}{3}+\frac{1}{2}\right)
+\lambda\left(\frac{2}{7}-\frac{2}{5}+\frac{1}{6}\right)\\
&=\frac{7}{30}+\frac{11\lambda}{210}
=\frac{11\lambda+49}{210}.
\end{aligned}
$$
Thus the objective applied to $q(z)=A+Bz+Cz^2$ is
$$
M_0A+M_1B+M_2C.
$$

Step 2: Build a two-point certificate for every feasible quadratic

Set
$$
h=\sqrt{\frac{M_2}{M_0}}
=\sqrt{\frac{11\lambda+49}{140(\lambda+3)}}.
$$
For $\lambda>-1$, one has $h>0$, and
$$
h^2<\frac{1}{4}
$$
because
$$
11\lambda+49<35(\lambda+3)
$$
is equivalent to $24\lambda+56>0$. Hence $0<h<1/2$.

Define
$$
\alpha=\frac{1}{2}\left(M_0-\frac{M_1}{h}\right),
\qquad
\beta=\frac{1}{2}\left(M_0+\frac{M_1}{h}\right).
$$
The weight $1+\lambda x^2$ is strictly positive on $[-1,1]$, and $x^2-1/2$ is not constant. Therefore strict Cauchy-Schwarz gives
$$
M_1^2<M_0M_2=M_0^2h^2,
$$
so $\alpha,\beta>0$.

For every quadratic $q(z)=A+Bz+Cz^2$,
$$
\begin{aligned}
\alpha q(-h)+\beta q(h)
&=(\alpha+\beta)A+h(\beta-\alpha)B+h^2(\alpha+\beta)C\\
&=M_0A+M_1B+M_2C.
\end{aligned}
$$
Hence the original weighted integral equals this two-point expression. If $q$ is feasible, Step 1 gives
$$
q(-h)\leq\frac{1}{\frac{3}{2}+h},
\qquad
q(h)\leq\frac{1}{\frac{3}{2}+h}.
$$
Because $\alpha,\beta>0$,
$$
\int_{-1}^{1}(1+\lambda x^2)P(x)\,dx
\leq\frac{\alpha+\beta}{\frac{3}{2}+h}
=\frac{M_0}{\frac{3}{2}+h}.
$$

Step 3: Construct an attaining quartic and certify the global pointwise bound

Put $a=3/2$ and define
$$
q_h(z)=\frac{1}{a+h}-\frac{z^2-h^2}{2h(a+h)^2}.
$$
For $r=|z|\geq0$,
$$
\begin{aligned}
\frac{1}{a+r}-q_h(z)
&=\frac{1}{a+r}-\frac{1}{a+h}+\frac{r^2-h^2}{2h(a+h)^2}\\
&=\frac{(r-h)^2(a+2h+r)}{2h(a+h)^2(a+r)}\geq0.
\end{aligned}
$$
Thus
$$
q_h(z)\leq\frac{1}{\frac{3}{2}+|z|}
$$
for every $z\in[-1/2,1/2]$. Therefore
$$
P_h(x)=q_h\left(x^2-\frac{1}{2}\right)
$$
is an admissible even polynomial of degree at most $4$.

Moreover,
$$
q_h(-h)=q_h(h)=\frac{1}{\frac{3}{2}+h}.
$$
The identity from Step 2 then gives
$$
\int_{-1}^{1}(1+\lambda x^2)P_h(x)\,dx
=\frac{M_0}{\frac{3}{2}+h},
$$
so the upper bound is attained. In particular the supremum is a maximum.

The equality case is also forced. Since $\alpha,\beta>0$, any maximizing quadratic must satisfy equality at both $z=-h$ and $z=h$. These are interior contact points of the smooth branches of the bound, so a feasible quadratic touching there must also have the corresponding tangent slopes. Those two values and two tangent conditions determine the quadratic uniquely, giving $q=q_h$.

Step 4: Substitute the moments and state the optimal-value function

From Step 1,
$$
M_0=\frac{2(\lambda+3)}{3},
$$
and from Step 2,
$$
h=\sqrt{\frac{11\lambda+49}{140(\lambda+3)}}.
$$
Substitution into the attained bound from Step 3 yields
$$
V(\lambda)
=\frac{2(\lambda+3)}{3\left(\frac{3}{2}+\sqrt{\frac{11\lambda+49}{140(\lambda+3)}}\right)}
\qquad(\lambda>-1).
$$

Final Answer: $\boxed{\frac{2(\lambda+3)}{3\left(\frac{3}{2}+\sqrt{\frac{11\lambda+49}{140(\lambda+3)}}\right)}}$

---

## Answer

$\frac{2(\lambda+3)}{3\left(\frac{3}{2}+\sqrt{\frac{11\lambda+49}{140(\lambda+3)}}\right)}$

---

## Classification

**Problem Type:** Optimization

**Answer Type:** Function or mapping

---

## Solution Concepts

- semi-infinite linear programming
- moment matching
- two-point quadrature certificate
- tangent minorants
