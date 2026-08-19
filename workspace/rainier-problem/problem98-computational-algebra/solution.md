## Steps

Step 1: Identify the ordered roots of the sextic

Let $\zeta$ be a primitive thirteenth root of unity and put
$$
\vartheta=\zeta+\zeta^{-1}.
$$
For $s_j=\zeta^j+\zeta^{-j}$,
$$
s_0=2,\qquad s_1=\vartheta,\qquad s_{j+1}=\vartheta s_j-s_{j-1}.
$$
Pairing the twelve nontrivial thirteenth roots gives
$$
1+s_1+s_2+s_3+s_4+s_5+s_6=0.
$$
Substitution from the recurrence yields
$$
f(\vartheta)=0.
$$
The field $\mathbb Q(\zeta)$ has degree $12$, while $\zeta$ satisfies $X^2-\vartheta X+1=0$ over $\mathbb Q(\vartheta)$. Hence $[\mathbb Q(\vartheta):\mathbb Q]\geq6$. Since $f$ has degree $6$, it is the minimal polynomial of $\vartheta$, and
$$
K=\mathbb Q(\vartheta)
$$
is the maximal real subfield of $\mathbb Q(\zeta)$.

Let $\sigma$ be induced by $\zeta\mapsto\zeta^2$ and write
$$
\vartheta_i=\sigma^i(\vartheta)\qquad(0\leq i<6).
$$
Using representatives modulo sign in $(\mathbb Z/13\mathbb Z)^\times$,
$$
\vartheta_0,\ldots,\vartheta_5
=
2\cos\frac{2\pi}{13},
2\cos\frac{4\pi}{13},
2\cos\frac{8\pi}{13},
2\cos\frac{10\pi}{13},
2\cos\frac{6\pi}{13},
2\cos\frac{12\pi}{13}.
$$
Since cosine decreases on $[0,\pi]$, the increasing order in the statement is
$$
(\theta_1,\ldots,\theta_6)=(\vartheta_5,\vartheta_3,\vartheta_2,\vartheta_4,\vartheta_1,\vartheta_0).
$$

Step 2: Recover the valuation pattern

Put
$$
u_i=\vartheta_i+3.
$$
Since $f(-3)=233$,
$$
\prod_{i=0}^5u_i=233.
$$
The prime $233$ is unramified in the real cyclotomic field of conductor $13$. Its Frobenius class is the class of $233\equiv-1\pmod{13}$ in $(\mathbb Z/13\mathbb Z)^\times/\{\pm1\}$, so $233$ splits completely in $K$. Each $u_i$ has norm $233$, and
$$
P_i=(u_i)\qquad(0\leq i<6)
$$
are the six primes of $K$ above $233$.

The conjugates needed below are
$$
\sigma(\vartheta)=\vartheta^2-2,\qquad
\sigma^2(\vartheta)=\vartheta^4-4\vartheta^2+2,\qquad
\sigma^4(\vartheta)=\vartheta^3-3\vartheta.
$$
The identity
$$
(T^2+1)(T^4-4T^2+5)(T^3-3T+3)-C(T)=f(T)(T+1)(T^2-2T+2)
$$
gives
$$
C(\vartheta)=u_1u_2u_4.
$$
Applying $\sigma^i$ gives
$$
C(\vartheta_i)=u_{i+1}u_{i+2}u_{i+4},
$$
with indices modulo $6$. In cyclic order the valuation matrix is therefore
$$
V_0=
\begin{pmatrix}
0&0&1&0&1&1\\
1&0&0&1&0&1\\
1&1&0&0&1&0\\
0&1&1&0&0&1\\
1&0&1&1&0&0\\
0&1&0&1&1&0
\end{pmatrix},
$$
so
$$
G_0=V_0^TV_0=
\begin{pmatrix}
3&1&1&2&1&1\\
1&3&1&1&2&1\\
1&1&3&1&1&2\\
2&1&1&3&1&1\\
1&2&1&1&3&1\\
1&1&2&1&1&3
\end{pmatrix}.
$$
The ordered pair $(\theta_1,\theta_3)$ corresponds to $(\vartheta_5,\vartheta_2)$. A cyclic relabeling sends this pair to $(\vartheta_0,\vartheta_3)$ and preserves the displayed form of $G_0$. Hence $A_n$ is permutation-equivalent over $\mathbb Z$ to
$$
B(q)=
\begin{pmatrix}
G_0+qI_6&b\\
b^T&0
\end{pmatrix},
\qquad q=2^n,\qquad b=e_1+e_4.
$$

Step 3: Compute the determinant of the bordered matrix

