# Normalized Math Problem

## LaTeX (Normalized)

For each integer $N\geq1$ and $k\in\{0,1,\ldots,6\}$, define
$$
M_{k,N}
=
\frac{\displaystyle\int_0^1 x^k
\exp\!\left(-N x^2(1-x)^2\right)\,dx}
{\displaystyle\int_0^1
\exp\!\left(-N x^2(1-x)^2\right)\,dx}.
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
N\left[
N^2H_N
-
3(4N)^2H_{4N}
+
2(16N)^2H_{16N}
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

This problem involves a renormalized limit whose first two asymptotic contributions cancel,
which are part of Calculus and Limits and continuity.
The problem also involves endpoint concentration, moment determinants, and local integral asymptotics,
which are part of Calculus and Applications of integration.
However, the integral analysis determines the asymptotic sequence entering the requested expression, while the final requested object is one exact scalar limit.

Specifically:

- The moment determinant must first be converted into a four-sample Vandermonde expectation before its dominant configurations become visible.
- The leading contribution comes from a two-point versus two-point endpoint split, while a three-point versus one-point split first enters one order later.
- The three-scale combination removes both preceding coefficients, so the answer depends on the second correction to the endpoint-cluster expansion.
