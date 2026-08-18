## Steps

Step 1: Discover the parameter strata from the hidden rank drop
Put
$$
a=22n+3,\qquad b=22n+8,\qquad g=2b=44n+16.
$$
Relative to $t^a,t^b$, the images of $Y,Z$ have coefficient matrix
$$
M(\lambda)=
\begin{pmatrix}
\lambda^2-1&\lambda^4-4\lambda^2+\lambda+2\\
\lambda^2+\lambda-2&\lambda^4+\lambda^3-6\lambda^2+\lambda+3
\end{pmatrix}.
$$
The two entries in the second column factor as
$$
\lambda^4-4\lambda^2+\lambda+2
=(\lambda-1)(\lambda+2)(\lambda^2-\lambda-1),
$$
$$
\lambda^4+\lambda^3-6\lambda^2+\lambda+3
=(\lambda-1)(\lambda+3)(\lambda^2-\lambda-1).
$$
Since
$$
\lambda^2-1=(\lambda-1)(\lambda+1),
$$
and
$$
\lambda^2+\lambda-2=(\lambda-1)(\lambda+2),
$$
the determinant is
$$
\det M(\lambda)
=-(\lambda-1)^2(\lambda^2-\lambda-1).
$$

If $\lambda\neq1$ and $\lambda^2-\lambda-1\neq0$, the matrix is invertible. Hence $t^a,t^b\in A_{n,\lambda}$, and $W=t^{2b}$ is redundant:
$$
A_{n,\lambda}=\mathbb C[[t^{11},t^a,t^b]].
$$

If $\lambda^2-\lambda-1=0$, then $\lambda\neq1$, the whole second column vanishes, and the first column is nonzero. Therefore
$$
A_{n,\lambda}=\mathbb C[[t^{11},t^a,t^{2b}]].
$$

If $\lambda=1$, both $Y$ and $Z$ vanish, giving
$$
A_{n,1}=\mathbb C[[t^{11},t^{2b}]].
$$
These are the only three parameter strata.

Step 2: Compute the generic conductor without enumerating eleven residue classes
Assume
$$
\lambda\neq1,\qquad \lambda^2-\lambda-1\neq0.
$$
By Step 1 the value semigroup is
$$
S_{\mathrm{gen}}=\langle11,a,b\rangle.
$$
We have
$$
a\equiv3\pmod{11},\qquad b\equiv-3\pmod{11},
$$
and
$$
a+b=44n+11=11(4n+1).
$$
A least element of any residue class cannot contain both $a$ and $b$: removing one copy of each subtracts the positive multiple $11(4n+1)$ without changing the residue modulo $11$.

Therefore the least element in residue $3k$ is
$$
\min\{ka,(11-k)b\},
\qquad 0\leq k\leq10.
$$
Indeed, pure powers may be reduced to exponents between $0$ and $10$ because $11a$ and $11b$ are multiples of $11$.

The difference
$$
ka-(11-k)b=k(a+b)-11b
$$
is strictly increasing in $k$. At the two middle indices,
$$
5a<6b,
$$
while
$$
6a-5b=22n-22>0.
$$
Thus the switch occurs between $k=5$ and $k=6$. The largest least representative is
$$
5b=110n+40.
$$
For a numerical semigroup containing $11$, its conductor is the largest least residue representative minus $10$. Hence
$$
\kappa_{n,\lambda}=110n+30
$$
throughout the generic stratum.

Step 3: Find the exceptional conductor from one forced residue obstruction
Assume
$$
\lambda^2-\lambda-1=0.
$$
Step 1 gives
$$
S_*=\langle11,a,g\rangle,
\qquad
g=2b=2a+10.
$$
Modulo $11$,
$$
a\equiv3,\qquad g\equiv5.
$$
Consider the following eleven elements of $S_*$:
$$
0,\ a,\ 2a,\ 3a,\ 4a,\ 5a,\ 6a,\ g,\ a+g,\ 2g,\ a+2g.
$$
Their residues modulo $11$ are
$$
0,\ 3,\ 6,\ 9,\ 1,\ 4,\ 7,\ 5,\ 8,\ 10,\ 2,
$$
so every residue class occurs. Since $n\geq2$, we have $a>20$, and
$$
g=2a+10<3a,
$$
$$
a+g=3a+10<4a,
$$
$$
2g=4a+20<5a,
$$
$$
a+2g=5a+20<6a.
$$
Thus every residue class has a representative at most $6a$.

It remains to show that the residue $7$ cannot occur below $6a$. Suppose
$$
ia+jg<6a
$$
with $i,j\geq0$ and
$$
3i+5j\equiv7\pmod{11}.
$$
Set
$$
s=i+2j.
$$
Because $g=2a+10$,
$$
ia+jg=sa+10j<6a,
$$
so $s\leq5$. Also $i=s-2j$, hence
$$
3i+5j=3s-j.
$$
The bounds $0\leq j\leq s/2$ and $s\leq5$ give
$$
0\leq3s-j\leq15.
$$
Since $3s-j\equiv7\pmod{11}$, the only possible value in this interval is $7$. Therefore
$$
j=3s-7.
$$
For $s\leq2$ this is negative. For $s=3,4,5$ it equals $2,5,8$, respectively, each larger than $s/2$. No such $i,j$ exist.

Hence $6a$ is the least representative of residue $7$, so it is the largest Apéry representative. Therefore
$$
\kappa_{n,\lambda}=6a-10=132n+8
$$
whenever
$$
\lambda^2-\lambda-1=0.
$$

Step 4: Compare the three conductor strata
At $\lambda=1$, Step 1 gives
$$
S_1=\langle11,g\rangle.
$$
Since $g\equiv5\pmod{11}$ and $\gcd(5,11)=1$, the multiples
$$
0,g,2g,\ldots,10g
$$
give the least representatives of all residue classes modulo $11$. Their maximum is $10g$, so
$$
\kappa_{n,1}=10g-10=440n+150.
$$

For every $n\geq2$,
$$
440n+150>132n+8>110n+30,
$$
because
$$
132n+8-(110n+30)=22n-22>0.
$$
Thus the unique largest conductor occurs at $\lambda=1$, while the second-largest distinct conductor occurs exactly at the two roots of $\lambda^2-\lambda-1$.

Therefore
$$
\beta_n=132n+8,
$$
and
$$
E_n=\{\lambda\in\mathbb C^{\times}:\lambda^2-\lambda-1=0\}.
$$
Final Answer: $\boxed{\left(132n+8,\{\lambda\in\mathbb C^{\times}:\lambda^2-\lambda-1=0\}\right)}$

---

## Answer

$\left(132n+8,\{\lambda\in\mathbb C^{\times}:\lambda^2-\lambda-1=0\}\right)$

---

## Classification

**Problem Type:** Optimization

**Answer Type:** Tuple or ordered list

---

## Solution Concepts

- conductor exponent
- rank drop of generators
- numerical semigroup rings
- Apéry representatives
- residue-class obstruction
