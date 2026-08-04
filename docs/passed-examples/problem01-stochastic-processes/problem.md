# Normalized Math Problem

## LaTeX (Normalized)

Let $S=\{1,2,3,4\}$, and let $u$ be the uniform probability distribution on $S$. A Markov kernel $K=(K_{ij})_{i,j\in S}$ is admissible if $K_{ii}=0$, $K_{ij}>0$ for $i\neq j$, every row of $K$ sums to $1$, $uK=u$, and
$$
\frac{1}{4}\sum_{i=1}^{4}\sum_{j=1}^{4}K_{ij}A_{ij}=-\frac{1}{10},
\qquad
\frac{1}{4}\sum_{i=1}^{4}\sum_{j=1}^{4}K_{ij}B_{ij}=\frac{17}{80}.
$$
Here
$$
A=
\begin{bmatrix}
0 & 2 & -1 & 0\\
-2 & 0 & 1 & 3\\
1 & -3 & 0 & 2\\
0 & -1 & -2 & 0
\end{bmatrix},
\qquad
B=
\begin{bmatrix}
0 & 0 & 1 & -2\\
2 & 0 & -1 & 0\\
-1 & 3 & 0 & -2\\
1 & -2 & 2 & 0
\end{bmatrix},
$$
and
$$
P=
\begin{bmatrix}
0 & \frac{15}{491} & \frac{112}{2455} & \frac{2268}{2455}\\
\frac{48}{169} & 0 & \frac{114}{169} & \frac{7}{169}\\
\frac{756}{3005} & \frac{224}{3005} & 0 & \frac{405}{601}\\
\frac{19}{811} & \frac{756}{811} & \frac{36}{811} & 0
\end{bmatrix}.
$$
For an admissible $K$, define
$$
I(K)=\frac{1}{4}\sum_{i=1}^{4}\sum_{j=1}^{4}K_{ij}\log\left(\frac{K_{ij}}{P_{ij}}\right),
$$
where diagonal terms are omitted. The admissible class is nonempty, and $I(K)$ has a unique minimizer on it. Determine the exact $4\times 4$ transition matrix $K^*$ that minimizes $I(K)$.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Probability and Statistics |
| **Sub-domain** | Stochastic processes |

---

## Domain Explanation

This problem involves stationary Markov kernels, finite state transition laws, and entropy rate minimization under moment constraints, which are part of Probability and Statistics and Stochastic processes.
The problem also involves matrix constraints and convex duality certificates, which are part of Linear Algebra and Optimization and Numerical Mathematics.
However, these tools support the calculation and certificate rather than being the main probabilistic structure.
