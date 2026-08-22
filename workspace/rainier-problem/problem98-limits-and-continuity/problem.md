# Normalized Math Problem

## LaTeX (Normalized)

For each integer $n\geq2$, let $r_n>0$ be the unique number satisfying
$$
\log\left[
\frac1{n^2}
\prod_{k=1}^{n-1}
\left(
r_n^2+4\sin^2\frac{\pi k}{n}
\right)
\right]
+
\frac{60}{n^2+11}
\left[
\sum_{k=1}^{n-1}
\frac{1}{
r_n^2+4\sin^2\frac{\pi k}{n}
}
-\frac{n^2-1}{12}
\right]
=
\frac{13}{70n^2}.
$$
Determine the exact value of
$$
\lim_{n\to\infty}
n^2
\left(
n^3r_n^2-12-\frac{28}{13n}
\right).
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

The requested object is a limit of an implicitly defined sequence whose scale and two correction terms must be recovered asymptotically, so Calculus and Limits and continuity is the best fit. The derivation also uses a finite trigonometric product and its logarithmic derivative, which connect to algebraic and trigonometric manipulation, but those identities serve the asymptotic limit rather than being the requested object.
