# Normalized Math Problem

## LaTeX (Normalized)

Let $\Lambda$ be a Borel probability measure on $[-1,1]^3$ which is invariant under all independent sign changes of the three coordinates and under all permutations of the three coordinates. For $(s,t,r)\in[-1,1]^3$, put
$$
R=s^2+t^2+r^2,\qquad Q=s^2t^2+t^2r^2+r^2s^2,\qquad P=s^2t^2r^2.
$$
Assume that
$$
\int \bigl(64P^2+16Q^2+4R^2-64PQ+32PR-16QR-16P+8Q-4R+1\bigr)\,d\Lambda=\frac{1}{3},
$$
$$
\int \bigl(2R^3-5R^2+4R-1\bigr)\,d\Lambda=-\frac{1}{3},
$$
$$
\int (32P^2-P)\,d\Lambda=0,
$$
and
$$
\int R\,d\Lambda=\frac{7}{12},\qquad \int P\,d\Lambda=\frac{1}{96}.
$$

Among all such measures $\Lambda$, determine the unique measure which maximizes $\Lambda(\{(0,0,0)\})$.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Probability and Statistics |
| **Sub-domain** | Probability foundations |
| **Problem Type** | Optimization |
| **Answer Type** | Function or mapping |

---

## Domain Explanation

This problem asks for an extremal probability measure under exact moment identities and symmetry assumptions. The main object is a probability law, the constraints are expectations of explicitly given random variables, and the requested output is the full maximizing distribution. Algebraic identities are used only to certify the support and uniqueness of the extremal law.
