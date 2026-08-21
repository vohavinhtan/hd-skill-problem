# Normalized Math Problem

## LaTeX (Normalized)

For $t>-1$, define
$$
g(t)=t-\log(1+t).
$$
For each $x>0$, let $y(x)\in(-1,0)$ be the unique number satisfying
$$
g(y(x))=g(x).
$$
Set
$$
M(x)=
\frac{\displaystyle\int_{y(x)}^x g(t)\,dt}
{g(x)\bigl(x-y(x)\bigr)}.
$$
Determine the exact value of
$$
\lim_{x\to0^+}
\frac{
M(x)-\dfrac13-\dfrac{x+y(x)}{90}
+\dfrac{(x+y(x))^2}{12600}
+\dfrac{13(x+y(x))^3}{324000}
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

This problem involves an implicitly defined branch, an exact local reparameterization, asymptotic series reversion, and extraction of a high-order limit coefficient,
which are part of Calculus and Limits and continuity.
The problem also involves hyperbolic-function identities and formal power-series algebra,
which are part of Algebra, Functions, and Trigonometry and Algebraic expressions and manipulation.
However, those identities are intermediate tools for resolving the implicit local geometry, while the requested object is an exact limit.
