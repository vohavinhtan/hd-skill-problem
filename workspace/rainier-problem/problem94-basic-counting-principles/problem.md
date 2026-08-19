# Normalized Math Problem

## LaTeX (Normalized)

Fix an integer $r\geq2$ and put
$$
n=2^r.
$$

Work in the simply typed linear lambda calculus with exchange, no constants, atomic types
$$
p,\qquad q_i\quad(i\in\mathbb Z/n\mathbb Z),
$$
linear implication $\multimap$, and tensor $\otimes$. There is no weakening or contraction: every bound variable is used exactly once, while applications and tensor introductions split their contexts disjointly.

Consider the type whose curried arguments, in order, are
$$
b_i:p\multimap p\multimap p,
\qquad
h_i:p\multimap q_i,
\qquad
x_i:p,
\qquad
y_i:p
$$
for $i=0,\ldots,n-1$, followed by the result type
$$
q_0\otimes q_1\otimes\cdots\otimes q_{n-1}.
$$
Denote this type by $\Theta_n$.

Let $\mathcal N_n$ be the set of closed beta-eta-long normal inhabitants of $\Theta_n$, identified up to alpha-conversion.

The cyclic group of order $n$ acts on $\mathcal N_n$ by simultaneously adding $1$ modulo $n$ to every subscript of
$$
b_i,\ h_i,\ x_i,\ y_i,\ q_i,
$$
and then restoring the binders and tensor components to the displayed index order.

Determine the number of cyclic orbits of size exactly $n$ in $\mathcal N_n$.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Discrete Mathematics and Combinatorics |
| **Sub-domain** | Basic counting principles |
| **Problem Type** | Exact computation |
| **Answer Type** | Exact scalar |

---

## Domain Explanation

This problem reduces closed linear lambda terms to labeled plane binary forests and then counts those forests and their symmetry-fixed configurations using direct counting, the reflection principle, and cyclic orbit counting. These are discrete counting arguments, so the best available taxonomy fit is Discrete Mathematics and Combinatorics / Basic counting principles. The typed calculus supplies the objects being counted, while the decisive work is combinatorial enumeration and symmetry counting.
