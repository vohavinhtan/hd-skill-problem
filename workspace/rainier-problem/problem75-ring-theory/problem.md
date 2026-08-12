# Normalized Math Problem

## LaTeX (Normalized)

Fix an integer
$$
n\geq2.
$$
For each $\lambda\in\mathbb C^\times$, define a continuous $\mathbb C$-algebra homomorphism
$$
\Psi_{n,\lambda}:\mathbb C[[X,Y,Z]]\longrightarrow\mathbb C[[t]]
$$
by
$$
\Psi_{n,\lambda}(X)=t^{4n},
$$
$$
\Psi_{n,\lambda}(Y)=t^{6n}+t^{7n}+t^{7n+1},
$$
$$
\Psi_{n,\lambda}(Z)=t^{9n}+\lambda^2t^{9n+1}+(\lambda-1)t^{11n+1}.
$$
Let
$$
A_{n,\lambda}=\operatorname{im}\Psi_{n,\lambda}\subset\mathbb C[[t]],
$$
and define its conductor exponent in $\mathbb C[[t]]$ by
$$
\kappa_{n,\lambda}
=
\min\left\{
c\geq0:t^c\mathbb C[[t]]\subseteq A_{n,\lambda}
\right\}.
$$
For fixed $n$, let
$$
\alpha_n>\beta_n
$$
be the largest and the second-largest distinct values of $\kappa_{n,\lambda}$ as $\lambda$ ranges over $\mathbb C^\times$, and put
$$
E_n=
\left\{
\lambda\in\mathbb C^\times:\kappa_{n,\lambda}=\beta_n
\right\}.
$$

Determine the ordered pair
$$
(\beta_n,E_n)
$$
in closed form as a function of $n$.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Abstract Algebra |
| **Sub-domain** | Ring theory |
| **Problem Type** | Optimization |
| **Answer Type** | Tuple or ordered list |

---

## Domain Explanation

This problem involves complete local subrings, conductor ideals, and normalization inside a discrete valuation ring, which are part of Abstract Algebra and Ring theory. The problem also involves numerical semigroups and residue classes, which are part of Number Theory. However, those number theoretic objects serve only to encode valuations, while the central task is to determine a ring theoretic conductor across the parameter family.