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
\sum_{j=-b}^{b}j\nu(\{j\})=0,
\qquad
\sum_{j=-b}^{b}j^2\nu(\{j\})=\frac{a^2+b^2}{2},
$$
$$
\sum_{j=-b}^{b}j^3\nu(\{j\})=0,
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
| **Sub-domain** | Random variables and distributions |
| **Problem Type** | Optimization |
| **Answer Type** | Tuple or ordered list |

---

## Domain Explanation

The problem studies discrete random-variable distributions with prescribed moments and asks how large the endpoint mass can be across their extreme laws. A complete solution must classify the relevant atomic supports while enforcing the first four moment constraints simultaneously. Determining the fourth distinct endpoint-mass level also requires a global exclusion argument and reconstruction of every attaining support.