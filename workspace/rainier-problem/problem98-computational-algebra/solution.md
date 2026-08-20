## Steps

Step 1: Identify the cyclic ordering of the roots

Let $\zeta$ be a primitive thirteenth root of unity and put
$$
\theta=\zeta+\zeta^{-1}.
$$
For $s_j=\zeta^j+\zeta^{-j}$,
$$
s_0=2,\qquad s_1=\theta,\qquad s_{j+1}=\theta s_j-s_{j-1}.
$$
Pairing the twelve nontrivial thirteenth roots gives
$$
1+s_1+s_2+s_3+s_4+s_5+s_6=0.
$$
Substitution from the recurrence gives $f(\theta)=0$. Since $\mathbb Q(\zeta)$ has degree $12$ and $\zeta$ satisfies $X^2-\theta X+1=0$ over $\mathbb Q(\theta)$, the field $\mathbb Q(\theta)$ has degree $6$. $f$ is therefore the minimal polynomial of $\theta$, and
$$
K=\mathbb Q(\theta)
$$
is the maximal real subfield of $\mathbb Q(\zeta)$.

The six roots are $2\cos(2\pi k/13)$ for $1\leq k\leq6$, so the largest is
$$
\theta_0=\zeta+\zeta^{-1}.
$$
The identity
$$
(\zeta^k+\zeta^{-k})^2-2=\zeta^{2k}+\zeta^{-2k}
$$
shows that the recursion in the statement follows the Galois automorphism induced by $\zeta\mapsto\zeta^2$. Therefore $\theta_0,\ldots,\theta_5$ are the six roots in cyclic Galois order.

Step 2: Recover the valuation matrix and verify the sublattice

Put
$$
u_j=\theta_j+3.
$$
Since $f(-3)=233$,
$$
\prod_{j=0}^5u_j=233.
$$
The prime $233$ is unramified in the real cyclotomic field of conductor $13$, and $233\equiv-1\pmod{13}$ gives trivial Frobenius in $(\mathbb Z/13\mathbb Z)^\times/\{\pm1\}$. Therefore $233$ splits completely in $K$. Each $u_j$ has norm $233$, so
$$
\mathfrak p_j=(u_j)
$$
is a prime ideal above $233$.

The conjugates needed below are
$$
\theta_1=\theta_0^2-2,\qquad
\theta_2=\theta_0^4-4\theta_0^2+2,\qquad
\theta_4=\theta_0^3-3\theta_0.
$$
The identity
$$
(T^2+1)(T^4-4T^2+5)(T^3-3T+3)-C(T)=f(T)(T+1)(T^2-2T+2)
$$
gives
$$
C(\theta_0)=u_1u_2u_4.
$$
Applying the cyclic Galois action gives
$$
c_j=u_{j+1}u_{j+2}u_{j+4}
$$
with indices modulo $6$. This gives
$$
V=
\begin{pmatrix}
0&0&1&0&1&1\\
1&0&0&1&0&1\\
1&1&0&0&1&0\\
0&1&1&0&0&1\\
1&0&1&1&0&0\\
0&1&0&1&1&0
\end{pmatrix}.
$$

Let
$$
r=(1,0,1,0,1,0),\qquad \mathbf 1=(1,1,1,1,1,1).
$$
For $q=2^n$,
$$
r\left(V+q(I_6-P)\right)=(2q+1)r+(1-q)\mathbf 1.
$$
Also
$$
r(e_0-e_2)=0.
$$
It follows that $x\in\Lambda$ implies $r\Psi_n(x)\equiv0\pmod3$. Every column of $V$ has sum $3$, while $I_6-P$ and $e_0-e_2$ have coordinate sum $0$, so $\Psi_n(x)\in L$. The map $\Psi_n$ therefore preserves $\Lambda$.

Step 3: Construct the presentation on the index-three lattice

Let
$$
b_i=e_i-e_5\qquad(0\leq i\leq4).
$$
These form a basis of $L$. In this basis the condition defining $\Lambda$ is
$$
y_0+y_2+y_4\equiv0\pmod3.
$$
A basis of $\Lambda$ is
$$
d_0=3b_0,\qquad d_1=b_1,\qquad d_2=b_2-b_0,\qquad d_3=b_3,\qquad d_4=b_4-b_0.
$$

Write
$$
t=t_n=2^n-1.
$$
In the basis $b_0,\ldots,b_4$, the ambient operator has matrix
$$
M(t)=
\begin{pmatrix}
2t+2&t+1&t+2&t+1&t+1\\
-t-1&t&-1&0&-1\\
0&-t-1&t&-1&1\\
-1&0&-t-1&t&-1\\
1&0&1&-t&t+1
\end{pmatrix}.
$$
The change-of-basis matrix whose columns are $d_0,\ldots,d_4$ in the $b$-basis is
$$
U=
\begin{pmatrix}
3&0&-1&0&-1\\
0&1&0&0&0\\
0&0&1&0&0\\
0&0&0&1&0\\
0&0&0&0&1
\end{pmatrix}.
$$
Since the columns of $U$ are a basis of $\Lambda$, the restriction matrix is
$$
N(t)=U^{-1}M(t)U=
\begin{pmatrix}
2t+3&0&0&0&0\\
-3t-3&t&t&0&t\\
0&-t-1&t&-1&1\\
-3&0&-t&t&0\\
3&0&0&-t&t
\end{pmatrix}.
$$

