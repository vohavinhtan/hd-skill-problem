# Normalized Math Problem

## LaTeX (Normalized)

Let $m\geq3$ and put
$$
n=2^{2m},\qquad V=\mathbb F_2^{2m}.
$$
Index the coordinates of $\mathbb F_2^V$ by the elements of $V$. Thus a word
$x\in\mathbb F_2^V$ is written $x=(x_v)_{v\in V}$, and
$$
\operatorname{wt}(x)=\bigl|\{v\in V:x_v=1\}\bigr|.
$$
Set
$$
X_n=\{x\in\mathbb F_2^V:\operatorname{wt}(x)\equiv0\pmod2\}.
$$

Write $\alpha\cdot v$ for the standard dot product on $V$. For each
$0\neq\alpha\in V$, define the word $\ell_\alpha\in\mathbb F_2^V$ by
$$
(\ell_\alpha)_v=\alpha\cdot v,
$$
and put
$$
\mathcal L_m=\{\ell_\alpha:0\neq\alpha\in V\}.
$$
Every word in $\mathcal L_m$ has weight $n/2$, hence belongs to $X_n$.

For $v=(v_1,\ldots,v_{2m})\in V$, define
$$
q(v)=\sum_{i=1}^m v_i v_{m+i}\in\mathbb F_2,
$$
and let $\mathbf q\in\mathbb F_2^V$ be the word
$$
(\mathbf q)_v=q(v).
$$
Its weight is
$$
\operatorname{wt}(\mathbf q)=2^{2m-1}-2^{m-1},
$$
so $\mathbf q\in X_n$.

For $z\in X_n$, set
$$
\lambda(z)=
\begin{cases}
1,&z\in\mathcal L_m,\\
0,&z\notin\mathcal L_m,
\end{cases}
\qquad
\theta(z)=
\begin{cases}
1,&z=\mathbf q,\\
0,&z\neq\mathbf q.
\end{cases}
$$
For $x,y\in X_n$, define
$$
d_n(x,y)=
\begin{cases}
0,&x=y,\\
8n+4\operatorname{wt}(x+y)+2\lambda(x+y)+\theta(x+y),&x\neq y,
\end{cases}
$$
where addition is coordinatewise modulo $2$.

Determine the complete set $\operatorname{Iso}(X_n,d_n)$ of all bijections
$F:X_n\to X_n$ satisfying
$$
d_n(F(x),F(y))=d_n(x,y)\qquad(x,y\in X_n),
$$
and determine $|\operatorname{Iso}(X_n,d_n)|$ in closed form as a function of $m$.

Your answer must give a single explicit normal form for every isometry, including the exact admissible choices of every parameter. If a matrix parameter
$$
A=\begin{pmatrix}P&Q\\R&S\end{pmatrix},
\qquad P,Q,R,S\in M_m(\mathbb F_2),
$$
is used, the admissibility conditions must be stated explicitly as algebraic conditions on the four blocks. Naming an abstract linear, symplectic, or orthogonal group alone is not sufficient.

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

This is a finite metric-space isometry classification problem. The metric is engineered so that its distance shells encode Hamming weight together with two additional metric invariants, and the task is to recover every distance-preserving bijection and count them exactly. Binary linear codes, finite affine geometry, and quadratic forms over $\mathbb F_2$ provide the supporting rigidity mechanisms, but the primary object being classified is the isometry set of the explicitly defined metric space $(X_n,d_n)$, so Analysis and Metric spaces is the appropriate primary classification.
