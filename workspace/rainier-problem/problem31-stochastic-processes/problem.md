# Normalized Math Problem

## LaTeX (Normalized)

Let $n\geq 8$ and let $(X_t)_{t\geq0}$ be the birth-death chain on $\{0,1,\ldots,n\}$ with absorbing states $0,n$ and transition probabilities
$$
\mathbb P(X_{t+1}=k+1\mid X_t=k)=\frac{k}{2(k+1)},\qquad
\mathbb P(X_{t+1}=k-1\mid X_t=k)=\frac{k+2}{2(k+1)}
$$
for $1\leq k\leq n-1$.

Fix integers
$$
1<a<b<c<d<n,
$$
start the chain at $b$, and put
$$
A=\{\tau_n<\tau_0\},
\qquad
\tau_j=\inf\{t\geq0:X_t=j\}.
$$

Before absorption, list the successive visits of the chain to $\{a,b,c,d\}$ and delete only consecutive repetitions of the same letter. Call the resulting collapsed word $W$. For example,
$$
b,b,c,c,b,a,a,b,c
$$
produces
$$
b,c,b,a,b,c.
$$
Let $V_b$ and $V_c$ be the numbers of visits of the original chain to $b$ and $c$ before absorption.

Read $W$ from left to right and record every occurrence of $bcb$ or $cbc$ in order of its final position. Assign $+1$ to an occurrence of $bcb$ and $-1$ to an occurrence of $cbc$. Let $\mathcal E$ be the event that every partial sum of this sign sequence is nonnegative and its final sum is $0$. Let $K$ be the total number of occurrences of $bcb$. Thus, on $\mathcal E$, the word contains exactly $K$ occurrences of each of $bcb$ and $cbc$.

Define
$$
C(v)=v(v+1)(v+2),
\qquad
H_{r,s,t}=\frac{C(s)-C(r)}{C(t)-C(r)}\quad(r<s<t),
$$
and use the abbreviations
$$
\alpha=H_{0,a,b},\qquad
\beta=H_{a,b,c},\qquad
\gamma=H_{b,c,d},\qquad
\sigma=H_{c,d,n}.
$$
Write $\bar\beta=1-\beta$, $\bar\gamma=1-\gamma$, and $\bar\sigma=1-\sigma$. Define
$$
\rho_b=\frac{3b(b+2)}{2}\cdot
\frac{C(c)-C(a)}{(C(b)-C(a))(C(c)-C(b))},
$$
$$
\rho_c=\frac{3c(c+2)}{2}\cdot
\frac{C(d)-C(b)}{(C(c)-C(b))(C(d)-C(c))},
$$
$$
B=\frac{\rho_bx}{1-(1-\rho_b)x},
\qquad
Y=\frac{\rho_cy}{1-(1-\rho_c)y},
$$
and
$$
r=\bar\beta\alpha B,
\qquad
s=\gamma\bar\sigma Y,
$$
$$
\kappa=\frac{\beta\bar\gamma BY}{(1-r)(1-s)},
\qquad
\mu=\frac{C(n)}{C(b)}\cdot
\frac{\beta\gamma\sigma BY}{(1-r)(1-s)}.
$$

Consider the formal power series
$$
G(x,y,u)=\mathbb E_b\!\left[x^{V_b}y^{V_c}u^K\mathbf 1_{\mathcal E}\mid A\right].
$$
Let $\Psi(T)$ be the unique scalar multiple of the monic minimal polynomial of $G(x,y,u)$ over $\mathbb Q(x,y,u)$ whose constant coefficient is $\mu^{2}$. Determine $\Psi(T)$ explicitly.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Probability and Statistics |
| **Sub-domain** | Stochastic processes |
| **Problem Type** | Symbolic derivation |
| **Answer Type** | Polynomial or rational function |

---

## Domain Explanation

This problem involves an absorbing birth death chain, conditioned occupation counts, and ordered pattern events, which are part of Probability and Statistics and Stochastic processes.
The problem also involves prefix constrained words and algebraic generating functions, which are part of Discrete Mathematics and Combinatorics.
However, the word constraint organizes dependent excursions of the Markov chain, while the transition and conditioning structure determines every weight, so stochastic processes is the more appropriate primary classification.
