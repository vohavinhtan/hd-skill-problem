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
Determine the exact value of
$$
\lim_{x\to0^+}
\frac{
M(x)-\dfrac13
+\dfrac{x+y(x)}{180}
+\dfrac{19(x+y(x))^2}{16800}
+\dfrac{5381(x+y(x))^3}{18144000}
}
{(x+y(x))^4}.
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

This problem involves an implicitly defined branch, a nonlinear local change of variable, series reversion, and extraction of a high-order limit coefficient,
which are part of Calculus and Limits and continuity.
The problem also involves Möbius transformations, hyperbolic-function identities, and formal power-series algebra,
which are part of Algebra, Functions, and Trigonometry and Algebraic expressions and manipulation.
However, those algebraic transformations are intermediate steps used to resolve the local asymptotics, while the requested object is an exact limit.
