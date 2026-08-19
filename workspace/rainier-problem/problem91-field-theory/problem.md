# Normalized Math Problem

## LaTeX (Normalized)

Let $p\geq5$ be a prime and let
$$
K=\mathbb F_p(s,t),
$$
where $s,t$ are algebraically independent over $\mathbb F_p$.

In an algebraic closure of $K$, let $u,v$ be the unique elements satisfying
$$
u^{p^3}=s+t^p,
\qquad
v^{p^3}=t+s^p.
$$
Define
$$
E=K\left(u+v,\ u^{p^2}+2v^{p^2}\right)
$$
and
$$
F=K\left(u+2v,\ u^p+3v^p\right).
$$

Determine
$$
[E\cap F:K].
$$

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Abstract Algebra |
| **Sub-domain** | Field theory |
| **Problem Type** | Exact computation |
| **Answer Type** | Exact scalar |

---

## Domain Explanation

The two extensions are mixed subfields of the same purely inseparable radical tower. Determining their intersection requires first detecting a hidden change of p-basis, then recovering different levels of the radical tower from the mixed generators, and finally using differentials to rule out an additional common degree-p layer.
