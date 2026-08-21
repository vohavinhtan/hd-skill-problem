## Steps

Step 1: Recover the hidden generator system

Define
$$
p_3=h_3-zh_1,
$$
$$
p_2=h_2-yp_3,
$$
$$
p_1=h_1-xp_2.
$$
Expanding these combinations gives
$$
p_1=x+y^2+y+2z-7,
$$
$$
p_2=x^2+2xy^2+y^4+y^2+2yz+2z^2-35,
$$
and
$$
p_3=x^3+3x^2y^2+3xy^4+y^6+y^3+3y^2z+3yz^2+2z^3-151.
$$
Thus $(p_1,p_2,p_3)\subseteq I$. Conversely,
$$
h_1=p_1+xp_2,
$$
$$
h_2=p_2+yp_3,
$$
$$
h_3=p_3+zh_1,
$$
so $I=(p_1,p_2,p_3)$.

Step 2: Identify the nonlinear coordinates

Put
$$
u=x+y^2,\qquad v=y+z,\qquad w=z.
$$
Then
$$
p_1=u+v+w-7,
$$
$$
p_2=u^2+v^2+w^2-35,
$$
$$
p_3=u^3+v^3+w^3-151.
$$
Let
$$
S_1=u+v+w,\qquad S_2=u^2+v^2+w^2,\qquad S_3=u^3+v^3+w^3.
$$
The three generators are therefore the first three power-sum conditions
$$
S_1=7,\qquad S_2=35,\qquad S_3=151.
$$

Step 3: Convert the power sums to elementary symmetric equations

Let $e_1,e_2,e_3$ be the elementary symmetric polynomials in $u,v,w$, and define
$$
q_1=e_1-7,\qquad q_2=e_2-7,\qquad q_3=e_3+15.
$$
Newton's identities give
$$
e_1=S_1,\qquad e_2=\frac{S_1^2-S_2}{2},\qquad e_3=\frac{S_1^3-3S_1S_2+2S_3}{6}.
$$
Using $p_1=S_1-7$, $p_2=S_2-35$, and $p_3=S_3-151$ gives
$$
q_1=p_1,
$$
$$
2q_2=(S_1+7)p_1-p_2,
$$
$$
6q_3=(S_1^2+7S_1-56)p_1-3S_1p_2+2p_3.
$$
Conversely,
$$
p_2=(S_1+7)q_1-2q_2,
$$
$$
p_3=(S_1^2+7S_1+28)q_1-3S_1q_2+3q_3.
$$
Hence
$$
I=(q_1,q_2,q_3).
$$

Step 4: Produce a triangular generating system in $x,y,z$

The equations from Step 3 are
$$
u+v+w=7,\qquad uv+uw+vw=7,\qquad uvw=-15.
$$
Eliminate $u$ from the first two. Since $u=7-v-w$ modulo $q_1$,
$$
(v+w)q_1-q_2=v^2+vw+w^2-7v-7w+7.
$$
Substituting $v=y+z$ and $w=z$ gives
$$
G_2=y^2+3yz+3z^2-7y-14z+7.
$$
Also $u,v,w$ are roots of
$$
T^3-7T^2+7T+15,
$$
so
$$
G_3=z^3-7z^2+7z+15.
$$
More explicitly,
$$
G_3=w^2q_1-wq_2+q_3,
$$
so $G_3\in I$ without any root-counting argument.

The first equation in the original variables is
$$
q_1=x+y^2+y+2z-7.
$$
Reducing it by $G_2$ gives
$$
G_1=q_1-G_2=x-3yz-3z^2+8y+16z-14.
$$
The identities
$$
q_1=G_1+G_2,
$$
$$
q_2=(v+w)q_1-G_2,
$$
and
$$
q_3=G_3-w^2q_1+wq_2
$$
show that
$$
I=(G_1,G_2,G_3).
$$

Step 5: Verify the reduced Gröbner basis

For lexicographic order $x>y>z$,
$$
\operatorname{LM}(G_1)=x,\qquad \operatorname{LM}(G_2)=y^2,\qquad \operatorname{LM}(G_3)=z^3.
$$
These leading monomials are pairwise coprime, so Buchberger's product criterion makes every pairwise $S$-polynomial reduce to zero. Hence $G_1,G_2,G_3$ form a Gröbner basis.

All three are monic, and no nonleading monomial of any $G_i$ is divisible by $x$, $y^2$, or $z^3$. The basis is therefore reduced.

Final Answer: $\boxed{\{x-3yz-3z^2+8y+16z-14,y^2+3yz+3z^2-7y-14z+7,z^3-7z^2+7z+15\}}$

---

## Answer

$\{x-3yz-3z^2+8y+16z-14,y^2+3yz+3z^2-7y-14z+7,z^3-7z^2+7z+15\}$

---

## Classification

**Domain:** Abstract Algebra

**Sub-domain:** Computational algebra

**Problem Type:** Canonicalization or normalization

**Answer Type:** Canonical form

---

## Solution Concepts

- polynomial ideals
- polynomial unimodular transformations
- triangular coordinate changes
- newton identities
- reduced groebner bases
