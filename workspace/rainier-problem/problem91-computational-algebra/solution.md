## Steps

Step 1: Identify the group and the preserved quadratic form

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
Its determinant is $1$, and multiplication gives
$$
PAP^{-1}
=
\begin{pmatrix}
-1&-1&-1&-1\\
1&0&0&0\\
0&1&0&0\\
0&0&1&0
\end{pmatrix},
$$
$$
PBP^{-1}
=
\begin{pmatrix}
0&1&0&0\\
1&0&0&0\\
0&0&1&0\\
0&0&0&1
\end{pmatrix}.
$$

On
$$
V=
\left\{
(z_1,\ldots,z_5)\in\mathbb Q^5:
z_1+\cdots+z_5=0
\right\},
$$
with basis $e_i-e_5$, these are the matrices of $(1\,2\,3\,4\,5)$ and $(1\,2)$. Their conjugates contain all adjacent transpositions, so
$$
G\cong S_5.
$$

The Gram matrix of this basis is $I+J$, where $J$ is the all-ones matrix. Direct multiplication gives
$$
P^T(I+J)P=S.
$$
Therefore
$$
g^TSg=S
$$
for every $g\in G$. Put
$$
\rho(x)=x^TSx.
$$

Step 2: Compute the degree-$29$ covariant dimension

Let $\mathcal C_{29}$ be the space of all degree-$29$ equivariant polynomial maps. Since the standard representation is self-dual,
$$
\dim\mathcal C_{29}
=
[t^{29}]
\frac1{120}
\sum_{g\in S_5}
\frac{\chi(g)}{\det(I-tg)}.
$$

The classes with nonzero standard character give
$$
\begin{array}{c|c|c|c}
\text{cycle type}&\text{size}&\chi&\det(I-tg)\\ \hline
1^5&1&4&(1-t)^4\\
2\,1^3&10&2&(1-t)^2(1-t^2)\\
3\,1^2&20&1&(1-t)(1-t^3)\\
3\,2&20&-1&(1+t)(1-t^3)\\
5&24&-1&\dfrac{1-t^5}{1-t}
\end{array}.
$$

The degree-$29$ coefficients of the reciprocal determinants are
$$
4960,\qquad240,\qquad10,\qquad0,\qquad0.
$$
For example,
$$
[t^{29}]\frac1{(1-t)^2(1-t^2)}
=
\sum_{j=0}^{14}(30-2j)
=
240,
$$
while
$$
[t^{29}]\frac1{(1-t)(1-t^3)}
=
10.
$$
Hence
$$
\dim\mathcal C_{29}
=
\frac{4\cdot4960+20\cdot240+20\cdot10}{120}
=
207.
$$

Step 3: Count the invariant polynomials needed by the two constraints

The invariant ring of the five-letter permutation representation is
$$
\mathbb Q[e_1,e_2,e_3,e_4,e_5].
$$
On $V$ we have $e_1=0$, so
$$
\mathbb Q[V]^{S_5}
=
\mathbb Q[e_2,e_3,e_4,e_5].
$$
Its Hilbert series is
$$
\frac1{(1-t^2)(1-t^3)(1-t^4)(1-t^5)}.
$$

Let $b_m$ be the dimension of the degree-$m$ invariant subspace. It counts solutions of
$$
2a+3b+4c+5d=m.
$$
Fixing $d$ gives
$$
\begin{array}{c|c|c}
m&\text{counts for successive }d&b_m\\ \hline
28&24,14,12,5,4,1&60\\
30&27,16,14,7,5,1,1&71
\end{array}.
$$
Therefore
$$
b_{28}=60,
\qquad
b_{30}=71.
$$

Step 4: Impose the tangency condition

Define
$$
C(F)=x^TSF(x).
$$
Because $g^TSg=S$ and $F(gx)=gF(x)$, the polynomial $C(F)$ is invariant. Thus
$$
C:\mathcal C_{29}\to\mathbb Q[V]^{S_5}_{30}.
$$

This map is onto. For an invariant polynomial $p$ of degree $30$, set
$$
\nabla_Sp=S^{-1}\nabla p.
$$
The invariance of $p$ and of $S$ makes $\nabla_Sp$ equivariant. Euler's identity gives
$$
x^TS\nabla_Sp
=
x^T\nabla p
=
30p.
$$
Therefore $C((1/30)\nabla_Sp)=p$.

Let
$$
\mathcal T_{29}=\ker C.
$$
Using Steps 2 and 3,
$$
\dim\mathcal T_{29}
=
207-71
=
136.
$$

Step 5: Determine the rank of divergence on tangent covariants

Define
$$
\Delta_Sp
=
\operatorname{tr}\left(S^{-1}\operatorname{Hess}p\right).
$$
Both $\rho$ and $\Delta_S$ commute with the $S_5$-action.

For an invariant homogeneous polynomial $q$ of degree $28$, set
$$
F_q=\rho\nabla_Sq-28qx.
$$
Euler's identity gives
$$
x^TSF_q
=
28\rho q-28\rho q
=
0,
$$
so $F_q\in\mathcal T_{29}$.

Its divergence is
$$
\operatorname{div}F_q
=
\rho\Delta_Sq-840q.
$$

Every homogeneous polynomial of degree $28$ has a unique Fischer decomposition
$$
q=\sum_{j=0}^{14}\rho^jh_{28-2j},
$$
where $\Delta_Sh_{\ell}=0$. This follows recursively from
$$
\Delta_S(\rho^jh_\ell)
=
4j(\ell+j+1)\rho^{j-1}h_\ell.
$$
Since $\rho$ and $\Delta_S$ commute with $G$, an invariant $q$ decomposes into invariant harmonic terms.

For
$$
q=\rho^jh_\ell,
\qquad
\ell+2j=28,
$$
we obtain
$$
\rho\Delta_Sq-840q
=
-\ell(\ell+2)q.
$$
This vanishes exactly for $\ell=0$. The kernel on the $60$-dimensional invariant space is therefore
$$
\mathbb Q\rho^{14}.
$$
Hence divergences of the fields $F_q$ already span a $59$-dimensional subspace.

To see that the rank cannot exceed $59$, let $F\in\mathcal T_{29}$. Integration by parts against $e^{-\rho/2}$ gives
$$
\int_{\mathbb R^4}
(\operatorname{div}F)e^{-\rho/2}\,dx
=
\int_{\mathbb R^4}
x^TSF\,e^{-\rho/2}\,dx
=
0.
$$
In the Fischer decomposition, every positive-degree harmonic component has zero spherical average, whereas $\rho^{14}$ has nonzero Gaussian integral. Thus this condition removes exactly the radial line $\mathbb Q\rho^{14}$.

Therefore
$$
\operatorname{rank}
\left(
\operatorname{div}:\mathcal T_{29}\to
\mathbb Q[V]^{S_5}_{28}
\right)
=
59.
$$

Step 6: Compute the simultaneous kernel

The space in the problem consists exactly of the tangent equivariant fields whose divergence vanishes. Step 4 gives
$$
\dim\mathcal T_{29}=136,
$$
and Step 5 gives divergence rank $59$. Rank-nullity yields
$$
\dim_{\mathbb Q}\mathcal E
=
136-59
=
77.
$$

Final Answer: $\boxed{77}$

---

## Answer

$77$

---

## Classification

**Problem Type:** Exact computation

**Answer Type:** Exact scalar

---

## Solution Concepts

- finite matrix groups
- Molien series
- invariant polynomial rings
- Fischer decomposition
- equivariant differential operators
