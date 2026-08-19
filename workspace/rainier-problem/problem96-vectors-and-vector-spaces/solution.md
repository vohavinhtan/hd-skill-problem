## Steps

Step 1: Encode the two linear maps in one ring

Introduce
$$
T=S[\beta]/(\beta^2-\alpha^2)
$$
and identify the $\mathbb F_p$-vector space $V=S^2$ with $T$ by
$$
(q,z)\longmapsto q+z\beta.
$$
Multiplication by $\beta$ sends
$$
q+z\beta\longmapsto \alpha^2z+q\beta,
$$
so $\Sigma$ becomes multiplication by $\beta$.

Define an $\mathbb F_p$-linear map $D:T\to T$ on the generators by
$$
D(\alpha)=-\beta,\qquad D(\beta)=-\alpha.
$$
It respects $\beta^2-\alpha^2$ because
$$
D(\beta^2-\alpha^2)=2\beta(-\alpha)-2\alpha(-\beta)=0.
$$
It also respects $\alpha^N=0$ because
$$
D(\alpha^N)=-N\alpha^{N-1}\beta=0
$$
in characteristic $p$, as $N=pn$. Therefore $D$ is a derivation of $T$. For $q,z\in S$,
$$
D(q+z\beta)=-q'\beta-z'\beta^2-\alpha z=-\alpha z-\alpha^2z'-q'\beta.
$$
Under this identification, $\Delta$ is $D$.

Step 2: Recover the hidden multiplication forced by invariance

Let $M_\beta$ denote multiplication by $\beta$. A subspace $W\leq V$ is invariant under $\Sigma$ and $\Delta$ exactly when its image $K\leq T$ is stable under $M_\beta$ and $D$. Since $K$ is an $\mathbb F_p$-subspace, it is also stable under their commutator.

For every $v\in T$,
$$
D(\beta v)-\beta D(v)=D(\beta)v=-\alpha v.
$$
Therefore
$$
[D,M_\beta]=-M_\alpha.
$$
So $K$ is stable under multiplication by $\alpha$. It is then stable under every element of $S=\mathbb F_p[\alpha]/(\alpha^N)$, and stability under $M_\beta$ makes it stable under every element of
$$
T=S[\beta]/(\beta^2-\alpha^2).
$$
Therefore $K$ is an ideal of $T$. Its stability under $\Delta$ is exactly
$$
D(K)\subseteq K.
$$
Conversely, every $D$-stable ideal of $T$ is stable under $M_\beta$ and $D$, so it gives a common invariant subspace. Therefore $C_n(p)$ is the number of $D$-stable ideals of $T$.

Step 3: Split the ring into two nilpotent branches

Put
$$
x=\beta-\alpha,\qquad y=\beta+\alpha.
$$
Since $p$ is odd, this change of generators is invertible. The relation $\beta^2=\alpha^2$ gives
$$
xy=0,
$$
and
$$
\alpha=\frac{y-x}{2}.
$$
Because every mixed monomial contains $xy$, the relation $\alpha^N=0$ becomes
$$
y^N+(-1)^Nx^N=0.
$$
Therefore
$$
T\cong\mathbb F_p[x,y]/\left(xy,\,y^N+(-1)^Nx^N\right).
$$

Set
$$
s=x^N=-(-1)^Ny^N.
$$
The displayed presentation has basis
$$
1,x,\ldots,x^N,y,\ldots,y^{N-1},
$$
so $s\neq0$. Multiplying the defining relation by $x$ and by $y$ gives
$$
x^{N+1}=y^{N+1}=0,
$$
and therefore $xs=ys=0$.

Every nonzero proper ideal of $T$ contains $s$. A proper ideal contains no element with nonzero constant term, since such an element is a unit. Take a nonzero element of the ideal. If it has an $x$-term of least degree $a<N$, multiplying by $x^{N-a}$ kills all $y$-terms and all higher $x$-terms and leaves a nonzero multiple of $s$. The same argument applies to a least $y$-term of degree below $N$. If neither occurs, the element is already a nonzero multiple of $s$.

