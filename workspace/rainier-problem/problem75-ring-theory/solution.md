## Steps

Step 1: Find the cancellation matrix
Put
$$
b=8n+1,
$$
and abbreviate the five images by $x,y,z,u,v$. Then
$$
x=t^8,\qquad y=t^{12},\qquad z=t^b,
$$
while
$$
u-z=(\lambda^3-1)t^{b+4}+(\lambda^2-1)t^{b+6},
$$
$$
v-z=(\lambda^6-1)t^{b+4}+(\lambda^4-1)t^{b+6}.
$$
Thus the two possible new monomials are controlled by
$$
M(\lambda)=
\begin{pmatrix}
\lambda^3-1&\lambda^2-1\\
\lambda^6-1&\lambda^4-1
\end{pmatrix}.
$$
Its determinant factors without expansion:
$$
\begin{aligned}
\det M(\lambda)
&=(\lambda^3-1)(\lambda^4-1)-(\lambda^2-1)(\lambda^6-1)\\
&=(\lambda^3-1)(\lambda^2-1)\bigl((\lambda^2+1)-(\lambda^3+1)\bigr)\\
&=-\lambda^2(\lambda-1)^3(\lambda+1)(\lambda^2+\lambda+1).
\end{aligned}
$$
Since $\lambda\neq0$, the matrix is singular exactly for $\lambda=1$, $\lambda=-1$, or $\lambda^2+\lambda+1=0$.

Step 2: Identify the four semigroup rings
If $\det M(\lambda)\neq0$, constant linear combinations of $u-z$ and $v-z$ give both $t^{b+4}$ and $t^{b+6}$. Conversely $u$ and $v$ are linear combinations of $z,t^{b+4},t^{b+6}$. Hence
$$
A_{n,\lambda}=\mathbb C[[t^8,t^{12},t^b,t^{b+4},t^{b+6}]].
$$

At the singular parameters the rank drops in three different ways. If $\lambda=1$, then $u=v=z$, so
$$
A_{n,1}=\mathbb C[[t^8,t^{12},t^b]].
$$
If $\lambda=-1$, then
$$
u-z=-2t^{b+4},\qquad v=z,
$$
so
$$
A_{n,-1}=\mathbb C[[t^8,t^{12},t^b,t^{b+4}]].
$$
If $\lambda^2+\lambda+1=0$, then $\lambda^3=1$ and $\lambda\neq1$, hence both differences are nonzero scalar multiples of $t^{b+6}$ and
$$
A_{n,\lambda}=\mathbb C[[t^8,t^{12},t^b,t^{b+6}]].
$$
Therefore no other parameter stratum occurs.

Step 3: Compute the four conductors conceptually
For a numerical semigroup $S$ containing $8$, let $w_r$ be its least element congruent to $r$ modulo $8$. The largest missing integer in that residue is $w_r-8$, so the conductor is
$$
\max_r w_r-7.
$$
We use that
$$
\langle8,12\rangle=\{0\}\cup\{4m:m\geq2\},
$$
so the least positive element in residue $4$ modulo $8$ is $12$. Also $b\equiv1\pmod8$ and $b\geq17$.

For
$$
S_0=\langle8,12,b\rangle,
$$
residues $1,2,3$ need one, two, three copies of $b$, and their partners in residues $5,6,7$ require an additional $12$. Thus the largest Apéry representative is $3b+12$, giving
$$
c(S_0)=3b+5=24n+8.
$$

For
$$
S_4=\langle8,12,b,b+4\rangle,
$$
the generator $b+4$ replaces that extra $12$ in the odd residue classes. The largest least representative is $2b+(b+4)=3b+4$, so
$$
c(S_4)=3b-3=24n.
$$

For
$$
S_6=\langle8,12,b,b+6\rangle,
$$
residue $6$ requires two copies of $b+6$, giving $2b+12$. Every other residue has a representative at most $b+18$ or $2b$, and both are smaller than $2b+12$. Hence
$$
c(S_6)=2b+5=16n+7.
$$

Finally, for
$$
S_{46}=\langle8,12,b,b+4,b+6\rangle,
$$
residue $6$ is represented by $b+(b+4)=2b+4$. Every other residue has a representative at most $\max\{2b,b+18\}$, and both quantities are smaller than $2b+4$ because $b\geq17$. Therefore
$$
c(S_{46})=2b-3=16n-1.
$$

Step 4: Order the parameter levels
Step 2 and Step 3 give
$$
\kappa_{n,1}=24n+8,
$$
$$
\kappa_{n,-1}=24n,
$$
$$
\kappa_{n,\lambda}=16n+7
\qquad(\lambda^2+\lambda+1=0),
$$
and
$$
\kappa_{n,\lambda}=16n-1
$$
for every remaining $\lambda$. For $n\geq2$,
$$
24n+8>24n>16n+7>16n-1,
$$
because $24n-(16n+7)=8n-7>0$. Hence the second-largest conductor is attained only at $\lambda=-1$:
$$
\beta_n=24n,\qquad E_n=\{-1\}.
$$
Final Answer: $\boxed{\left(24n,\{-1\}\right)}$

---

## Answer

$\left(24n,\{-1\}\right)$

---

## Classification

**Problem Type:** Optimization

**Answer Type:** Tuple or ordered list

---

## Solution Concepts

- rank drop of a cancellation matrix
- roots of unity
- numerical semigroup rings
- Apéry representatives
- conductor exponent