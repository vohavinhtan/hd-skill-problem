# Normalized Math Problem

## LaTeX (Normalized)

Let $m\geq12$ be even, and let
$$
\mathcal M_0=\left\{\{1,2\},\{3,4\},\ldots,\{2m-1,2m\}\right\}.
$$
Let $H_m\leq S_{2m}$ be the setwise stabilizer of $\mathcal M_0$. The action of $H_m$ on the $m$ pairs of $\mathcal M_0$ gives a surjective homomorphism
$$
\pi:H_m\longrightarrow S_m.
$$
Let
$$
V_m=\left\{(x_1,\ldots,x_m)\in\mathbb C^m:x_1+\cdots+x_m=0\right\},
$$
where $S_m$ permutes coordinates, and regard $V_m$ as an $H_m$-module through $\pi$. Define
$$
M_m=\operatorname{Ind}_{H_m}^{S_{2m}}V_m
$$
and
$$
N_m=\operatorname{sgn}_{S_{2m}}\otimes\operatorname{Ind}_{H_m}^{S_{2m}}\mathbf 1,
$$
where $\mathbf 1$ is the trivial representation of $H_m$.

For a partition $\lambda\vdash2m$, let $S^\lambda$ be the corresponding irreducible complex Specht module and put
$$
a_\lambda=\dim_{\mathbb C}\operatorname{Hom}_{S_{2m}}(S^\lambda,M_m).
$$
Determine, as an exact function of $m$,
$$
A_m=\max\left\{a_\lambda:\operatorname{Hom}_{S_{2m}}(S^\lambda,N_m)\neq0\right\}.
$$

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Abstract Algebra |
| **Sub-domain** | Representation theory |
| **Problem Type** | Optimization |
| **Answer Type** | Exact scalar |

---

## Domain Explanation

The problem asks for an extremal Specht multiplicity inside an induced representation from the stabilizer of a perfect matching. The inducing module is the standard representation on the set of matching pairs, while the comparison module is a sign twist of the matching permutation representation. Determining their common irreducible spectrum and the largest multiplicity requires induction, Specht-module branching structure, and the interaction between row and column parity of partitions, so Representation theory is the primary classification.