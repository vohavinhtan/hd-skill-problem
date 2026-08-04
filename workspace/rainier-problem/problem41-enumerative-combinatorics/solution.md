## Steps

Step 1: Convert the cube condition into quadratic data

For a function $f:V\to\mathbb F_2$, the sum over an affine cube is the third difference
$$
D_aD_bD_cf(x).
$$
Using the algebraic normal form of $f$, vanishing for the triples of distinct standard basis vectors eliminates every monomial of degree at least $3$. Conversely, every function of degree at most $2$ has vanishing third differences. Hence
$$
f(x)=Q(x)+L(x)+c,
$$
where $Q$ is quadratic, $L$ is linear, and $c\in\mathbb F_2$.

Let
$$
\beta_f(x,z)=f(x+z)+f(x)+f(z)+f(0)
$$
be the alternating polar form. Relative to $V=U_k\oplus Y$, write its matrix as
$$
\begin{pmatrix}
A&C\\
C^{\mathsf T}&D
\end{pmatrix},
$$
where $A$ and $D$ are alternating and $C:Y\to U_k^*$ is linear.

Step 2: Recover the quotient quadratic form from the fiber signs

For fixed $y\in Y$, the restriction $u\mapsto f(u+y)$ has polar matrix $A$. If its radical has dimension $e$, squaring its sign sum and changing variables from $(u,v)$ to $(u,u+v)$ shows that the sum is either zero or has absolute value
$$
2^{(k+e)/2}.
$$
The condition $|\Phi_f(y)|=1$ for every $y$, already at $y=0$, therefore forces $e=0$. Thus $A$ is nonsingular. Conversely, nonsingularity of $A$ makes every normalized fiber sum equal to $1$ or $-1$.

Completing the quadratic expression in the $U_k$ variable shifts $u$ by $A^{-1}Cy$. It follows that $\gamma_f$ is quadratic on $Y$, and its polar matrix is
$$
N=D+C^{\mathsf T}A^{-1}C. \tag{1}
$$
Also,
$$
\Lambda_f(y)(u)=\beta_f(u,y),
$$
so
$$
\ker\Lambda_f=\ker C.
$$
The final compatibility condition is therefore exactly
$$
\ker C=\ker N=:K. \tag{2}
$$
The directional differences of the quadratic function $\gamma_f$ are balanced in every nonzero direction of $J_\ell$ precisely when
$$
K\cap J_\ell=\{0\}. \tag{3}
$$

Step 3: Count the admissible polar forms by rank

Put $m=n-k$. Let $s=\operatorname{rank}N$ and $d=m-s$. Since $N$ is alternating, $s$ is even. Conditions (2) and (3) force
$$
\ell\leq s\leq\min\{k,m\}.
$$

For even $a=2j$, define
$$
\mathcal N(a)=2^{j(j-1)}\prod_{i=1}^{j}(2^{2i-1}-1).
$$
This is the number of nonsingular alternating forms on an $a$ dimensional binary vector space: divide $|GL_a(\mathbb F_2)|$ by the order of the symplectic group after choosing a symplectic basis.
More explicitly,
$$
|GL_{2j}(\mathbb F_2)|
=\prod_{i=0}^{2j-1}(2^{2j}-2^i),
\qquad
|Sp_{2j}(\mathbb F_2)|
=2^{j^2}\prod_{i=1}^{j}(2^{2i}-1).
$$
The second product follows by choosing the symplectic pairs successively. Their quotient simplifies to the displayed value of $\mathcal N(2j)$.

The number of $d$ dimensional subspaces $K\subseteq Y$ with $K\cap J_\ell=\{0\}$ is
$$
2^{d\ell}
\begin{bmatrix}m-\ell\\d\end{bmatrix}_2
=
2^{(m-s)\ell}
\begin{bmatrix}m-\ell\\s-\ell\end{bmatrix}_2. \tag{4}
$$
Indeed, projection to $Y/J_\ell$ embeds $K$ as a $d$ dimensional subspace, and each projected subspace has $2^{d\ell}$ graph lifts. Here
$$
\begin{bmatrix}a\\b\end{bmatrix}_2
=\prod_{i=0}^{b-1}\frac{2^{a-i}-1}{2^{b-i}-1}.
$$

Once $K$ is fixed, there are $\mathcal N(s)$ choices for $N$, because $N$ descends to a nonsingular alternating form on $Y/K$. The maps $C$ with kernel $K$ correspond to injections $Y/K\to U_k^*$, so their number is
$$
\prod_{i=0}^{s-1}(2^k-2^i). \tag{5}
$$
There are $\mathcal N(k)$ choices for $A$. Finally, equation (1) determines $D$ uniquely from $A,C,N$. Thus the number of admissible polar forms with quotient rank $s$ is
$$
R_s=
2^{(m-s)\ell}
\begin{bmatrix}m-\ell\\s-\ell\end{bmatrix}_2
\cdot\mathcal N(k)\mathcal N(s)
\cdot\prod_{i=0}^{s-1}(2^k-2^i). \tag{6}
$$

