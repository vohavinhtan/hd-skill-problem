# Normalized Math Problem

## LaTeX (Normalized)

Let $n\geq 4$ be an integer. Define
$$
I_n=
\int_{[0,1]^n}
\left(\prod_{r=1}^{n}(1+x_r)^3(2+x_r)^2(3+x_r)(4+x_r)\right)
\left(\sum_{r=1}^{n}\left(\frac{3}{1+x_r}-\frac{2}{2+x_r}+\frac{1}{3+x_r}-\frac{1}{4+x_r}\right)\right)
\left(\prod_{r=1}^{n}x_r^{-1/3}(1-x_r)^{-2/3}\,dx_r\right)
\left(\prod_{1\leq r<s\leq n}(x_r-x_s)^2\right).
$$

For each $k\geq 0$, let $Q_k(z)$ be the unique monic degree-$k$ polynomial satisfying
$$
\int_0^1 Q_k(x)x^j x^{-1/3}(1-x)^{-2/3}\,dx=0
\qquad(0\leq j<k).
$$

For indeterminates $u,v,w,z$, define the $7\times 7$ confluent determinant
$$
H_n(u,v,w,z)=
\det
\begin{pmatrix}
Q_n(u)&Q_{n+1}(u)&Q_{n+2}(u)&Q_{n+3}(u)&Q_{n+4}(u)&Q_{n+5}(u)&Q_{n+6}(u)\\
Q_n'(u)&Q_{n+1}'(u)&Q_{n+2}'(u)&Q_{n+3}'(u)&Q_{n+4}'(u)&Q_{n+5}'(u)&Q_{n+6}'(u)\\
Q_n''(u)&Q_{n+1}''(u)&Q_{n+2}''(u)&Q_{n+3}''(u)&Q_{n+4}''(u)&Q_{n+5}''(u)&Q_{n+6}''(u)\\
Q_n(v)&Q_{n+1}(v)&Q_{n+2}(v)&Q_{n+3}(v)&Q_{n+4}(v)&Q_{n+5}(v)&Q_{n+6}(v)\\
Q_n'(v)&Q_{n+1}'(v)&Q_{n+2}'(v)&Q_{n+3}'(v)&Q_{n+4}'(v)&Q_{n+5}'(v)&Q_{n+6}'(v)\\
Q_n(w)&Q_{n+1}(w)&Q_{n+2}(w)&Q_{n+3}(w)&Q_{n+4}(w)&Q_{n+5}(w)&Q_{n+6}(w)\\
Q_n(z)&Q_{n+1}(z)&Q_{n+2}(z)&Q_{n+3}(z)&Q_{n+4}(z)&Q_{n+5}(z)&Q_{n+6}(z)
\end{pmatrix}.
$$

Set
$$
\Delta(u,v,w,z)
=(u-v)^6(u-w)^3(u-z)^3(v-w)^2(v-z)^2(w-z),
$$
and let
$$
\mathcal L=-\frac{\partial}{\partial u}
+\frac{\partial}{\partial v}
-\frac{\partial}{\partial w}
+\frac{\partial}{\partial z}.
$$

Determine an exact closed form for $I_n$ as a product of gamma functions times
$$
\left.
\mathcal L\!\left(\frac{H_n(u,v,w,z)}{\Delta(u,v,w,z)}\right)
\right|_{(u,v,w,z)=(-1,-2,-3,-4)}.
$$
All constants, signs, products, and powers of $2$ and $3$ in the prefactor must be explicit.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Calculus |
| **Sub-domain** | Integration |
| **Problem Type** | Exact computation |
| **Answer Type** | Exact symbolic expression |

---

## Domain Explanation

This problem is classified under Calculus / Integration because the main object is a high-dimensional definite integral with a Jacobi-type algebraic weight, a squared Vandermonde factor, repeated polynomial insertions, and a logarithmic derivative insertion. Orthogonal polynomials and confluent determinants are tools for evaluating the integral, but the requested task remains the exact evaluation of a definite integral. The determinant and differential operator are defined in the prompt so that the final expression is checkable without relying on unstated notation.
