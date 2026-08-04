## Steps

Step 1: Encode the signed matching sum as a Pfaffian

Index a $p\times p$ matrix $A$ by $\mathbb F_p$ and set
$$
A_{ab}=\chi(b-a).
$$
Since $p\equiv3\pmod4$, we have $\chi(-1)=-1$, so $A$ is skew-symmetric.

For pairwise distinct $0,1,t,u,v$, let $A[V_{t,u,v}]$ denote the principal submatrix on $V_{t,u,v}$ in the order inherited from $0,1,\ldots,p-1$. The Pfaffian expansion of this matrix is
$$
\operatorname{Pf}(A[V_{t,u,v}])
=
\sum_M
(-1)^{\operatorname{cr}(M)}
\prod_{\{a,b\}\in M,\ a<b}\chi(b-a).
$$
Indeed, the sign of a pairing in the Pfaffian expansion changes once for each interlacing pair of chords. The right-hand side is exactly $S_{t,u,v}$, and therefore
$$
S_{t,u,v}^{2}=\det A[V_{t,u,v}].
$$

Step 2: Reconstruct the inverse and determinant of a nonsingular Paley minor

Let $J$ be the all-ones $p\times p$ matrix. For $a=b$,
$$
(A^2)_{aa}
=
\sum_{c\neq a}\chi(c-a)\chi(a-c)
=-(p-1).
$$
For $a\neq b$, writing $c=a+(b-a)y$ gives
$$
(A^2)_{ab}
=
\sum_{y\in\mathbb F_p}\chi\bigl(y(1-y)\bigr)
=1.
$$
To justify the last value without invoking a character-sum formula, note that for any nonzero $d$,
$$
\sum_z\chi(z^2-d)=-1.
$$
The number of pairs $(z,w)$ satisfying $w^2=z^2-d$ is both
$$
p+\sum_z\chi(z^2-d)
$$
and $p-1$, because $(z-w)(z+w)=d$ is parametrized by the $p-1$ choices of a nonzero first factor. Completing the square and taking $d=1/4$ gives
$$
\sum_y\chi\bigl(y(1-y)\bigr)
=
\chi(-1)\sum_y
\chi\left(\left(y-\frac12\right)^2-\frac14\right)
=(-1)(-1)=1.
$$
Therefore
$$
A^2=J-pI.
$$

Delete the row and column indexed by $0$ from $A$, and call the resulting $(p-1)\times(p-1)$ matrix $B$. Put
$$
\mathbf 1=(1)_{a\in\mathbb F_p^\times},
\qquad
r=(\chi(a))_{a\in\mathbb F_p^\times}.
$$
Summing each row of $B$ and using $A^2=J-pI$ gives
$$
B\mathbf1=r,
\qquad
Br=-\mathbf1,
\qquad
B^2=J-pI+rr^{\mathsf T}.
$$
Define the integer matrix
$$
C=-B+\mathbf1r^{\mathsf T}-r\mathbf1^{\mathsf T}.
$$
Multiplication using the three displayed identities yields
$$
BC
=-B^2+B\mathbf1r^{\mathsf T}-Br\mathbf1^{\mathsf T}
=pI.
$$
This proves that $B$ is invertible and
$$
B^{-1}=\frac{C}{p}.
$$

The vectors $\mathbf1,r$ are independent because $\mathbf1^{\mathsf T}r=0$. Skew-symmetry and the identities for $B\mathbf1$ and $Br$ give
$$
\mathbf1^{\mathsf T}B=-r^{\mathsf T},
\qquad
r^{\mathsf T}B=\mathbf1^{\mathsf T}.
$$
The displayed row identities show that both the plane spanned by $\mathbf1,r$ and its orthogonal complement
$$
W=\{x:\mathbf1^{\mathsf T}x=r^{\mathsf T}x=0\},
$$
are $B$-invariant. On the plane, $B^2=-I$; on the $(p-3)$-dimensional space $W$, the identity for $B^2$ reduces to $B^2=-pI$. It follows that
$$
(\det B)^2=p^{p-3}.
$$
Because a real skew-symmetric matrix of even order has determinant equal to the square of its Pfaffian, $\det B\geq0$. Therefore
$$
\det B=p^{(p-3)/2}.
$$

Step 3: Evaluate the complementary principal minor

