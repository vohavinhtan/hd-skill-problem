# Normalized Math Problem

## LaTeX (Normalized)

Let $\mathcal P_1$ be the set of real affine polynomials $p(x)=ax+b$. For $p\in\mathcal P_1$, define
$$
\Lambda(p)=\max_{x\in X}w(x)|p(x)-y(x)|,
$$
where
$$
X=\{-2,-1,1,3\},
$$
and the data are
$$
\begin{array}{c|cccc}
x&-2&-1&1&3\\
\hline
w(x)&2&3&4&1\\
y(x)&-\frac76&\frac16&\frac{17}{24}&\frac56
\end{array}.
$$
Among all affine polynomials that minimize $\Lambda(p)$, determine the coefficient vector $\begin{bmatrix}a\\ b\end{bmatrix}$.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Optimization and Numerical Mathematics |
| **Sub-domain** | Approximation theory |
| **Problem Type** | Optimization |
| **Answer Type** | Vector |

---

## Domain Explanation

This problem involves minimizing a weighted uniform approximation error over a finite data set and certifying the minimizer by alternating errors, which are part of Optimization and Numerical Mathematics and Approximation theory.
The problem also involves elementary polynomial sign changes, which are part of algebra.
However, those sign changes only certify the weighted minimax solution, while the main task is the finite approximation problem.
