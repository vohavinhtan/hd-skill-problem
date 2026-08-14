## Steps

Step 1: Identify the antipodal pairs

Put $\mathbf 1=(1,\ldots,1)$. Every nonzero value of $d_n$ lies between $n$ and $2n$, so the triangle inequality follows from
$$
d_n(x,z)\leq 2n\leq d_n(x,y)+d_n(y,z)
$$
whenever $x,y,z$ are distinct. If two vertices coincide, the triangle inequality reduces either to equality or to nonnegativity. So $d_n$ is a metric.

For fixed $x$, the equation $d_n(x,y)=2n$ holds exactly when $y=x+\mathbf1$. Indeed, the third branch is smaller than $2n$, while $r(x,y)=0$ for distinct $x,y$ forces $\operatorname{wt}(x+y)=n$. Every isometry therefore satisfies
$$
F(x+\mathbf1)=F(x)+\mathbf1.
$$
It must permute the pairs $\{x,x+\mathbf1\}$.

Step 2: Pass to the folded quotient

Let
$$
Q_n=X_n/\langle\mathbf1\rangle,
\qquad
\delta([x],[y])=r(x,y).
$$
The function $\delta$ is well defined because replacing either representative by its complement changes $\operatorname{wt}(x+y)$ to $n-\operatorname{wt}(x+y)$. For distinct classes,
$$
d_n(x,y)=n+\delta([x],[y])-2.
$$
An isometry of $X_n$ therefore induces an isometry of $(Q_n,\delta)$. Conversely, any quotient isometry can be lifted, with either ordering chosen independently in every two-point fiber, because complementing one representative leaves $\delta$ unchanged.

Fix $s(C)$ as the unique member of $C\in Q_n$ whose last coordinate is $0$. Every $x\in X_n$ then has the unique expression
$$
x=s(C)+t\mathbf1,\qquad C\in Q_n,\quad t\in\mathbb F_2.
$$

Step 3: Resolve the exceptional value $n=6$

Every nonzero class in $Q_6$ has a representative of weight $2$: weights $4$ and $6$ become weights $2$ and $0$ after complementation. So any two distinct classes have $\delta$-distance $2$, and $(Q_6,\delta)$ is the equilateral metric on $|Q_6|=2^{6-2}=16$ points. Its isometry group is the full symmetric group on $Q_6$.

The lifts are exactly
$$
F_{\tau,\eta}\bigl(s(C)+t\mathbf1\bigr)
=s\bigl(\tau(C)\bigr)+\bigl(t+\eta(C)\bigr)\mathbf1,
$$
where $\tau\in\operatorname{Sym}(Q_6)$ and $\eta:Q_6\to\mathbb F_2$ are arbitrary. The parameters are unique because the induced quotient permutation determines $\tau$, and the image of $s(C)$ then determines $\eta(C)$.

Step 4: Classify the quotient isometries for $n\geq8$

Translations by $Q_n$ preserve $\delta$. After one translation, a quotient isometry may be assumed to fix $[0]$. Its sphere of radius $2$ consists of
$$
p_{ij}=[e_i+e_j],\qquad 1\leq i<j\leq n.
$$
Two such points have distance $2$ exactly when their index pairs meet in one element; disjoint pairs have distance $4$. The resulting graph is the line graph of $K_n$.

Its cliques of size $n-1$ are precisely the stars $\{p_{ij}:j\neq i\}$. To see the alternative, take two incident edges $\{a,b\}$ and $\{a,c\}$ in a clique. An edge meeting both but missing $a$ must be $\{b,c\}$, so a clique without a common endpoint has size at most $3$. Since $n\geq8$, an automorphism must permute the stars. Their pairwise intersections recover every $p_{ij}$, so the action on this sphere is induced by a unique coordinate permutation $\pi\in S_n$.

Compose with $\pi^{-1}$ and suppose every $p_{ij}$ is fixed. Represent $C\in Q_n$ by an even set $A$ of size $k\leq n/2$. The identity
$$
\left|A\triangle\{i,j\}\right|
=k+2-2\left|A\cap\{i,j\}\right|
$$
gives, when $0<k<n/2$,
$$
\delta(C,p_{ij})=k-2
\quad\Longleftrightarrow\quad
\{i,j\}\subseteq A.
$$
The pairs on the right recover $A$. If $k=n/2$, which can occur only when $4\mid n$, then
$$
\delta(C,p_{ij})=k-2
\quad\Longleftrightarrow\quad
\{i,j\}\subseteq A\text{ or }\{i,j\}\subseteq A^c.
$$
These pairs recover the unordered bipartition $\{A,A^c\}$ and recover $C$. The class $[0]$ was already fixed. So a quotient isometry fixing $[0]$ and all $p_{ij}$ is the identity, and
$$
\operatorname{Iso}(Q_n,\delta)=Q_n\rtimes S_n
\qquad(n\geq8).
$$

Step 5: Lift the quotient actions and state the normal forms

For even $n\geq8$, choose the unique translation representative $a\in X_n$ with $a_n=0$. Every lift is then
$$
F_{a,\pi,\varepsilon}(x)
=a+\pi(x)+\varepsilon([x])\mathbf1,
$$
where $\pi\in S_n$ and $\varepsilon:Q_n\to\mathbb F_2$ are arbitrary. These parameters are unique: the quotient action determines $[a]$ and $\pi$, the condition $a_n=0$ determines $a$, and each fiber image determines $\varepsilon([x])$.

For $n=6$ these lifts are the maps $L_{\tau,\eta}$ with $(\tau,\eta)\in A_6\times E_6$. For even $n\geq8$, the affine quotient map $\sigma:[x]\mapsto[a+\pi(x)]$ gives $L_{\sigma,\varepsilon}$ with $(\sigma,\varepsilon)\in A_n\times E_n$. Substitution into $d_n$ shows that every displayed map preserves antipodal distance and all cross-fiber distances. That gives sufficiency; the quotient reconstruction gives necessity. Uniqueness also gives the counts $2^{16}16!$ for $n=6$ and $2^{2^{n-2}}2^{n-2}n!$ for even $n\geq8$. For boundary checks, an arbitrary transposition of two quotient classes is valid for $n=6$, but for $n\geq8$ it fails unless it preserves the star incidence. Swapping only one antipodal fiber is valid in both regimes and is captured by a function supported on that fiber.

Final Answer: $\boxed{\{L_{\sigma,\varepsilon}:(\sigma,\varepsilon)\in A_n\times E_n\}}$

---

## Answer

$\{L_{\sigma,\varepsilon}:(\sigma,\varepsilon)\in A_n\times E_n\}$

---

## Classification

**Problem Type:** Exhaustive enumeration

**Answer Type:** Set or multiset of objects

---

## Solution Concepts

- quotient metric spaces
- antipodal fibers
- line graphs and star reconstruction
- distance-profile reconstruction
