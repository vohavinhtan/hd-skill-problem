# Normalized Math Problem

## LaTeX (Normalized)

For $t<1$, define
$$
g(t)=\frac{t}{1-t}+\log(1-t).
$$
For each $x\in(0,1)$, let $y(x)<0$ be the unique number satisfying
$$
g(y(x))=g(x).
$$
Set
$$
M(x)=
\frac{\displaystyle\int_{y(x)}^x\frac{g(t)}{(1-t)^2}\,dt}
{\displaystyle g(x)\frac{x-y(x)}{(1-x)(1-y(x))}}.
$$
For all sufficiently small $x>0$, let $z(x)>0$ be the unique number satisfying
$$
z(x)-\log(1+z(x))
=
270\left(M(x)-\frac13\right).
$$
Determine the exact value of
$$
\lim_{x\to0^+}
\frac{
x+y(x)
+\dfrac{z(x)^2}{3}
-\dfrac{2z(x)^3}{9}
+\dfrac{53z(x)^4}{280}
-\dfrac{103z(x)^5}{630}
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

This problem involves nested implicit local branches, asymptotic normalization, series reversion, and extraction of a high-order limit coefficient,
which are part of Calculus and Limits and continuity.
The problem also involves exponential-logarithmic transformations and formal power-series manipulation,
which are part of Algebra, Functions, and Trigonometry and Algebraic expressions and manipulation.
However, those algebraic tools only resolve the dependent local parameters, while the requested object is an exact limit.
