## Steps

Step 1: Separate the endpoint singularity in the finite product

For $a$ in a fixed compact subset of $(0,\infty)$, write
$$
\log(1-e^{-at})
=
\log(at)+g_a(t),
$$
where
$$
g_a(t)=
\log\frac{1-e^{-at}}{at}.
$$
The apparent singularity is removable at $t=0$, with
$$
g_a(0)=0.
$$
Therefore
$$
\log Q_n(a)
=
n\log a+\log(n!)-n\log n
+\sum_{k=1}^{n}g_a\left(\frac{k}{n}\right).
$$

Stirling's expansion gives
$$
\log(n!)
=
n\log n-n+\frac12\log(2\pi n)
+\frac1{12n}
+O(n^{-3}).
$$
Euler-Maclaurin applied to the smooth function $g_a$ gives
$$
\sum_{k=1}^{n}g_a\left(\frac{k}{n}\right)
=
n\int_0^1g_a(t)\,dt
+\frac{g_a(1)}2
+\frac{g_a'(1)-g_a'(0)}{12n}
+O(n^{-3}).
$$
Define
$$
I(a)=\int_0^1\log(1-e^{-at})\,dt.
$$
Since
$$
g_a(1)=\log\frac{1-e^{-a}}a
$$
and
$$
g_a'(t)=\frac{a}{e^{at}-1}-\frac1t,
$$
we have
$$
g_a'(0)=-\frac a2,
\qquad
g_a'(1)=\frac{a}{e^a-1}-1.
$$
Combining the expansions,
$$
\log Q_n(a)
=
nI(a)
+\frac12\log(2\pi n)
+C_0(a)
+\frac{C_1(a)}n
+O(n^{-3}),
$$
where
$$
C_0(a)=
\frac12\log\frac{1-e^{-a}}a
$$
and
$$
C_1(a)=
\frac{a}{12}
\left(
\frac1{e^a-1}+\frac12
\right).
$$

Step 2: Identify the stationary limiting exponent

Integration in the variable $s=at$ gives
$$
I(a)=
\frac1a
\int_0^a\log(1-e^{-s})\,ds.
$$
If
$$
N(a)=\operatorname{Li}_2(e^{-a})-\frac{\pi^2}{6},
$$
then
$$
N'(a)=\log(1-e^{-a})
$$
and
$$
I(a)=\frac{N(a)}a.
$$

The identity
$$
\operatorname{Li}_2(x)+\operatorname{Li}_2(1-x)
=
\frac{\pi^2}{6}
-\log x\log(1-x)
$$
follows by differentiation and evaluation at $x=0$. At $x=1/2$ it gives
$$
\operatorname{Li}_2\left(\frac12\right)
=
\frac{\pi^2}{12}-\frac{\ell^2}{2}.
$$
Therefore
$$
I(\ell)
=
-\frac{\pi^2}{12\ell}-\frac{\ell}{2}.
$$

Set
$$
J(a)=I(a)-\kappa\log a.
$$
At $a=\ell$,
$$
N(\ell)
=
-\frac{\pi^2}{12}-\frac{\ell^2}{2},
$$
$$
N'(\ell)=-\ell,
\qquad
N''(\ell)=1,
\qquad
N'''(\ell)=-2.
$$
From these values,
$$
I'(\ell)
=
\frac{\pi^2}{12\ell^2}-\frac12,
$$
so the choice
$$
\kappa=\ell I'(\ell)
$$
gives
$$
J'(\ell)=0.
$$

The next derivatives are
$$
J''(\ell)
=
\frac{18\ell^2-\pi^2}{12\ell^3}
$$
and
$$
J'''(\ell)
=
\frac{\pi^2-15\ell^2-6\ell^3}{3\ell^4}.
$$
Since $\pi^2>18\ell^2$,
$$
J''(\ell)<0.
$$

Step 3: Expand the finite-product equation near the stationary point

