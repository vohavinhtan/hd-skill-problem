# Normalized Math Problem

## LaTeX (Normalized)

Fix an integer
$$
m\geq3.
$$
Let $\mathcal P_m$ be the set of all Borel probability measures $\mu$ on $[-1,1]$ such that
$$
\int_{-1}^1 x\,d\mu(x)=0,
\qquad
\int_{-1}^1 x^2\,d\mu(x)=\frac1m,
$$
$$
\int_{-1}^1 x^3\,d\mu(x)=0,
\qquad
\int_{-1}^1 x^4\,d\mu(x)=\frac{3}{m(m+2)}.
$$
For $0<a<1$, define
$$
M_m(a)=\sup_{\mu\in\mathcal P_m}\mu([a,1]).
$$
Now define
$$
\tau_m=
\sup\left\{
a\in(0,1):
\begin{array}{l}
\text{there exists }\mu\in\mathcal P_m\text{ with }\mu([a,1])=M_m(a),\\
\mu(\{1\})>0
\end{array}
\right\}.
$$

Determine $\tau_m$ exactly as a function of $m$.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Analysis |
| **Sub-domain** | Measure theory |
| **Problem Type** | Parameter identification |
| **Answer Type** | Exact symbolic expression |

---

## Domain Explanation

The problem is an extremal truncated-moment problem for Borel probability measures on a compact interval. The requested parameter is the support-transition threshold at which a tail-maximizing measure can no longer charge the endpoint $1$. A complete derivation must construct sharp polynomial majorants for the tail indicator on the two sides of the transition, reconstruct the equality measures from the moment constraints, and prove that the endpoint weight changes sign at exactly one parameter value. The optimization is essential, but the primary mathematical structure is the measure-theoretic moment problem and the support of its extremal representing measures.
