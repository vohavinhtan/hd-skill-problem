## Steps

Step 1: Encode Frobenius conjugates by the modular group algebra

Put
$$
N=p^2
$$
and let
$$
\sigma(x)=x^p
$$
on $E$. Define
$$
A=\mathbb F_p[S]/(S^N-1).
$$
Since the characteristic is $p$,
$$
S^N-1=S^{p^2}-1=(S-1)^{p^2}.
$$
Thus $A$ is a local ring whose maximal ideal is
$$
J=(S-1),
$$
and an element of $A$ is a unit exactly when its augmentation
$$
\varepsilon:A\to\mathbb F_p,
\qquad
S\mapsto1
$$
is nonzero.

By the normal basis theorem there is $\theta\in E$ such that
$$
\theta,\sigma\theta,\ldots,\sigma^{N-1}\theta
$$
is an $\mathbb F_p$-basis of $E$. Hence the map
$$
A\to E,
\qquad
u\mapsto u(\sigma)\theta
$$
is an isomorphism of $A$-modules.

Consequently every $\alpha\in E$ has a unique expression
$$
\alpha=u(\sigma)\theta
$$
with $u\in A$, and $\alpha$ is a normal generator exactly when $u\in A^\times$.

Step 2: Translate the trace conditions into one group-algebra equation

Let the involution on $A$ be
$$
\overline S=S^{-1}.
$$
For $\alpha\in E$, define
$$
H_\alpha(S)
=
\sum_{r=0}^{N-1}
\operatorname{Tr}\left(\alpha\sigma^r(\alpha)\right)S^r.
$$
Trace invariance under Frobenius gives
$$
\operatorname{Tr}\left(\alpha\sigma^r(\alpha)\right)
=
\operatorname{Tr}\left(\alpha\sigma^{-r}(\alpha)\right),
$$
so
$$
\overline{H_\alpha}=H_\alpha.
$$

The required trace pattern is equivalent to
$$
H_\alpha=q,
$$
where
$$
q=5+S+S^{-1}+S^2+S^{-2}.
$$
Its augmentation is
$$
\varepsilon(q)=9\ne0,
$$
so $q$ is a unit of $A$.

The matrix
$$
\left(
\operatorname{Tr}\left(\alpha^{p^i}\alpha^{p^j}\right)
\right)_{i,j}
$$
is the circulant matrix associated with multiplication by $H_\alpha$. Since $q$ is a unit, this matrix is nonsingular. Therefore every $\alpha$ satisfying the required conditions has linearly independent Frobenius conjugates and is a normal generator.

Step 3: Obtain the norm equation governing all solutions

Write
$$
\alpha=u(\sigma)\theta,
\qquad
u=\sum_i u_iS^i.
$$
For the coefficient of $S^r$ in $H_\alpha$,
$$
\operatorname{Tr}\left(\alpha\sigma^r(\alpha)\right)
=
\sum_{i,j}u_i u_j
\operatorname{Tr}\left(
\sigma^i(\theta)\sigma^{r+j}(\theta)
\right).
$$
Applying $\sigma^{-i}$ inside the trace gives
$$
\operatorname{Tr}\left(\alpha\sigma^r(\alpha)\right)
=
\sum_{i,j}u_i u_j
\operatorname{Tr}\left(
\theta\sigma^{r+j-i}(\theta)
\right).
$$
This is exactly the coefficient of $S^r$ in
$$
u\overline u\,H_\theta.
$$
Hence
$$
H_\alpha=u\overline u\,H_\theta.
$$

Because the trace pairing on the finite separable extension $E/\mathbb F_p$ is nondegenerate and the conjugates of $\theta$ form a basis, $H_\theta$ is a unit.

Also
$$
\varepsilon(H_\theta)
=
\sum_r\operatorname{Tr}\left(\theta\sigma^r(\theta)\right)
=
\operatorname{Tr}(\theta)^2.
$$
The trace of $\theta$ is nonzero, since otherwise the sum of its $N$ conjugates would give a nontrivial linear relation among a normal basis.

Thus the required condition becomes
$$
u\overline u=qH_\theta^{-1}.
$$

Step 4: Prove that the norm equation is solvable

We use the following property of $A$. If
$$
h\in A^\times,
\qquad
\overline h=h,
$$
and $\varepsilon(h)$ is a square in $\mathbb F_p^\times$, then
$$
h=v\overline v
$$
for some $v\in A^\times$.

Choose $a\in\mathbb F_p^\times$ with
$$
a^2=\varepsilon(h).
$$
Then
$$
c=a^{-2}h
$$
lies in $1+J$ and satisfies $\overline c=c$.

The group $1+J$ is a finite abelian $p$-group. Since $p$ is odd, squaring is a bijection on this group. Let $w\in1+J$ be the unique element with
$$
w^2=c.
$$
Because
$$
\overline w^2=\overline c=c=w^2,
$$
uniqueness gives
$$
\overline w=w.
$$
Therefore
$$
(aw)\overline{(aw)}
=a^2w^2=h.
$$

Apply this to
$$
h=qH_\theta^{-1}.
$$
By Step 3,
$$
\varepsilon(h)
=
\frac{9}{\operatorname{Tr}(\theta)^2}
=
\left(\frac3{\operatorname{Tr}(\theta)}\right)^2.
$$
Hence the norm equation has at least one solution.

Step 5: Count the kernel of the norm map

Consider
$$
\nu:A^\times\to A^\times,
\qquad
\nu(u)=u\overline u.
$$
Every fiber of $\nu$ has size
$$
|\ker\nu|.
$$
By Step 4, its image consists exactly of the involution-fixed units whose augmentation is a nonzero square.

The fixed subspace
$$
A^+=\{a\in A:\overline a=a\}
$$
has basis
$$
1,\quad S^r+S^{-r}
\quad
\left(1\leq r\leq\frac{N-1}{2}\right),
$$
so
$$
\dim_{\mathbb F_p}A^+=\frac{N+1}{2}.
$$
The kernel of augmentation on $A^+$ therefore has dimension
$$
\frac{N-1}{2}.
$$
For each prescribed nonzero augmentation there are
$$
p^{(N-1)/2}
$$
fixed elements. Exactly
$$
\frac{p-1}{2}
$$
nonzero elements of $\mathbb F_p$ are squares. Hence
$$
|\operatorname{im}\nu|
=
\frac{p-1}{2}p^{(N-1)/2}.
$$

Since $A$ is local with maximal ideal of dimension $N-1$,
$$
|A^\times|=(p-1)p^{N-1}.
$$
Therefore
$$
|\ker\nu|
=
\frac{(p-1)p^{N-1}}
{\frac{p-1}{2}p^{(N-1)/2}}
=
2p^{(N-1)/2}.
$$

The norm equation from Step 3 is solvable by Step 4, so its solution set is one coset of this kernel. Each solution $u$ gives one distinct $\alpha$. With $N=p^2$,
$$
N_p=2p^{(p^2-1)/2}.
$$

Final Answer: $\boxed{2p^{(p^2-1)/2}}$

---

## Answer

$2p^{(p^2-1)/2}$

---

## Classification

**Problem Type:** Exact computation

**Answer Type:** Exact scalar

---

## Solution Concepts

- normal bases
- modular group algebras
- trace pairings
- involution norm equations
- finite local rings
