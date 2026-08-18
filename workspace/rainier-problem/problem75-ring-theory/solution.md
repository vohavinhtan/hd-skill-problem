## Steps

Step 1: Classify the three parameter strata
Put
$$
A=30n+10,\qquad B=30n+15,\qquad C=30n+29.
$$
Relative to $t^B,t^A$, the $Y$- and $Z$-images have coefficient matrix
$$
M(\lambda)=
\begin{pmatrix}
\lambda^2-1&\lambda-1\\
\lambda^2-1&\lambda(\lambda-1)
\end{pmatrix}.
$$
Its determinant is
$$
\det M(\lambda)=(\lambda^2-1)(\lambda-1)^2.
$$
If $\lambda\neq\pm1$, the matrix is invertible, so $t^A,t^B\in A_{n,\lambda}$. Since $W=t^C$ and $X=t^{30}$,
$$
A_{n,\lambda}=\mathbb C[[t^{30},t^A,t^B,t^C]]
\qquad(\lambda\neq\pm1).
$$
If $\lambda=-1$, the $t^B$ coefficient vanishes while the $t^A$ coefficient does not, giving
$$
A_{n,-1}=\mathbb C[[t^{30},t^A,t^C]].
$$
If $\lambda=1$, both $Y$ and $Z$ vanish, so
$$
A_{n,1}=\mathbb C[[t^{30},t^C]].
$$
Thus the conductor problem reduces to these three numerical semigroups.

Step 2: Compute the three conductor exponents
For a numerical semigroup $S$ containing $30$, let $m_r$ be its least element congruent to $r$ modulo $30$. Its conductor is
$$
\max_{0\leq r<30}m_r-29.
$$
Indeed, every integer in residue $r$ from $m_r$ onward is obtained by adding multiples of $30$, while $m_r-30$ is missing when $m_r>0$.

For $\lambda\neq\pm1$, set
$$
S_{\mathrm{gen}}=\langle30,A,B,C\rangle.
$$
The identities
$$
3A=30(3n+1),
$$
$$
2B=30(2n+1),
$$
$$
5C=A+B+30(3n+4)
$$
show that every element of $S_{\mathrm{gen}}$ reduces to
$$
30q+iA+jB+kC,
\qquad
q\geq0,\quad
0\leq i\leq2,\quad
0\leq j\leq1,\quad
0\leq k\leq4.
$$
These $30$ reduced sums have distinct residues modulo $30$. If two are congruent, then
$$
10(i-i')+15(j-j')-(k-k')\equiv0\pmod{30}.
$$
Modulo $5$ gives $k=k'$, since $|k-k'|\leq4$. Modulo $3$ then gives $i=i'$, since $|i-i'|\leq2$. The remaining congruence forces $j=j'$. Each reduction subtracts a nonnegative multiple of $30$, so these are exactly the least representatives of the $30$ residue classes. Their maximum is
$$
2A+B+4C=210n+151,
$$
and therefore
$$
\kappa_{n,\lambda}=210n+122
\qquad(\lambda\neq\pm1).
$$

For $\lambda=-1$, set
$$
S_-=\langle30,A,C\rangle.
$$
Now
$$
3A=30(3n+1),
$$
$$
10C=2A+30(8n+9).
$$
Hence every element reduces to
$$
30q+iA+kC,
\qquad
q\geq0,\quad0\leq i\leq2,\quad0\leq k\leq9.
$$
If two such sums are congruent modulo $30$, then
$$
10(i-i')-(k-k')\equiv0\pmod{30}.
$$
Modulo $10$ gives $k=k'$, because $|k-k'|\leq9$, and then $i=i'$ follows modulo $3$. These are the $30$ least representatives. Their maximum is
$$
2A+9C=330n+281,
$$
so
$$
\kappa_{n,-1}=330n+252.
$$

For $\lambda=1$, the semigroup is $\langle30,C\rangle$. Since $C\equiv-1\pmod{30}$, the least representatives are
$$
0,C,2C,\ldots,29C.
$$
Their maximum is $29C$, giving
$$
\kappa_{n,1}=29C-29=870n+812.
$$

Step 3: Identify the second-largest conductor
For every $n\geq2$,
$$
870n+812>330n+252>210n+122.
$$
The unique largest conductor occurs at $\lambda=1$, and the unique second-largest distinct conductor occurs at $\lambda=-1$. Hence
$$
\beta_n=330n+252,\qquad E_n=\{-1\}.
$$
Final Answer: $\boxed{\left(330n+252,\{-1\}\right)}$

---

## Answer

$\left(330n+252,\{-1\}\right)$

---

## Classification

**Problem Type:** Optimization

**Answer Type:** Tuple or ordered list

---

## Solution Concepts

- conductor exponent
- numerical semigroup rings
- rank drop of generators
- residue-class representatives
- Apéry sets
