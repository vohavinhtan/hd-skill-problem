# Normalized Math Problem

## LaTeX (Normalized)

Let $r\geq15$ be divisible by $15$, put
$$
q=2^r,
\qquad
E=\mathbb F_q,
\qquad
V=M_5(E),
\qquad
n=|V|=q^{25}=2^{25r},
$$
and choose a primitive element $\tau\in E^\times$.
Since $3\mid r$ and $5\mid r$, regard $\mathbb F_{2^3}$ and $\mathbb F_{2^5}$ as the unique corresponding subfields of $E$. Fix
$$
\rho\in\mathbb F_{2^3}^\times
\quad\text{of order }7,
\qquad
\eta\in\mathbb F_{2^5}^\times
\quad\text{of order }31.
$$

Index the coordinates of $\mathbb F_2^V$ by the matrices in $V$. Thus a word $x\in\mathbb F_2^V$ is written $x=(x_X)_{X\in V}$, and
$$
\operatorname{wt}(x)
=
\bigl|\{X\in V:x_X=1\}\bigr|.
$$
Set
$$
X_n
=
\{x\in\mathbb F_2^V:\operatorname{wt}(x)\equiv0\pmod2\}.
$$

Write $\operatorname{Tr}:E\to\mathbb F_2$ for the absolute field trace and $\operatorname{tr}:M_5(E)\to E$ for the matrix trace. For $C,X\in V$, define
$$
\langle C,X\rangle
=
\operatorname{Tr}\!\left(\operatorname{tr}(C^T X)\right).
$$
For $0\neq C\in V$, define the linear word $\ell_C\in\mathbb F_2^V$ by
$$
(\ell_C)_X=\langle C,X\rangle,
$$
and put
$$
\mathcal L=\{\ell_C:0\neq C\in V\}.
$$

For every $E$-subspace $W\leq V$, let $\chi_W\in\mathbb F_2^V$ denote its indicator word. Define
$$
\mathcal P
=
\{\chi_L:L\leq V,\ \dim_E L=1\},
$$
$$
\mathcal R
=
\{\chi_{EX}:0\neq X\in V,\ \operatorname{rank}X=1\}.
$$
For $0\neq u\in E^5$, put
$$
U_{[u]}
=
\{uv^T:v\in E^5\},
$$
and set
$$
\mathcal U
=
\{\chi_{U_{[u]}}:[u]\in\mathbb P^4(E)\}.
$$
Also put
$$
\mathcal Z
=
\{\chi_{EX}:0\neq X\in V,\ \operatorname{tr}X=0\}.
$$

For $0\neq C\in V$, define the $E$-hyperplane
$$
H_C
=
\{X\in V:\operatorname{tr}(CX)=0\},
\qquad
h_C=\chi_{H_C}.
$$
Let $E_{ij}$ be the matrix units, with indices in $\mathbb Z/5\mathbb Z$. Put
$$
\mathcal E=\{h_{E_{00}},h_{E_{11}},h_{E_{22}},h_{E_{33}},h_{E_{44}}\}.
$$

For $s\in\mathbb Z/5\mathbb Z$, let $P_s$ be the permutation matrix defined by
$$
P_s e_i=e_{i+s}
\qquad(i\in\mathbb Z/5\mathbb Z).
$$
Define
$$
D=\operatorname{diag}(\eta,\eta^2,\eta^4,\eta^8,\eta^{16}),
$$
and, with
$$
(b_0,b_1,b_2,b_3,b_4)=(0,1,3,9,18),
$$
define
$$
K
=
I_5+\sum_{i\in\mathbb Z/5\mathbb Z}
\eta^{b_i}E_{i,i+1}.
$$
Also put
$$
R=\operatorname{diag}(\rho,1,1,1,1)
$$
and
$$
\mathcal B
=
\{h_{P_sRP_s^{-1}}:s\in\mathbb Z/5\mathbb Z\}.
$$

For $X\in M_5(E)$, let $c_2(X)$ be the coefficient of $T^3$ in
$$
\det(TI_5+X).
$$
Equivalently,
$$
c_2(X)
=
\sum_{0\leq i<j\leq4}
\left(x_{ii}x_{jj}+x_{ij}x_{ji}\right).
$$
For $s\in E$, define the quadratic word $\mathbf c_s\in\mathbb F_2^V$ by
$$
(\mathbf c_s)_X
=
\operatorname{Tr}\!\left(s\,c_2(X)\right),
$$
and set
$$
\mathcal C_\tau
=
\{\mathbf c_\tau+\ell_C:C\in V\},
$$
where $\ell_0$ denotes the zero word.

All words occurring in the families above have even weight, hence lie in $X_n$.

For $z\in X_n$, set
$$
\lambda(z)=\mathbf1_{\mathcal L}(z),
\qquad
\pi(z)=\mathbf1_{\mathcal P}(z),
\qquad
\kappa(z)=\mathbf1_{\mathcal R}(z),
$$
$$
\upsilon(z)=\mathbf1_{\mathcal U}(z),
\qquad
\zeta(z)=\mathbf1_{\mathcal Z}(z),
\qquad
\epsilon(z)=\mathbf1_{\mathcal E}(z),
$$
$$
\delta(z)=\mathbf1_{\{h_D\}}(z),
\qquad
\theta(z)=\mathbf1_{\{h_K\}}(z),
\qquad
\beta(z)=\mathbf1_{\mathcal B}(z),
\qquad
\chi(z)=\mathbf1_{\mathcal C_\tau}(z).
$$

For $x,y\in X_n$, define
$$
d_n(x,y)
=
\begin{cases}
0,&x=y,\\
8192n+2048\operatorname{wt}(x+y)
+1024\lambda(x+y)+512\pi(x+y)+256\kappa(x+y)\\
\qquad\qquad{}+128\upsilon(x+y)+64\zeta(x+y)+32\epsilon(x+y)
+16\delta(x+y)+8\theta(x+y)+4\beta(x+y)+2\chi(x+y),&x\neq y,
\end{cases}
$$
where addition is coordinatewise modulo $2$.

Determine the complete set $\operatorname{Iso}(X_n,d_n)$ of all bijections
$$
F:X_n\to X_n
$$
satisfying
$$
d_n(F(x),F(y))=d_n(x,y)
\qquad(x,y\in X_n),
$$
and determine $|\operatorname{Iso}(X_n,d_n)|$ in closed form as a function of $r$.

Your answer must give one explicit normal form for every isometry and the exact admissible value of every parameter. In particular, if the induced coordinate action on $V=M_5(E)$ is written as
$$
X\longmapsto\gamma A X^{2^k}A^{-1},
$$
then the allowed $k$, the scalar $\gamma$, and the matrix $A$ must all be given explicitly. Leaving $A$ as an unspecified monomial, projective, rank-preserver, or stabilizer element is not sufficient.

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

This is a finite metric-space isometry classification problem whose distance shells encode several interacting structures on the coordinate space $M_5(E)$. The reconstruction passes through Hamming rigidity, an $E$-line spread, the rank-one Segre geometry and one of its rulings, trace-zero rigidity, a diagonal idempotent frame, a Singer-type diagonal marker, a weighted cyclic matrix, a Frobenius-sensitive orbit marker, and a quadratic characteristic-coefficient refinement. These markers successively determine the semilinear exponent, the permutation part, the diagonal part, and the remaining scalar of the coordinate action. Finite geometry, matrix preserver arguments, finite-field arithmetic, and characteristic-polynomial invariants provide the rigidity mechanism, while the primary object remains the complete isometry set of the explicitly defined metric space $(X_n,d_n)$.
