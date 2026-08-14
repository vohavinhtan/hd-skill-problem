# Normalized Math Problem

## LaTeX (Normalized)

Let $n\geq 6$ be an even integer, and let $\mathbb F_2=\{0,1\}$. For
$x=(x_1,\ldots,x_n)\in\mathbb F_2^n$, write
$$
\operatorname{wt}(x)=\bigl|\{i:x_i=1\}\bigr|,
$$
and set
$$
X_n=\left\{x\in\mathbb F_2^n:\operatorname{wt}(x)\equiv 0\pmod{2}\right\}.
$$
For $x,y\in X_n$, put
$$
r(x,y)=\min\left\{\operatorname{wt}(x+y),\,n-\operatorname{wt}(x+y)\right\},
$$
where addition is coordinatewise modulo $2$, and define
$$
d_n(x,y)=
\begin{cases}
0, & x=y,\\
2n, & x\neq y\text{ and }r(x,y)=0,\\
n+r(x,y)-2, & r(x,y)>0.
\end{cases}
$$

Put $\mathbf1=(1,\ldots,1)$ and
$$
Q_n=X_n/\langle\mathbf1\rangle,
\qquad
[x]=\{x,x+\mathbf1\}.
$$
For $C\in Q_n$, let $s(C)$ be the unique member of $C$ whose last
coordinate is $0$, and set
$$
E_n=\{\varepsilon:Q_n\to\mathbb F_2\}.
$$
Define
$$
A_n=
\begin{cases}
\operatorname{Sym}(Q_6), & n=6,\\
\left\{[x]\mapsto
\left[a+\left(x_{\pi^{-1}(1)},\ldots,x_{\pi^{-1}(n)}\right)\right]:
a\in X_n,\ a_n=0,\ \pi\in S_n\right\}, & n\geq8.
\end{cases}
$$
For $\sigma\in A_n$ and $\varepsilon\in E_n$, define
$L_{\sigma,\varepsilon}:X_n\to X_n$ by
$$
L_{\sigma,\varepsilon}\bigl(s(C)+t\mathbf1\bigr)
=s\bigl(\sigma(C)\bigr)+\bigl(t+\varepsilon(C)\bigr)\mathbf1
\qquad(C\in Q_n,\ t\in\mathbb F_2).
$$

Determine the complete set $\operatorname{Iso}(X_n,d_n)$ of all bijections
$F:X_n\to X_n$ such that
$$
d_n\bigl(F(x),F(y)\bigr)=d_n(x,y)
\qquad (x,y\in X_n).
$$
Your answer must give an explicit normal form that generates every such $F$
for every allowed $n$, and it must specify exactly which choices of parameters
give the maps; naming an abstract group alone is not sufficient.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Analysis |
| **Sub-domain** | Metric spaces |
| **Problem Type** | Exhaustive enumeration |
| **Answer Type** | Set or multiset of objects |

---

## Domain Explanation

This problem involves finite metric spaces and distance preserving bijections, which are part of Analysis and Metric spaces.
The problem also involves binary vectors, quotient sets, and coordinate permutations, which are part of Discrete Mathematics and Combinatorics.
However, the combinatorial structures only support the classification of isometries, so Analysis and Metric spaces is the more appropriate primary classification.
