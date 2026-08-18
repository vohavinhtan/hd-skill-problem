# Normalized Math Problem

## LaTeX (Normalized)

Fix an integer $r\geq2$ and put
$$
n=2^r.
$$
Work in the simply typed linear lambda calculus with exchange, no constants, atomic types
$$
p_i,\qquad i\in\mathbb Z/n\mathbb Z,
$$
linear implication $\multimap$, and tensor $\otimes$. There is no weakening or contraction: in every well-typed term each bound variable is used exactly once. Applications and tensor introductions split their contexts disjointly.

Consider the type
$$
\Theta_n=
(p_0\multimap p_1)\multimap\cdots\multimap
(p_{n-1}\multimap p_0)\multimap
p_0\multimap\cdots\multimap p_{n-1}\multimap
(p_0\otimes\cdots\otimes p_{n-1}),
$$
with the displayed order fixed.

Let $\mathcal N_n$ be the set of closed beta-eta-long normal inhabitants of $\Theta_n$, identified up to alpha-conversion. Thus every $M\in\mathcal N_n$ is written in the form
$$
\lambda f_0\cdots\lambda f_{n-1}
\lambda x_0\cdots\lambda x_{n-1}.
\langle M_0,\ldots,M_{n-1}\rangle,
$$
where
$$
f_i:p_i\multimap p_{i+1},
\qquad
x_i:p_i,
\qquad
M_i:p_i.
$$

The cyclic group of order $n$ acts on $\mathcal N_n$ by simultaneously adding $1$ modulo $n$ to every subscript and then writing the binders and tensor components again in the displayed order.

For $M\in\mathcal N_n$, each $x_i$ occurs in exactly one tensor component. Hence there is a permutation of $\mathbb Z/n\mathbb Z$ sending $i$ to the index of the component containing $x_i$.

Determine the number of cyclic orbits of size exactly $n$ consisting of terms for which this permutation is odd.

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Logic, Set Theory, and Foundations |
| **Sub-domain** | Type theory and formal systems |
| **Problem Type** | Exact computation |
| **Answer Type** | Exact scalar |

## Domain Explanation

The problem concerns beta-eta-long normal inhabitants in a resource-sensitive type system. Linearity and the atomic typing constraints first force a hidden normal-form decomposition, after which the cyclic action and the parity of the induced variable permutation determine which inhabitants contribute to full orbits.
