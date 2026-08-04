# Normalized Math Problem

## LaTeX (Normalized)

Let $m$ and $s$ be real numbers satisfying
$$
0<m<1
$$
and
$$
\frac{m^2}{2}\leq s\leq m-\frac{m^2}{2}.
$$
Among all Lebesgue measurable functions $f:[0,1]\to[0,1]$ satisfying
$$
\int_0^1 f(x)\,dx=m
$$
and
$$
\int_0^1 xf(x)\,dx=s,
$$
determine the exact range of possible values of
$$
\int_0^1 x^2f(x)\,dx.
$$

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Analysis |
| **Sub-domain** | Real analysis |
| **Problem Type** | Optimization |
| **Answer Type** | Interval |

---

## Domain Explanation

This problem asks for sharp bounds on one moment of a bounded measurable function while two lower moments are fixed.
The extremizers are not found by ordinary finite-dimensional calculus, but by rearrangement sign certificates for measurable functions under pointwise bounds.
The central work is real-analysis optimization over an infinite-dimensional class of functions.
