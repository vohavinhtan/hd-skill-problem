# Normalized Math Problem

## LaTeX (Normalized)

Fix integers
$$
a\geq5,
\qquad
b\geq2a^2+1.
$$
Let $\mathcal P_{a,b}$ be the set of all probability laws $\nu$ on
$$
\{-b,-b+1,\ldots,b-1,b\}
$$
such that
$$
\nu(\{j\})=\nu(\{-j\})
\qquad(-b\leq j\leq b)
$$
and
$$
\sum_{j=-b}^{b}j^2\nu(\{j\})=\frac{a^2+b^2}{2},
\qquad
\sum_{j=-b}^{b}j^4\nu(\{j\})=\frac{a^4+b^4}{2}.
$$

Call $\nu\in\mathcal P_{a,b}$ extreme if the following condition holds: whenever
$$
\nu=t\nu_1+(1-t)\nu_2
$$
for some $0<t<1$ and $\nu_1,\nu_2\in\mathcal P_{a,b}$, one has
$$
\nu_1=\nu_2=\nu.
$$
As $\nu$ ranges over the extreme laws in $\mathcal P_{a,b}$, let
$$
\lambda_1>\lambda_2>\lambda_3>\lambda_4
$$
be the four largest distinct values of
$$
\nu(\{-b,b\}).
$$
For a probability law $\nu$, put
$$
\operatorname{supp}(\nu)=\{j:\nu(\{j\})>0\},
$$
and define
$$
\mathcal S_{a,b}=
\bigcup_{\substack{\nu\in\mathcal P_{a,b}\text{ extreme}\\
\nu(\{-b,b\})=\lambda_4}}
\operatorname{supp}(\nu).
$$

Determine the ordered pair
$$
(\lambda_4,\mathcal S_{a,b})
$$
in closed form as a function of $a$ and $b$.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Probability and Statistics |
| **Sub-domain** | Probability foundations |
| **Problem Type** | Optimization |
| **Answer Type** | Tuple or ordered list |

---

## Domain Explanation

The problem asks for the fourth extremal endpoint mass among symmetric probability laws with two prescribed moments. A complete solution must first classify the extreme laws, then rank several competing support defects rather than merely solve the ordinary endpoint maximization problem. The decisive work is a global comparison inside a discrete moment polytope, together with an exhaustive equality-support analysis.
