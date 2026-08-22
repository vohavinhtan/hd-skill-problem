# Normalized Math Problem

## LaTeX (Normalized)

For each positive integer $n$, define
$$
\Theta_n(a)=
\sum_{k=-\infty}^{\infty}
e^{-\pi k^2/n}\cos(2\pi ka).
$$
For all sufficiently large $n$, let $a_n\in(0,\frac12)$ be the smallest positive solution of
$$
\Theta_n''(a_n)+2\pi n\Theta_n(a_n)
=
\frac{4\pi n^{3/2}}{e}.
$$
Determine the exact value of
$$
\lim_{n\to\infty}
\frac{
\exp\!\left(\frac{(\sqrt{\pi n}-1)^2}{2}\right)
}{
\sqrt{\pi n}-1
}
\left(
1-\sqrt{\pi n}\,a_n
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

The requested quantity is a refined limit for the smallest root of an $n$-dependent equation, so Calculus and Limits and continuity is the best fit. A Gaussian lattice duality is needed to expose the root scale, but that transformation is an intermediate device; the requested object is the exponentially rescaled limiting displacement of the implicit root.
