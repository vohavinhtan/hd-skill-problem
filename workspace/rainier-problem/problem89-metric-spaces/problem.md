# Normalized Math Problem

## LaTeX (Normalized)

Let $r\geq30$ be divisible by $30$, and put
$$
q=2^r,\qquad n=q^2=2^{2r}.
$$
Let $E=\mathbb F_q$, choose a primitive element $\tau\in E^\times$, and regard
$$
V=E^2
$$
as a $2r$-dimensional vector space over $\mathbb F_2$. Index the coordinates of $\mathbb F_2^V$ by the elements of $V$. Thus a word $x\in\mathbb F_2^V$ is written $x=(x_v)_{v\in V}$, and
$$
\operatorname{wt}(x)=\bigl|\{v\in V:x_v=1\}\bigr|.
$$
Set
$$
X_n=\{x\in\mathbb F_2^V:\operatorname{wt}(x)\equiv0\pmod2\}.
$$

Write $\operatorname{Tr}:E\to\mathbb F_2$ for the absolute trace. For
$$
\alpha=(a,b),\qquad v=(u,w)\in V,
$$
put
$$
\langle\alpha,v\rangle=\operatorname{Tr}(au+bw).
$$
For $0\neq\alpha\in V$, define the linear word $\ell_\alpha\in\mathbb F_2^V$ by
$$
(\ell_\alpha)_v=\langle\alpha,v\rangle,
$$
and set
$$
\mathcal L=\{\ell_\alpha:0\neq\alpha\in V\}.
$$

For each $s\in E^\times$, define the quadratic word $\mathbf q_s\in\mathbb F_2^V$ by
$$
(\mathbf q_s)_{(u,w)}=\operatorname{Tr}(suw),
$$
and define
$$
\mathcal Q_s=\{\mathbf q_s+\ell_\alpha:\alpha\in V\},
\qquad
\mathscr Q=\bigcup_{s\in E^\times}\mathcal Q_s.
$$
All words in $\mathcal L$ and in every $\mathcal Q_s$ have even weight, hence belong to $X_n$.

For $m\in\{6,10\}$ put
$$
M_m=2^m-1,
\qquad
H_m=\langle\tau^{M_m}\rangle\leq E^\times.
$$
For an integer $c$, define
$$
\Omega_{m,c}
=
\bigcup_{i=0}^{m-1}\tau^{\,c+2^i}H_m
\subseteq E^\times,
$$
and
$$
\mathscr R_{m,c}
=
\bigcup_{s\in\Omega_{m,c}}\mathcal Q_s.
$$
Since $6\mid r$ and $10\mid r$, both $M_6=63$ and $M_{10}=1023$ divide $q-1$.

For $z\in X_n$, set
$$
\lambda(z)=\mathbf1_{\mathcal L}(z),
\qquad
\mu(z)=\mathbf1_{\mathscr Q}(z),
$$
$$
\alpha_0(z)=\mathbf1_{\mathscr R_{6,1}}(z),
\qquad
\alpha_1(z)=\mathbf1_{\mathscr R_{6,10}}(z),
$$
$$
\beta_0(z)=\mathbf1_{\mathscr R_{10,1}}(z),
\qquad
\beta_1(z)=\mathbf1_{\mathscr R_{10,34}}(z).
$$

For $x,y\in X_n$, define
$$
d_n(x,y)=
\begin{cases}
0,&x=y,\\
256n+128\operatorname{wt}(x+y)
+64\lambda(x+y)+32\mu(x+y)
+16\alpha_0(x+y)+8\alpha_1(x+y)
+4\beta_0(x+y)+2\beta_1(x+y),&x\neq y,
\end{cases}
$$
where addition is coordinatewise modulo $2$.

Determine the complete set $\operatorname{Iso}(X_n,d_n)$ of all bijections
$F:X_n\to X_n$ satisfying
$$
d_n(F(x),F(y))=d_n(x,y)
\qquad(x,y\in X_n),
$$
and determine $|\operatorname{Iso}(X_n,d_n)|$ in closed form as a function of $r$.

Your answer must give one explicit normal form for every isometry and must specify the exact admissible choices of every parameter. In particular, if the coordinate action on $V=E^2$ is written as
$$
\Phi_{M,k}(v)=Mv^{2^k},
\qquad
M=\begin{pmatrix}a&b\\c&e\end{pmatrix}\in M_2(E),
$$
then the allowed values of $k$ and the exact condition coupling $k$ to
$$
\det M=ae+bc
$$
must be stated explicitly. Naming an abstract semilinear group, giving independent conditions on $k$ and $\det M$, or leaving the determinant condition as an unspecified stabilizer is not sufficient.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Analysis |
| **Sub-domain** | Metric spaces |
| **Problem Type** | Exhaustive enumeration |
| **Answer Type** | Set or multiset of objects |

---

## Domain Explanation

This is a finite metric-space isometry classification problem. Its distance shells encode Hamming weight, a linear-code marker, a full quadratic pencil over a finite field, and four distinguished unions of pencil fibers whose parameter sets are shifted Frobenius orbits in two different cyclic quotients of $E^\times$. Recovering every isometry therefore requires metric reconstruction of the coordinate action, semilinear reconstruction from the quadratic pencil, and then a coupled congruence analysis linking the Frobenius exponent to the determinant coset simultaneously modulo $63$ and $1023$. The finite-field and coding structures provide the rigidity mechanism, while the primary object being classified remains the complete isometry set of the explicit metric space $(X_n,d_n)$.
