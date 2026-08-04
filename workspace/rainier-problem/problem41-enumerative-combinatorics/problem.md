# Normalized Math Problem

## LaTeX (Normalized)

Let $n\geq5$. Let $k$ be even with $2\leq k\leq n-3$, and let
$$
2\leq\ell\leq\min\{k,n-k-1\}.
$$
Put $V=\mathbb F_2^n$ with standard basis $e_1,\ldots,e_n$, and define
$$
U_k=\operatorname{span}_{\mathbb F_2}\{e_1,\ldots,e_k\}.
$$
Also put
$$
Y=\operatorname{span}_{\mathbb F_2}\{e_{k+1},\ldots,e_n\},
\qquad
J_\ell=\operatorname{span}_{\mathbb F_2}\{e_{k+1},\ldots,e_{k+\ell}\}.
$$
Thus $V=U_k\oplus Y$.

For a function $f:V\to\mathbb F_2$, define
$$
\operatorname{supp}(f)=\{x\in V:f(x)=1\}.
$$

Let $\mathcal C_{n,k,\ell}$ be the set of all functions $f:V\to\mathbb F_2$ satisfying the following conditions.

First, for every $x\in V$ and every linearly independent $a,b,c\in V$,
$$
\sum_{\varepsilon_1,\varepsilon_2,\varepsilon_3\in\mathbb F_2}
f(x+\varepsilon_1a+\varepsilon_2b+\varepsilon_3c)=0
\qquad\text{in }\mathbb F_2.
$$

Second, for every $y\in Y$, the integer
$$
\Phi_f(y)=2^{-k/2}\sum_{u\in U_k}(-1)^{f(u+y)}
$$
belongs to $\{-1,1\}$. Define the function $\gamma_f:Y\to\mathbb F_2$ uniquely by
$$
(-1)^{\gamma_f(y)}=\Phi_f(y).
$$

Third, for every $a\in J_\ell\setminus\{0\}$, the directional difference of $\gamma_f$ in direction $a$ is balanced on $Y$, meaning
$$
\left|
\{y\in Y:\gamma_f(y+a)+\gamma_f(y)=1\}
\right|
=2^{n-k-1}.
$$

Finally, for $y\in Y$, define $\Lambda_f(y)\in\operatorname{Hom}_{\mathbb F_2}(U_k,\mathbb F_2)$ by
$$
\Lambda_f(y)(u)
=f(u+y)+f(u)+f(y)+f(0)
\qquad(u\in U_k).
$$
Require the following equivalence for every $y\in Y$:
$$
\Lambda_f(y)=0
\quad\Longleftrightarrow\quad
\gamma_f(y+z)+\gamma_f(y)+\gamma_f(z)+\gamma_f(0)=0
\quad\text{for every }z\in Y.
$$

The additive group of $Y$ acts on $\mathcal C_{n,k,\ell}$ by
$$
(t\cdot f)(u+y)=f(u+y+t)
\qquad
(t,y\in Y,\ u\in U_k).
$$
Let $\mathscr O_{n,k,\ell}$ be the set of orbits of this action. Translation preserves support size, so $|\operatorname{supp}(f)|$ has a common value on each orbit $\mathcal O$. Denote this value by $w(\mathcal O)$, and define the orbit support enumerator
$$
\Omega_{n,k,\ell}(T)
=\sum_{\mathcal O\in\mathscr O_{n,k,\ell}}
T^{w(\mathcal O)}
\in\mathbb Z[T].
$$
Determine $\Omega_{n,k,\ell}(T)$ explicitly for every permitted triple $(n,k,\ell)$.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Discrete Mathematics and Combinatorics |
| **Sub-domain** | Enumerative combinatorics |
| **Problem Type** | Exhaustive enumeration |
| **Answer Type** | Polynomial or rational function |

---

## Domain Explanation

This problem involves counting translation orbits of Boolean functions by support size after a local cube condition, a fiber sign transform, and a kernel compatibility constraint, which are part of Discrete Mathematics and Combinatorics and Enumerative combinatorics.
The problem also involves quadratic forms, finite Fourier sums, radicals, and group actions, which are part of Abstract Algebra.
However, those algebraic structures determine the fixed point strata and correction terms, while the requested object enumerates all resulting orbits, so enumerative combinatorics is the more appropriate primary classification.
