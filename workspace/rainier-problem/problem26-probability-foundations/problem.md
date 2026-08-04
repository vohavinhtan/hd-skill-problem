# Normalized Math Problem

## LaTeX (Normalized)

For $v\in[-1,1]^3$, let $\mathcal U_v$ denote the uniform probability measure on the orbit of $v$ under all coordinate permutations and all independent sign changes.

Let $\Lambda$ be a Borel probability measure on $[-1,1]^3$ that is invariant under all coordinate permutations and all independent sign changes. For $(s_1,s_2,s_3)\in[-1,1]^3$, put
$$
z_i=\frac{s_i^2}{2-s_i^2}\qquad(1\leq i\leq3),
$$
and define
$$
R=z_1+z_2+z_3,
$$
$$
Q=z_1z_2+z_1z_3+z_2z_3,
$$
and
$$
P=z_1z_2z_3.
$$
Assume that $\Lambda$ satisfies the following raw moment identities:
$$
\int R\,d\Lambda=\frac97,
\qquad
\int R^2\,d\Lambda=\frac{29}{14},
\qquad
\int R^3\,d\Lambda=\frac{99}{28},
$$
$$
\int R^4\,d\Lambda=\frac{353}{56},
\qquad
\int R^5\,d\Lambda=\frac{1299}{112},
\qquad
\int R^6\,d\Lambda=\frac{4889}{224},
$$
$$
\int Q\,d\Lambda=\frac{13}{24},
\qquad
\int Q^2\,d\Lambda=\frac{3817}{8064},
\qquad
\int Q^3\,d\Lambda=\frac{184867}{387072},
$$
$$
\int Q^4\,d\Lambda=\frac{9692401}{18579456},
\qquad
\int Q^5\,d\Lambda=\frac{530937451}{891813888},
$$
$$
\int RQ\,d\Lambda=\frac{317}{336},
\qquad
\int RQ^2\,d\Lambda=\frac{14267}{16128},
$$
$$
\int RQ^3\,d\Lambda=\frac{102287}{110592},
\qquad
\int RQ^4\,d\Lambda=\frac{38184659}{37158912},
$$
$$
\int R^2Q\,d\Lambda=\frac{1147}{672},
\qquad
\int R^2Q^2\,d\Lambda=\frac{54337}{32256},
$$
$$
\int R^2Q^3\,d\Lambda=\frac{2797435}{1548288},
$$
and
$$
\int P\,d\Lambda=\frac{85}{1512},
\qquad
\int RP\,d\Lambda=\frac{305}{3024},
$$
$$
\int R^2P\,d\Lambda=\frac{1123}{6048},
\qquad
\int P^2\,d\Lambda=\frac{6625}{653184},
\qquad
\int RP^2\,d\Lambda=\frac{25643}{1306368}.
$$
Among all such measures $\Lambda$, determine the complete unique measure that maximizes $\Lambda(\{(0,0,0)\})$. A final answer giving only the maximal atom is incomplete; the answer must be the full linear combination of orbit measures.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Probability and Statistics |
| **Sub-domain** | Probability foundations |
| **Problem Type** | Optimization |
| **Answer Type** | Exact symbolic expression |

---

## Domain Explanation

This problem involves an invariant Borel probability measure, moment constraints, and an extremal atom condition, which are part of Probability and Statistics / Probability foundations. The problem also involves symmetric polynomials because they encode the orbit data left by the sign and coordinate symmetries. However, the main task is to determine the extremal probability measure itself, not to classify algebraic objects.
