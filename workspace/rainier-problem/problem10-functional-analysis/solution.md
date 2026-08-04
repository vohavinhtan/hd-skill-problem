# Solution

## Step 1: Use the projection condition

Let

$$
p(x)=ax+b.
$$

The minimizing affine function is the orthogonal projection of $x^m$ onto the two-dimensional subspace spanned by $1$ and $x$. The residual

$$
r(x)=x^m-ax-b
$$

must be orthogonal to both basis functions:

$$
\int_0^1 r(x)\,dx=0
$$

and

$$
\int_0^1 x r(x)\,dx=0.
$$

These two equations determine $a$ and $b$ because the Gram matrix of $1$ and $x$ is nonsingular.

## Step 2: Compute the first normal equation

The first condition is

$$
\int_0^1 (x^m-ax-b)\,dx=0.
$$

Compute each term:

$$
\int_0^1 x^m\,dx=\frac{1}{m+1},
$$

$$
\int_0^1 ax\,dx=\frac{a}{2},
$$

and

$$
\int_0^1 b\,dx=b.
$$

So

$$
\frac{1}{m+1}-\frac{a}{2}-b=0.
$$

Equivalently,

$$
\frac{a}{2}+b=\frac{1}{m+1}.
$$

## Step 3: Compute the second normal equation

The second condition is

$$
\int_0^1 x(x^m-ax-b)\,dx=0.
$$

Expand:

$$
x(x^m-ax-b)=x^{m+1}-ax^2-bx.
$$

Compute each integral:

$$
\int_0^1 x^{m+1}\,dx=\frac{1}{m+2},
$$

$$
\int_0^1 ax^2\,dx=\frac{a}{3},
$$

and

$$
\int_0^1 bx\,dx=\frac{b}{2}.
$$

This gives

$$
\frac{1}{m+2}-\frac{a}{3}-\frac{b}{2}=0.
$$

Equivalently,

$$
\frac{a}{3}+\frac{b}{2}=\frac{1}{m+2}.
$$

## Step 4: Solve for $a$

From

$$
\frac{a}{2}+b=\frac{1}{m+1},
$$

we get

$$
b=\frac{1}{m+1}-\frac{a}{2}.
$$

Substitute this expression for $b$ into

$$
\frac{a}{3}+\frac{b}{2}=\frac{1}{m+2}.
$$

The result is

$$
\frac{a}{3}+\frac12\left(\frac{1}{m+1}-\frac{a}{2}\right)=\frac{1}{m+2}.
$$

Distribute the factor $1/2$:

$$
\frac{a}{3}+\frac{1}{2(m+1)}-\frac{a}{4}=\frac{1}{m+2}.
$$

Combine the two $a$ terms:

$$
\frac{a}{3}-\frac{a}{4}=\frac{4a-3a}{12}=\frac{a}{12}.
$$

So

$$
\frac{a}{12}+\frac{1}{2(m+1)}=\frac{1}{m+2}.
$$

Move the constant term:

$$
\frac{a}{12}
=\frac{1}{m+2}-\frac{1}{2(m+1)}.
$$

Use the common denominator $2(m+1)(m+2)$:

$$
\frac{1}{m+2}
=\frac{2(m+1)}{2(m+1)(m+2)}
$$

and

$$
\frac{1}{2(m+1)}
=\frac{m+2}{2(m+1)(m+2)}.
$$

This gives

$$
\frac{a}{12}
=\frac{2(m+1)-(m+2)}{2(m+1)(m+2)}
=\frac{2m+2-m-2}{2(m+1)(m+2)}
=\frac{m}{2(m+1)(m+2)}.
$$

Multiply by $12$:

$$
a=\frac{12m}{2(m+1)(m+2)}
 =\frac{6m}{(m+1)(m+2)}.
$$

## Step 5: Solve for $b$

Use

$$
b=\frac{1}{m+1}-\frac{a}{2}.
$$

Substitute the value of $a$:

$$
b=\frac{1}{m+1}-\frac12\cdot \frac{6m}{(m+1)(m+2)}.
$$

Compute the second term:

$$
\frac12\cdot \frac{6m}{(m+1)(m+2)}
=\frac{3m}{(m+1)(m+2)}.
$$

So

$$
b=\frac{1}{m+1}-\frac{3m}{(m+1)(m+2)}.
$$

Put the first fraction over the common denominator:

$$
\frac{1}{m+1}=\frac{m+2}{(m+1)(m+2)}.
$$

Then

$$
b=\frac{m+2-3m}{(m+1)(m+2)}
 =\frac{2-2m}{(m+1)(m+2)}
 =\frac{2(1-m)}{(m+1)(m+2)}.
$$

## Step 6: Check the special case $m=2$

For $m=2$,

$$
a=\frac{6\cdot 2}{(2+1)(2+2)}=\frac{12}{12}=1,
$$

and

$$
b=\frac{2(1-2)}{(2+1)(2+2)}=-\frac{2}{12}=-\frac16.
$$

This matches the direct projection of $x^2$ onto affine functions.

Final Answer: $\boxed{\begin{bmatrix}\frac{6m}{(m+1)(m+2)}\\ \frac{2(1-m)}{(m+1)(m+2)}\end{bmatrix}}$

## Answer

$\begin{bmatrix}\frac{6m}{(m+1)(m+2)}\\ \frac{2(1-m)}{(m+1)(m+2)}\end{bmatrix}$

**Classification**

**Domain:** Analysis

**Sub-domain:** Functional analysis

**Problem Type:** Optimization

**Answer Type:** Vector

**Concepts:** Hilbert space projection, normal equations, least squares, exact integration

## Black-Box Audit

The solution derives the two normal equations from orthogonality and evaluates every integral symbolically. Each algebraic simplification is shown with explicit common denominators, so the answer is obtained fully by hand with no external computational tools.
