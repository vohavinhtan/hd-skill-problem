# Normalized Math Problem

## LaTeX (Normalized)

For a real number $p>1$ and a real number $m>0$, let
$$
\mathcal{A}_m=\Bigl\{\varphi:[0,1]\to\mathbb{R}\ \text{Lipschitz and concave}\;:\;\varphi(0)=\varphi(1)=0,\ \int_0^1\varphi(x)\,dx=m\Bigr\},
$$
and for $\varphi\in\mathcal{A}_m$ put
$$
E_p(\varphi)=\int_0^1\Bigl|\,\bigl|\varphi'(x)\bigr|-1\,\Bigr|^{\,p}\,dx .
$$
Define
$$
N(p,m)=\inf_{\varphi\in\mathcal{A}_m}E_p(\varphi).
$$

Determine $N(p,m)$ for every $p>1$ and every $m>0$.

Give the answer as a single piecewise formula valid for all such pairs $(p,m)$, with the threshold between the cases stated explicitly, and with every symbol occurring in the formula defined in terms of $p$ and $m$ alone.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Analysis |
| **Sub-domain** | Calculus of variations |
| **Problem Type** | Optimization |
| **Answer Type** | Function or mapping |

---

## Domain Explanation

The task is to compute the exact infimum of a one-dimensional integral functional over a class of Lipschitz functions pinned at both endpoints and constrained in mean, so the primary content is the calculus of variations. The integrand is a nonconvex double-well in the derivative, so the value is governed by the interaction between that nonconvexity and the two linear constraints; convex analysis and elementary optimization appear only as tools inside the derivation, and the requested output is the whole optimal-value function on the parameter set.
