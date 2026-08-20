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
Substitution from the recurrence gives $f(\theta)=0$. Since $\mathbb Q(\zeta)$ has degree $12$ and $\zeta$ satisfies $X^2-\theta X+1=0$ over $\mathbb Q(\theta)$, the field $\mathbb Q(\theta)$ has degree $6$. Therefore $f$ is the minimal polynomial of $\theta$, and
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

Step 2: Recover the valuation matrix

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

The relevant conjugates are
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
Every column of $V$ has sum $3$. The image of $(e_0-e_2)(e_4+e_5)^T$ lies in $L$, and $I_6-P$ preserves $L$. Hence the formula in the statement does define an endomorphism of $L$.

Step 3: Write the endomorphism in a lattice basis

Let
$$
b_i=e_i-e_5\qquad(0\leq i\leq4).
$$
These vectors form a basis of $L$. If $y\in L$, then
$$
y=\sum_{i=0}^4y_i b_i,
$$
so the coordinates of $y$ in this basis are its first five standard coordinates.

Write
$$
t=t_n=2^n-1.
$$
Applying $\Phi_n$ to $b_0,\ldots,b_4$ and keeping the first five coordinates gives the presentation matrix
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
Thus the Smith form of $\Phi_n$ is the Smith form of $M(t)$.

Step 4: Extract a hidden unimodular block

Permute the columns of $M(t)$ into the order $3,5,1,2,4$. The upper-left $2\times2$ block is
$$
B=
\begin{pmatrix}
t+2&t+1\\
-1&-1
\end{pmatrix},
$$
with
$$
\det B=-1,
\qquad
B^{-1}=
\begin{pmatrix}
1&t+1\\
-1&-t-2
\end{pmatrix}.
$$
Using $B^{-1}$ in block row and column operations is unimodular. Clearing the other entries in the first two rows and columns leaves the Schur complement
$$
tS(t),
$$
where
$$
S(t)=
\begin{pmatrix}
t^2-t-2&-t^2-t+1&-t\\
2-t^2&t(t+2)&t+2\\
-t^2-t-1&(t+1)(t+2)&t
\end{pmatrix}.
$$
Since $B$ is unimodular,
$$
M(t)\sim I_2\oplus tS(t)
$$
over $\mathbb Z$.

Step 5: Determine the residual Smith form and assemble the answer

The entries $-t$ and $t+2$ of $S(t)$ are coprime because $t$ is odd. Hence the first Smith entry of $S(t)$ is $1$.

Let $\delta$ be the gcd of the $2\times2$ minors and put
$$
g=\gcd(5,t-1).
$$
If $5\mid t-1$, then
$$
S(t)\equiv
\begin{pmatrix}
3&4&4\\
1&3&3\\
2&1&1
\end{pmatrix}
\pmod5,
$$
which has rank $1$. Therefore every $2\times2$ minor is divisible by $5$, so $g\mid\delta$.

Four minors, using respectively row-column sets $(1,3;2,3)$, $(1,3;1,2)$, $(2,3;1,3)$, and $(2,3;2,3)$, are
$$
t(2t+3),\qquad -(2t+1)(2t+3),
$$
$$
(t+1)(3t+2),\qquad -(t+2)(3t+2).
$$
Let $p$ divide every $2\times2$ minor. From the first pair, either $p\mid2t+3$ or $p$ divides both $t$ and $2t+1$, which is impossible. Hence $p\mid2t+3$. The second pair similarly forces $p\mid3t+2$. Therefore
$$
p\mid3(2t+3)-2(3t+2)=5.
$$
Thus no prime other than $5$ divides $\delta$. If $5\mid\delta$, then $2t+3\equiv0\pmod5$, so $t\equiv1\pmod5$.

Write $t=1+5s$. Dividing the first and third displayed minors by $5$ gives quantities congruent modulo $5$ to $1+2s$ and $2(1+3s)$, because $t\equiv1$ and $t+1\equiv2$ modulo $5$. These cannot both vanish modulo $5$. Hence $25\nmid\delta$, and
$$
\delta=g.
$$

Expanding $\det S(t)$ along the first row, the three complementary minors are
$$
-(t+2)(3t+2),\qquad (t+1)(3t+2),\qquad (t+2)(3t+2).
$$
Substitution gives
$$
\det S(t)=6t^2+13t+6=(2t+3)(3t+2).
$$
Therefore
$$
\operatorname{SNF}(S(t))=
\operatorname{diag}\left(1,g,\frac{(2t+3)(3t+2)}{g}\right).
$$
When $g=5$, both factors in the numerator are divisible by $5$, so the entries are in divisibility order.

Multiplying a matrix by the positive integer $t$ multiplies every Smith entry by $t$. Step 4 now gives
$$
\operatorname{SNF}(\Phi_n)=
\operatorname{diag}\left(1,1,t,gt,\frac{t(2t+3)(3t+2)}{g}\right).
$$
Substituting $t=t_n$ and $g=\gcd(5,t_n-1)$ gives the requested canonical form.

Final Answer: $\boxed{\operatorname{diag}(1,1,t_n,\gcd(5,t_n-1)t_n,\frac{t_n(2t_n+3)(3t_n+2)}{\gcd(5,t_n-1)})}$

---

## Answer

$\operatorname{diag}(1,1,t_n,\gcd(5,t_n-1)t_n,\frac{t_n(2t_n+3)(3t_n+2)}{\gcd(5,t_n-1)})$

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
- invariant sublattices
- unimodular block elimination
- smith normal form
