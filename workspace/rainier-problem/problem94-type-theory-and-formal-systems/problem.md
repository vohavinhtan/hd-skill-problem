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
linear implication $\multimap$, and tensor $\otimes$. There is no weakening or contraction: every bound variable is used exactly once, and applications and tensor introductions split their contexts disjointly.

Consider the type
$$
\Theta_n=
(p\multimap p)^n
\multimap
(p\multimap q_0)\multimap\cdots\multimap(p\multimap q_{n-1})
\multimap
p^n
\multimap
(q_0\otimes\cdots\otimes q_{n-1}),
$$
where the notation means that the first $n$ displayed arguments are individually bound variables
$$
f_i:p\multimap p,
$$
the next $n$ are
$$
h_i:p\multimap q_i,
$$
and the next $n$ are
$$
x_i:p,
\qquad
i\in\mathbb Z/n\mathbb Z,
$$
all in increasing index order.

Let $\mathcal N_n$ be the closed beta-eta-long normal inhabitants of $\Theta_n$, identified up to alpha-conversion.

The cyclic group of order $n$ acts on $\mathcal N_n$ by adding $1$ modulo $n$ simultaneously to the subscripts of all $f_i,h_i,x_i,q_i$, and then restoring the binders and tensor components to the displayed index order.

For $M\in\mathcal N_n$, every $x_i$ occurs in exactly one tensor component. Let $\pi_M$ be the permutation of $\mathbb Z/n\mathbb Z$ sending $i$ to the index of that component.

Determine the number of cyclic orbits of size exactly $n$ consisting of terms for which $\pi_M$ is odd.

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Logic, Set Theory, and Foundations |
| **Sub-domain** | Type theory and formal systems |
| **Problem Type** | Exact computation |
| **Answer Type** | Exact scalar |

## Domain Explanation

The problem concerns long normal forms in a resource-sensitive typed calculus. Linearity first forces a hidden decomposition into a variable permutation and ordered resource chains; the cyclic action then couples those two structures, so full-orbit counting requires a second symmetry analysis.
