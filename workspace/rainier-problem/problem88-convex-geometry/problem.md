# Normalized Math Problem

## LaTeX (Normalized)

Let $n\geq 27$ be odd and set
$$
h=\frac{n-1}{2},
\qquad
\delta=\frac{\pi}{n}.
$$
Let $s$ be an integer satisfying
$$
3\leq s\leq \frac{n-3}{8},
$$
and put
$$
t=h-s,
\qquad
A=2s\delta.
$$
For $\lambda\in\mathbb R$ and $1\leq r\leq h$, define
$$
x_r=\cos(2r\delta),
\qquad
Q_r(\lambda)=\bigl(x_r,x_r^2,x_r^4+\lambda x_r^3\bigr)\in\mathbb R^3.
$$
For $D\subseteq\{1,\ldots,h\}$, define
$$
K_D(\lambda)
=
\operatorname{conv}\{Q_r(\lambda):r\notin D\}.
$$

A plane $H$ is a supporting plane of a convex set $C\subset\mathbb R^3$ if $C$ is contained in one of the two closed half-spaces bounded by $H$ and $H\cap C\neq\varnothing$.

For distinct $a,b,c\notin\{s,t\}$, let $H_{abc}(\lambda)$ be the affine plane through $Q_a(\lambda),Q_b(\lambda),Q_c(\lambda)$. Call $\{a,b,c\}$ jointly new at $\lambda$ if
$$
K_{\{s,t\}}(\lambda)\cap H_{abc}(\lambda)
=
\operatorname{conv}\{Q_a(\lambda),Q_b(\lambda),Q_c(\lambda)\},
$$
$H_{abc}(\lambda)$ is a supporting plane of $K_{\{s,t\}}(\lambda)$, and the same plane is a supporting plane of neither $K_{\{s\}}(\lambda)$ nor $K_{\{t\}}(\lambda)$.

Let $\mathcal J(\lambda)$ be the set of all triples that are jointly new at $\lambda$.

Determine exactly the largest open interval $I\subset\mathbb R$ containing $0$ for which $\mathcal J(\lambda)$ is independent of $\lambda\in I$.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Topology and Geometry |
| **Sub-domain** | Convex geometry |
| **Problem Type** | Parameter identification |
| **Answer Type** | Interval or region description |

---

## Domain Explanation

The problem asks for the exact stability interval of a face configuration in a one-parameter family of three-dimensional convex hulls. The difficulty lies in identifying which supporting planes depend simultaneously on two deleted vertices and then locating the first parameter values at which that joint face structure changes.
