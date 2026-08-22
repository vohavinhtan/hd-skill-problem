# Normalized Math Problem

## LaTeX (Normalized)

For each integer $N\geq1$ and $k\in\{0,1,\ldots,6\}$, define
$$
M_{k,N}
=
\frac{\displaystyle\int_0^1 x^k
\exp\!\left(-N\left[x\left(x-\frac13\right)(1-x)\right]^2\right)\,dx}
{\displaystyle\int_0^1
\exp\!\left(-N\left[x\left(x-\frac13\right)(1-x)\right]^2\right)\,dx}.
$$

Set
$$
H_N
=
\det
\begin{pmatrix}
M_{0,N}&M_{1,N}&M_{2,N}&M_{3,N}\\
M_{1,N}&M_{2,N}&M_{3,N}&M_{4,N}\\
M_{2,N}&M_{3,N}&M_{4,N}&M_{5,N}\\
M_{3,N}&M_{4,N}&M_{5,N}&M_{6,N}
\end{pmatrix}.
$$

Determine the exact value of
$$
\lim_{N\to\infty}
\sqrt N\left[
NH_N-(4N)H_{4N}
\right].
$$

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Calculus |
| **Sub-domain** | Limits and continuity |
| **Problem Type** | Exact computation |
| **Answer Type** | Exact scalar |

---

## Domain Explanation

This problem involves an exact renormalized limit governed by the first correction to a singular moment determinant,
which are part of Calculus and Limits and continuity.
The problem also involves Laplace asymptotics near several concentration points and Vandermonde moment identities,
which are part of Calculus and Applications of integration.
However, those integral calculations determine the asymptotic sequence entering the requested limit, while the final requested object is one exact scalar limit.

Specifically:

- The weight has three inequivalent concentration points, so the centered-symmetry reduction of the two-well problem is unavailable.
- The determinant first becomes nonzero when four samples occupy the three wells in a two-one-one pattern.
- The scale difference removes that leading contribution, forcing the first correction from local Jacobians and cross-well displacements.
