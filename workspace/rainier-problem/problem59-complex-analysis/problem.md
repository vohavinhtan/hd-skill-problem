# Normalized Math Problem

## LaTeX (Normalized)

Let
$$
\mathbb D=\{z\in\mathbb C:|z|<1\},\qquad
\omega=-\frac12+\frac{\sqrt3}{2}i,
$$
and define
$$
\kappa(z)=\frac{3z-1}{3-z},\qquad
\kappa^{-1}(w)=\frac{3w+1}{w+3},\qquad
\sigma=\kappa^{-1}\circ(w\mapsto\omega w)\circ\kappa.
$$

Let $\mathcal F$ be the class of holomorphic maps $f:\mathbb D\to\mathbb D$ satisfying
$$
f\circ\sigma=\sigma\circ f.
$$
For $f\in\mathcal F$, put
$$
F(w)=\kappa\bigl(f(\kappa^{-1}(w))\bigr).
$$
Assume that $F$ has a zero-free Schur square lift: there is a zero-free holomorphic map $G:\mathbb D\to\mathbb D$ such that
$$
F(w)=wG(w)^2.
$$
Finally, suppose that
$$
\begin{aligned}
f\left(-\frac15\right)&=\kappa^{-1}\left(-\frac12e^{-12419/12285-16i/195}\right),\\
f(0)&=\kappa^{-1}\left(-\frac13e^{-66491/66430-9i/365}\right),\\
f\left(\frac35\right)&=\kappa^{-1}\left(\frac13e^{-66491/66430+9i/365}\right),\\
f\left(\frac57\right)&=\kappa^{-1}\left(\frac12e^{-12419/12285+16i/195}\right).
\end{aligned}
$$

Prove that the associated normalized map $F$ is unique and determine it exactly.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Analysis |
| **Sub-domain** | Complex analysis |
| **Problem Type** | Canonicalization or normalization |
| **Answer Type** | Function or mapping |

---

## Domain Explanation

This is a Complex Analysis problem. It combines an elliptic disk symmetry with a zero-free lift, a coupled logarithmic branch problem, and a four-node positive-real interpolation certificate of rank three. No two-node equality case identifies the solution; uniqueness only appears after all four data constraints are passed through the positive-real kernel.
