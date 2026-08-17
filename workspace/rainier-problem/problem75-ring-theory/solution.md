## Steps

Step 1: Reduce each parameter value to a numerical semigroup ring
Because $t^{12}\in A_{n,\lambda}$, the ring $\mathbb C[[t^{12}]]$ is contained in $A_{n,\lambda}$. Define
$$
\delta_k=
\begin{cases}
1,&\lambda^k=1,\\
0,&\lambda^k\neq1.
\end{cases}
$$
If $\lambda^4\neq1$, then
$$
(\lambda^4-1)+t^{12}
$$
is a unit of $\mathbb C[[t^{12}]]$, so the $Y$-image generates $t^{12n+6}$ over $\mathbb C[[t^{12}]]$; if $\lambda^4=1$, it equals $t^{12n+18}$. The same argument for $Z$ and $W$ gives
$$
A_{n,\lambda}
=
\mathbb C[[t^{12},t^a,t^b,t^c]],
$$
where
$$
a=12n+6+12\delta_4,\qquad
b=12n+9+24\delta_6,\qquad
c=12n+11+24\delta_9.
$$
Thus $\kappa_{n,\lambda}$ is the conductor of the numerical semigroup
$$
S=\langle12,a,b,c\rangle.
$$

Step 2: Find the conductor from a mixed-radix set of minimal representatives
The three identities
$$
2a=12(2n+1+2\delta_4),
$$
$$
2b=a+12(n+1+4\delta_6-\delta_4),
$$
$$
3c=b+12(2n+2+6\delta_9-2\delta_6)
$$
have nonnegative coefficients because $n\geq2$. Therefore every element of $S$ can be written as
$$
12q+\varepsilon a+\eta b+\theta c,
\qquad
q\geq0,\quad
\varepsilon,\eta\in\{0,1\},\quad
\theta\in\{0,1,2\}.
$$
These twelve reduced sums lie in distinct residue classes modulo $12$. Indeed, if two are congruent, then
$$
6(\varepsilon-\varepsilon')+
9(\eta-\eta')+
11(\theta-\theta')
\equiv0\pmod{12}.
$$
Modulo $3$ this forces $\theta=\theta'$, since the difference lies between $-2$ and $2$. Modulo $2$ it then forces $\eta=\eta'$, and the remaining congruence forces $\varepsilon=\varepsilon'$. Hence each residue class modulo $12$ has exactly one reduced representative.

The reduction identities only replace excess copies by nonnegative multiples of $12$. Thus the reduced representative in a residue class is its least element of $S$. The largest of the twelve representatives is
$$
a+b+2c.
$$
In each residue class the last missing integer is the least representative minus $12$. Therefore
$$
\kappa_{n,\lambda}=a+b+2c-11
=
48n+26+12\delta_4+24\delta_6+48\delta_9.
$$

Step 3: Optimize the parameter score
Write
$$
T(\lambda)=\delta_4+2\delta_6+4\delta_9.
$$
Then
$$
\kappa_{n,\lambda}=48n+26+12T(\lambda).
$$
The maximum $T=7$ requires $\lambda^4=\lambda^6=\lambda^9=1$, hence $\lambda^{\gcd(4,6,9)}=\lambda=1$; so the largest conductor is attained only at $\lambda=1$.

For $\lambda\neq1$, the largest possible binary score is $6$. It occurs exactly when
$$
\delta_4=0,\qquad \delta_6=\delta_9=1.
$$
The last two equalities are equivalent to $\lambda^3=1$, and excluding $\lambda=1$ gives
$$
\lambda^2+\lambda+1=0.
$$
Such roots have order $3$, so they do not satisfy $\lambda^4=1$; hence the score $6$ is attained. Therefore
$$
\beta_n=48n+26+72=48n+98,
$$
and
$$
E_n=\{\lambda\in\mathbb C^{\times}:\lambda^2+\lambda+1=0\}.
$$
Final Answer: $\boxed{\left(48n+98,\{\lambda\in\mathbb C^{\times}:\lambda^2+\lambda+1=0\}\right)}$

---

## Answer

$\left(48n+98,\{\lambda\in\mathbb C^{\times}:\lambda^2+\lambda+1=0\}\right)$

---

## Classification

**Problem Type:** Optimization

**Answer Type:** Tuple or ordered list

---

## Solution Concepts

- numerical semigroup rings
- conductor exponent
- residue-class representatives
- formal power series units
- roots of unity