# Normalized Math Problem

## LaTeX (Normalized)

Let $n\geq12$ be an integer, and let
$$
q_0,q_1,\ldots,q_{n-1}
$$
be distinct odd primes. All subscripts below are read modulo $n$.

For $0\leq i<n$, define
$$
a_i=q_iq_{i+5}q_{i+6}q_{i+11}
$$
and
$$
b_i=q_iq_{i+1}q_{i+2}q_{i+4}q_{i+5}q_{i+7}q_{i+9}q_{i+10}.
$$
Set
$$
K_n=\mathbb Q(\sqrt{a_0},\sqrt{a_1},\ldots,\sqrt{a_{n-1}})
$$
and
$$
L_n=\mathbb Q(\sqrt{b_0},\sqrt{b_1},\ldots,\sqrt{b_{n-1}}).
$$

Let $R_n$ be the number of quadratic fields $E/\mathbb Q$ such that
$$
E\subseteq K_n\cap L_n
$$
and the prime $q_0$ is ramified in $E/\mathbb Q$.

For every positive integer $d$, let $\eta_d(n)=1$ if $d\mid n$, and let $\eta_d(n)=0$ otherwise. Also let $v_2(n)$ denote the exponent of $2$ in the prime factorization of $n$.

Determine $R_n$ exactly as a function of $n$.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Abstract Algebra |
| **Sub-domain** | Field theory |
| **Problem Type** | Exact computation |
| **Answer Type** | Exact scalar |

---

## Domain Explanation

The problem asks for quadratic subfields common to two explicitly constructed multiquadratic extensions of $\mathbb Q$, together with a ramification condition at one of the defining primes. Its decisive structure is the square-class subspace attached to each field and the way the two families of radical generators intersect inside $\mathbb Q^{\times}/\mathbb Q^{\times2}$. The cyclic pattern in the radicands supplies the algebra needed to determine that intersection, while the requested object is a field-theoretic count of common quadratic subextensions. Thus Abstract Algebra / Field theory is the primary classification.