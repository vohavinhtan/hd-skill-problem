## Steps

Step 1: Identify the cyclic ordering of the roots

Let $\zeta$ be a primitive thirteenth root of unity and put
$$
\theta=\zeta+\zeta^{-1}.
$$
For
$$
s_j=\zeta^j+\zeta^{-j},
$$
we have
$$
s_0=2,\qquad s_1=\theta,\qquad s_{j+1}=\theta s_j-s_{j-1}.
$$
Pairing the twelve nontrivial thirteenth roots gives
$$
1+s_1+s_2+s_3+s_4+s_5+s_6=0.
$$
Substitution from the recurrence gives $f(\theta)=0$. The field $\mathbb Q(\zeta)$ has degree $12$, while $\zeta$ satisfies
$$
X^2-\theta X+1=0
$$
over $\mathbb Q(\theta)$. This gives $[\mathbb Q(\theta):\mathbb Q]=6$, so $f$ is the minimal polynomial of $\theta$ and
$$
K=\mathbb Q(\theta)
$$
is the maximal real subfield of $\mathbb Q(\zeta)$.

The six roots are
$$
2\cos\frac{2\pi k}{13}\qquad(1\leq k\leq6).
$$
The largest is
$$
\theta_0=\zeta+\zeta^{-1}.
$$
The identity
$$
(\zeta^k+\zeta^{-k})^2-2=\zeta^{2k}+\zeta^{-2k}
$$
shows that $\theta_{j+1}=\theta_j^2-2$ is the action induced by $\zeta\mapsto\zeta^2$. Therefore $\theta_0,\ldots,\theta_5$ are the six roots in cyclic Galois order.

Step 2: Recover the valuation matrix and verify the lattice map

Put
$$
u_j=\theta_j+3.
$$
Since $f(-3)=233$,
$$
\prod_{j=0}^5u_j=233.
$$
The prime $233$ is unramified in the real cyclotomic field of conductor $13$, and $233\equiv-1\pmod{13}$ has trivial class in $(\mathbb Z/13\mathbb Z)^\times/\{\pm1\}$. Therefore $233$ splits completely in $K$. Each $u_j$ has norm $233$, so
$$
\mathfrak p_j=(u_j)
$$
is a prime ideal above $233$.

The needed conjugates are
$$
\theta_1=\theta_0^2-2,\qquad
\theta_2=\theta_0^4-4\theta_0^2+2,\qquad
\theta_4=\theta_0^3-3\theta_0.
$$
The polynomial identity
$$
(T^2+1)(T^4-4T^2+5)(T^3-3T+3)-C(T)=
f(T)(T+1)(T^2-2T+2)
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

Let
$$
r=(1,0,1,0,1,0),
\qquad
\mathbf 1=(1,1,1,1,1,1).
$$
For $q=2^n$,
$$
r\left(V+q(I_6-P)\right)=(2q+1)r+(1-q)\mathbf 1,
$$
and $r(e_0-e_2)=0$. If $x\in\Lambda$, then $\mathbf 1x=0$ and $rx\equiv0\pmod3$, so $r\Psi_n(x)\equiv0\pmod3$. Every column of $V$ has sum $3$, while $I_6-P$ and $e_0-e_2$ have coordinate sum $0$. Therefore $\Psi_n$ preserves $\Lambda$.

Step 3: Reconstruct the intersection codomain lattice

Define
$$
d_0=3(e_0-e_5),\qquad
d_1=e_1-e_5,\qquad
d_2=e_2-e_0,
$$
$$
d_3=e_3-e_5,\qquad
d_4=e_4-e_0.
$$
These form a basis of $\Lambda$. If $z=(z_0,\ldots,z_4)$ are the coordinates in this basis, then
$$
\pi(x)=(z_1,z_3),
\qquad
\rho(x)=(z_1+z_2,z_3+z_4).
$$

Write $t=t_n$. Applying $\Psi_n$ to the five basis vectors gives
$$
N(t)=
\begin{pmatrix}
2t+3&0&0&0&0\\
  -3t-3&t&t&0&t\\
0&-t-1&t&-1&1\\
  -3&0&-t&t&0\\
3&0&0&-t&t
\end{pmatrix}.
$$
Put
$$
a=\gcd(3,t).
$$
The columns of the first projected matrix are
$$
\begin{pmatrix}
  -3(t+1)&t&t&0&t\\
  -3&0&-t&t&0
\end{pmatrix}.
$$
They generate
$$
\pi(\Psi_n(\Lambda))=
\mathbb Z(a,a)+\mathbb Z(0,t).
$$
Indeed, every displayed column lies in the right-hand lattice. Conversely,
$$
(-3,-3)=(-3(t+1),-3)+3(t,0),
$$
$$
(t,t)=(t,0)+(0,t),
$$
and Bezout coefficients for $\gcd(3,t)=a$ produce $(a,a)$ from $(-3,-3)$ and $(t,t)$.

For the second projection, the column matrix is
$$
\begin{pmatrix}
  -3(t+1)&-1&2t&-1&t+1\\
0&0&-t&0&t
\end{pmatrix}.
$$
The column $(-1,0)$ is present, and adding $(t+1)$ copies of it to $(t+1,t)$ gives $(0,t)$. Every second coordinate is divisible by $t$, so
$$
\rho(\Psi_n(\Lambda))=\mathbb Z(1,0)+\mathbb Z(0,t).
$$

