# Normalized Math Problem

## LaTeX (Normalized)

For each prime power $Q>37$ satisfying
$$
Q\equiv19\pmod{36},
$$
put
$$
n=Q-1
$$
and let
$$
L_Q=\mathbb F_Q(x,y),
\qquad
x^n+y^n+1=0.
$$

Inside $L_Q$, define
$$
u=
\frac{x^{36}+y^{36}+1}
{(x^{18}+y^{18}+1)^2},
$$
$$
v=
\frac{x^{90}+y^{90}+1}
{(x^{18}+y^{18}+1)^5},
$$
and let
$$
K_Q=\mathbb F_Q(u,v).
$$

Determine the exact value of
$$
\lim_{\substack{Q\to\infty\\Q\text{ prime power}\\Q\equiv19\pmod{108}}}
Q^2\left[
\frac{\sqrt{g(K_{Q^3})}}
{Q^2\sqrt{g(K_Q)}}-1
-
Q^2\left(
\frac{\sqrt{g(K_{Q^9})}}
{Q^6\sqrt{g(K_{Q^3})}}-1
\right)
\right].
$$
The indexing set is unbounded; for example, $Q=19^{6k+1}$ is admissible for every $k\geq1$.

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

This problem involves an exact second-order scale-comparison limit whose leading correction cancels internally,
which are part of Calculus and Limits and continuity.
The problem also involves algebraic function fields, finite group actions, symmetric rational functions, and ramification,
which are part of Abstract Algebra and Computational algebra.
However, those algebraic calculations determine the exact genus asymptotics at three linked scales, while the final object is one exact scalar limit.

Specifically:

- The rational generators encode the relevant quotient field indirectly rather than displaying its elementary symmetric coordinates.
- The genus calculation requires reconciling several stabilizer behaviors with an arithmetic residue condition.
- The three-scale normalization makes the requested scalar depend on a lower-order term rather than the dominant growth.
