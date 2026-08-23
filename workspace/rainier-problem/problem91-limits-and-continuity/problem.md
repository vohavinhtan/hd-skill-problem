# Normalized Math Problem

## LaTeX (Normalized)

For each integer $N\geq1$ and $k\in\{0,1,\ldots,6\}$, define
$$
M_{k,N}
=
\frac{\displaystyle\int_0^1 x^k
\exp\!\left(
-N^4\left[x(1-x)(2x-1)^2\right]^2
\right)\,dx}
{\displaystyle\int_0^1
\exp\!\left(
-N^4\left[x(1-x)(2x-1)^2\right]^2
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
N^2
\left[
N^4H_N
-
3(2N)^4H_{2N}
+
2(4N)^4H_{4N}
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

This problem involves an exact multiscale limit whose first two asymptotic orders cancel,
which are part of Calculus and Limits and continuity.
The problem also involves Laplace asymptotics at zeros of unequal multiplicity and a Hankel moment determinant,
which are part of Calculus and Applications of integration.
However, the local cluster analysis determines the asymptotic sequence entering the limit, while the final requested object is one exact scalar limit.

Specifically:

- The interior double zero localizes on the scale $N^{-1}$ while the two endpoint simple zeros localize on the scale $N^{-2}$.
- The leading four-point determinant contribution requires two samples at the interior well and one at each endpoint.
- The three-scale combination removes both the leading term and the normalization correction, so the answer depends on the second-order deformation of that cluster.