Step 4: Determine the weights and stabilizers for one polar form

Fix an admissible polar form of quotient rank $s$, with $K=\ker N$ and $\dim K=d$. As the affine part of $f$ varies, every affine completion of $\gamma_f$ has exactly $2^k$ preimages. The constant is counted only once: the affine parameters of $f$ have dimension $k+m+1$, those of $\gamma_f$ have dimension $m+1$, and the resulting surjective map has a $k$ dimensional kernel.

For $t\in K$, the value
$$
\lambda(t)=\gamma_f(y+t)+\gamma_f(y)
$$
is independent of $y$ and defines a linear functional on $K$. If $\lambda=0$, the sign sum of $\gamma_f$ is nonzero. There are $2^s$ affine completions for each sign, and the corresponding support sizes of $f$ are
$$
2^{n-1}\pm2^{n-1-\frac{k+s}{2}}. \tag{7}
$$
If $\lambda\neq0$, the sign sum vanishes, so the support size is $2^{n-1}$. There are
$$
2^{m+1}-2^{s+1}
$$
such affine completions of $\gamma_f$.

Translation by $t\in Y$ fixes $f$ exactly when $t\in K$ and $\lambda(t)=0$. For $\lambda=0$, the stabilizer has size $2^d$, so the orbit has size $2^s$. Since each sign in (7) has $2^k2^s$ lifts, it contributes exactly $2^k$ orbits.

For $\lambda\neq0$, the stabilizer has size $2^{d-1}$ and the orbit has size $2^{s+1}$. The number of lifted functions is
$$
2^k(2^{m+1}-2^{s+1})
=2^{k+s+1}(2^d-1),
$$
so the middle weight contributes exactly
$$
2^k(2^d-1)
$$
orbits. This stabilizer split is the fixed point correction; simply dividing the function enumerator by $2^m$ would miss it.

Step 5: Assemble the orbit support enumerator

For every permitted even $s$, define
$$
\Delta_s=2^{n-1-\frac{k+s}{2}},
\qquad
\mathcal N(2j)=2^{j(j-1)}\prod_{i=1}^{j}(2^{2i-1}-1),
$$
and
$$
R_s=
2^{(n-k-s)\ell}
\begin{bmatrix}n-k-\ell\\s-\ell\end{bmatrix}_2
\mathcal N(k)\mathcal N(s)
\prod_{i=0}^{s-1}(2^k-2^i),
\qquad
\begin{bmatrix}a\\b\end{bmatrix}_2
=\prod_{i=0}^{b-1}\frac{2^{a-i}-1}{2^{b-i}-1}.
$$
Combining the polar form count with the three orbit counts gives
$$
\Omega_{n,k,\ell}(T)
=
2^k
\sum_{\substack{s\text{ even}\\ \ell\leq s\leq\min\{k,n-k\}}}
R_s
\left(
T^{2^{n-1}-\Delta_s}
+(2^{n-k-s}-1)T^{2^{n-1}}
+T^{2^{n-1}+\Delta_s}
\right). \tag{8}
$$

For the smallest case $(n,k,\ell)=(5,2,2)$, only $s=2$ occurs. The displayed product gives $R_2=24$, and the orbit formula gives
$$
\Omega_{5,2,2}(T)=96(T^{12}+T^{16}+T^{20}),
$$
which also follows by applying the weighted Burnside average to the eight translations of $Y$.

Final Answer: $\boxed{\Omega_{n,k,\ell}(T)=2^k\sum_{\substack{s\text{ even}\\ \ell\leq s\leq\min\{k,n-k\}}}R_s\left(T^{2^{n-1}-\Delta_s}+(2^{n-k-s}-1)T^{2^{n-1}}+T^{2^{n-1}+\Delta_s}\right)}$

---

## Answer

$\Omega_{n,k,\ell}(T)=2^k\sum_{\substack{s\text{ even}\\ \ell\leq s\leq\min\{k,n-k\}}}R_s\left(T^{2^{n-1}-\Delta_s}+(2^{n-k-s}-1)T^{2^{n-1}}+T^{2^{n-1}+\Delta_s}\right)$

---

## Classification

**Problem Type:** Exhaustive enumeration

**Answer Type:** Polynomial or rational function

---

## Concepts (1–5)

- Quadratic Boolean functions and polar forms
- Finite Fourier sums on binary vector spaces
- Radicals of alternating forms
- Gaussian binomial coefficients
- Orbit stabilizer counting
