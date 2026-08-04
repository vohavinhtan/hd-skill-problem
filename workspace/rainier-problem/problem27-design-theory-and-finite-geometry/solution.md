## Steps

Step 1: Translate the set conditions into a quadratic space

For a subset $S\subseteq\{1,\ldots,n\}$, let $v_S\in\mathbb F_2^n$ be its incidence vector. Work in the even weight subspace
$$
E_n=\left\{x\in\mathbb F_2^n:\sum_{j=1}^n x_j=0\right\}.
$$
For $x\in E_n$, define
$$
q_n(x)=\frac{\operatorname{wt}(x)}{2}\pmod 2,
\qquad
B_n(x,y)=x\cdot y.
$$
The identity
$$
\operatorname{wt}(x+y)
=\operatorname{wt}(x)+\operatorname{wt}(y)-2|\operatorname{supp}(x)\cap\operatorname{supp}(y)|
$$
gives
$$
q_n(x+y)=q_n(x)+q_n(y)+B_n(x,y). \tag{1}
$$
So $q_n$ is a quadratic form with polar form $B_n$. A subset has size divisible by $4$ exactly when its incidence vector has $q_n$ value $0$.

Let $U_m=\mathbb F_2^m$ with basis $e_0,\ldots,e_{m-1}$, and define
$$
q_m(a_0,\ldots,a_{m-1})=\sum_{i=0}^{m-1}a_i a_{i+1}, \tag{2}
$$
where indices are read modulo $m$. Its polar form has Gram matrix equal to the adjacency matrix of the cycle $C_m$.

If $v_i=v_{S_i}$, the linear map
$$
\phi:U_m\longrightarrow E_n,
\qquad
\phi(e_i)=v_i,
$$
preserves both quadratic forms because $q_m(e_i)=q_n(v_i)=0$ and the polar pairings agree on every pair of basis vectors. In particular,
$$
\ker\phi\subseteq\operatorname{rad}(B_m),
\qquad
q_m(x)=0\quad(x\in\ker\phi). \tag{3}
$$

Step 2: Determine the radical and type of the cycle form

The radical equation for the polar form of (2) is
$$
a_{i-1}+a_{i+1}=0
\qquad(0\leq i<m). \tag{4}
$$
This gives $a_{i+2}=a_i$.

If $m$ is odd, (4) forces all coordinates to be equal. Therefore
$$
\operatorname{rad}(B_m)=\langle(1,1,\ldots,1)\rangle.
$$
Also,
$$
q_m(1,1,\ldots,1)=m=1\pmod2. \tag{5}
$$
The nonzero radical vector cannot lie in the kernel in (3), so $\phi$ is injective whenever $m$ is odd. This gives
$$
m\leq\dim E_n=n-1. \tag{6}
$$

If $m$ is even, the radical is
$$
R_m=\langle(1,0,1,0,\ldots,1,0),(0,1,0,1,\ldots,0,1)\rangle.
$$
Both generators and their sum have $q_m$ value $0$, so $q_m$ descends to a nondegenerate quadratic form $\overline q_m$ on $U_m/R_m$, which has dimension $m-2$.

Its type can be computed without invoking a classification table. Let
$$
T=\begin{pmatrix}1&1\\1&-1\end{pmatrix}.
$$
Summing over cyclic binary strings gives
$$
\sum_{a\in U_m}(-1)^{q_m(a)}
=\operatorname{tr}(T^m).
$$
Since $T^2=2I$ and $m$ is even,
$$
\operatorname{tr}(T^m)=2^{m/2+1}. \tag{7}
$$
Every vector of $U_m/R_m$ has four lifts with the same $q_m$ value. Dividing (7) by $4$ yields
$$
\sum_{x\in U_m/R_m}(-1)^{\overline q_m(x)}=2^{(m-2)/2}. \tag{8}
$$

For completeness, a nondegenerate quadratic space of dimension $2r$ with positive Gauss sum $2^r$ has $(2^{2r}+2^r)/2>1$ isotropic vectors. Choose a nonzero one, denoted by $u$, then choose $v$ with $B(u,v)=1$ and replace $v$ by $v+q(v)u$. Now $q(u)=q(v)=0$, so $\langle u,v\rangle$ is a hyperbolic plane $\mathcal H$. Its orthogonal complement again has positive Gauss sum, and induction splits off $r$ hyperbolic planes.

