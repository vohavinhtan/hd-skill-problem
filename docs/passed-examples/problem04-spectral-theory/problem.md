# Normalized Math Problem

## LaTeX (Normalized)

Let $e_1=(1,0,0,0,0)^T$. A real symmetric tridiagonal matrix
$$
J=
\begin{bmatrix}
\alpha_1 & \beta_1 & 0 & 0 & 0\\
\beta_1 & \alpha_2 & \beta_2 & 0 & 0\\
0 & \beta_2 & \alpha_3 & \beta_3 & 0\\
0 & 0 & \beta_3 & \alpha_4 & \beta_4\\
0 & 0 & 0 & \beta_4 & \alpha_5
\end{bmatrix}
$$
is called admissible if $\beta_1,\beta_2,\beta_3,\beta_4>0$. Suppose $J$ is admissible and its two rank one spectral shifts satisfy
$$
\det\left(tI-\left(J+2e_1e_1^T\right)\right)=t^5-3t^4-24t^3+51t^2+127t-126
$$
and
$$
\det\left(tI-\left(J-3e_1e_1^T\right)\right)=t^5+2t^4-24t^3-59t^2+32t+94.
$$
Let $\mu^{(0)}$ be the $e_1$ spectral measure of $J$, meaning that
$$
\int x^k\,d\mu^{(0)}(x)=e_1^T J^k e_1 \qquad (k\geq 0).
$$
For any probability measure $\eta$ for which the normalizing denominator is nonzero, define two shadows by
$$
d\mathcal{L}(\eta)(x)=\frac{x+4}{\int (s+4)\,d\eta(s)}\,d\eta(x)
$$
and
$$
d\mathcal{R}(\eta)(x)=\frac{5-x}{\int (5-s)\,d\eta(s)}\,d\eta(x).
$$
Set
$$
\mu^{(1)}=\mathcal{L}(\mu^{(0)}),\qquad
\mu^{(2)}=\mathcal{R}(\mu^{(1)}),\qquad
\mu^{(3)}=\mathcal{R}(\mu^{(2)}).
$$
Let $K$ be the unique admissible real symmetric tridiagonal $5\times 5$ matrix whose $e_1$ spectral measure is $\mu^{(3)}$. Determine the exact matrix $K$.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Linear Algebra |
| **Sub-domain** | Spectral theory |

---

## Domain Explanation

This problem involves reconstructing a Jacobi matrix from spectral data and transformed spectral measures, which are part of Linear Algebra and Spectral theory.
The problem also involves moment formulas, orthogonal polynomials, and determinant identities, which are part of analysis.
However, those tools only support the reconstruction and do not change the main spectral focus.
