# Normalized Math Problem

## LaTeX (Normalized)

For each integer $N\geq1$ and $k\in\{0,1,\ldots,6\}$, define
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
M_{0,N}&M_{1,N}&M_{2,N}&M_{3,N}\\
M_{1,N}&M_{2,N}&M_{3,N}&M_{4,N}\\
M_{2,N}&M_{3,N}&M_{4,N}&M_{5,N}\\
M_{3,N}&M_{4,N}&M_{5,N}&M_{6,N}
\end{pmatrix}.
$$

Determine the exact value of
$$
\lim_{N\to\infty}
\sqrt N
\left[
NH_N
-
3(16N)H_{16N}
+
2(256N)H_{256N}
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

This problem involves an exact multiscale limit in which two successive terms of a fractional-power asymptotic expansion cancel,
which are part of Calculus and Limits and continuity.
The problem also involves Laplace asymptotics near zeros of different multiplicities and a Hankel moment determinant,
which are part of Calculus and Applications of integration.
However, the local integral analysis determines the asymptotic sequence entering the limit, while the final requested object is one exact scalar limit.

Specifically:

- The endpoint zeros localize on the scale $N^{-1/2}$ while the interior double zero localizes on the scale $N^{-1/4}$.
- The four-point determinant is first supported by a two-one-one occupancy pattern, and all competing occupancies enter later.
- The three-scale combination removes both the leading term and the normalization correction, forcing a second-order cluster calculation.