The derivation satisfies
$$
D(x)=x,\qquad D(y)=-y,\qquad D(s)=Ns=0.
$$
Therefore $D$ descends to
$$
B=T/(s)\cong\mathbb F_p[x,y]/(xy,x^N,y^N).
$$
Every nonzero ideal of $T$ contains $(s)$, while $(s)$ corresponds to the zero ideal of $B$. The $D$-stable ideals of $T$ are therefore the zero ideal of $T$ together with the $D$-stable ideals of $B$.

Step 4: Classify the ideals of the quotient and impose the derivation

For $1\leq a,b\leq N$, set
$$
X_a=\operatorname{span}_{\mathbb F_p}\{x^a,\ldots,x^{N-1}\},
\qquad
Y_b=\operatorname{span}_{\mathbb F_p}\{y^b,\ldots,y^{N-1}\},
$$
with $X_N=Y_N=0$.

Let $J$ be a proper ideal of $B$. Its projections to the $x$- and $y$-branches are $X_a$ and $Y_b$ for some $a,b$. If
$$
J\cap X_1=X_c,\qquad J\cap Y_1=Y_d,
$$
then multiplying elements of $J$ by $x$ and $y$ gives
$$
X_{a+1}\subseteq X_c\subseteq X_a,\qquad
Y_{b+1}\subseteq Y_d\subseteq Y_b.
$$
Therefore $c\in\{a,a+1\}$ and $d\in\{b,b+1\}$.

The coordinate projections induce maps from
$$
J/\bigl((J\cap X_1)\oplus(J\cap Y_1)\bigr)
$$
onto both $X_a/X_c$ and $Y_b/Y_d$. Each induced map is injective because its kernel is the corresponding branch intersection. The two branch quotients are therefore isomorphic.

If their dimension is zero, then
$$
J=X_a\oplus Y_b.
$$
These give $N^2$ monomial ideals, including the zero ideal.

If their dimension is one, then $a,b\leq N-1$ and the image is the graph of a unique nonzero scalar, so
$$
J=\mathbb F_p(x^a+\lambda y^b)+X_{a+1}+Y_{b+1},
$$
where $\lambda\in\mathbb F_p^\times$. These are all remaining proper ideals.

Every monomial ideal is $D$-stable because $D(x^j)=jx^j$ and $D(y^j)=-jy^j$. For a mixed ideal,
$$
D(x^a+\lambda y^b)=a x^a-b\lambda y^b.
$$
Modulo $X_{a+1}\oplus Y_{b+1}$, this lies in the line spanned by $x^a+\lambda y^b$ exactly when
$$
a\equiv-b\pmod p.
$$

Step 5: Count the admissible mixed ideals

Because $N=pn$, among
$$
1,2,\ldots,N-1
$$
there are $n-1$ multiples of $p$ and exactly $n$ integers in each nonzero residue class modulo $p$.

Let $Q$ be the number of ordered pairs $(a,b)$ in this range satisfying $a+b\equiv0\pmod p$. The residue-zero pairs contribute
$$
(n-1)^2,
$$
and the $p-1$ nonzero residue classes contribute
$$
(p-1)n^2.
$$
Therefore
$$
Q=(n-1)^2+(p-1)n^2=pn^2-2n+1.
$$

For each admissible pair there are $p-1$ choices of $\lambda$. The $D$-stable ideals of $B$ consist of the $N^2$ monomial ideals, the $(p-1)Q$ admissible mixed ideals, and the whole ring. Including the extra zero ideal of $T$ gives
$$
C_n(p)=N^2+(p-1)Q+2.
$$
Substituting $N=pn$ and the value of $Q$ gives
$$
C_n(p)=p^2n^2+(p-1)(pn^2-2n+1)+2=p(2p-1)n^2-2(p-1)n+p+1.
$$

Final Answer: $\boxed{p(2p-1)n^{2}-2(p-1)n+p+1}$

---

## Answer

$p(2p-1)n^{2}-2(p-1)n+p+1$

---

## Classification

**Problem Type:** Exact computation

**Answer Type:** Exact scalar

---

## Solution Concepts

- common invariant subspaces
- operator commutators
- derivations of local rings
- ideal classification
- modular residue counting
