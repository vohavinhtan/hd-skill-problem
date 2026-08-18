# Normalized Math Problem

## LaTeX (Normalized)

Let $p$ be an odd prime and let $n\geq9$ be a power of $p$. Set
$$
\Gamma=(\mathbb Z/n\mathbb Z)^3,
\qquad
j=\frac{(p-1)n}{p},
$$
with all coordinates read modulo $n$, and put
$$
T=\{(x,y,z)\in\Gamma:x=0\text{ or }y=0\text{ or }z=0\}.
$$

Let $V_n$ be the vector space over $\mathbb F_p$ of all functions
$$
f:\Gamma\to\mathbb F_p
$$
such that, for every $(x,y,z)\in T$,
$$
f(x+1,y,z)+f(x,y+1,z)=2f(x,y,z),
$$
$$
f(x,y+1,z)+f(x,y,z+1)=2f(x,y,z),
$$
$$
f(x+j,y,z)+f(x,y+j,z)=2f(x,y,z).
$$

Determine, in closed form as a function of $p$ and $n$,
$$
\boxed{\dim_{\mathbb F_p}V_n}.
$$

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Abstract Algebra |
| **Sub-domain** | Computational algebra |
| **Problem Type** | Symbolic derivation |
| **Answer Type** | Polynomial or rational function |

---

## Domain Explanation

This problem involves cyclic translation equations over finite fields, exact nullity reduction, and positive-characteristic polynomial identities.
These are part of Abstract Algebra and Computational algebra.
The problem also involves finite-dimensional function spaces and kernels of linear systems.
These are part of Linear Algebra and Systems of linear equations.
However, the linear algebra only packages the sparse constraints, while the decisive work is the symbolic reduction of the parameterized finite-field system for all prime-power sizes.
