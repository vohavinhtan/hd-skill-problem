# Normalized Math Problem

## LaTeX (Normalized)

For $t<1$, define
$$
g(t)=-\log(1-t)-t-\frac{t^2}{2}-\frac{t^3}{3}.
$$
For each $x\in(0,1)$, let $y(x)<0$ be the unique number satisfying
$$
g(y(x))=g(x).
$$
Set
$$
M(x)=
\frac{\displaystyle\int_{y(x)}^x g(t)\,dt}
{g(x)\bigl(x-y(x)\bigr)}.
$$
For all sufficiently small $x>0$, let $z(x)>0$ be the unique number satisfying
$$
g(z(x))
=
\frac14
\left[
\frac{2625}{16}
\left(
\frac15-M(x)
\right)
\right]^2.
$$
Determine the exact value of
$$
\lim_{x\to0^+}
\frac{
x+y(x)
+\dfrac25z(x)^2
+\dfrac4{25}z(x)^3
+\dfrac{977}{10500}z(x)^4
+\dfrac{881}{13125}z(x)^5
}
{z(x)^6}.
$$

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Calculus |
| **Sub-domain** | Limits and continuity |
| **Problem Type** | Exact computation |
| **Answer Type** | Exact scalar |

---

## Domain Explanation

This problem involves two dependent implicit local branches, degenerate asymptotic normalization, series reversion, and a high-order limit coefficient, which are part of Calculus and Limits and continuity. The problem also involves inverse power series and algebraic composition of local expansions, which are part of Algebra, Functions, and Trigonometry and Algebraic expressions and manipulation. However, those algebraic operations serve the local limit calculation rather than defining the requested object.
