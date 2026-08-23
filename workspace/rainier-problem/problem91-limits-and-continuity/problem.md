# Normalized Math Problem

## LaTeX (Normalized)

For each integer $N\geq1$ and $k\in\{0,1,2,3,4\}$, define
$$
M_{k,N}
=
\frac{\displaystyle\int_0^1 x^k
\exp\!\left(
-N^6\left[x^3(2x-1)(1-x)\right]^2
\right)\,dx}
{\displaystyle\int_0^1
\exp\!\left(
-N^6\left[x^3(2x-1)(1-x)\right]^2
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
N\left[
N^4H_N-(2N)^4H_{2N}
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

This problem involves an exact renormalized limit determined by the first correction to a fractional-power concentration expansion,
which are part of Calculus and Limits and continuity.
The problem also involves Laplace asymptotics near zeros of unequal multiplicity and a Hankel moment determinant,
which are part of Calculus and Applications of integration.
However, those local integral calculations determine the asymptotic sequence entering the limit, while the final requested object is one exact scalar limit.

Specifically:

- The triple zero at $0$ localizes on the scale $N^{-1}$, while the two simple zeros localize on the scale $N^{-3}$.
- Three different occupancy classes contribute at the same leading determinant order.
- The first correction of one leading occupancy cancels internally, so the surviving coefficient requires comparing the remaining cluster corrections with the normalization correction.
