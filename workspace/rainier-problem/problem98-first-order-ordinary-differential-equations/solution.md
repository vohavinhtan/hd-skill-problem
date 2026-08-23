## Steps

Step 1: Rescale the Riccati equation

Put
$$
z=n^{2/3}x
$$
and
$$
y_n(x)=n^{-1/3}w_n(z).
$$
Then
$$
y_n'(x)=n^{1/3}w_n'(z),
$$
so the differential equation becomes
$$
w_n'(z)=z-w_n(z)^2.
$$
The terminal point $x=1$ corresponds to
$$
N=n^{2/3},
$$
and
$$
w_n(N)=0.
$$

Now write
$$
w_n(z)=\frac{u_n'(z)}{u_n(z)}.
$$
Then
$$
w_n'(z)
=
\frac{u_n''(z)}{u_n(z)}-w_n(z)^2,
$$
hence
$$
u_n''(z)=zu_n(z).
$$
Thus the nonlinear problem has been reduced to the Airy equation.

Step 2: Encode the terminal condition in the Airy basis

Let $\operatorname{Ai}$ and $\operatorname{Bi}$ be the real Airy solutions of
$$
u''=zu.
$$
Write
$$
u_n(z)=\operatorname{Ai}(z)+r_n\operatorname{Bi}(z).
$$
The condition $w_n(N)=0$ is equivalent to
$$
u_n'(N)=0,
$$
so
$$
r_n=
-\frac{\operatorname{Ai}'(N)}
{\operatorname{Bi}'(N)}.
$$
For $N>0$,
$$
\operatorname{Ai}'(N)<0,
\qquad
\operatorname{Bi}'(N)>0,
$$
and therefore $r_n>0$.

Since both Airy functions are positive on $[0,\infty)$, the denominator $u_n$ has no zero there. Hence this construction gives the solution on the whole interval.

At $z=0$,
$$
n^{1/3}y_n(0)
=
w_n(0)
=
\frac{
\operatorname{Ai}'(0)+r_n\operatorname{Bi}'(0)
}{
\operatorname{Ai}(0)+r_n\operatorname{Bi}(0)
}.
$$

Step 3: Extract the dependence on the exponentially small coefficient

The Airy Wronskian is
$$
\operatorname{Ai}(z)\operatorname{Bi}'(z)
-
\operatorname{Ai}'(z)\operatorname{Bi}(z)
=
\frac1\pi.
$$
Expanding the quotient from Step 2 at $r_n=0$ gives
$$
w_n(0)
=
\frac{\operatorname{Ai}'(0)}{\operatorname{Ai}(0)}
+
\frac{r_n}{\pi\operatorname{Ai}(0)^2}
+
O(r_n^2).
$$

The integral representation
$$
\operatorname{Ai}(z)
=
\frac1\pi
\int_0^\infty
\cos\left(\frac{t^3}{3}+zt\right)\,dt
$$
gives
$$
\operatorname{Ai}(0)
=
\frac1{3^{2/3}\Gamma(\frac23)}
$$
and
$$
\operatorname{Ai}'(0)
=
-\frac1{3^{1/3}\Gamma(\frac13)}.
$$
Therefore
$$
-\frac{\operatorname{Ai}'(0)}
{\operatorname{Ai}(0)}
=
3^{1/3}
\frac{\Gamma(\frac23)}{\Gamma(\frac13)}
=
C,
$$
while
$$
\frac1{\pi\operatorname{Ai}(0)^2}
=
\frac{3^{4/3}\Gamma(\frac23)^2}{\pi}
=
2D.
$$
Consequently
$$
C+n^{1/3}y_n(0)
=
2Dr_n+O(r_n^2).
$$

Step 4: Resolve the first relative correction to the Airy tail

For large positive $z$, substitution of a descending-power ansatz into
$$
u''=zu
$$
gives
$$
\operatorname{Ai}'(z)
=
-\frac{z^{1/4}}{2\sqrt\pi}
e^{-\frac23z^{3/2}}
\left[
1+\frac7{48z^{3/2}}
+O(z^{-3})
\right]
$$
and
$$
\operatorname{Bi}'(z)
=
\frac{z^{1/4}}{\sqrt\pi}
e^{\frac23z^{3/2}}
\left[
1-\frac7{48z^{3/2}}
+O(z^{-3})
\right].
$$
Hence
$$
r_n
=
\frac12
e^{-\frac43N^{3/2}}
\frac{
1+\frac7{48N^{3/2}}+O(N^{-3})
}{
1-\frac7{48N^{3/2}}+O(N^{-3})
}.
$$
Since
$$
N^{3/2}=n,
$$
we obtain
$$
r_n
=
\frac12e^{-4n/3}
\left[
1+\frac7{24n}
+O(n^{-2})
\right].
$$

Step 5: Evaluate the exponentially normalized limit

Combining Steps 3 and 4,
$$
C+n^{1/3}y_n(0)
=
De^{-4n/3}
\left[
1+\frac7{24n}
+O(n^{-2})
\right]
+
O(e^{-8n/3}).
$$
Therefore
$$
C+n^{1/3}y_n(0)-De^{-4n/3}
=
\frac{7D}{24n}e^{-4n/3}
+
O\left(\frac{e^{-4n/3}}{n^2}\right)
+
O(e^{-8n/3}).
$$
Multiplication by $ne^{4n/3}$ gives
$$
\lim_{n\to\infty}
ne^{4n/3}
\left[
C+n^{1/3}y_n(0)-De^{-4n/3}
\right]
=
\frac{7D}{24}.
$$
Using the definition of $D$ gives the required exact value.

Final Answer: $\boxed{\frac{7\cdot3^{4/3}\Gamma(\frac23)^2}{48\pi}}$

## Answer

$\frac{7\cdot3^{4/3}\Gamma(\frac23)^2}{48\pi}$

## Classification

**Domain:** Differential Equations and Dynamical Systems

**Sub-domain:** First-order ordinary differential equations

**Problem Type:** Exact computation

**Answer Type:** Exact scalar

## Solution Concepts

- riccati linearization
- turning-point scaling
- airy functions
- wronskian identities
- exponentially small asymptotics
