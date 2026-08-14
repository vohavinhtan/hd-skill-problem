# Normalized Math Problem

## LaTeX (Normalized)

Let $n\geq 27$ be odd and set
$$
h=\frac{n-1}{2}.
$$
For $1\leq r\leq h$, define
$$
c_r=\cos\frac{2\pi r}{n},
\qquad
Q_r=(c_r,c_r^2,c_r^4)\in\mathbb R^3.
$$
Let $s$ be an integer satisfying
$$
3\leq s\leq \frac{n-3}{8}.
$$
Define
$$
K=\operatorname{conv}\{Q_r:1\leq r\leq h\},
\qquad
K_s=\operatorname{conv}\{Q_r:1\leq r\leq h,\ r\neq s\}.
$$

A plane $H$ is called a supporting plane of a convex set $C\subset\mathbb R^3$ if $C$ is contained in one of the two closed half-spaces bounded by $H$ and $H\cap C\neq\varnothing$. A triangular facet of $K_s$ is a triangle
$$
\operatorname{conv}\{Q_a,Q_b,Q_c\}=K_s\cap H
$$
for some supporting plane $H$ of $K_s$. Call such a facet new if the same plane $H$ is not a supporting plane of $K$.

Determine exactly the set
$$
\mathcal N_{n,s}
=
\left\{
\{a,b,c\}\subset\{1,\ldots,h\}\setminus\{s\}:
\operatorname{conv}\{Q_a,Q_b,Q_c\}
\text{ is a new facet of }K_s
\right\}.
$$

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Topology and Geometry |
| **Sub-domain** | Convex geometry |
| **Problem Type** | Exhaustive enumeration |
| **Answer Type** | Set or multiset of objects |

---

## Domain Explanation

The problem asks for the complete finite family of triangular supporting faces created by deleting one vertex from a three-dimensional convex hull. Its core is a convex-geometric face-classification problem on a structured point set, with the decisive step coming from supporting-plane sign analysis rather than coordinate computation alone.
