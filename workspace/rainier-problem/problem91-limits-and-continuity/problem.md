# Normalized Math Problem

## LaTeX (Normalized)

For each integer $N\geq1$ and $k\in\{0,1,\ldots,6\}$, define
$$
M_{k,N}
=
\frac{\displaystyle\int_0^1 x^k
\exp\!\left(
-N\left[(2x-1)^2(1-x)\right]^2
\right)\,dx}
{\displaystyle\int_0^1
\exp\!\left(
-N\left[(2x-1)^2(1-x)\right]^2
\right)\,dx}.
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
N^{1/4}
\left[
N^{7/4}H_N-(16N)^{7/4}H_{16N}
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

This problem involves an exact renormalized limit governed by the first correction to a fractional-power asymptotic expansion,
which are part of Calculus and Limits and continuity.
The problem also involves Laplace asymptotics near zeros of different multiplicities and a Hankel moment determinant,
which are part of Calculus and Applications of integration.
However, the local integral calculations determine the asymptotic sequence entering the requested limit, while the final requested object is one exact scalar limit.

Specifically:

- The interior double zero and the endpoint simple zero localize on the different scales $N^{-1/4}$ and $N^{-1/2}$.
- The leading four-point determinant contribution has a three-one occupancy, while the first correction comes from a two-two occupancy.
- The apparent first correction of the leading cluster vanishes by parity, so the surviving term can only be found after the occupancy structure is identified.