The negative case is also explicit. In dimension $2r\geq4$, a Gauss sum $-2^r$ gives $2^{2r-1}-2^{r-1}>1$ isotropic vectors, so the same argument splits off $\mathcal H$ and leaves a negative Gauss sum on the orthogonal complement. At dimension $2$, the negative form has no nonzero isotropic vector. Induction leaves one anisotropic plane after splitting off $r-1$ hyperbolic planes. The resulting decomposition is
$$
(U_m/R_m,\overline q_m)
\cong\underbrace{\mathcal H\perp\cdots\perp\mathcal H}_{(m-2)/2\text{ copies}}. \tag{9}
$$

Step 3: Compute the available hyperbolic dimension in the ambient space

The radical of $B_n$ on $E_n$ is easy to locate. If $z\in E_n$ is orthogonal to every vector $e_i+e_j$, then $z_i=z_j$ for all $i,j$. Therefore
$$
\operatorname{rad}(B_n)=
\begin{cases}
0,&n\text{ odd},\\
\langle\mathbf1\rangle,&n\text{ even}.
\end{cases} \tag{10}
$$
For even $n$,
$$
q_n(\mathbf1)=\frac n2\pmod2. \tag{11}
$$

The Gauss sum of $q_n$ is obtained directly from the binomial theorem:
$$
\begin{aligned}
G_n
&=\sum_{x\in E_n}(-1)^{q_n(x)}
=\sum_{j\text{ even}}\binom nj(-1)^{j/2}\\
&=\operatorname{Re}(1+i)^n
=2^{n/2}\cos\left(\frac{n\pi}{4}\right). \tag{12}
\end{aligned}
$$

Let $w(n)$ be the largest number of mutually orthogonal hyperbolic planes contained in $(E_n,q_n)$. If $n$ is odd, the space is nondegenerate of dimension $n-1$. A positive Gauss sum gives $w(n)=(n-1)/2$. A negative Gauss sum leaves one anisotropic plane after splitting off hyperbolic planes, giving $w(n)=(n-3)/2$.

If $n\equiv0\pmod4$, equations (10) and (11) show that $q_n$ descends to the nondegenerate quotient $E_n/\langle\mathbf1\rangle$. Its Gauss sum is $G_n/2$. Since the radical has quadratic value $0$, a linear section of any nondegenerate quotient subspace preserves both $q_n$ and $B_n$. A positive sign therefore gives $w(n)=(n-2)/2$, while a negative sign gives $w(n)=(n-4)/2$.

If $n\equiv2\pmod4$, the radical vector has quadratic value $1$. The polar rank gives $w(n)\leq(n-2)/2$. To attain this bound, choose a vector-space complement $W$ to $\langle\mathbf1\rangle$. The restriction of $B_n$ to $W$ is nondegenerate. Replacing $W$ by the graph of a linear functional changes its quadratic form from $q$ to $q+\ell$. Every $\ell$ has the form $B(a,\cdot)$, and translation by $a$ gives
$$
\sum_{x\in W}(-1)^{q(x)+B(a,x)}
=(-1)^{q(a)}\sum_{x\in W}(-1)^{q(x)}. \tag{13}
$$
Choosing $a$ with $q(a)=1$ changes a negative sign to a positive one. This produces a hyperbolic complement, so $w(n)=(n-2)/2$.

Combining (10)--(13) gives the complete table
$$
\begin{array}{c|cccccccc}
n\bmod8&0&1&2&3&4&5&6&7\\ \hline
w(n)&\frac{n-2}{2}&\frac{n-1}{2}&\frac{n-2}{2}&\frac{n-3}{2}&
\frac{n-4}{2}&\frac{n-3}{2}&\frac{n-2}{2}&\frac{n-1}{2}.
\end{array} \tag{14}
$$

Step 4: Derive the upper bound and construct every even extremizer

