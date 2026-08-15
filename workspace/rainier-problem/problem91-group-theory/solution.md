## Steps

Step 1: Identify the hidden quadratic-field commutator structure

Let
$$
K=\mathbb F_p(\theta),\qquad \theta^2=\nu.
$$
Since $\nu$ is a nonsquare, $K$ is a field with $p^2$ elements. Put $V=K^2$ and define the alternating $\mathbb F_p$-bilinear map
$$
B((u,v),(u',v'))=uv'-u'v\in K.
$$
On $V\times K$ define
$$
(v,c)(w,d)=\left(v+w,c+d+\frac12B(v,w)\right).
$$
Bilinearity of $B$ makes this operation associative, and the commutator is
$$
[(v,c),(w,d)]=(0,B(v,w)).
$$

Under the assignments
$$
x_1\leftrightarrow((1,0),0),\qquad
x_2\leftrightarrow((\theta,0),0),
$$
$$
x_3\leftrightarrow((0,1),0),\qquad
x_4\leftrightarrow((0,\theta),0),
$$
$$
z_1\leftrightarrow(0,1),\qquad
z_2\leftrightarrow(0,\theta),
$$
the four displayed commutators in the problem are exactly multiplication in $K$, including $[x_2,x_4]=z_1^{\nu}$. These six images generate the model, so the assignments induce a surjective homomorphism from the presented group onto it. The model has $p^6$ elements. Conversely, the defining relations collect every word into a product
$$
x_1^{a_1}x_2^{a_2}x_3^{a_3}x_4^{a_4}z_1^{b_1}z_2^{b_2}
$$
with all exponents in $\mathbb F_p$, so the presented group has at most $p^6$ elements. The surjection is therefore an isomorphism, and this model is $G_{p,\nu}$.

The radical of $B$ is zero: if $B((u,v),(u',v'))=0$ for all $(u',v')$, then choosing $(0,1)$ and $(1,0)$ gives $u=v=0$. Therefore
$$
Z(G_{p,\nu})=G_{p,\nu}'=\{0\}\times K.
$$
If
$$
E=\mathbb F_p^2\subset K^2,
$$
then the distinguished subgroup is
$$
H=E\times K.
$$

Step 2: Separate quotient automorphisms from central shears

Every automorphism preserves the center, so it induces maps
$$
A\in\operatorname{GL}_{\mathbb F_p}(V),\qquad
C\in\operatorname{GL}_{\mathbb F_p}(K)
$$
satisfying
$$
C(B(v,w))=B(Av,Aw)
$$
for all $v,w\in V$.

Conversely, if $A,C$ satisfy this identity and
$$
f:V\to K
$$
is any $\mathbb F_p$-linear map, then
$$
\varphi_{A,C,f}(v,c)=(Av,Cc+f(v))
$$
is an automorphism. Substituting the group law shows that the homomorphism condition is exactly the displayed compatibility of $A$ and $C$, together with additivity of $f$. For an arbitrary automorphism, after fixing its induced maps $A$ and $C$, the central coordinate of the image of $(v,0)$ differs from zero by a map $f(v)$; the homomorphism law makes this map additive, hence $\mathbb F_p$-linear. Thus every automorphism has the displayed form.

There are
$$
p^{\dim_{\mathbb F_p}\operatorname{Hom}(V,K)}=p^8
$$
choices for $f$. Since $H=E\times K$, the condition $\varphi(H)=H$ is equivalent to
$$
A(E)=E.
$$
Thus it remains to count the compatible pairs $(A,C)$ with this property.

Step 3: Classify the compatible quotient maps

For nonzero $v,w\in K^2$,
$$
B(v,w)=0
$$
if and only if $v$ and $w$ are linearly dependent over $K$. Because $C$ is invertible, every compatible $A$ therefore maps each one-dimensional $K$-subspace of $K^2$ onto another such subspace.

