## Steps

Step 1: Build the candidate affine polynomial
Let
$$
p_0(x)=\frac{x}{2}+\frac13.
$$
Compute the weighted errors $e(x)=w(x)(p_0(x)-y(x))$ at the four data points. At $x=-2$,
$$
p_0(-2)=-1+\frac13=-\frac23,
$$
so
$$
e(-2)=2\left(-\frac23+\frac76\right)=2\cdot\frac12=1.
$$
At $x=-1$,
$$
p_0(-1)=-\frac12+\frac13=-\frac16,
$$
so
$$
e(-1)=3\left(-\frac16-\frac16\right)=3\left(-\frac13\right)=-1.
$$
At $x=1$,
$$
p_0(1)=\frac12+\frac13=\frac56,
$$
so
$$
e(1)=4\left(\frac56-\frac{17}{24}\right)
=4\left(\frac{20}{24}-\frac{17}{24}\right)
=\frac12.
$$
At $x=3$,
$$
p_0(3)=\frac32+\frac13=\frac{11}{6},
$$
so
$$
e(3)=\frac{11}{6}-\frac56=1.
$$
This gives $\Lambda(p_0)=1$.

Step 2: Prove no smaller maximum error is possible
Suppose $q(x)=\alpha x+\beta$ satisfies $\Lambda(q)<1$. Put $h=q-p_0$. At $x=-2$, the candidate error is $+1$, so $q$ having weighted error less than $1$ forces
$$
h(-2)<0.
$$
At $x=-1$, the candidate error is $-1$, so the same strict bound forces
$$
h(-1)>0.
$$
At $x=3$, the candidate error is $+1$, so
$$
h(3)<0.
$$
The affine function $h$ changes sign between $-2$ and $-1$, and also between $-1$ and $3$. It follows that $h$ has two distinct real zeros. A nonzero affine function cannot have two distinct zeros, and if $h$ were zero then $q=p_0$ would have $\Lambda(q)=1$, not less than $1$. So no affine polynomial has maximum weighted error below $1$.

Step 3: Prove uniqueness at the minimum value
Let $q$ be any affine minimizer. Since the best value is $1$, we have $\Lambda(q)=1$. With $h=q-p_0$, the three extremal data points give
$$
h(-2)\leq0,\qquad h(-1)\geq0,\qquad h(3)\leq0.
$$
If either inequality on adjacent intervals is strict enough to create a sign change, $h$ has a zero in that interval. If equality occurs at an endpoint, that endpoint is already a zero. In all cases, a nonzero affine $h$ satisfying the three inequalities and not vanishing at all three extremal points would have two distinct zeros or a forced sign change plus one endpoint zero. The only affine function avoiding this contradiction is
$$
h(-2)=h(-1)=h(3)=0.
$$
An affine function with two distinct zeros is identically zero, so $h\equiv0$ and $q=p_0$.

Step 4: Extract the coefficient vector and check the slack point
The unique minimizer is
$$
p_0(x)=\frac12x+\frac13.
$$
Its coefficient vector is
$$
\begin{bmatrix}
\frac12\\
\frac13
\end{bmatrix}.
$$
The point $x=1$ is not an active equality constraint because its weighted error is $\frac12$, which is strictly below the maximum value $1$. This confirms that the fourth data point is not carrying a hidden larger error.
Final Answer: $\boxed{\begin{bmatrix}\frac12\\ \frac13\end{bmatrix}}$

---

## Answer

$\begin{bmatrix}\frac12\\ \frac13\end{bmatrix}$

---

## Classification

**Problem Type:** Optimization

**Answer Type:** Vector

---

## Concepts (1-5)

- Weighted finite minimax approximation.
- Alternating extremal errors.
- Sign change obstruction for affine functions.
- Slack constraint verification.
- Uniqueness from root counting.

---

## Black-Box Audit
- Step 1 -- Level 1: every weighted error is computed with intermediate fractions.
- Step 2 -- Level 1: the lower bound is certified by sign changes.
- Step 3 -- Level 1: uniqueness is checked from the same sign pattern.
- Step 4 -- Level 1: the coefficient vector and slack point are explicit.
