# Solution

## Step 1: Write the tangent slopes

The parabola is

$$
y=x^2.
$$

Its derivative is

$$
\frac{dy}{dx}=2x.
$$

At

$$
P_a=(a,a^2),
$$

the tangent slope is

$$
2a.
$$

At

$$
P_b=(b,b^2),
$$

the tangent slope is

$$
2b.
$$

## Step 2: Translate perpendicularity

Two nonvertical lines with slopes $m_1$ and $m_2$ are perpendicular exactly when

$$
m_1m_2=-1.
$$

Here the slopes are $2a$ and $2b$, so

$$
(2a)(2b)=-1.
$$

Multiply:

$$
4ab=-1.
$$

So

$$
ab=-\frac14.
$$

## Step 3: Express the midpoint

The midpoint of

$$
P_a=(a,a^2)
$$

and

$$
P_b=(b,b^2)
$$

is

$$
M=(X,Y)=\left(\frac{a+b}{2},\frac{a^2+b^2}{2}\right).
$$

So

$$
X=\frac{a+b}{2}
$$

and

$$
Y=\frac{a^2+b^2}{2}.
$$

From the first equation,

$$
a+b=2X.
$$

## Step 4: Eliminate $a$ and $b$

Use the identity

$$
a^2+b^2=(a+b)^2-2ab.
$$

Substitute

$$
a+b=2X
$$

and

$$
ab=-\frac14.
$$

Then

$$
a^2+b^2=(2X)^2-2\left(-\frac14\right).
$$

Compute each term:

$$
(2X)^2=4X^2
$$

and

$$
-2\left(-\frac14\right)=\frac12.
$$

So

$$
a^2+b^2=4X^2+\frac12.
$$

Since

$$
Y=\frac{a^2+b^2}{2},
$$

we get

$$
Y=\frac{4X^2+\frac12}{2}.
$$

Divide each term by $2$:

$$
Y=2X^2+\frac14.
$$

## Step 5: Check that every point on the equation occurs

For any real $X$, define $a$ and $b$ as the two roots of

$$
z^2-2Xz-\frac14=0.
$$

The sum of the roots is

$$
2X,
$$

and the product of the roots is

$$
-\frac14.
$$

The discriminant is

$$
(-2X)^2-4(1)\left(-\frac14\right)
=4X^2+1,
$$

which is positive for every real $X$. So the two real roots exist. For these roots,

$$
ab=-\frac14,
$$

so the tangent lines are perpendicular, and the midpoint has the required $X$-coordinate and $Y$-coordinate

$$
Y=2X^2+\frac14.
$$

Final Answer: $\boxed{Y=2X^2+\frac14}$

## Answer

$Y=2X^2+\frac14$

**Classification**

**Domain:** Topology and Geometry

**Sub-domain:** Coordinate geometry

**Problem Type:** Locus problem

**Answer Type:** Equation

**Concepts:** parabola, tangent slope, perpendicular lines, midpoint locus, parameter elimination

## Black-Box Audit

The solution derives the tangent slopes, converts perpendicularity into the equation $ab=-1/4$, and eliminates the two parameters with a displayed algebraic identity. The existence check uses the quadratic discriminant explicitly, so the locus is proved in both directions without computational software.
