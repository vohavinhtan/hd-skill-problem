# Normalized Math Problem

## LaTeX (Normalized)

For a compact interval $I\subset\mathbb R$, let $U_I$ denote the uniform probability measure on $I$. Fix
$$
0<a<1
$$
and define
$$
\begin{aligned}
I_1(a)&=[1-a,1+a],&
I_2(a)&=[4-a,4+a],\\
I_3(a)&=[7-a,7+a],&
I_4(a)&=[10-a,10+a].
\end{aligned}
$$
Let
$$
\mu_a=\frac18\left(
\delta_0+\delta_3+\delta_8+\delta_{11}
+U_{I_1(a)}+U_{I_2(a)}+U_{I_3(a)}+U_{I_4(a)}
\right)
$$
and
$$
\nu=\frac14\left(\delta_0+\delta_3+\delta_8+\delta_{11}\right).
$$

Let $(X,Y)$ have a joint Borel probability distribution $\pi$ with $X\sim\mu_a$, $Y\sim\nu$, and
$$
\mathbb E[Y\mid X]=X.
$$
Write $K_x$ for a regular conditional distribution of $Y$ given $X=x$.

Call $\pi$ **screened** if the following three conditions hold.

1. For every $t\in\{0,3,8,11\}$, one has $K_t=\delta_t$.
2. For $\mu_a$-almost every $x$, the support of $K_x$ contains at most two points.
3. There is a Borel set $\Gamma\subset\mathbb R^2$ of full $\pi$-measure such that no three points
$$
(x,y^-),\qquad (x,y^+),\qquad (x',y')
$$
in $\Gamma$ satisfy
$$
x<x'\qquad\text{and}\qquad y^-<y'<y^+.
$$

Prove that there exists exactly one screened joint distribution. Determine its complete Markov kernel
$$
K_a^*(x)=
\left(
K_x(\{0\}),K_x(\{3\}),K_x(\{8\}),K_x(\{11\})
\right)
$$
for $\mu_a$-almost every $x$, including every switching point and every piecewise formula.

After deriving the complete kernel, return only the ordered list of its switching points, from left to right, as the final answer object.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Probability and Statistics |
| **Sub-domain** | Random variables and distributions |
| **Problem Type** | Construction under constraints |
| **Answer Type** | Tuple or ordered list |

---

## Domain Explanation

The primary object is a joint distribution with prescribed marginals and a conditional-mean constraint. The task reconstructs its regular conditional distribution from finite-support, binary-fiber, and support-order conditions, so Random variables and distributions is the natural classification. No extremal functional or numerical optimization remains in the problem.
