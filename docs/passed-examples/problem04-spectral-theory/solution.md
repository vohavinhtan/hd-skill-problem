## Steps

Step 1: Recover the original Jacobi matrix from the two shifted characteristic polynomials
Let
$$
p(t)=\det(tI-J),\qquad q(t)=\det(tI-J)_{2:5,2:5}.
$$
Expand the determinant along the first row after a rank one perturbation at $e_1$:
$$
\det(tI-(J+\rho e_1e_1^T))=p(t)-\rho q(t).
$$
Write
$$
A(t)=t^5-3t^4-24t^3+51t^2+127t-126
$$
and
$$
B(t)=t^5+2t^4-24t^3-59t^2+32t+94.
$$
The two shifted characteristic polynomials become
$$
A=p-2q,\qquad B=p+3q.
$$
Solve this two by two system to get
$$
q(t)=\frac{B(t)-A(t)}{5}=t^4-22t^2-19t+44
$$
and
$$
p(t)=A(t)+2q(t)=t^5-t^4-24t^3+7t^2+89t-38.
$$
The Weyl function of the $e_1$ spectral measure is $q(t)/p(t)$. Euclidean division then recovers the monic denominator polynomials in the continued fraction:
$$
p=(t-1)q-2(t^3-2t^2-13t-3),
$$
$$
q=(t+2)(t^3-2t^2-13t-3)-5(t^2-2t-10),
$$
$$
t^3-2t^2-13t-3=t(t^2-2t-10)-3(t+1),
$$
and
$$
t^2-2t-10=(t-3)(t+1)-7.
$$
These identities match the Jacobi recurrence
$$
P_{j+1}(t)=(t-a_{j+1})P_j(t)-b_j^2P_{j-1}(t).
$$
So
$$
a_1=1,\quad a_2=-2,\quad a_3=0,\quad a_4=3,\quad a_5=-1
$$
and
$$
b_1^2=2,\quad b_2^2=5,\quad b_3^2=3,\quad b_4^2=7.
$$
Admissibility picks the positive square roots, so
$$
J=
\begin{bmatrix}
1 & \sqrt{2} & 0 & 0 & 0\\
\sqrt{2} & -2 & \sqrt{5} & 0 & 0\\
0 & \sqrt{5} & 0 & \sqrt{3} & 0\\
0 & 0 & \sqrt{3} & 3 & \sqrt{7}\\
0 & 0 & 0 & \sqrt{7} & -1
\end{bmatrix}.
$$

Step 2: Compute the moments after the three shadow transforms
Let
$$
m_k=\int x^k\,d\mu^{(0)}(x)=e_1^T J^k e_1.
$$
Direct multiplication gives
$$
m_0,m_1,\ldots,m_{12}
=1,1,3,1,21,-27,241,-529,3613,-7569,60371,-90337,1069891.
$$
The first normalizing denominator is
$$
\int (x+4)\,d\mu^{(0)}(x)=m_1+4m_0=5.
$$
The next denominator is nonzero because
$$
\int (5-x)(x+4)\,d\mu^{(0)}(x)
=-m_2+m_1+20m_0=18.
$$
Taken together, the three shadows turn $\mu^{(0)}$ into $\mu^{(3)}$ by multiplying with
$$
(x+4)(5-x)^2=x^3-6x^2-15x+100
$$
and then normalizing. The combined normalizing constant is
$$
\int (x+4)(5-x)^2\,d\mu^{(0)}(x)
=m_3-6m_2-15m_1+100m_0=68.
$$
So
$$
n_k=\int x^k\,d\mu^{(3)}(x)
=\frac{m_{k+3}-6m_{k+2}-15m_{k+1}+100m_k}{68}.
$$
For $0\leq k\leq 9$, the transformed moments come out as
$$
n_0,n_1,\ldots,n_9
=1,\frac{35}{34},\frac{33}{17},\frac{47}{17},\frac{265}{34},
\frac{118}{17},41,-\frac{655}{34},\frac{5568}{17},-\frac{12638}{17}.
$$

