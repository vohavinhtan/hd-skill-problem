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
| **Sub-domain** | Enumerative Combinatorics |
| **Problem Type** | Exact computation |
| **Answer Type** | Exact scalar |

---

## Domain Explanation

This problem involves counting labeled plane binary forests and cyclic symmetry classes,
which are part of the Discrete Mathematics and Combinatorics domain and its Enumerative Combinatorics sub-domain.
The problem also involves linear lambda terms and beta-eta-long normal forms,
which are part of the Logic, Set Theory, and Foundations domain and its Type theory and formal systems sub-domain.
However, the typed calculus supplies the objects being counted, while the decisive work is the enumeration of forest shapes and symmetry-fixed configurations.
