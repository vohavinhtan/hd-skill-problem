# Normalized Math Problem

## LaTeX (Normalized)

For each prime power $Q$ satisfying
$$
Q\equiv1\pmod{42},
$$
choose a primitive $21$st root $\zeta\in\mathbb F_Q$ and put
$$
\omega=\zeta^7.
$$
Let
$$
n=Q-1
$$
and let
$$
L_Q=\mathbb F_Q(x,y),
\qquad
x^n+\omega y^n+\omega^2=0.
$$

Let $K_Q$ be the common fixed field in $L_Q$ of the two automorphisms
$$
(x,y)\longmapsto
\left(
\zeta\frac{y}{x},
\frac{\zeta^{-4}}{x}
\right)
$$
and
$$
(x,y)\longmapsto
\left(
\frac{\zeta}{y},
\zeta^{-4}\frac{x}{y}
\right).
$$

Determine the exact value of
$$
\lim_{\substack{Q\to\infty\\Q\text{ prime power}\\Q\equiv1\pmod{42}}}
\left(126g(K_Q)-Q^2+5Q\right).
$$
The indexing set is unbounded; for example, $Q=43^k$ is admissible for every $k\geq1$.

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

This problem involves an exact renormalized limit of a family of numerical invariants, which are part of Calculus and Limits and continuity.
The problem also involves algebraic function fields, finite group actions, fixed fields, and ramification, which are part of Abstract Algebra and Computational algebra.
However, those algebraic structures supply the coefficients needed for the requested limit, while the final object being determined is a single exact limit.

Specifically:

- The two displayed automorphisms conceal a semidirect product whose order must be reconstructed from their compositions.
- The linear and constant terms surviving the renormalization depend on an exact fixed-point calculation, so the limit cannot be obtained from the leading genus asymptotic alone.
- The final cancellation gives one exact scalar rather than an auxiliary group, genus formula, or collection of outputs.