Step 3: Reconstruct the monic orthogonal polynomials for the transformed measure
Use the inner product
$$
\langle f,g\rangle=\int f(x)g(x)\,d\mu^{(3)}(x).
$$
For a monic polynomial
$$
P_d(x)=x^d+c_{d-1}x^{d-1}+\cdots+c_1x+c_0,
$$
the orthogonality conditions $\langle P_d,x^r\rangle=0$ for $0\leq r<d$ give the linear equations
$$
\sum_{i=0}^{d-1}c_i n_{i+r}=-n_{d+r}\qquad (0\leq r<d).
$$
When $d=1$, this gives
$$
c_0=-n_1=-\frac{35}{34}.
$$
When $d=2$, the two equations are
$$
c_0+\frac{35}{34}c_1=-\frac{33}{17},\qquad
\frac{35}{34}c_0+\frac{33}{17}c_1=-\frac{47}{17}.
$$
When $d=3$, the three equations are
$$
c_0+\frac{35}{34}c_1+\frac{33}{17}c_2=-\frac{47}{17},
$$
$$
\frac{35}{34}c_0+\frac{33}{17}c_1+\frac{47}{17}c_2=-\frac{265}{34},
$$
and
$$
\frac{33}{17}c_0+\frac{47}{17}c_1+\frac{265}{34}c_2=-\frac{118}{17}.
$$
When $d=4$, the four equations are
$$
c_0+\frac{35}{34}c_1+\frac{33}{17}c_2+\frac{47}{17}c_3=-\frac{265}{34},
$$
$$
\frac{35}{34}c_0+\frac{33}{17}c_1+\frac{47}{17}c_2+\frac{265}{34}c_3=-\frac{118}{17},
$$
$$
\frac{33}{17}c_0+\frac{47}{17}c_1+\frac{265}{34}c_2+\frac{118}{17}c_3=-41,
$$
and
$$
\frac{47}{17}c_0+\frac{265}{34}c_1+\frac{118}{17}c_2+41c_3=\frac{655}{34}.
$$
Solving these Hankel systems gives
$$
P_0=1,
$$
$$
P_1=x-\frac{35}{34},
$$
$$
P_2=x^2-\frac{886}{1019}x-\frac{1066}{1019},
$$
$$
P_3=x^3+\frac{18902}{23279}x^2-\frac{147108}{23279}x+\frac{50383}{23279},
$$
and
$$
P_4=x^4+\frac{8345}{2166}x^3-\frac{5255}{1083}x^2-\frac{5841}{361}x+\frac{16525}{2166}.
$$
Their squared norms are
$$
h_0=1,\qquad h_1=\frac{1019}{1156},\qquad h_2=\frac{116395}{34646},
$$
and
$$
h_3=\frac{1332090}{395743},\qquad h_4=\frac{18655}{12274}.
$$
For monic orthogonal polynomials, the recurrence is
$$
xP_j=P_{j+1}+a_{j+1}P_j+b_j^2P_{j-1},
$$
with
$$
a_{j+1}=\frac{\langle xP_j,P_j\rangle}{h_j},\qquad b_j^2=\frac{h_j}{h_{j-1}}.
$$
To get $\langle xP_j,P_j\rangle$, expand $xP_j(x)^2$ and replace each $x^r$ by $n_r$. This gives
$$
a_1=\frac{35}{34},\qquad
a_2=-\frac{5541}{34646},\qquad
a_3=-\frac{39886332}{23721301},
$$
$$
a_4=-\frac{153321523}{50422314},\qquad
a_5=\frac{10511}{2166},
$$
and
$$
b_1^2=\frac{1019}{1156},\qquad
b_2^2=\frac{3957430}{1038361},\qquad
b_3^2=\frac{542959884}{541911841},\qquad
b_4^2=\frac{2118389}{4691556}.
$$

Step 4: Assemble the admissible tridiagonal matrix
The matrix whose $e_1$ spectral measure is $\mu^{(3)}$ has diagonal entries $a_1,\ldots,a_5$ and positive off diagonal entries $b_1,\ldots,b_4$. Those square roots are
$$
b_1=\frac{\sqrt{1019}}{34},\qquad
b_2=\frac{\sqrt{3957430}}{1019},
$$
and
$$
b_3=\frac{114\sqrt{41779}}{23279},\qquad
b_4=\frac{\sqrt{2118389}}{2166}.
$$
Hence
$$
K=
\begin{bmatrix}
\frac{35}{34} & \frac{\sqrt{1019}}{34} & 0 & 0 & 0\\
\frac{\sqrt{1019}}{34} & -\frac{5541}{34646} & \frac{\sqrt{3957430}}{1019} & 0 & 0\\
0 & \frac{\sqrt{3957430}}{1019} & -\frac{39886332}{23721301} & \frac{114\sqrt{41779}}{23279} & 0\\
0 & 0 & \frac{114\sqrt{41779}}{23279} & -\frac{153321523}{50422314} & \frac{\sqrt{2118389}}{2166}\\
0 & 0 & 0 & \frac{\sqrt{2118389}}{2166} & \frac{10511}{2166}
\end{bmatrix}.
$$
Final Answer: $\boxed{\begin{bmatrix}\frac{35}{34} & \frac{\sqrt{1019}}{34} & 0 & 0 & 0\\ \frac{\sqrt{1019}}{34} & -\frac{5541}{34646} & \frac{\sqrt{3957430}}{1019} & 0 & 0\\ 0 & \frac{\sqrt{3957430}}{1019} & -\frac{39886332}{23721301} & \frac{114\sqrt{41779}}{23279} & 0\\ 0 & 0 & \frac{114\sqrt{41779}}{23279} & -\frac{153321523}{50422314} & \frac{\sqrt{2118389}}{2166}\\ 0 & 0 & 0 & \frac{\sqrt{2118389}}{2166} & \frac{10511}{2166}\end{bmatrix}}$

---

## Answer

$\begin{bmatrix}\frac{35}{34} & \frac{\sqrt{1019}}{34} & 0 & 0 & 0\\ \frac{\sqrt{1019}}{34} & -\frac{5541}{34646} & \frac{\sqrt{3957430}}{1019} & 0 & 0\\ 0 & \frac{\sqrt{3957430}}{1019} & -\frac{39886332}{23721301} & \frac{114\sqrt{41779}}{23279} & 0\\ 0 & 0 & \frac{114\sqrt{41779}}{23279} & -\frac{153321523}{50422314} & \frac{\sqrt{2118389}}{2166}\\ 0 & 0 & 0 & \frac{\sqrt{2118389}}{2166} & \frac{10511}{2166}\end{bmatrix}$

---

## Classification

**Problem Type:** Parameter identification

**Answer Type:** Matrix

## Black-Box Audit -- no issues found
