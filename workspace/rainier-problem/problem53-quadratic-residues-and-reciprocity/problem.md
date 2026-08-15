# Normalized Math Problem

## LaTeX (Normalized)

Let $a,b\in\mathbb Z$ satisfy
$$
a\equiv1\pmod4,\qquad b>0,\qquad b\equiv0\pmod4,
$$
and suppose that
$$
p=a^2+b^2
$$
is prime. In $\mathbb F_p$, define
$$
T_p=\left\{x\in\mathbb F_p^\times:
 x^2-2\text{ and }x^2+2\text{ are both nonzero squares in }\mathbb F_p\right\}.
$$
Set
$$
P_p=\prod_{x\in T_p}x\in\mathbb F_p,
$$
with the empty product interpreted as $1$.

Determine $P_p$ in $\mathbb F_p$.

Your answer may use only $p$ and $a$. It must not contain a Legendre or
Jacobi symbol, a character sum, or any sum or product whose number of terms
depends on $p$.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Number Theory |
| **Sub-domain** | Modular arithmetic and congruences |
| **Problem Type** | Symbolic derivation |
| **Answer Type** | Equation or inequality |

---

## Domain Explanation

The problem asks for an exact finite-field product over the intersection of
two quadratic-residue conditions. The representation $p=a^2+b^2$ fixes the
arithmetic sign information needed for a uniform answer, while the product
itself is controlled by nontrivial structure in the simultaneous residue
constraints rather than by either quadratic condition separately. The main
content is therefore finite-field congruence and quadratic-residue arithmetic.