Let
$$
e_1=(1,0),\qquad e_2=(0,1).
$$
Since
$$
B(Ae_1,Ae_2)=C(B(e_1,e_2))=C(1)\neq0,
$$
the vectors $Ae_1,Ae_2$ are $K$-linearly independent. Choose $M\in\operatorname{GL}_2(K)$ such that
$$
MAe_1=e_1,\qquad MAe_2=e_2.
$$
Set $T=MA$. Then $T$ is $\mathbb F_p$-linear, maps $K$-lines to $K$-lines, and fixes $e_1,e_2$. Hence there are $\mathbb F_p$-linear bijections $r,s:K\to K$ such that
$$
T(a,0)=(r(a),0),\qquad T(0,a)=(0,s(a)),
$$
with $r(1)=s(1)=1$.

The line $K(e_1+e_2)$ is fixed setwise, because its image is a $K$-line containing the fixed vector $e_1+e_2$. Thus
$$
(r(a),s(a))\in K(1,1)
$$
for every $a$, so $r=s=:\sigma$. For any $t\in K$, the line $K(1,t)$ is sent to the line containing
$$
T(1,t)=(1,\sigma(t)),
$$
namely $K(1,\sigma(t))$. Therefore for every $a,t\in K$,
$$
T(a,at)=(\sigma(a),\sigma(at))\in K(1,\sigma(t)),
$$
which forces
$$
\sigma(at)=\sigma(a)\sigma(t).
$$
Thus $\sigma$ is an additive and multiplicative bijection fixing $1$, hence an $\mathbb F_p$-automorphism of $K$.

Because $K=\mathbb F_p(\theta)$ with $\theta^2=\nu$, such an automorphism is determined by sending $\theta$ to one of the two roots $\theta,-\theta$. Hence there are exactly two choices for $\sigma$. Reversing the normalization, every compatible $A$ has the form
$$
A=N\circ\sigma
$$
with $N\in\operatorname{GL}_2(K)$ and one of these two field automorphisms.

For such $A$,
$$
B(Av,Aw)=\det(N)\,\sigma(B(v,w)),
$$
so the compatible map $C$ is uniquely forced to be
$$
C(c)=\det(N)\,\sigma(c).
$$

Step 4: Impose the marked subgroup and count the remaining maps

The two automorphisms of $K$ fix $\mathbb F_p$ pointwise, so
$$
A(E)=E
$$
is equivalent to
$$
N(E)=E.
$$
If $N(E)=E$, then the two columns $Ne_1,Ne_2$ lie in $E=\mathbb F_p^2$. Hence every entry of $N$ lies in $\mathbb F_p$. Conversely every matrix in $\operatorname{GL}_2(\mathbb F_p)$ preserves $E$. Therefore the admissible matrices are exactly
$$
N\in\operatorname{GL}_2(\mathbb F_p).
$$

Their number is
$$
|\operatorname{GL}_2(\mathbb F_p)|=(p^2-1)(p^2-p),
$$
because the first column can be any nonzero vector and the second any vector outside its span. Including the two choices of $\sigma$, the number of compatible pairs $(A,C)$ preserving $E$ is
$$
2(p^2-1)(p^2-p).
$$

Step 5: Multiply by the central-shear factor

Step 2 gives $p^8$ independent central shears for each compatible pair from Step 4. Consequently
$$
|\operatorname{Aut}(G_{p,\nu};H)|
=2p^8(p^2-1)(p^2-p).
$$
The formula contains no dependence on $\nu$; the only property used was that $\theta^2-\nu$ is irreducible over $\mathbb F_p$.

Final Answer: $\boxed{2p^8(p^2-1)(p^2-p)}$

---

## Answer

$2p^8(p^2-1)(p^2-p)$

---

## Classification

**Problem Type:** Exact computation

**Answer Type:** Exact scalar

---

## Solution Concepts

- class-two finite p-groups
- commutator bilinear maps
- semilinear transformations
- finite-field extensions
- automorphism stabilizers
