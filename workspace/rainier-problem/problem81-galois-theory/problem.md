# Normalized Math Problem

## LaTeX (Normalized)

Let $n\geq5$ be odd. Let $f\in\mathbb Q[y]$ be monic of degree $n$, and suppose its splitting field $K$ has
$$
\operatorname{Gal}(K/\mathbb Q)\cong S_n.
$$
Write $y_1,\ldots,y_n$ for the roots of $f$ and $\Delta$ for its discriminant. Let $a,c,q\in\mathbb Q^\times$ satisfy
$$
(-1)^n f(-a)=\Delta c^2,
$$
while neither $q$ nor $q\Delta$ is a square in $\mathbb Q$.

Assume there is an odd prime $p$ such that the coefficients of $f$ and the number $a$ are $p$-integral, $p\nmid\Delta$, and
$$
f(y)\equiv(y-r)(y-s)h(y)\pmod p,
$$
where $r,s\in\mathbb F_p$ are distinct, $h$ is irreducible of degree $n-2$, and $a+r$ is a nonsquare in $\mathbb F_p$.

Define
$$
P(x)=f(x^2-a),
\qquad
Q(x)=q^n f\left(\frac{x^2}{q}-a\right),
$$
and let $L$ be the splitting field of $P(x)Q(x)$ over $\mathbb Q$. Choose roots $\alpha_i,\beta_i\in L$ satisfying
$$
\alpha_i^2=a+y_i,
\qquad
\beta_i^2=q(a+y_i)
\qquad(1\leq i\leq n).
$$
For $\sigma\in\operatorname{Gal}(L/K)$, define $u_i(\sigma),v_i(\sigma)\in\mathbb F_2$ by
$$
\sigma(\alpha_i)=(-1)^{u_i(\sigma)}\alpha_i,
\qquad
\sigma(\beta_i)=(-1)^{v_i(\sigma)}\beta_i.
$$
Let
$$
W_n(z)=\sum_{\sigma\in\operatorname{Gal}(L/K)}
z^{\operatorname{wt}(u(\sigma))+\operatorname{wt}(v(\sigma))},
$$
where $\operatorname{wt}$ denotes Hamming weight. Determine $W_n(z)$ explicitly as a polynomial in $z$, in terms of $n$.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Abstract Algebra |
| **Sub-domain** | Galois theory |
| **Problem Type** | Symbolic derivation |
| **Answer Type** | Polynomial or rational function |

---

## Domain Explanation

The primary machinery is Galois theory: the problem requires determining the Kummer relations among two coupled families of radicals inside an $S_n$-splitting field and translating them into its sign-change subgroup. Binary weight enumeration is the strongest competing combinatorial viewpoint, but it is only the final encoding step after the Galois and local-field obstructions determine the allowable sign vectors.
