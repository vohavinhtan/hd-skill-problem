# Normalized Math Problem

## LaTeX (Normalized)

Fix a prime $p$ and an integer $n\geq1$. Put
$$
q=p^n,\qquad K=\mathbb{F}_q,
$$
and assume
$$
q\equiv71\pmod{130}.
$$

Let
$$
A=
K[X,Y]\Big/
\left((X,Y)^6,\ 5X^4Y+10X^2Y^3+Y^5\right).
$$

Regarding every $K$-algebra automorphism of $A$ as a $K$-linear automorphism of the underlying finite-dimensional vector space, determine the number of
$$
\varphi\in\operatorname{Aut}_K(A)
$$
such that
$$
\det_K(\varphi)=1.
$$

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Abstract Algebra |
| **Sub-domain** | Commutative algebra |
| **Problem Type** | Exact computation |
| **Answer Type** | Exact scalar |

## Domain Explanation

The problem asks for the automorphism group of a finite local commutative algebra subject to a determinant condition. Its maximal-ideal filtration reveals a binary-form stabilizer, while the determinant on the whole algebra depends on how that stabilizer acts on the unique highest-degree relation.
