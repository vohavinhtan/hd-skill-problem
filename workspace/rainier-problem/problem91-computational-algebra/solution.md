## Steps

Step 1: Identify the group and its representation

Set
$$
P=
\begin{pmatrix}
0&-1&-1&0\\
1&-1&1&1\\
-1&2&-1&-1\\
-1&2&-2&-2
\end{pmatrix}.
$$
Its determinant is $1$. Matrix multiplication gives
$$
PAP^{-1}
=
\begin{pmatrix}
-1&-1&-1&-1\\
1&0&0&0\\
0&1&0&0\\
0&0&1&0
\end{pmatrix}
=:A_0
$$
and
$$
PBP^{-1}
=
\begin{pmatrix}
0&1&0&0\\
1&0&0&0\\
0&0&1&0\\
0&0&0&1
\end{pmatrix}
=:B_0.
$$

Let
$$
V=
\left\{
(z_1,\ldots,z_5)\in\mathbb Q^5:
z_1+\cdots+z_5=0
\right\}
$$
with basis
$$
v_i=e_i-e_5,
\qquad
1\leq i\leq4.
$$
In this basis, $A_0$ is the matrix of
$$
a=(1\,2\,3\,4\,5),
$$
while $B_0$ is the matrix of
$$
b=(1\,2).
$$
The conjugates $a^kba^{-k}$ contain
$$
(1\,2),\qquad(2\,3),\qquad(3\,4),\qquad(4\,5),
$$
which generate $S_5$. Thus
$$
G\cong S_5,
$$
and the given four-dimensional representation is the standard representation $V$ obtained from the five-letter permutation representation by removing its trivial summand.

Step 2: Compute the dimension before imposing divergence

Let $\mathcal C_{29}$ be the space of all degree-$29$ equivariant polynomial maps without the divergence condition. A degree-$29$ polynomial map $V\to V$ is an element of
$$
V\otimes\operatorname{Sym}^{29}(V^*).
$$
Therefore
$$
\dim\mathcal C_{29}
=
\dim
\left(
V\otimes\operatorname{Sym}^{29}(V^*)
\right)^{S_5}.
$$

The standard representation is self-dual. If $\chi$ denotes its character, its covariant Molien series is
$$
C(t)
=
\frac1{120}
\sum_{g\in S_5}
\frac{\chi(g)}{\det(I-tg)}.
$$

For an element of cycle type $\lambda$, the standard character is
$$
\chi(g)=\#\{\text{fixed letters of }g\}-1.
$$
The class data are
$$
\begin{array}{c|c|c|c}
\lambda&|K_\lambda|&\chi(g)&\det(I-tg)\\ \hline
1^5&1&4&(1-t)^4\\
2\,1^3&10&2&(1-t)^2(1-t^2)\\
2^2\,1&15&0&(1-t^2)^2\\
3\,1^2&20&1&(1-t)(1-t^3)\\
3\,2&20&-1&(1+t)(1-t^3)\\
4\,1&30&0&1-t^4\\
5&24&-1&\dfrac{1-t^5}{1-t}
\end{array}.
$$

Step 3: Extract the degree-$29$ covariant multiplicity

For the identity class,
$$
[t^{29}]\frac1{(1-t)^4}
=
\binom{32}{3}
=
4960.
$$

For a transposition,
$$
\frac1{(1-t)^2(1-t^2)}
=
\sum_{j\geq0}\frac{t^{2j}}{(1-t)^2}.
$$
Hence
$$
[t^{29}]
\frac1{(1-t)^2(1-t^2)}
=
\sum_{j=0}^{14}(30-2j)
=
240.
$$

For a $3$-cycle,
$$
[t^{29}]
\frac1{(1-t)(1-t^3)}
=
10,
$$
because $29=a+3b$ has one nonnegative solution for each $b=0,\ldots,9$.

For cycle type $3\,2$,
$$
\frac1{(1+t)(1-t^3)}
=
\sum_{j\geq0}\sum_{r\geq0}(-1)^rt^{3j+r}.
$$
The coefficient of $t^{29}$ is
$$
\sum_{j=0}^{9}(-1)^{29-3j}
=
0.
$$

For a $5$-cycle,
$$
\frac1{\det(I-tg)}
=
\frac{1-t}{1-t^5}.
$$
Its nonzero degrees are congruent to $0$ or $1$ modulo $5$, so its degree-$29$ coefficient is $0$.

The two classes with character $0$ make no contribution. Therefore
$$
\dim\mathcal C_{29}
=
\frac{
4\cdot4960
+
10\cdot2\cdot240
+
20\cdot10
}{120}
=
207.
$$

Step 4: Compute the invariant space reached by divergence

Let $\mathcal I_{28}$ denote the invariant homogeneous polynomials of degree $28$ on $V$.

The five-letter permutation representation has coordinates $z_1,\ldots,z_5$, and its invariant ring is
$$
\mathbb Q[e_1,e_2,e_3,e_4,e_5],
$$
where $e_j$ are the elementary symmetric polynomials. On the standard representation $V$,
$$
e_1=z_1+\cdots+z_5=0.
$$
Thus
$$
\mathbb Q[V]^{S_5}
=
\mathbb Q[e_2,e_3,e_4,e_5],
$$
with generator degrees $2,3,4,5$.

Consequently
$$
\dim\mathcal I_{28}
=
[t^{28}]
\frac1{(1-t^2)(1-t^3)(1-t^4)(1-t^5)}.
$$
This coefficient counts the nonnegative solutions of
$$
2a+3b+4c+5d=28.
$$
Fixing $d=0,1,\ldots,5$, the numbers of solutions of
$$
2a+3b+4c=28-5d
$$
are
$$
24,\qquad14,\qquad12,\qquad5,\qquad4,\qquad1.
$$
Their sum is
$$
\dim\mathcal I_{28}=60.
$$

Step 5: Prove that divergence maps onto the invariant space

For $F\in\mathcal C_{29}$, differentiating
$$
F(gx)=gF(x)
$$
gives
$$
DF(gx)=g\,DF(x)\,g^{-1}.
$$
Taking traces shows
$$
\operatorname{div}F(gx)=\operatorname{div}F(x).
$$
Thus divergence defines a linear map
$$
\operatorname{div}:\mathcal C_{29}\to\mathcal I_{28}.
$$

This map is onto. Given $p\in\mathcal I_{28}$, define
$$
F_p(x)=\frac1{32}p(x)x.
$$
Since $p$ is invariant,
$$
F_p(gx)=gF_p(x),
$$
so $F_p\in\mathcal C_{29}$. Euler's identity for the degree-$28$ polynomial $p$ gives
$$
\sum_{i=1}^4x_i\frac{\partial p}{\partial x_i}=28p.
$$
Therefore
$$
\operatorname{div}(p(x)x)
=
4p+
\sum_{i=1}^4x_i\frac{\partial p}{\partial x_i}
=
32p,
$$
and
$$
\operatorname{div}F_p=p.
$$

The space $\mathcal E$ in the problem is the kernel of this surjective map. Rank-nullity and Steps 3-4 give
$$
\dim_{\mathbb Q}\mathcal E
=
207-60
=
147.
$$

Final Answer: $\boxed{147}$

---

## Answer

$147$

---

## Classification

**Problem Type:** Exact computation

**Answer Type:** Exact scalar

---

## Solution Concepts

- finite matrix groups
- standard representations
- Molien series
- symmetric polynomial invariants
- equivariant divergence
