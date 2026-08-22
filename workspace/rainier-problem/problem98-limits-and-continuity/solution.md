## Steps

Step 1: Determine the endpoint balance imposed by the implicit tilt

Write
$$
\phi(x)=x^4(1-x)^2
$$
and put
$$
s=n^{-1/4}.
$$
For fixed $n$, the left side of the defining equation for $\lambda_n$, divided by the positive normalizing integral, is
$$
E_{\lambda}[2X-1].
$$
Its derivative with respect to $\lambda$ is
$$
2\operatorname{Var}_{\lambda}(X)>0.
$$
Its limits as $\lambda\to-\infty$ and $\lambda\to+\infty$ are $-1$ and $1$, so $\lambda_n$ exists uniquely.

The zero of $\phi$ at $0$ has order $4$, while the zero at $1$ has order $2$. Without the exponential tilt, their masses have orders $s$ and $s^2$.

For any fixed $a>0$, taking
$$
\lambda=a\log\frac1s
$$
changes the right endpoint mass to order
$$
e^\lambda s^2=s^{2-a},
$$
while on the left scale $x=su$ we have
$$
e^{\lambda x}=e^{as u\log(1/s)}=1+o(1).
$$
Hence the centering integral is negative for every fixed $a<1$ and positive for every fixed $a>1$, once $s$ is small. Monotonicity gives
$$
\frac{\lambda_n}{\log(1/s)}\to1.
$$
In particular,
$$
\lambda_ns\to0,
\qquad
\lambda_ns^2\to0.
$$

Set
$$
q_n=se^{\lambda_n}.
$$
At the left endpoint, $x=su$ gives
$$
e^{-n\phi(x)+\lambda_nx}\,dx
=
s e^{-u^4}(1+o(1))\,du.
$$
At the right endpoint, $x=1-s^2v$ gives
$$
e^{-n\phi(x)+\lambda_nx}\,dx
=
sq_ne^{-v^2}(1+o(1))\,dv.
$$
The centering factor $2x-1$ tends to $-1$ on the left and $1$ on the right. Therefore
$$
-\frac G4+q_n\frac{\sqrt\pi}{2}+o(1)=0,
$$
so
$$
q_n\to\frac{G}{2\sqrt\pi}.
$$
The total leading mass at each endpoint is consequently $sG/4$. Thus $\mu_n$ assigns asymptotic mass $1/2$ to each boundary layer.

Step 2: Identify coordinates adapted to the two different boundary scales

The direct covariance matrix of $X,X^2,X^3$ tends to a rank-one matrix, so its determinant does not reveal the first nonzero scale.

Define
$$
Q=2X-1,
$$
$$
U=2X(1-X)^2,
$$
and
$$
V=2X^2(1-X).
$$
Ignoring the constant term in $Q$, these are obtained from $X,X^2,X^3$ by
$$
\begin{pmatrix}
Q\\
U\\
V
\end{pmatrix}
=
\begin{pmatrix}
2&0&0\\
2&-4&2\\
0&2&-2
\end{pmatrix}
\begin{pmatrix}
X\\
X^2\\
X^3
\end{pmatrix}
+
\begin{pmatrix}
-1\\
0\\
0
\end{pmatrix}.
$$
The determinant of the linear matrix is
$$
8.
$$
Covariance is unchanged by adding constants, so
$$
\det\operatorname{Cov}(Q,U,V)
=
64\det C_n.
$$

These coordinates separate the boundary scales. On the left scale $X=su$,
$$
Q=-1+O(s),
\qquad
U=2su+O(s^2),
\qquad
V=2s^2u^2+O(s^3).
$$
On the right scale $X=1-s^2v$,
$$
Q=1+O(s^2),
$$
$$
U=O(s^4),
\qquad
V=2s^2v+O(s^4).
$$
Thus $U$ detects the quartic boundary at scale $s$, while $V$ receives contributions of scale $s^2$ from both endpoints.

Step 3: Compute the limiting endpoint moments

Let the limiting left variable $u$ have density proportional to $e^{-u^4}$ on $[0,\infty)$ and the limiting right variable $v$ have density proportional to $e^{-v^2}$.

For the left layer,
$$
\int_0^\infty u^m e^{-u^4}\,du
=
\frac14\Gamma\!\left(\frac{m+1}{4}\right).
$$
Since its normalizing integral is $G/4$,
$$
\alpha_1=E_L[u]=\frac{\sqrt\pi}{G},
$$
$$
\alpha_2=E_L[u^2]=\frac{R}{G},
$$
$$
\alpha_3=E_L[u^3]=\frac1G,
$$
and
$$
\alpha_4=E_L[u^4]=\frac14.
$$

For the right layer,
$$
\int_0^\infty v^m e^{-v^2}\,dv
=
\frac12\Gamma\!\left(\frac{m+1}{2}\right).
$$
Since its normalizing integral is $\sqrt\pi/2$,
$$
\beta_1=E_R[v]=\frac1{\sqrt\pi},
\qquad
\beta_2=E_R[v^2]=\frac12.
$$