Let $J$ be the all-ones matrix and let $S$ interchange $(1,4)$, $(2,5)$, and $(3,6)$. Then
$$
G_0=J+2I_6+S.
$$
For
$$
H=G_0+qI_6,
$$
the $(-1)$-eigenspace of $S$ has dimension $3$ and eigenvalue $q+1$ for $H$. The $S$-fixed subspace orthogonal to the all-ones vector has dimension $2$ and eigenvalue $q+3$. The all-ones line has eigenvalue $q+9$. Therefore
$$
\det H=(q+1)^3(q+3)^2(q+9).
$$

The vector $b=e_1+e_4$ is $S$-fixed. Its squared projection onto the all-ones line is $2/3$, and the remaining squared norm in the fixed subspace is $4/3$. Hence
$$
b^TH^{-1}b=rac{4}{3(q+3)}+\frac{2}{3(q+9)}=rac{2(q+7)}{(q+3)(q+9)}.
$$
The bordered determinant formula now gives
$$
\Delta_7=|\det B(q)|=2(q+1)^3(q+3)(q+7).
$$

Step 4: Determine the lower determinantal divisors

Put
$$
t=q+1,\qquad g=\gcd(3,t).
$$
A $3\times3$ minor on rows $1,2,3$ and columns $1,6,7$ equals $1$, so
$$
\Delta_1=\Delta_2=\Delta_3=1.
$$

At $q=-1$, row reduction over $\mathbb Q$ gives rank $4$, with reduced nonzero rows
$$
(1,0,0,1,0,0,0),\quad
(0,1,0,0,1,0,0),\quad
(0,0,1,0,0,1,0),\quad
(0,0,0,0,0,0,1).
$$
Modulo $3$, the same matrix has rank $3$, with reduced nonzero rows
$$
(1,0,0,1,0,0,0),\quad
(0,1,0,0,1,0,2),\quad
(0,0,1,0,0,1,2).
$$
Every submatrix of $B(q)$ has the form $M(-1)+tD$. Since $\operatorname{rank}B(-1)=4$, every $5\times5$ minor is divisible by $t$, and every $6\times6$ minor is divisible by $t^2$. If $g=3$, then $t\equiv0\pmod3$ and the rank-$3$ reduction shows that every $4\times4$ minor is divisible by $3$. In the multilinear expansion of a $5\times5$ minor, the coefficient of $t$ is a sum of $4\times4$ minors of $B(-1)$, so after division by $t$ it is still divisible by $3$. The coefficient of $t^2$ in a $6\times6$ minor has the same property. Therefore
$$
g\mid\Delta_4,\qquad gt\mid\Delta_5,\qquad gt^2\mid\Delta_6.
$$

For the reverse divisibilities, the $4\times4$ minors on rows and columns
$$
(1,2,6,7;1,3,5,7),\qquad (1,2,3,5;1,5,6,7)
$$
are $3$ and $t$. Hence
$$
\Delta_4=g.
$$
The $5\times5$ minors on
$$
(1,2,4,6,7;1,3,4,5,7),\qquad (1,2,3,5,7;3,4,5,6,7)
$$
are $6t$ and $t^2$. Since $t$ is odd,
$$
\Delta_5=t\gcd(6,t)=gt.
$$
Three $6\times6$ minors are
$$
2t^3,\qquad -4t^2(q+4),\qquad -t^2(q+3)(q+7),
$$
using respectively row-column sets
$$
(1,2,3,4,5,7;1,3,4,5,6,7),
$$
$$
(1,2,3,4,5,7;1,2,4,5,6,7),
$$
and
$$
(1,2,3,5,6,7;1,2,3,5,6,7).
$$
The last quotient is odd. Any odd common divisor of $2t$ and $4(q+4)$ divides both $t$ and $q+4$, hence divides $3$. If $3\mid t$, then $3\mid q+7$. Therefore
$$
\gcd\bigl(2t,4(q+4),(q+3)(q+7)\bigr)=g,
$$
so
$$
\Delta_6=gt^2.
$$

Step 5: Read the Smith normal form

Let $d_1,\ldots,d_7$ be the Smith entries. Using $d_k=\Delta_k/\Delta_{k-1}$,
$$
d_1=d_2=d_3=1,\qquad d_4=g,\qquad d_5=d_6=t,
$$
and
$$
d_7=\frac{2t(q+3)(q+7)}{g}.
$$
Since $g\mid t$, these entries satisfy the required divisibility chain. Substituting $q=2^n$ and $g=\gcd(3,2^n+1)$ gives the canonical form.

Final Answer: $\boxed{\operatorname{diag}(1,1,1,\gcd(3,2^n+1),2^n+1,2^n+1,\frac{2(2^n+1)(2^n+3)(2^n+7)}{\gcd(3,2^n+1)})}$

---

## Answer

$\operatorname{diag}(1,1,1,\gcd(3,2^n+1),2^n+1,2^n+1,\frac{2(2^n+1)(2^n+3)(2^n+7)}{\gcd(3,2^n+1)})$

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
- bordered matrices
- determinantal divisors
- smith normal form
