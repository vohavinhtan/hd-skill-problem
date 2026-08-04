# Normalized Math Problem

## LaTeX (Normalized)

For $s,r,q>0$ and $|t|\leq1$, define
$$
v(t)=
\begin{pmatrix}
1\\
t\\
t^2
\end{pmatrix},
\qquad
w_{s;r,q}(t)=\frac{1}{\sqrt{s}}
\begin{pmatrix}
0\\
1\\
rt-qt^3
\end{pmatrix},
$$
and
$$
K_{s;r,q}=\operatorname{conv}
\left(
\left\{\pm v(t):|t|\leq1\right\}
\cup
\left\{\pm w_{s;r,q}(t):|t|\leq1\right\}
\right)
\subset\mathbb R^3.
$$
Let
$$
E(Q_{s;r,q})=
\left\{x\in\mathbb R^3:x^{\mathsf T}Q_{s;r,q}x\leq1\right\}
$$
be the unique minimum-volume ellipsoid containing $K_{s;r,q}$. Define
$$
A_{s;r,q}=\left\{t\in[-1,1]:v(t)^{\mathsf T}Q_{s;r,q}v(t)=1\right\},
\qquad
B_{s;r,q}=
\left\{t\in[-1,1]:w_{s;r,q}(t)^{\mathsf T}Q_{s;r,q}w_{s;r,q}(t)=1\right\},
$$
and
$$
\Xi_{r,q}(s)=
\left(
|A_{s;r,q}|,
|B_{s;r,q}\cap(-1,1)|,
|B_{s;r,q}\cap\{-1,1\}|
\right).
$$

Now let $S>0$ and $P>0$ satisfy $S^2>4P$. Set
$$
x=\frac{S+\sqrt{S^2-4P}}{2},
\qquad
y=\frac{S-\sqrt{S^2-4P}}{2},
$$
and restrict to
$$
\mathcal U=
\left\{(S,P):S>0, P>0, S^2>4P, 1<\frac{x}{y}<\frac{256}{81}\right\}.
$$
Use positive fractional powers and define
$$
a=\frac{3\sqrt3}{2}P^{1/4}\left(\frac{x}{y}\right)^{1/8},
\qquad
b=\frac{3\sqrt3}{2}P^{1/4}\left(\frac{y}{x}\right)^{1/8}.
$$
For $(S,P)\in\mathcal U$, set
$$
\widehat\Xi_{S,P}(s)=
\left(
\Xi_{a,b}(s),
\Xi_{b,a}(s)
\right).
$$
The merged transitions are the $s_0>0$ where $\widehat\Xi_{S,P}$ is not locally constant. Its values on the complementary intervals, ordered by $s$, form $\widehat\Pi(S,P)$.

Let $\mathscr E\subset\mathcal U$ be the non-local-constancy locus of $\widehat\Pi$. Let $F_{\mathscr E}(S,P)\in\mathbb Z[S,P]$ be the least-degree primitive squarefree polynomial vanishing on $\mathscr E$, with positive leading coefficient in lexicographic order $S>P$. Determine it in factored form. Numerical plots, implicit eliminations, and unproved completeness claims are not accepted.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Topology and Geometry |
| **Sub-domain** | Convex geometry |
| **Problem Type** | Canonicalization or normalization |
| **Answer Type** | Polynomial or rational function |

---

## Domain Explanation

The primary task is to track coupled contact transitions of two minimum-volume ellipsoids, placing the problem in Convex geometry. Algebraic geometry supplies symmetric root coordinates and the normalized equation of the resulting bifurcation locus. Those algebraic tools encode the crossing set, while the transition thresholds themselves come from convex optimization.
