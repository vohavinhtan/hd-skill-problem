# Normalized Math Problem

## LaTeX (Normalized)

Let $r\geq6$, let $d$ be an integer with
$$
2\leq d<r,\qquad d\mid r,
$$
and put
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
\langle\alpha,v\rangle
=\operatorname{Tr}(au+bw).
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
(\mathbf q_s)_{(u,w)}
=\operatorname{Tr}(suw),
$$
and define the affine family
$$
\mathcal Q_s
=\{\mathbf q_s+\ell_\alpha:\alpha\in V\}.
$$
All words in $\mathcal L$ and in every $\mathcal Q_s$ have even weight, hence belong to $X_n$.

Put
$$
H=\langle\tau^{2^d-1}\rangle\leq E^\times,
$$
so
$$
|H|=\frac{2^r-1}{2^d-1}.
$$
Define
$$
\mathscr Q=\bigcup_{s\in E^\times}\mathcal Q_s,
\qquad
\mathscr H=\bigcup_{s\in H}\mathcal Q_s,
\qquad
\mathscr C=\bigcup_{s\in\tau H}\mathcal Q_s.
$$
For $z\in X_n$, set
$$
\lambda(z)=\mathbf1_{\mathcal L}(z),
\qquad
\mu(z)=\mathbf1_{\mathscr Q}(z),
\qquad
\eta(z)=\mathbf1_{\mathscr H}(z),
\qquad
\xi(z)=\mathbf1_{\mathscr C}(z).
$$

For $x,y\in X_n$, define
$$
d_n(x,y)=
\begin{cases}
0,&x=y,\\
32n+16\operatorname{wt}(x+y)
+8\lambda(x+y)+4\mu(x+y)+2\eta(x+y)+\xi(x+y),&x\neq y,
\end{cases}
$$
where addition is coordinatewise modulo $2$.

Determine the complete set $\operatorname{Iso}(X_n,d_n)$ of all bijections
$F:X_n\to X_n$ satisfying
$$
d_n(F(x),F(y))=d_n(x,y)
\qquad(x,y\in X_n),
$$
and determine $|\operatorname{Iso}(X_n,d_n)|$ in closed form as a function of $r$ and $d$.

Your answer must give a single explicit normal form for every isometry and must specify the exact admissible choices of every parameter. In particular, if a coordinate permutation of $V=E^2$ is written using a matrix
$$
M=\begin{pmatrix}a&b\\c&e\end{pmatrix}\in M_2(E)
$$
and a Frobenius power, then the allowed values of the Frobenius exponent and the exact condition on
$$
\det M=ae+bc
$$
must be stated explicitly. Naming an abstract semilinear or classical group alone is not sufficient.

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

This is a finite metric-space isometry classification problem. The distance shells encode Hamming weight together with a linear-code marker and a structured pencil of quadratic-refinement families over a finite field. Recovering the isometries requires reconstructing the coordinate action from the metric and then resolving how that action normalizes the quadratic pencil, its distinguished multiplicative-subgroup part, and a distinguished coset. Finite-field, semilinear, and quadratic-form ideas provide the rigidity mechanism, but the primary object being classified is the complete isometry set of the explicitly defined metric space $(X_n,d_n)$, so Analysis and Metric spaces is the appropriate primary classification.
