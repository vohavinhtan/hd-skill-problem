# Normalized Math Problem

## LaTeX (Normalized)

Let $\mathcal C_\infty$ be the set of all Borel probability measures $\pi$ on
$[0,1]^2$ whose two coordinate marginals are Lebesgue measure on
$[0,1]$. No absolute-continuity assumption is imposed on $\pi$.

Let $\mathcal C_2$ be the subset of those $\pi\in\mathcal C_\infty$
which are absolutely continuous with respect to two-dimensional Lebesgue
measure and whose density $f_\pi$ satisfies
$$
0\leq f_\pi(x,y)\leq2
$$
for almost every $(x,y)\in[0,1]^2$.

For $\pi\in\mathcal C_\infty$, define
$$
R(\pi)=3\int_{[0,1]^2}(2x-1)(2y-1)\,d\pi(x,y)
$$
and
$$
S(\pi)=24\int_{[0,1]^2}(x^2-x)(2y-1)\,d\pi(x,y).
$$

Set
$$
\mathscr A_\infty=
\left\{
\bigl(R(\pi),S(\pi)\bigr):\pi\in\mathcal C_\infty
\right\}
$$
and
$$
\mathscr A_2=
\left\{
\bigl(R(\pi),2S(\pi)\bigr):\pi\in\mathcal C_2
\right\}.
$$
Define the calibrated robust moment body
$$
\mathscr K=\mathscr A_\infty\cap\mathscr A_2
\subseteq\mathbb R^2.
$$

For $c\in\mathbb R^2$ and a real symmetric positive-definite matrix
$Q\in M_2(\mathbb R)$, write
$$
\mathcal E(c,Q)=
\left\{
z\in\mathbb R^2:(z-c)^{\mathsf T}Q(z-c)\leq1
\right\}.
$$
Among all nondegenerate ellipses contained in $\mathscr K$, there is a
unique ellipse of maximum Euclidean area. Determine the ordered pair
$$
(c_*,Q_*)
$$
for which this ellipse is $\mathcal E(c_*,Q_*)$.

The answer must be exact. An algebraic number may be specified by an
integer polynomial together with a rational isolating interval. A complete
solution must derive the sharp information about both moment bodies needed to
prove both containment and maximality of the displayed ellipse.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Probability and Statistics |
| **Sub-domain** | Joint distributions and dependence |
| **Problem Type** | Optimization |
| **Answer Type** | Tuple or ordered list |
| **Bonus Pay Category** | Tuple or ordered list |

---

## Domain Explanation

This problem is classified under Probability and Statistics / Joint distributions and dependence because its primary input is a pair of classes of bivariate probability distributions with prescribed uniform marginals. The two coordinates of the moment body are mixed dependence statistics, and the density cap defines a second class of admissible joint distributions. Sharp coupling and rearrangement arguments determine the feasible joint moment regions; the maximum-area ellipse is then an exact geometric summary of the dependence constraints.
