# Normalized Math Problem

## LaTeX (Normalized)

Fix an integer $n\geq2$ and let
$$
R_n=\mathbb Z/119^n\mathbb Z.
$$
Let $x_0$ be the unique element of $R_n$ satisfying
$$
3x_0=10,
$$
and define
$$
x_{k+1}=x_k^2-2
$$
for every integer $k\geq0$.

Let $(\mu_n,\lambda_n)$ be the lexicographically least pair of integers with $\mu_n\geq0$ and $\lambda_n\geq1$ such that
$$
x_{k+\lambda_n}=x_k
$$
in $R_n$ for every $k\geq\mu_n$. Let $s_n$ be the unique integer satisfying
$$
0\leq s_n<119^n
$$
and
$$
s_n\equiv\sum_{j=0}^{\lambda_n-1}x_{\mu_n+j}\pmod{119^n}.
$$

Determine $(\mu_n,\lambda_n,s_n)$ in closed form.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Number Theory |
| **Sub-domain** | Computational number theory |
| **Problem Type** | Symbolic derivation |
| **Answer Type** | Tuple or ordered list |

---

## Domain Explanation

The problem asks for the exact preperiod, period, and cycle sum of an explicitly defined recurrence over prime-power residue rings. Its decisive work is the computation of local multiplicative orders and valuations modulo $7^n$ and $17^n$, followed by reconstruction modulo $119^n$, so Computational number theory is the primary sub-domain.