Both layers have limiting probability $1/2$. Also the defining condition gives
$$
E_{\mu_n}[Q]=0
$$
exactly.

It follows that
$$
E[U]=\alpha_1s+o(s),
$$
$$
E[V]=(\alpha_2+\beta_1)s^2+o(s^2),
$$
$$
E[QU]=-\alpha_1s+o(s),
$$
and
$$
E[QV]=(\beta_1-\alpha_2)s^2+o(s^2).
$$
Likewise,
$$
E[U^2]=2\alpha_2s^2+o(s^2),
$$
$$
E[UV]=2\alpha_3s^3+o(s^3),
$$
and
$$
E[V^2]
=
2(\alpha_4+\beta_2)s^4+o(s^4)
=
\frac32s^4+o(s^4).
$$

Step 4: Form the scaled covariance matrix

Since $E[Q]=0$ and $Q^2\to1$ on both layers,
$$
\operatorname{Var}(Q)\to1.
$$
The relations from Step 3 give
$$
\frac{\operatorname{Cov}(Q,U)}s\to-\alpha_1,
$$
$$
\frac{\operatorname{Cov}(Q,V)}{s^2}
\to\beta_1-\alpha_2,
$$
$$
\frac{\operatorname{Var}(U)}{s^2}
\to2\alpha_2-\alpha_1^2,
$$
$$
\frac{\operatorname{Cov}(U,V)}{s^3}
\to
2\alpha_3-\alpha_1(\alpha_2+\beta_1),
$$
and
$$
\frac{\operatorname{Var}(V)}{s^4}
\to
\frac32-(\alpha_2+\beta_1)^2.
$$

Therefore, with
$$
D_s=
\begin{pmatrix}
1&0&0\\
0&s&0\\
0&0&s^2
\end{pmatrix},
$$
we have
$$
D_s^{-1}\operatorname{Cov}(Q,U,V)D_s^{-1}\to K,
$$
where
$$
K=
\begin{pmatrix}
1&
-\dfrac{\sqrt\pi}{G}&
\dfrac1{\sqrt\pi}-\dfrac RG
\\[6pt]
-\dfrac{\sqrt\pi}{G}&
\dfrac{2R}{G}-\dfrac{\pi}{G^2}&
\dfrac1G-\dfrac{\sqrt\pi R}{G^2}
\\[6pt]
\dfrac1{\sqrt\pi}-\dfrac RG&
\dfrac1G-\dfrac{\sqrt\pi R}{G^2}&
\dfrac32-\left(\dfrac RG+\dfrac1{\sqrt\pi}\right)^2
\end{pmatrix}.
$$
Since
$$
\det D_s=s^3,
$$
we obtain
$$
\det\operatorname{Cov}(Q,U,V)
=
s^6\det K+o(s^6).
$$

Step 5: Evaluate the remaining determinant

For
$$
a=\frac{\sqrt\pi}{G},
\qquad
b=\frac1{\sqrt\pi}-\frac RG,
$$
$$
c=\frac{2R}{G}-\frac{\pi}{G^2},
\qquad
d=\frac1G-\frac{\sqrt\pi R}{G^2},
$$
and
$$
e=\frac32-\left(\frac RG+\frac1{\sqrt\pi}\right)^2,
$$
the matrix in Step 4 has the form
$$
K=
\begin{pmatrix}
1&-a&b\\
-a&c&d\\
b&d&e
\end{pmatrix}.
$$
Thus
$$
\det K
=
ce-d^2-a^2e-2abd-b^2c.
$$
Substitution of $a,b,c,d,e$ and collection over the common denominator $G^3\pi$ gives
$$
\det K
=
\frac{
3G^2\pi R-4G^2R-3G\pi^2
+8\pi^{3/2}R-4\pi R^3
}
{G^3\pi}.
$$

From Step 2,
$$
\det C_n=
\frac1{64}\det\operatorname{Cov}(Q,U,V).
$$
Since $s^6=n^{-3/2}$,
$$
\lim_{n\to\infty}n^{3/2}\det C_n
=
\frac{\det K}{64}.
$$

Final Answer: $\boxed{\frac{3G^2\pi R-4G^2R-3G\pi^2+8\pi^{3/2}R-4\pi R^3}{64G^3\pi}}$

---

## Answer

$\frac{3G^2\pi R-4G^2R-3G\pi^2+8\pi^{3/2}R-4\pi R^3}{64G^3\pi}$

---

## Classification

**Domain:** Calculus

**Sub-domain:** Limits and continuity

**Problem Type:** Exact computation

**Answer Type:** Exact scalar

---

## Solution Concepts

- implicit exponential tilting
- competing boundary layers
- covariance basis changes
- gamma-function moments
- singular asymptotic limits
