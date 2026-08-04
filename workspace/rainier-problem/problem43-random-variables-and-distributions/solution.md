## Steps

Step 1: Extract the common coordinate from the defining polynomial

For $0<x\leq 1$, set
$$
\rho(x)=\frac{(1-x)(a-x)}{x(a+x)}.
$$
The coefficients in $\mathcal{P}_{k,a}(x,y)$ satisfy
$$
\begin{aligned}
x(a+x)-k\bigl(x^2-(a+1)x+a\bigr)
&=(1-k)x^2+\bigl(a+k(a+1)\bigr)x-ka,\\
(a+1)x(a+x)+ka\bigl(x^2-(a+1)x+a\bigr)
&=(a+1+ka)x^2+a(a+1)(1-k)x+ka^2,
\end{aligned}
$$
and $ax^2+a^2x=ax(a+x)$. Substituting these three identities into the definition of $\mathcal{P}_{k,a}$ gives
$$
\begin{aligned}
\mathcal{P}_{k,a}(x,y)
&=x(a+x)\bigl(y^2-(a+1)y+a\bigr)
-k\bigl(x^2-(a+1)x+a\bigr)y(a+y)\\
&=x(a+x)y(a+y)\bigl(\rho(y)-k\rho(x)\bigr).
\end{aligned}
$$
All factors outside the last parentheses are positive when $x,y\in(0,1]$. Therefore,
$$
\mathcal{P}_{k,a}(x,y)=0
\quad\Longleftrightarrow\quad
\rho(y)=k\rho(x).
$$
On $(0,1)$,
$$
\frac{\rho'(x)}{\rho(x)}
=-\frac{1}{1-x}-\frac{1}{a-x}-\frac{1}{x}-\frac{1}{a+x}<0.
$$
At the endpoints, $\rho(1)=0$ and $\rho(x)\to\infty$ as $x\to0^+$. Together with the negative logarithmic derivative, this makes $\rho$ a continuous decreasing bijection from $(0,1]$ onto $[0,\infty)$. It proves both the uniqueness in the definitions of $R_a,S_a$ and the identities
$$
\rho(R_a(x))=4\rho(x),
\qquad
\rho(S_a(x))=9\rho(x).
$$
The maps are increasing because each is the composition of the decreasing map $\rho$, multiplication by a positive constant, and the decreasing map $\rho^{-1}$. Injectivity of $\rho$ also gives
$$
R_a(S_a(x))=S_a(R_a(x)),
$$
since both sides have $\rho$-value $36\rho(x)$.

Step 2: Convert the distributional identities into a matrix system

For example, monotonicity of $R_a$ and independence give
$$
\begin{aligned}
F(R_a(x))
&=\Pr\!\left(R_a(\max\{X_1,Y_1\})\leq R_a(x)\right)\\
&=\Pr(X_1\leq x)\Pr(Y_1\leq x)
=F(x)G(x).
\end{aligned}
$$
Applying the same CDF calculation to the other three maxima produces
$$
\begin{aligned}
F(R_a(x))&=F(x)G(x),&
G(R_a(x))&=F(x)^2,\\
F(S_a(x))&=F(x)G(x)^2,&
G(S_a(x))&=F(x)^3.
\end{aligned}
$$
For $0<x\leq1$, define
$$
\alpha(x)=-\log F(x),
\qquad
\beta(x)=-\log G(x),
\qquad
u(x)=\begin{pmatrix}\alpha(x)\\ \beta(x)\end{pmatrix}.
$$
The strict increase and endpoint values of the CDFs ensure that these logarithms are finite on $(0,1]$. The four equations become
$$
u(R_a(x))=Au(x),
\qquad
u(S_a(x))=Bu(x),
$$
where
$$
A=\begin{pmatrix}1&1\\2&0\end{pmatrix},
\qquad
B=\begin{pmatrix}1&2\\3&0\end{pmatrix}.
$$

Step 3: Use the commuting maps to force the two laws to coincide

The equality $R_a(S_a(x))=S_a(R_a(x))$ gives two expressions for the same logarithm vector:
$$
u(R_a(S_a(x)))=ABu(x),
\qquad
u(S_a(R_a(x)))=BAu(x).
$$
The two matrix products are
$$
AB=
\begin{pmatrix}4&2\\2&4\end{pmatrix},
\qquad
BA=
\begin{pmatrix}5&1\\3&3\end{pmatrix},
$$
so
$$
(AB-BA)u(x)
=\begin{pmatrix}-1&1\\-1&1\end{pmatrix}
\begin{pmatrix}\alpha(x)\\\beta(x)\end{pmatrix}
=\begin{pmatrix}0\\0\end{pmatrix}.
$$
Both rows state $\beta(x)-\alpha(x)=0$. Therefore $F(x)=G(x)$ on $(0,1]$, and the equality also holds at $x=0$ from the prescribed endpoint values.

Step 4: Solve the remaining two-scale functional equation

Let $H:[0,\infty)\to[0,\infty)$ be
$$
H(t)=-\log F(\rho^{-1}(t)).
$$
It is continuous and $H(0)=0$. Since $F=G$, the matrix equations reduce to
$$
H(4t)=2H(t),
\qquad
H(9t)=3H(t).
$$
For $s\in\mathbb{R}$, define
$$
q(s)=e^{-s/2}H(e^s).
$$
Then
$$
q(s+\log4)=q(s),
\qquad
q(s+\log9)=q(s).
$$
The ratio $\log4/\log9$ is irrational. Indeed, a rational equality $\log4/\log9=r/s$ with positive integers $r,s$ would imply $2^{2s}=3^{2r}$, contrary to unique prime factorization.

Here is a short argument that the two periods force $q$ to be constant. Given $N\geq1$, two of the $N+1$ fractional parts
$$
0,\ \frac{\log4}{\log9},\ \ldots,\ N\frac{\log4}{\log9}
$$
are less than $1/N$ apart. The pigeonhole principle supplies integers $m,n$ for which
$$
0<|m\log4-n\log9|<\frac{\log9}{N}.
$$
Let $\delta_N=|m\log4-n\log9|$. Each $\delta_N$ is a period of $q$, and a choice for every $N$ gives a sequence with $\delta_N\to0$. For any $r\in\mathbb{R}$, choose an integer $j_N$ nearest to $r/\delta_N$. Then
$$
|j_N\delta_N-r|\leq\frac{\delta_N}{2}\to0.
$$
Since $q(s+j_N\delta_N)=q(s)$, continuity gives $q(s+r)=q(s)$ for all $s,r\in\mathbb{R}$. This makes $q$ constant, say $q(s)=c$. Therefore,
$$
H(t)=c\sqrt{t}
$$
for $t>0$. Since $F(x)<1$ for $x<1$, the constant satisfies $c>0$. Every admissible pair must have
$$
F(x)=G(x)=\exp\!\left(-c\sqrt{\frac{(1-x)(a-x)}{x(a+x)}}\right)
$$
for $0<x\leq1$.

Step 5: Fix the constant from the prescribed quantile

Set $x_0=a/(2a+1)$. Its four factors are
$$
1-x_0=\frac{a+1}{2a+1},
\qquad
a-x_0=\frac{2a^2}{2a+1},
$$
and
$$
x_0=\frac{a}{2a+1},
\qquad
a+x_0=\frac{2a(a+1)}{2a+1}.
$$
Therefore
$$
\rho(x_0)
=\frac{\frac{a+1}{2a+1}\frac{2a^2}{2a+1}}
{\frac{a}{2a+1}\frac{2a(a+1)}{2a+1}}
=1.
$$
The condition $F(x_0)=e^{-b}$ now reads $e^{-c}=e^{-b}$. Since $b,c>0$, this gives $c=b$.

Step 6: Check sufficiency and state the ordered pair

Define $H:[0,1]\to[0,1]$ by
$$
H(0)=0,
\qquad
H(x)=e^{-b\sqrt{\frac{(1-x)(a-x)}{x(a+x)}}}
\quad(0<x\leq1),
$$
and set $(F,G)=(H,H)$. Because $\rho$ decreases continuously from $\infty$ to $0$, the function $H$ is continuous and strictly increasing from $0$ to $1$. The scaling identities for $\rho$ give
$$
\begin{aligned}
F(R_a(x))&=e^{-2b\sqrt{\rho(x)}}=F(x)^2=F(x)G(x),\\
G(R_a(x))&=F(x)^2,\\
F(S_a(x))&=e^{-3b\sqrt{\rho(x)}}=F(x)^3=F(x)G(x)^2,\\
G(S_a(x))&=F(x)^3.
\end{aligned}
$$
Since $R_a$ and $S_a$ are increasing, these four CDF identities are equivalent to the four required distributional equalities. Also, $\rho(a/(2a+1))=1$, so the normalization is satisfied. The construction is sufficient, while the matrix commutator and the two incommensurable periods prove uniqueness.

Final Answer: $\boxed{(F,G)=(H,H),\quad H(0)=0,\quad H(x)=e^{-b\sqrt{\frac{(1-x)(a-x)}{x(a+x)}}}\ (0<x\leq1)}$

---

## Answer

$(F,G)=(H,H),\quad H(0)=0,\quad H(x)=e^{-b\sqrt{\frac{(1-x)(a-x)}{x(a+x)}}}\ (0<x\leq1)$

---

## Classification

**Problem Type:** Solve for unknowns

**Answer Type:** Tuple or ordered list

---

## Concepts (1-5)

- CDFs of maxima of independent random variables
- Factorization and conjugacy of interval maps
- Matrix commutators and common kernels
- Functional equations with incommensurable periods
- Boundary normalization and uniqueness