Step 4: Determine the first four determinantal divisors

Let $\Delta_k$ be the gcd of the $k\times k$ minors of $N(t)$ and put
$$
a=\gcd(3,t),\qquad b=\gcd(5,t-1).
$$
The entry $-1$ gives
$$
\Delta_1=1.
$$

If $3\mid t$, reduction of $N(t)$ modulo $3$ has rank $1$, so every $2\times2$ minor is divisible by $3$. Two $2\times2$ minors are $t$ and $3$. This gives
$$
\Delta_2=a.
$$

At $t=0$, the matrix $N(0)$ has rank $2$, so every $3\times3$ minor is divisible by $t$. If $3\mid t$, write such a minor as $tH(t)$. The value $H(0)$ is a sum of products involving $2\times2$ minors of $N(0)$, and all those minors are divisible by $3$ because $N(0)$ has rank $1$ modulo $3$. The difference $H(t)-H(0)$ is divisible by $t$, so $3\mid H(t)$. Every $3\times3$ minor is therefore divisible by $at$. Two such minors are
$$
3t\qquad\text{and}\qquad t^3,
$$
so
$$
\Delta_3=at.
$$

The rank of $N(0)$ is $2$, so multilinearity of a $4\times4$ determinant in $N(0)+tE$ shows that every $4\times4$ minor is divisible by $t^2$. If $3\mid t$, the coefficient after division by $t^2$ is divisible by $3$ for the same rank-one reduction of $N(0)$ modulo $3$. If $5\mid t-1$, then $N(1)$ has rank $3$ modulo $5$, so every $4\times4$ minor is divisible by $5$; since $t$ is nonzero modulo $5$, the quotient by $t^2$ is also divisible by $5$. This gives
$$
abt^2\mid\Delta_4.
$$

Four $4\times4$ minors, after division by $t^2$, are
$$
(t+2)(2t+3),\qquad (2t+1)(2t+3),
$$
$$
3(t^2+2t+2),\qquad t(3t+2).
$$
Let $p$ divide all four quotients. If $p\neq3$, the first two force $p\mid2t+3$, and the last then forces $p\mid3t+2$ unless $p\mid t$, which would give $p=3$. It follows that
$$
p\mid3(2t+3)-2(3t+2)=5.
$$
Only $3$ and $5$ can occur. The factor $3$ occurs exactly when $3\mid t$, and the factor $5$ occurs exactly when $5\mid t-1$. When $3\mid t$, the third quotient divided by $3$ is congruent to $2$ modulo $3$, so no second factor $3$ is common. When $t=1+5s$, the first and fourth quotients divided by $5$ are congruent to
$$
3(1+2s)\qquad\text{and}\qquad 1+3s
$$
modulo $5$, and these cannot both vanish. No second factor $5$ is common. Therefore
$$
\Delta_4=abt^2.
$$

Step 5: Compute the determinant and read the Smith form

Expanding $\det N(t)$ along its first row gives
$$
\det N(t)=(2t+3)
\det\begin{pmatrix}
t&t&0&t\\
-t-1&t&-1&1\\
0&-t&t&0\\
0&0&-t&t
\end{pmatrix}.
$$
Factoring $t$ from the first, third, and fourth rows of the $4\times4$ determinant leaves determinant $3t+2$. This gives
$$
\Delta_5=|\det N(t)|=t^3(2t+3)(3t+2).
$$

The Smith entries are
$$
d_1=1,\qquad d_2=a,\qquad d_3=t,\qquad d_4=bt,
$$
and
$$
d_5=\frac{t(2t+3)(3t+2)}{ab}.
$$
Since
$$
ab=\gcd(15,t+9),
$$
because $t+9\equiv t\pmod3$ and $t+9\equiv t-1\pmod5$, the last entry has the form used below. For $t=2^n-1$, the conditions $a=3$ and $b=5$ cannot occur simultaneously; if $a=3$, then $3\mid2t+3$, while if $b=5$, both $2t+3$ and $3t+2$ are divisible by $5$. The displayed entries are therefore in divisibility order.

Final Answer: $\boxed{\operatorname{diag}(1,\gcd(3,t_n),t_n,\gcd(5,t_n-1)t_n,\frac{t_n(2t_n+3)(3t_n+2)}{\gcd(15,t_n+9)})}$

---

## Answer

$\operatorname{diag}(1,\gcd(3,t_n),t_n,\gcd(5,t_n-1)t_n,\frac{t_n(2t_n+3)(3t_n+2)}{\gcd(15,t_n+9)})$

---

## Classification

**Domain:** Abstract Algebra

**Sub-domain:** Computational algebra

**Problem Type:** Canonicalization or normalization

**Answer Type:** Canonical form

---

## Solution Concepts

- real cyclotomic fields
- prime ideal valuations
- finite-index sublattices
- determinantal divisors
- smith normal form
