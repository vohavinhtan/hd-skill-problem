# Normalized Math Problem

## LaTeX (Normalized)

Fix an integer
$$
n\geq2.
$$
For each $\lambda\in\mathbb C^{\times}$, define a continuous $\mathbb C$-algebra homomorphism
$$
\Psi_{n,\lambda}:\mathbb C[[X,Y,Z,W]]\longrightarrow\mathbb C[[t]]
$$
by
$$
\Psi_{n,\lambda}(X)=t^{30},
$$
$$
\Psi_{n,\lambda}(Y)
=(\lambda^2-1)t^{30n+15}+(\lambda-1)t^{30n+10},
$$
$$
\Psi_{n,\lambda}(Z)
=(\lambda^2-1)t^{30n+15}+\lambda(\lambda-1)t^{30n+10},
$$
$$
\Psi_{n,\lambda}(W)=t^{30n+29}.
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
be the largest and the second-largest distinct values of $\kappa_{n,\lambda}$ as $\lambda$ ranges over $\mathbb C^{\times}$, and put
$$
E_n=
\left\{
\lambda\in\mathbb C^{\times}:\kappa_{n,\lambda}=\beta_n
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

This problem concerns complete local subrings of a discrete valuation ring and their conductor ideals. The parameter changes the rank of a pair of generators, and the resulting value semigroups determine the conductor exponents.
