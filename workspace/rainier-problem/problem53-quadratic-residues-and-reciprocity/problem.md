# Normalized Math Problem

## LaTeX (Normalized)

Let $p\ge 7$ be a prime. Define
$$
S_p=\left\{x\in\mathbb F_p:\ x^2-x+1\text{ is a nonzero square in }\mathbb F_p\right\},
$$
and set
$$
Q_p=\prod_{x\in S_p}(x^2-x+1)\in\mathbb F_p.
$$

Determine the least nonnegative residue of $Q_p$ modulo $p$.

Your answer must be a closed formula in $p$. It must not contain any
Legendre or Jacobi symbol, nor any sum or product whose number of terms
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

The problem asks for an exact product modulo an odd prime over those field
elements for which a quadratic polynomial takes a nonzero quadratic-residue
value. A successful derivation must convert that quadratic-residue condition
into the rational points of a conic, evaluate a global finite-field product
while handling the exceptional zero points separately, and then remove the
remaining quadratic-character cases by reciprocity. The decisive structure is
therefore finite-field congruence and quadratic reciprocity rather than routine
polynomial factorization.
