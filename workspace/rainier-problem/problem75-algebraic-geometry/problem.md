# Normalized Math Problem

## LaTeX (Normalized)

For each $\lambda\in\mathbb C^\times$, define a continuous $\mathbb C$-algebra homomorphism
$$
\Psi_\lambda:\mathbb C[[X,Y,Z]]\longrightarrow\mathbb C[[t]]
$$
by
$$
\Psi_\lambda(X)=t^8,
$$
$$
\Psi_\lambda(Y)=t^{12}+t^{14}+t^{15},
$$
$$
\Psi_\lambda(Z)=t^{18}+\lambda t^{19}+t^{23}.
$$
Let
$$
A_\lambda=\operatorname{im}\Psi_\lambda\subset\mathbb C[[t]],
$$
and define
$$
\delta_\lambda
=
\dim_{\mathbb C}\bigl(\mathbb C[[t]]/A_\lambda\bigr).
$$
Set
$$
\Delta=\max_{\lambda\in\mathbb C^\times}\delta_\lambda,
\qquad
\Lambda=\{\lambda\in\mathbb C^\times:\delta_\lambda=\Delta\}.
$$

Determine the ordered pair
$$
(\Delta,\Lambda).
$$

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Topology and Geometry |
| **Sub-domain** | Algebraic geometry |
| **Problem Type** | Optimization |
| **Answer Type** | Tuple or ordered list |

---

## Domain Explanation

The rings $A_\lambda$ are local rings of irreducible parametrized space-curve singularities, and $\delta_\lambda$ is the colength of the curve ring in its normalization. The problem asks for the maximal jump of this singularity invariant in a one-parameter family, where the exceptional parameter is controlled by higher-order cancellations in the value semigroup rather than by the displayed leading orders alone.