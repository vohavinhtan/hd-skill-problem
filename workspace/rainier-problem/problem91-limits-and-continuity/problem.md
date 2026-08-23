# Normalized Math Problem

## LaTeX (Normalized)

For each integer $N\geq1$ and $k\in\{0,1,2,3,4\}$, define
$$
M_{k,N}
=
\frac{\displaystyle\int_0^1 x^k
\exp\!\left(
-N^{10}\left[(2x-1)^5(1-x)\right]^2
\right)\,dx}
{\displaystyle\int_0^1
\exp\!\left(
-N^{10}\left[(2x-1)^5(1-x)\right]^2
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
N^5
\left[
N^6H_N
-
21(2N)^6H_{2N}
+
84(4N)^6H_{4N}
-
64(8N)^6H_{8N}
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

This problem involves an exact multiscale limit that removes three lower asymptotic orders,
which are part of Calculus and Limits and continuity.
The problem also involves Laplace asymptotics near zeros of different multiplicities and a Hankel moment determinant,
which are part of Calculus and Applications of integration.
However, the local asymptotic analysis determines the sequence entering the requested limit, while the final requested object is one exact scalar limit.

Specifically:

- The interior zero and endpoint zero localize on the different scales $N^{-1}$ and $N^{-5}$.
- Two distinct occupancy patterns contribute at exactly the same leading determinant order.
- Parity removes the odd central corrections, while the four-scale combination removes the constant, $N^{-2}$, and $N^{-4}$ terms, leaving the first endpoint correction.