Let $I=\{1,t,u,v\}\subset\mathbb F_p^\times$, with the temporary order $(1,t,u,v)$. For any invertible matrix $B$ and any principal index set $I$,
$$
\det B[I^c]=\det B\cdot\det(B^{-1}[I]).
$$
For completeness, permute $I$ to the first coordinates and write $B$ in block form. When the complementary block is invertible, the block determinant formula and the upper-left block of $B^{-1}$ give this identity immediately. The general case follows by a scalar perturbation and polynomial continuity.

Since $B^{-1}=C/p$ and $|I|=4$, the complementary-minor identity gives
$$
S_{t,u,v}^{2}
=
\det B[I^c]
=
p^{(p-3)/2}\,p^{-4}\det C[I].
$$
The $4\times4$ matrix $C[I]$ is skew-symmetric, so
$$
\det C[I]
=
\left(
C_{1t}C_{uv}
-C_{1u}C_{tv}
+C_{1v}C_{tu}
\right)^2.
$$
This gives
$$
c_{t,u,v}
=
\left(
C_{1t}C_{uv}
-C_{1u}C_{tv}
+C_{1v}C_{tu}
\right)^2.
$$
This also proves directly that the quotient defining $c_{t,u,v}$ is an integer. Reordering $1,t,u,v$ may change the Pfaffian sign, but its square is unchanged.

Step 4: Convert the integer square into a polynomial over $\mathbb F_p$

For nonzero indices $a,b$, the definition of $C$ gives
$$
C_{ab}
=-\chi(b-a)+\chi(b)-\chi(a).
$$
Euler's criterion, with both sides equal to $0$ at the origin, states
$$
\chi(x)=x^{(p-1)/2}
\qquad(x\in\mathbb F_p).
$$
Therefore the polynomial defined in the prompt satisfies
$$
D_p(a,b)=C_{ab}
\qquad(a,b\in\mathbb F_p^\times).
$$
Substitution into the Pfaffian expression gives, for every valid triple,
$$
c_{t,u,v}
=
\left(
D_p(1,t)D_p(u,v)
-D_p(1,u)D_p(t,v)
+D_p(1,v)D_p(t,u)
\right)^2.
$$

The same formula also handles every excluded triple. The kernel $D_p$ is alternating,
$$
D_p(Y,X)=-D_p(X,Y),
$$
and satisfies $D_p(X,X)=0$ and $D_p(0,Y)=0$. If one of $t,u,v$ is $0$, the corresponding row of the displayed Pfaffian expression is zero; if two of $1,t,u,v$ coincide, two rows coincide. In either case the expression vanishes, agreeing with the definition $c_{t,u,v}=0$.

Step 5: Verify the canonical degree bounds and uniqueness

Define
$$
F_p(X,Y,Z)
=
\left(
D_p(1,X)D_p(Y,Z)
-D_p(1,Y)D_p(X,Z)
+D_p(1,Z)D_p(X,Y)
\right)^2.
$$
Each variable occurs with degree at most $m=(p-1)/2$ before squaring, so
$$
\deg_XF_p,\deg_YF_p,\deg_ZF_p\leq2m=p-1.
$$
The valid and excluded cases together show that
$$
F_p(t,u,v)=c_{t,u,v}
\qquad
\text{for all }(t,u,v)\in\mathbb F_p^3.
$$

To prove uniqueness, suppose a polynomial $H$ has degree at most $p-1$ in each variable and vanishes on $\mathbb F_p^3$. For each fixed $(u,v)$, the polynomial $H(X,u,v)$ has $p$ roots and degree at most $p-1$, so it is zero. Applying the same argument successively to the coefficient polynomials in $u$ and $v$ gives $H=0$. Therefore $F_p$ is the unique canonical interpolation polynomial requested.

As a small independent check, for $p=11$ and $(t,u,v)=(2,3,5)$, the signed matching sum and the Pfaffian bracket are both $-5$ up to the harmless ordering sign, giving $c_{2,3,5}=25$.

Final Answer: $\boxed{\left(D_p(1,X)D_p(Y,Z)-D_p(1,Y)D_p(X,Z)+D_p(1,Z)D_p(X,Y)\right)^2}$

---

## Answer

$\left(D_p(1,X)D_p(Y,Z)-D_p(1,Y)D_p(X,Z)+D_p(1,Z)D_p(X,Y)\right)^2$

---

## Classification

**Problem Type:** Transformation between representations

**Answer Type:** Polynomial or rational function

---

## Concepts (1–5)

- Pfaffians and crossing-signed perfect matchings
- Quadratic-character correlation sums
- Complementary principal minors
- Euler's criterion
- Finite-field polynomial interpolation
