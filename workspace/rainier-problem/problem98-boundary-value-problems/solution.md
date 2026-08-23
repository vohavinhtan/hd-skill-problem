## Steps

Step 1: Fix the limiting branch and its normalization

Put
$$
\varepsilon=\frac1n.
$$
At $\varepsilon=0$, the equation becomes
$$
-y''=\lambda y,
\qquad
y(0)=y(1)=0.
$$
The branch specified in the problem has
$$
\lambda_0=\pi^2,
\qquad
y_0(x)=2\sin(\pi x),
$$
because
$$
\int_0^1y_0(x)^2\,dx
=
4\int_0^1\sin^2(\pi x)\,dx
=2.
$$

Let
$$
L=-\frac{d^2}{dx^2}-\pi^2
$$
on functions satisfying the Dirichlet conditions. Its kernel is spanned by $\sin(\pi x)$.

The linearization of the equation and normalization at $(\lambda_0,y_0)$ sends $(\delta\lambda,h)$ to
$$
Lh-\delta\lambda\,y_0,
\qquad
2\int_0^1y_0h\,dx.
$$
If both components vanish, taking the inner product of the first with $\sin(\pi x)$ gives
$$
-\delta\lambda
\int_0^1y_0\sin(\pi x)\,dx=0.
$$
The integral equals $1$, so $\delta\lambda=0$. Then $Lh=0$, hence $h$ is a multiple of $\sin(\pi x)$, and the normalization equation forces that multiple to vanish. Thus the linearization is nonsingular on the normalized branch, and the implicit-function theorem gives expansions
$$
\lambda_n
=
\pi^2+\lambda_1\varepsilon+\lambda_2\varepsilon^2+O(\varepsilon^3)
$$
and
$$
y_n
=
y_0+\varepsilon y_1+\varepsilon^2y_2+O(\varepsilon^3).
$$

Step 2: Use the first solvability condition to find $\lambda_1$

Substituting the expansions into
$$
-y_n''+\varepsilon y_n^2=\lambda_ny_n
$$
and comparing coefficients of $\varepsilon$ gives
$$
Ly_1=\lambda_1y_0-y_0^2.
$$
The order-$\varepsilon$ part of the normalization is
$$
2\int_0^1y_0y_1\,dx=0,
$$
so
$$
\int_0^1y_1(x)\sin(\pi x)\,dx=0.
$$

Since $L$ is self-adjoint and $L\sin(\pi x)=0$, multiplying the equation for $y_1$ by $\sin(\pi x)$ and integrating gives
$$
0=
\lambda_1
\int_0^1y_0\sin(\pi x)\,dx
-
\int_0^1y_0^2\sin(\pi x)\,dx.
$$
Now
$$
\int_0^1y_0\sin(\pi x)\,dx=1
$$
and
$$
\int_0^1y_0^2\sin(\pi x)\,dx
=
4\int_0^1\sin^3(\pi x)\,dx
=
\frac{16}{3\pi}.
$$
Therefore
$$
\lambda_1=\frac{16}{3\pi}.
$$

Step 3: Solve the resonant first correction exactly

Using $y_0=2\sin(\pi x)$ and the value of $\lambda_1$,
$$
Ly_1
=
\frac{32}{3\pi}\sin(\pi x)
-4\sin^2(\pi x).
$$
Since
$$
-4\sin^2(\pi x)
=
-2+2\cos(2\pi x),
$$
we seek a particular solution term by term.

The identity
$$
L\bigl(x\cos(\pi x)\bigr)
=
2\pi\sin(\pi x)
$$
handles the resonant forcing. Also
$$
L(1)=-\pi^2
$$
and
$$
L\bigl(\cos(2\pi x)\bigr)
=
3\pi^2\cos(2\pi x).
$$
Hence the general solution satisfying the differential equation is
$$
y_1(x)
=
A\sin(\pi x)
+B\cos(\pi x)
+\frac{16x}{3\pi^2}\cos(\pi x)
+\frac2{\pi^2}
+\frac{2}{3\pi^2}\cos(2\pi x).
$$