The right side in the problem is
$$
nJ(\ell)
+\frac12\log\frac{\pi n}{\ell}
+\frac{\eta}{n}.
$$
At $a=\ell$,
$$
C_0(\ell)=\frac12\log\frac1{2\ell},
$$
so
$$
\frac12\log(2\pi n)+C_0(\ell)
=
\frac12\log\frac{\pi n}{\ell}.
$$
The equation for $a_n$ becomes
$$
n\bigl(J(a_n)-J(\ell)\bigr)
+C_0(a_n)-C_0(\ell)
+\frac{C_1(a_n)-\eta}{n}
+O(n^{-3})
=0.
$$

The required local derivatives are
$$
C_0'(\ell)=\frac{\ell-1}{2\ell},
$$
$$
C_0''(\ell)=\frac1{2\ell^2}-1,
$$
$$
C_1(\ell)=\frac{\ell}{8},
$$
and
$$
C_1'(\ell)=\frac18-\frac{\ell}{6}.
$$

Away from $\ell$, the leading term $n(J(a)-J(\ell))$ prevents a solution in a fixed compact part of $(\ell/2,\ell)$. Therefore
$$
a_n-\ell=O(n^{-1}).
$$
Write
$$
a_n=
\ell+\frac{d}{n}+\frac{e}{n^2}+o(n^{-2}).
$$

Step 4: Determine the first displacement and select the left branch

Substitution into Step 3 gives at order $n^{-1}$
$$
\frac12J''(\ell)d^2
+C_0'(\ell)d
+C_1(\ell)-\eta
=0.
$$
Using the definitions of $\kappa$ and $\eta$, this polynomial factors as
$$
\frac{
(2d+3)
\left[
(36\ell^2-2\pi^2)d
+24\ell^3-78\ell^2+3\pi^2
\right]
}
{96\ell^3}
=0.
$$
The branch lying to the left of $\ell$ has
$$
d=-\frac32.
$$
The other local branch lies to the right of $\ell$. This also gives the stated uniqueness in $(\ell/2,\ell)$ for large $n$.

Step 5: Determine the second displacement

At order $n^{-2}$, Step 3 gives
$$
\left(
J''(\ell)d+C_0'(\ell)
\right)e
+
\frac{J'''(\ell)}6d^3
+\frac{C_0''(\ell)}2d^2
+C_1'(\ell)d
=0.
$$
Insert
$$
d=-\frac32.
$$
The coefficient of $e$ becomes
$$
J''(\ell)d+C_0'(\ell)
=
\frac{4\ell^3-22\ell^2+\pi^2}{8\ell^3}.
$$
The remaining terms give
$$
e
=
-\frac{
4\ell^5-21\ell^4+18\ell^3+54\ell^2-3\pi^2
}{
2\ell(4\ell^3-22\ell^2+\pi^2)
}.
$$
Therefore
$$
a_n
=
\ell-\frac{3}{2n}
-\frac{
4\ell^5-21\ell^4+18\ell^3+54\ell^2-3\pi^2
}{
2\ell(4\ell^3-22\ell^2+\pi^2)n^2
}
+o(n^{-2}).
$$
The normalization in the problem isolates the coefficient of $n^{-2}$.

Final Answer: $\boxed{-\frac{4\ell^5-21\ell^4+18\ell^3+54\ell^2-3\pi^2}{2\ell(4\ell^3-22\ell^2+\pi^2)}}$

## Answer

$-\frac{4\ell^5-21\ell^4+18\ell^3+54\ell^2-3\pi^2}{2\ell(4\ell^3-22\ell^2+\pi^2)}$

## Classification

**Domain:** Calculus

**Sub-domain:** Limits and continuity

**Problem Type:** Exact computation

**Answer Type:** Exact scalar

## Solution Concepts

- singular Euler-Maclaurin expansion
- finite product asymptotics
- dilogarithm evaluation
- stationary implicit roots
- second-order limits
