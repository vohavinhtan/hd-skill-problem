# Normalized Math Problem

## LaTeX (Normalized)

For $a>0$ and each positive integer $n$, define
$$
B_n(a)=
\sum_{k=0}^{n}
(-1)^k\binom{n}{k}\frac{1}{k+an}.
$$
For each fixed $c\in(0,1)$ and all sufficiently large $n$, let $a_n(c)\in(\frac12,1)$ be the unique solution of
$$
B_n(a_n(c))B_n(2-a_n(c))
=
e^{c/(2n)}B_n(1)^2.
$$
Determine the function $L:(0,1)\to\mathbb R$ defined by
$$
L(c)=
\lim_{n\to\infty}
n^3
\left[
a_n(c)-1
+\frac{\sqrt c}{n}
-\frac{5\sqrt c}{8n^2}
\right].
$$

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Calculus |
| **Sub-domain** | Limits and continuity |
| **Problem Type** | Symbolic derivation |
| **Answer Type** | Function or mapping |

---

## Domain Explanation

The requested object is a parameterized limit of roots of finite-sum equations, so Calculus and Limits and continuity is the best fit. The alternating binomial sum hides an exact beta-function representation, and the symmetric product creates a degenerate implicit displacement around $a=1$. Gamma-function and polygamma expansions are intermediate tools for extracting the limiting function.
