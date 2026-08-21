## Steps

Step 1: Recover the hidden symmetric generators

Set
$$
p_1=2h_1-h_2,\qquad
p_2=2h_2-h_3,\qquad
p_3=-h_1-h_2+h_3.
$$
The coefficient matrix
$$
\begin{pmatrix}
2&-1&0\\
0&2&-1\\
-1&-1&1
\end{pmatrix}
$$
has determinant $1$, so $(h_1,h_2,h_3)=(p_1,p_2,p_3)$ as ideals. Expanding the three combinations gives
$$
p_1=2x+2y+2z-14,
$$
$$
p_2=2x^2+2xy+2xz+2y^2+2yz+2z^2-84,
$$
and
$$
p_3=
2x^3+3x^2y+3x^2z+3xy^2+3xz^2
+2y^3+3y^2z+3yz^2+2z^3-584.
$$
Put
$$
u=x+y,\qquad v=y+z,\qquad w=z+x.
$$
Then the displayed polynomials become
$$
p_1=u+v+w-14,
$$
$$
p_2=u^2+v^2+w^2-84,
$$
$$
p_3=u^3+v^3+w^3-584.
$$

Step 2: Convert power sums to elementary symmetric equations

Let
$$
S_1=u+v+w,\qquad
S_2=u^2+v^2+w^2,\qquad
S_3=u^3+v^3+w^3,
$$
and let $e_1,e_2,e_3$ be the elementary symmetric polynomials in $u,v,w$. Newton's identities give
$$
e_1=S_1,
$$
$$
e_2=\frac{S_1^2-S_2}{2},
$$
$$
e_3=\frac{S_1^3-3S_1S_2+2S_3}{6}.
$$
Define
$$
q_1=e_1-14,\qquad q_2=e_2-56,\qquad q_3=e_3-64.
$$
Using $p_1=S_1-14$, $p_2=S_2-84$, and $p_3=S_3-584$ gives
$$
q_1=p_1,
$$
$$
q_2=\frac{(S_1+14)p_1-p_2}{2},
$$
$$
q_3=\frac{(S_1^2+14S_1-56)p_1-3S_1p_2+2p_3}{6}.
$$
Conversely,
$$
p_2=(S_1+14)q_1-2q_2,
$$
$$
p_3=(S_1^2+14S_1+28)q_1-3S_1q_2+3q_3.
$$
Therefore
$$
I=(q_1,q_2,q_3).
$$

Step 3: Rewrite the elementary equations in the original variables

Put
$$
s_1=x+y+z,\qquad s_2=xy+xz+yz,\qquad c=xyz+15.
$$
Since
$$
e_1=u+v+w=2s_1,
$$
we have
$$
q_1=2(s_1-7).
$$
Also
$$
e_2=uv+uw+vw=x^2+y^2+z^2+3s_2=s_1^2+s_2,
$$
so
$$
q_2=(s_1+7)(s_1-7)+(s_2-7).
$$
Finally,
$$
e_3=(x+y)(y+z)(z+x)=s_1s_2-xyz,
$$
which gives
$$
q_3=7(s_1-7)+s_1(s_2-7)-c.
$$
Since $2$ is a unit in $\mathbb Q$, these identities and their reverse substitutions show that
$$
I=(s_1-7,s_2-7,c).
$$

Step 4: Produce a triangular generating system

Define
$$
G_1=x+y+z-7,
$$
$$
G_2=y^2+yz+z^2-7y-7z+7,
$$
$$
G_3=z^3-7z^2+7z+15.
$$
The second generator from Step 3 satisfies
$$
s_2-7=(y+z)G_1-G_2,
$$
so replacing $s_2-7$ by $G_2$ does not change the ideal. The third generator satisfies
$$
G_3=c+zG_2-yzG_1.
$$
Hence
$$
I=(G_1,G_2,G_3).
$$

Step 5: Verify that the generating system is the reduced Gröbner basis

For lexicographic order $x>y>z$,
$$
\operatorname{LM}(G_1)=x,\qquad
\operatorname{LM}(G_2)=y^2,\qquad
\operatorname{LM}(G_3)=z^3.
$$
These leading monomials are pairwise coprime. Buchberger's product criterion therefore makes every pairwise $S$-polynomial reduce to zero, so $G_1,G_2,G_3$ form a Gröbner basis.

All three polynomials are monic. No nonleading monomial of any $G_i$ is divisible by $x$, $y^2$, or $z^3$. Thus the basis is reduced.

Final Answer: $\boxed{\{x+y+z-7,y^2+yz+z^2-7y-7z+7,z^3-7z^2+7z+15\}}$

---

## Answer

$\{x+y+z-7,y^2+yz+z^2-7y-7z+7,z^3-7z^2+7z+15\}$

---

## Classification

**Domain:** Abstract Algebra

**Sub-domain:** Computational algebra

**Problem Type:** Canonicalization or normalization

**Answer Type:** Canonical form

---

## Solution Concepts

- polynomial ideals
- hidden generator transformations
- newton identities
- symmetric polynomials
- reduced groebner bases
