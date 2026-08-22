# Normalized Math Problem

## LaTeX (Normalized)

For each integer $N\geq1$ and $k\in\{0,1,2,3,4\}$, define
$$
M_{k,N}
=
\frac{\displaystyle\int_0^1 x^k
\exp\!\left(
-N\left[x(1-x)\left(x-\frac13\right)^2\right]^2
\right)\,dx}
{\displaystyle\int_0^1
\exp\!\left(
-N\left[x(1-x)\left(x-\frac13\right)^2\right]^2
\right)\,dx}.
$$

Set
$$
H_N
=
\det
\begin{pmatrix}
M_{0,N}&M_{1,N}&M_{2,N}\\
M_{1,N}&M_{2,N}&M_{3,N}\\
M_{2,N}&M_{3,N}&M_{4,N}
\end{pmatrix}.
$$

Determine the exact value of
$$
\lim_{N\to\infty}
N^{1/4}
\left(
\sqrt N\,H_N-\sqrt{16N}\,H_{16N}
\right).
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

This problem involves an exact renormalized limit whose value is determined by a lower-order term in a fractional-power asymptotic expansion,
which are part of Calculus and Limits and continuity.
The problem also involves Laplace asymptotics near zeros with different multiplicities and a moment determinant,
which are part of Calculus and Applications of integration.
However, the local integral analysis determines the asymptotic sequence entering the requested limit, while the final requested object is one exact scalar limit.

Specifically:

- The two endpoint zeros and the interior double zero generate localization scales $N^{-1/2}$ and $N^{-1/4}$ simultaneously.
- The dominant determinant term comes from samples occupying all three concentration regions, while the first correction comes from a different occupancy pattern.
- The scale difference removes the dominant term and isolates the interaction between normalization and the first repeated-well contribution.
