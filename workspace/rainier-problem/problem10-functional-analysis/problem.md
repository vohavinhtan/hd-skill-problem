# Problem

In the Hilbert space $L^2([0,1])$ with inner product

$$
\langle f,g\rangle=\int_0^1 f(x)g(x)\,dx,
$$

let $m\ge 2$ be an integer, and let $p(x)=ax+b$ be the affine function that minimizes

$$
\int_0^1 (x^m-p(x))^2\,dx.
$$

Determine the vector

$$
\begin{bmatrix}a\\ b\end{bmatrix}.
$$

**Domain:** Analysis

**Sub-domain:** Functional analysis

**Problem Type:** Optimization

**Answer Type:** Vector

**Difficulty:** Hard

**Domain Explanation:** This problem asks for an orthogonal projection in an inner-product space. The minimizer is characterized by orthogonality of the residual to a finite-dimensional subspace, but the answer must be derived as a closed formula in the exponent $m$. The calculation uses exact integrals and a symbolic normal-equation system, so the problem belongs naturally to functional analysis rather than numerical curve fitting.
