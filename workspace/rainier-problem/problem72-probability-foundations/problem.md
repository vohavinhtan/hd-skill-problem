# Normalized Math Problem

## LaTeX (Normalized)

Fix an even integer $d\geq4$ such that $3\nmid d$, and put
$$
n=\frac{d^2+8}{3}.
$$
Then $n$ is an even integer. Let $\mathcal C_d$ be the set of all probability laws $\mu$ on $\{0,1\}^n$ with coordinate maps $\xi_1,\ldots,\xi_n$ such that, for every $1\leq r\leq6$, every set of distinct indices $i_1,\ldots,i_r$, and every $\varepsilon_1,\ldots,\varepsilon_r\in\{0,1\}$,
$$
\mu\left(\xi_{i_1}=\varepsilon_1,\ldots,\xi_{i_r}=\varepsilon_r\right)=2^{-r}.
$$

For $\mu\in\mathcal C_d$, set
$$
X=\xi_1+\cdots+\xi_n
$$
and
$$
\operatorname{supp}_\mu(X)=\{k\in\{0,1,\ldots,n\}:\mu(X=k)>0\}.
$$
Define
$$
M_d=\max_{\mu\in\mathcal C_d}\mu\left(X\in\{0,n\}\right)
$$
and
$$
\mathcal S_d=
\bigcup_{\substack{\mu\in\mathcal C_d\\
\mu(X\in\{0,n\})=M_d}}
\operatorname{supp}_\mu(X).
$$

Determine the ordered pair
$$
(M_d,\mathcal S_d)
$$
in closed form as a function of $d$ and $n$.

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

The problem asks for an exact extremal probability over unbiased six-wise independent Bernoulli laws. The independence constraints fix the first six factorial moments of the Hamming weight, but neither the sharp dual polynomial nor the lattice support of equality is stated. A complete solution must derive the optimal bound, prove attainability, and classify the support of every maximizing law.