The condition $y_1(0)=0$ gives
$$
B=-\frac8{3\pi^2},
$$
and then $y_1(1)=0$ holds automatically. Thus
$$
y_1(x)
=
A\sin(\pi x)
+\frac{16x-8}{3\pi^2}\cos(\pi x)
+\frac2{\pi^2}
+\frac{2}{3\pi^2}\cos(2\pi x).
$$

The normalization condition from Step 2 requires
$$
\int_0^1y_1\sin(\pi x)\,dx=0.
$$
The elementary integrals
$$
\int_0^1x\cos(\pi x)\sin(\pi x)\,dx
=
-\frac1{4\pi},
$$
$$
\int_0^1\sin(\pi x)\,dx=\frac2\pi,
$$
and
$$
\int_0^1\cos(2\pi x)\sin(\pi x)\,dx
=
-\frac2{3\pi}
$$
give
$$
\int_0^1
\left[
\frac{16x-8}{3\pi^2}\cos(\pi x)
+\frac2{\pi^2}
+\frac{2}{3\pi^2}\cos(2\pi x)
\right]
\sin(\pi x)\,dx
=
\frac{20}{9\pi^3}.
$$
Since $\int_0^1\sin^2(\pi x)\,dx=1/2$,
$$
\frac A2+\frac{20}{9\pi^3}=0.
$$
Therefore
$$
A=-\frac{40}{9\pi^3}.
$$

Step 4: Apply the second solvability condition

The coefficient of $\varepsilon^2$ in the differential equation is
$$
Ly_2
=
\lambda_1y_1+\lambda_2y_0-2y_0y_1.
$$
Taking its inner product with $\sin(\pi x)$ gives
$$
0=
\lambda_1\int_0^1y_1\sin(\pi x)\,dx
+
\lambda_2\int_0^1y_0\sin(\pi x)\,dx
-
2\int_0^1y_0y_1\sin(\pi x)\,dx.
$$
The first integral vanishes by normalization, while the second equals $1$. Hence
$$
\lambda_2
=
2\int_0^1y_0y_1\sin(\pi x)\,dx
=
4\int_0^1y_1\sin^2(\pi x)\,dx.
$$

Using the explicit $y_1$ from Step 3,
$$
\int_0^1
\frac{16x-8}{3\pi^2}
\cos(\pi x)\sin^2(\pi x)\,dx
=
-\frac{64}{27\pi^4},
$$
$$
\int_0^1
\left(
\frac2{\pi^2}
+\frac{2}{3\pi^2}\cos(2\pi x)
\right)
\sin^2(\pi x)\,dx
=
\frac5{6\pi^2},
$$
and
$$
-\frac{40}{9\pi^3}
\int_0^1\sin^3(\pi x)\,dx
=
-\frac{160}{27\pi^4}.
$$
Therefore
$$
\int_0^1y_1\sin^2(\pi x)\,dx
=
\frac5{6\pi^2}
-\frac{224}{27\pi^4}.
$$
It follows that
$$
\lambda_2
=
\frac{10}{3\pi^2}
-\frac{896}{27\pi^4}
=
\frac{90\pi^2-896}{27\pi^4}.
$$

Step 5: Evaluate the normalized eigenvalue limit

Since $\varepsilon=1/n$,
$$
\lambda_n
=
\pi^2
+\frac{16}{3\pi n}
+\frac{90\pi^2-896}{27\pi^4n^2}
+O(n^{-3}).
$$
Therefore
$$
n^2
\left[
\lambda_n-\pi^2-\frac{16}{3\pi n}
\right]
\to
\frac{90\pi^2-896}{27\pi^4}.
$$

Final Answer: $\boxed{\frac{90\pi^2-896}{27\pi^4}}$

## Answer

$\frac{90\pi^2-896}{27\pi^4}$

## Classification

**Domain:** Differential Equations and Dynamical Systems

**Sub-domain:** Boundary value problems

**Problem Type:** Exact computation

**Answer Type:** Exact scalar

## Solution Concepts

- nonlinear eigenvalue perturbation
- resonant boundary value problems
- solvability conditions
- normalization constraints
- second-order asymptotics
