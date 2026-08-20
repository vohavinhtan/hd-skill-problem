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
Substitution from the recurrence yields $f(\theta)=0$. Since $\mathbb Q(\zeta)$ has degree $12$ and $\zeta$ satisfies $X^2-\theta X+1=0$ over $\mathbb Q(\theta)$, the degree of $\mathbb Q(\theta)$ is $6$. Hence $f$ is the minimal polynomial of $\theta$, and
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
shows that the recursion in the statement follows the Galois automorphism induced by $\zeta\mapsto\zeta^2$. Thus $\theta_0,\ldots,\theta_5$ are the six roots in cyclic Galois order.

Step 2: Recover the valuation matrix

Put
$$
u_j=\theta_j+3.
$$
Since $f(-3)=233$,
$$
\prod_{j=0}^5u_j=233.
$$
The prime $233$ is unramified in the real cyclotomic field of conductor $13$, and $233\equiv-1\pmod{13}$ gives trivial Frobenius in $(\mathbb Z/13\mathbb Z)^\times/\{\pm1\}$. Hence $233$ splits completely in $K$. Each $u_j$ has norm $233$, so
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
The polynomial identity
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
with indices modulo $6$. Therefore
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

Step 3: Isolate the singular specialization

Write
$$
m=2^n,\qquad t=m-1=t_n.
$$
From the definition of $P$,
$$
A_n=
\begin{pmatrix}
t+1&0&1&0&1&-t\\
-t&t+1&0&1&0&1\\
1&-t&t+1&0&1&0\\
0&1&-t&t+1&0&1\\
1&0&1&-t&t+1&0\\
0&1&0&1&-t&t+1
\end{pmatrix}.
$$
Rows $1,2$ and columns $3,4$ form an identity block. Move those two columns first and use the identity block to clear its two rows and columns. These are unimodular integer operations. The remaining Schur complement is
$$
tS(t),
$$
where
$$
S(t)=
\begin{pmatrix}
-t-2&-1&-1&t+1\\
2t+2&-t-2&1&-t-1\\
-t-1&t+1&1&2\\
1&-1&-1&1
\end{pmatrix}.
$$
Thus $A_n$ is equivalent over $\mathbb Z$ to
$$
I_2\oplus tS(t).
$$

Step 4: Determine the Smith invariants of the residual matrix

Let
$$
g=\gcd(3,t).
$$
The entry $1$ in $S(t)$ gives first determinantal divisor $1$. Two $2\times2$ minors, using rows $1,2$ with columns $1,3$ and rows $3,4$ with columns $3,4$, are respectively
$$
t\qquad\text{and}\qquad3.
$$
Hence the second determinantal divisor divides $g$.

At $t=0$,
$$
S(0)=
\begin{pmatrix}
-2&-1&-1&1\\
2&-2&1&-1\\
-1&1&1&2\\
1&-1&-1&1
\end{pmatrix}.
$$
Move the last row first, then perform
$$
R_2\leftarrow R_2+2R_1,\qquad
R_3\leftarrow R_3-2R_1,\qquad
R_4\leftarrow R_4+R_1.
$$
Next use
$$
C_2\leftarrow C_2+C_1,\qquad
C_3\leftarrow C_3+C_1,\qquad
C_4\leftarrow C_4-C_1.
$$
This produces $1$ in the first diagonal position and a lower $3\times3$ block equal to $3$ times a unimodular matrix. Hence
$$
\operatorname{SNF}(S(0))=\operatorname{diag}(1,3,3,3).
$$
If $3\mid t$, then $S(t)\equiv S(0)\pmod3$. Applying the same unimodular transformations shows that every $2\times2$ minor of $S(t)$ is divisible by $3$ and every $3\times3$ minor is divisible by $9$. Therefore the second and third determinantal divisors are divisible by $g$ and $g^2$.

For the reverse divisibilities, the $3\times3$ minors on rows $1,2,4$ with columns $1,3,4$ and rows $1,2,3$ with columns $2,3,4$ are
$$
-t^2
$$
and
$$
-(t+3)^2.
$$
Thus the third determinantal divisor divides
$$
\gcd(t^2,(t+3)^2)=g^2.
$$
The second and third determinantal divisors are therefore exactly $g$ and $g^2$.

Expanding $\det S(t)$ along the last row gives the four contributions
$$
(t+3)^2,\qquad -t(t+3),\qquad -t^2+6t+9,\qquad t^2+9t+9,
$$
whose sum is
$$
9(2t+3).
$$
Hence
$$
\operatorname{SNF}(S(t))=
\operatorname{diag}\left(1,g,g,\frac{9(2t+3)}{g^2}\right).
$$

Step 5: Read the Smith normal form of $A_n$

Multiplying a matrix by the positive integer $t$ multiplies every Smith entry by $t$. Combining Step 3 with Step 4 gives
$$
\operatorname{SNF}(A_n)=
\operatorname{diag}\left(1,1,t,gt,gt,\frac{9t(2t+3)}{g^2}\right).
$$
Since $t=t_n=2^n-1$ and $g=\gcd(3,t_n)$, this is already in divisibility order: when $g=3$, the last quotient is $t_n(2t_n+3)$ and $3\mid2t_n+3$; when $g=1$, the condition is immediate.

Final Answer: $\boxed{\operatorname{diag}(1,1,t_n,\gcd(3,t_n)t_n,\gcd(3,t_n)t_n,\frac{9t_n(2t_n+3)}{\gcd(3,t_n)^2})}$

---

## Answer

$\operatorname{diag}(1,1,t_n,\gcd(3,t_n)t_n,\gcd(3,t_n)t_n,\frac{9t_n(2t_n+3)}{\gcd(3,t_n)^2})$

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
- singular specialization
- determinantal divisors
- smith normal form
