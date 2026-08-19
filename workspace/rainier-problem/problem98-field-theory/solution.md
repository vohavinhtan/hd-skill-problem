## Steps

Step 1: Recover the hidden cyclic quintic field

Set
$$
f(t)=t^5+t^4-4t^3-3t^2+3t+1.
$$
Then
$$
g(x)=-f(-x^2).
$$

Let $\zeta$ be a primitive eleventh root of unity and put
$$
\theta=\zeta+\zeta^{-1}.
$$
For $j\geq0$, write
$$
s_j=\zeta^j+\zeta^{-j}.
$$
Then $s_0=2$, $s_1=\theta$, and
$$
s_{j+1}=\theta s_j-s_{j-1}.
$$
The first values are
$$
s_2=\theta^2-2,
$$
$$
s_3=\theta^3-3\theta,
$$
$$
s_4=\theta^4-4\theta^2+2,
$$
$$
s_5=\theta^5-5\theta^3+5\theta.
$$
Since $\zeta$ is an eleventh root of unity distinct from $1$,
$$
1+s_1+s_2+s_3+s_4+s_5=0.
$$
Substitution gives
$$
\theta^5+\theta^4-4\theta^3-3\theta^2+3\theta+1=0.
$$
Thus $f(\theta)=0$.

The cyclotomic field $\mathbb{Q}(\zeta)$ has degree $10$. Since $\zeta$ satisfies
$$
X^2-\theta X+1=0
$$
over $\mathbb{Q}(\theta)$,
$$
[\mathbb{Q}(\theta):\mathbb{Q}]\geq5.
$$
The polynomial $f$ has degree $5$, so it is the minimal polynomial of $\theta$ and
$$
[K:\mathbb{Q}]=5,\qquad K=\mathbb{Q}(\theta).
$$
Complex conjugation fixes $K$, and the fixed field of complex conjugation in $\mathbb{Q}(\zeta)$ also has degree $5$. Hence $K$ is the maximal real subfield and is cyclic Galois of degree $5$ over $\mathbb{Q}$.

Step 2: Express the splitting field as a multiquadratic extension of $K$

Let $\sigma$ be induced by $\zeta\mapsto\zeta^2$. Its restriction to $K$ has order $5$. Put
$$
\theta_i=\sigma^i(\theta),\qquad a_i=-\theta_i\qquad(0\leq i\leq4).
$$
The five $\theta_i$ are the roots of $f$, so
$$
f(t)=\prod_{i=0}^4(t-\theta_i).
$$
Therefore
$$
g(x)=-f(-x^2)=\prod_{i=0}^4(x^2+\theta_i)=\prod_{i=0}^4(x^2-a_i).
$$
Its roots are the ten numbers $\pm\sqrt{a_i}$. The splitting field contains the squares $a_i=-\theta_i$, hence contains $K$. Consequently
$$
L=K(\sqrt{a_0},\sqrt{a_1},\sqrt{a_2},\sqrt{a_3},\sqrt{a_4}).
$$

Evaluating the factorization of $f$ at $0$ gives
$$
a_0a_1a_2a_3a_4=\prod_{i=0}^4(-\theta_i)=f(0)=1.
$$
Thus the five squareclasses of the $a_i$ have at least one relation.

Step 3: Show that the product relation is the only squareclass relation

The conjugates $\theta_i$ correspond, up to replacing an exponent by its negative modulo $11$, to
$$
2\cos\frac{2\pi}{11},\quad
2\cos\frac{4\pi}{11},\quad
2\cos\frac{8\pi}{11},\quad
2\cos\frac{6\pi}{11},\quad
2\cos\frac{10\pi}{11}.
$$
The first two are positive and the last three are negative. Hence the signs of
$$
(a_0,a_1,a_2,a_3,a_4)
$$
under the identity embedding are
$$
(-,-,+,+,+).
$$
Under the five real embeddings of $K$, the sign vectors of the five $a_i$ are the cyclic shifts of this pattern.

Encode a negative sign by $1$ and a positive sign by $0$. After a cyclic relabeling of the coordinates, these five vectors are
$$
v_i=e_i+e_{i+1}\in\mathbb{F}_2^5,
$$
where the indices are taken modulo $5$.

Suppose
$$
\sum_{i=0}^4\varepsilon_i v_i=0,\qquad \varepsilon_i\in\mathbb{F}_2.
$$
Looking at coordinate $j$ gives
$$
\varepsilon_j+\varepsilon_{j-1}=0.
$$
Therefore all five $\varepsilon_i$ are equal. The only linear relations among the $v_i$ are the zero relation and
$$
v_0+v_1+v_2+v_3+v_4=0.
$$
Their span has dimension $4$.

Now suppose
$$
a_0^{\varepsilon_0}a_1^{\varepsilon_1}a_2^{\varepsilon_2}a_3^{\varepsilon_3}a_4^{\varepsilon_4}
$$
is a square in $K$. A nonzero square is positive under every real embedding of the totally real field $K$, so its sign vector is zero. The preceding calculation forces all $\varepsilon_i$ to be equal. The all-one relation is exactly
$$
a_0a_1a_2a_3a_4=1.
$$
Hence the squareclasses of $a_0,\ldots,a_4$ span a $4$-dimensional subspace of
$$
K^\times/K^{\times2}.
$$

Step 4: Compute the splitting-field degree

For a field of characteristic different from $2$, adjoining square roots of elements whose squareclasses span an $r$-dimensional subspace of $K^\times/K^{\times2}$ gives a multiquadratic extension of degree $2^r$. Step 3 gives $r=4$, so
$$
[L:K]=2^4=16.
$$
Using $[K:\mathbb{Q}]=5$ from Step 1,
$$
[L:\mathbb{Q}]=[L:K][K:\mathbb{Q}]=16\cdot5=80.
$$

Final Answer: $\boxed{80}$

---

## Answer

$80$

---

## Classification

**Domain:** Abstract Algebra

**Sub-domain:** Field theory

**Problem Type:** Exact computation

**Answer Type:** Exact scalar

---

## Solution Concepts

- splitting fields
- cyclotomic fields
- multiquadratic extensions
- squareclass independence
- real embeddings
