# Normalized Math Problem

## LaTeX (Normalized)

Let $p\geq 11$ be a prime satisfying $p\equiv 3\pmod 4$, and let
$$
\chi(a)=\left(\frac{a}{p}\right),
\qquad
\chi(0)=0,
$$
be the quadratic character of $\mathbb F_p$. Identify the elements of $\mathbb F_p$ with their ordered representatives $0,1,\ldots,p-1$ whenever inequalities are used.

For pairwise distinct $0,1,t,u,v\in\mathbb F_p$, put
$$
V_{t,u,v}=\mathbb F_p\setminus\{0,1,t,u,v\}.
$$
For a perfect matching $M$ of $V_{t,u,v}$, write every matched pair as $a<b$. Let $\operatorname{cr}(M)$ be the number of unordered pairs of matched edges $\{a,b\}$ and $\{c,d\}$ whose endpoints interlace, meaning
$$
a<c<b<d
\qquad\text{or}\qquad
c<a<d<b.
$$
Define the signed matching sum
$$
S_{t,u,v}
=
\sum_M
(-1)^{\operatorname{cr}(M)}
\prod_{\{a,b\}\in M,\ a<b}\chi(b-a),
$$
where the sum is over all perfect matchings of $V_{t,u,v}$, and set
$$
c_{t,u,v}
=
\frac{S_{t,u,v}^{2}}{p^{(p-11)/2}}.
$$
For the stated primes this quotient is an integer. If $0,1,t,u,v$ are not pairwise distinct, set $c_{t,u,v}=0$.

Let $m=(p-1)/2$ and define
$$
D_p(X,Y)=Y^m-X^m-(Y-X)^m
\in\mathbb F_p[X,Y].
$$
There is a unique polynomial $R_p\in\mathbb F_p[X,Y,Z]$ satisfying
$$
\deg_X R_p,\deg_Y R_p,\deg_Z R_p\leq p-1
$$
and
$$
R_p(t,u,v)=c_{t,u,v}\pmod p
\qquad
\text{for every }(t,u,v)\in\mathbb F_p^3.
$$
Determine $R_p(X,Y,Z)$ explicitly.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Number Theory |
| **Sub-domain** | Quadratic residues and reciprocity |
| **Problem Type** | Transformation between representations |
| **Answer Type** | Polynomial or rational function |

---

## Domain Explanation

This problem involves reconstructing a finite field polynomial from sums weighted by a quadratic character, which are part of Number Theory and Quadratic residues and reciprocity. The problem also involves perfect matchings, skew symmetric matrices, and polynomial interpolation, which are part of Discrete Mathematics and Combinatorics. However, the combinatorial machinery only reorganizes the character correlations, while the requested polynomial is determined by the arithmetic of quadratic residues, so Number Theory is the more appropriate primary classification.