Suppose first that $m$ is even. The quotient in (9) is a hyperbolic space of dimension $m-2$. Since any kernel allowed by (3) lies inside $R_m$, the radical of $\phi(U_m)$ is $\phi(R_m)$. A vector-space complement to this radical is nondegenerate and isometric to $U_m/R_m$, so every valid family forces
$$
m-2\leq2w(n). \tag{15}
$$

Conversely, assume (15). Choose a hyperbolic subspace of $E_n$ of dimension $m-2$ and an isometry
$$
\theta:U_m/R_m\longrightarrow E_n
$$
onto that subspace. Set
$$
v_i=\theta(e_i+R_m).
$$
Equations (2) and (9) give $q_n(v_i)=0$ and the required cycle intersection pattern. For $m\geq6$, the vectors are distinct: if $v_i=v_j$, then $e_i+e_j\in R_m$, but every nonzero vector in $R_m$ has weight $m/2$ or $m$, never weight $2$. So every even $m\geq6$ satisfying (15) is attained.

It remains to rule out a larger odd value. Equation (6) gives $m\leq n-1$. This is already smaller than or equal to $2w(n)+2$ in every residue class except possibly $n\equiv4\pmod8$, where $2w(n)+2=n-2$. In that exceptional class, an odd value larger than $n-2$ would have to be $m=n-1$. Then the injective map $\phi:U_m\to E_n$ would be an isomorphism. An isometry maps the polar radical to the polar radical, but (5) assigns quadratic value $1$ to the radical of $U_m$, whereas (11) assigns value $0$ to the radical of $E_n$. This contradiction excludes $m=n-1$.

Therefore
$$
M(n)=2w(n)+2. \tag{16}
$$
The construction through $\theta$ proves attainment, while (15) and the odd case prove maximality.

As a boundary certificate, when $n=8$ the following eight sets realize $M(8)=8$:
$$
\begin{aligned}
&\{1,2,3,4\},\ \{1,2,3,5\},\ \{1,2,5,6\},\ \{1,4,5,6\},\\
&\{1,4,5,7\},\ \{2,4,5,7\},\ \{1,3,6,7\},\ \{3,5,6,7\}.
\end{aligned} \tag{17}
$$
Each set has size $4$. In the displayed order, their intersection parities are
$$
\left(|S_i\cap S_j|\bmod2\right)_{i,j=0}^{7}
=
\begin{pmatrix}
0&1&0&0&0&0&0&1\\
1&0&1&0&0&0&0&0\\
0&1&0&1&0&0&0&0\\
0&0&1&0&1&0&0&0\\
0&0&0&1&0&1&0&0\\
0&0&0&0&1&0&1&0\\
0&0&0&0&0&1&0&1\\
1&0&0&0&0&0&1&0
\end{pmatrix},
$$
which is the adjacency matrix of $C_8$.

Step 5: State the formula in a compact checkable form

Substituting (14) into (16) gives
$$
M(n)=
\begin{cases}
n+1,&n\equiv1,7\pmod8,\\
n,&n\equiv0,2,6\pmod8,\\
n-1,&n\equiv3,5\pmod8,\\
n-2,&n\equiv4\pmod8.
\end{cases} \tag{18}
$$
Equivalently, grouping eight consecutive arguments avoids a cases expression in the answer field:
$$
\left(M(8q+r)\right)_{r=0}^{7}
=(8q,8q+2,8q+2,8q+2,8q+2,8q+4,8q+6,8q+8)
$$
for every integer $q\geq1$.
Final Answer: $\boxed{\left(M(8q+r)\right)_{r=0}^{7}=(8q,8q+2,8q+2,8q+2,8q+2,8q+4,8q+6,8q+8),\quad q\in\mathbb Z_{\geq1}}$

---

## Answer

$\left(M(8q+r)\right)_{r=0}^{7}=(8q,8q+2,8q+2,8q+2,8q+2,8q+4,8q+6,8q+8),\quad q\in\mathbb Z_{\geq1}$

---

## Classification

**Problem Type:** Optimization

**Answer Type:** Function or mapping

---

## Black-Box Audit — no issues found

---

## Concepts (1–5)

- Binary incidence vectors and intersection parity
- Quadratic forms over $\mathbb F_2$
- Radicals and hyperbolic planes
- Gauss sums and Witt index
- Extremal construction by quotient isometry