The two conditions defining $H_n$ are therefore
$$
z_1=au,\qquad z_3=au+tv,\qquad z_3+z_4=tw
$$
for integers $u,v,w$. Therefore
$$
z_4=-au+t(w-v),
$$
and a basis of $H_n$ is
$$
h_0=d_0,\qquad
h_1=a(d_1+d_3-d_4),\qquad
h_2=td_3,
$$
$$
h_3=d_2,\qquad
h_4=td_4.
$$
Its index in $\Lambda$ is
$$
[\Lambda:H_n]=at^2.
$$

Step 4: Compute the relative determinantal divisors

Using the $d$-basis on the domain and the $h$-basis on the codomain gives
$$
R(t)=
\begin{pmatrix}
2t+3&0&0&0&0\\
  -\frac{3(t+1)}a&\frac ta&\frac ta&0&\frac ta\\
3&-1&-2&1&-1\\
0&-t-1&t&-1&1\\
  -3&1&1&-1&2
\end{pmatrix}.
$$
The entry $-1$ gives $\Delta_1=1$. The minor on rows $3,5$ and columns $2,3$ equals $1$, so
$$
\Delta_2=1.
$$
The minors on rows $2,3,5$ with columns $1,2,3$ and $2,3,4$ are
$$
\displaystyle -\frac3a
\qquad\text{and}\qquad
\frac ta.
$$
Their gcd is $1$, so
$$
\Delta_3=1.
$$

Put
$$
b=\gcd(5,t-1).
$$
If $b=5$, then $t\equiv1\pmod5$. Since $t=2^n-1$, this means $n\equiv1\pmod4$, so $a=1$. Modulo $5$, the first row of $R(t)$ is zero and the remaining four rows satisfy
$$
R_2+R_3+2R_4+4R_5=0.
$$
The minor on rows $2,3,4$ and columns $1,2,3$ is $1$ modulo $5$. Therefore the rank modulo $5$ is exactly $3$, and every $4\times4$ minor is divisible by $b$.

Four $4\times4$ minors are
$$
(t+2)(2t+3),\qquad
\displaystyle -(t-2)(2t+3),
$$
$$
\displaystyle -\frac3a(t^2+2t+2),\qquad
\displaystyle -\frac ta(3t+2).
$$
Let $p$ divide all four. Since $t$ is odd,
$$
\gcd(t+2,t-2)=1,
$$
so $p\mid2t+3$. The prime $3$ cannot occur: if $a=1$, then $3\nmid t$ and $3\nmid2t+3$; if $a=3$, the third displayed minor is congruent to $-2$ modulo $3$. For $p\neq3$, the third minor and
$$
4(t^2+2t+2)-(2t+3)(2t+1)=5
$$
give $p=5$. Therefore no prime other than $5$ divides $\Delta_4$.

If $5\mid\Delta_4$, write $t=1+5s$. Then $a=1$, and after division by $5$ the first and fourth displayed minors are congruent to
$$
3(1+2s)
\qquad\text{and}\qquad
\displaystyle -(1+3s)
$$
modulo $5$. They cannot both vanish. Therefore $25\nmid\Delta_4$, and
$$
\Delta_4=b.
$$

Step 5: Compute the determinant and read the Smith form

Expanding $\det R(t)$ along the first row leaves
$$
\det R(t)=
(2t+3)\frac ta
\det
\begin{pmatrix}
1&1&0&1\\
  -1&-2&1&-1\\
  -t-1&t&-1&1\\
1&1&-1&2
\end{pmatrix}.
$$
Apply
$$
R_2\leftarrow R_2+R_1,\qquad
R_3\leftarrow R_3+(t+1)R_1,\qquad
R_4\leftarrow R_4-R_1.
$$
Expanding along the first column reduces the last determinant to
$$
\det
\begin{pmatrix}
  -1&1&0\\
2t+1&-1&t+2\\
0&-1&1
\end{pmatrix}=-(3t+2).
$$
Therefore
$$
\Delta_5=
\frac{t(2t+3)(3t+2)}a.
$$

The Smith invariant factors are
$$
1,\qquad1,\qquad1,\qquad b,\qquad
\frac{t(2t+3)(3t+2)}{ab}.
$$
Because
$$
a=\gcd(3,t)=\gcd(3,t+9)
$$
and
$$
b=\gcd(5,t-1)=\gcd(5,t+9),
$$
we have
$$
ab=\gcd(15,t+9).
$$
If $b=5$, both $2t+3$ and $3t+2$ are divisible by $5$, so the displayed entries are in divisibility order. Substituting $t=t_n$ gives the requested canonical form.

Final Answer: $\boxed{\operatorname{diag}(1,1,1,\gcd(5,t_n-1),\frac{t_n(2t_n+3)(3t_n+2)}{\gcd(15,t_n+9)})}$

---

## Answer

$\operatorname{diag}(1,1,1,\gcd(5,t_n-1),\frac{t_n(2t_n+3)(3t_n+2)}{\gcd(15,t_n+9)})$

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
- finite-index lattices
- intersecting projected images
- smith normal form