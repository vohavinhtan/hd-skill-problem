## Steps

Step 1:
First describe all ideals of norm $n$ before imposing principality. At a split rational prime $p$, choose one prime ideal $\mathfrak p$ above $p$. If $p^k$ is the exact power of $p$ in $n$, the local part of an ideal of norm $p^k$ has the form
$$
\mathfrak p^{i}\overline{\mathfrak p}^{\,k-i},\qquad 0\leq i\leq k.
$$
At an inert prime $q$, the only local ideal of norm $q^{2f_q}$ is $q^{f_q}R$.

Thus every ideal of norm $n$ is obtained by choosing integers
$$
0\leq i_2\leq e,\qquad 0\leq i_3\leq g,
$$
and, for the other split primes,
$$
0\leq i_p\leq a_p\quad(p\in P_0),\qquad
0\leq i_p\leq b_p\quad(p\in P_+),\qquad
0\leq i_p\leq c_p\quad(p\in P_-).
$$
The class of such an ideal is the sum of the local classes. Since conjugation changes the sign in the cyclic class group of order $3$, the contributions are
$$
2i_2-e
$$
from the prime $2$, because $[\mathfrak p_2]=+1$,
$$
g-2i_3
$$
from the prime $3$, because $[\mathfrak p_3]=-1$,
$$
2i_p-b_p
$$
from a prime $p\in P_+$, and
$$
c_p-2i_p
$$
from a prime $p\in P_-$. The primes in $P_0$ and the inert primes contribute class $0$. Therefore the ideal is principal exactly when
$$
2i_2-e+g-2i_3+\sum_{p\in P_+}(2i_p-b_p)+\sum_{p\in P_-}(c_p-2i_p)\equiv0\pmod{3}.
$$
This gives the necessary and sufficient global condition on the exponent tuple.

Step 2:
Now compute a local intersection count. Let $p$ be split, let $p^k$ divide $n$, and suppose the local ideal is
$$
J=\mathfrak p^i\overline{\mathfrak p}^{\,k-i}.
$$
Let an element $\gamma\in R$ have valuations
$$
v_{\mathfrak p}(\gamma)=r,\qquad v_{\overline{\mathfrak p}}(\gamma)=s.
$$
For an integer $t$, the two prime-ideal valuations of $t$ are both $v_p(t)$. The condition $t\gamma\in J$ is therefore
$$
v_p(t)+r\geq i,\qquad v_p(t)+s\geq k-i.
$$
Equivalently,
$$
v_p(t)\geq h,
\qquad
h=\max(0,i-r,k-i-s).
$$
Among residues modulo $p^k$, the number divisible by $p^h$ is $p^{k-h}$. Since
$$
k-h=\min(k,k-i+r,i+s),
$$
the split-prime local contribution to the count for $\gamma$ is
$$
p^{\min(k,k-i+r,i+s)}.
$$
For an inert prime $q$, the local ideal is $q^{f_q}R$ and each of $\alpha,1+\alpha,2+\alpha$ is a unit at $q$. The condition is simply $q^{f_q}\mid t$ modulo $q^{2f_q}$, so the inert local contribution is
$$
q^{f_q}.
$$

Step 3:
Apply the local formula to the three elements in the problem. From
$$
(\alpha)=\mathfrak p_2\mathfrak p_3,
$$
the valuations of $\alpha$ at $2$ are $(1,0)$ and at $3$ are $(1,0)$. Hence
$$
D_1\text{ contributes }2^{\min(i_2,e-i_2+1)}3^{\min(i_3,g-i_3+1)}
$$
at the primes $2$ and $3$.

From
$$
(1+\alpha)=\overline{\mathfrak p}_2^{\,3},
$$
the valuations of $1+\alpha$ at $2$ are $(0,3)$ and at $3$ are $(0,0)$. Hence
$$
D_2\text{ contributes }2^{\min(i_2+3,e-i_2)}3^{\min(i_3,g-i_3)}
$$
at the primes $2$ and $3$.

From
$$
(2+\alpha)=\mathfrak p_2^{\,2}\overline{\mathfrak p}_3,
$$
the valuations of $2+\alpha$ at $2$ are $(2,0)$ and at $3$ are $(0,1)$. Hence
$$
D_3\text{ contributes }2^{\min(i_2,e-i_2+2)}3^{\min(i_3+1,g-i_3)}
$$
at the primes $2$ and $3$.

At every split prime other than $2$ and $3$, the three elements $\alpha,1+\alpha,2+\alpha$ are units, so the common local factor is
$$
p^{\min(i_p,k_p-i_p)},
$$
where $k_p$ is $a_p$, $b_p$, or $c_p$ according as $p$ lies in $P_0$, $P_+$, or $P_-$. Combining this with the inert contribution gives the common factor
$$
s=\prod_{q\in Q}q^{f_q}
\prod_{p\in P_0}p^{\min(i_p,a_p-i_p)}
\prod_{p\in P_+}p^{\min(i_p,b_p-i_p)}
\prod_{p\in P_-}p^{\min(i_p,c_p-i_p)}.
$$
Multiplying the local factors gives the stated triple for each admissible tuple, and Step 1 shows that the admissible tuples are exactly the principal ideals of norm $n$.

Step 4:
It remains only to record the multiset, counting one element for each admissible exponent tuple. Empty products are interpreted as $1$. The answer is
$$
\left\{\!\left\{
\left(
s\,2^{\min(i_2,e-i_2+1)}3^{\min(i_3,g-i_3+1)},
s\,2^{\min(i_2+3,e-i_2)}3^{\min(i_3,g-i_3)},
s\,2^{\min(i_2,e-i_2+2)}3^{\min(i_3+1,g-i_3)}
\right)
\ \middle|\ 
\substack{
s=\prod_{q\in Q}q^{f_q}
\prod_{p\in P_0}p^{\min(i_p,a_p-i_p)}
\prod_{p\in P_+}p^{\min(i_p,b_p-i_p)}
\prod_{p\in P_-}p^{\min(i_p,c_p-i_p)},\\
0\leq i_2\leq e,\quad 0\leq i_3\leq g,\\
0\leq i_p\leq a_p\ (p\in P_0),\quad
0\leq i_p\leq b_p\ (p\in P_+),\quad
0\leq i_p\leq c_p\ (p\in P_-),\\
2i_2-e+g-2i_3+\sum_{p\in P_+}(2i_p-b_p)+\sum_{p\in P_-}(c_p-2i_p)\equiv0\pmod{3}
}
\right\}\!\right\}.
$$
Final Answer: $\boxed{\left\{\!\left\{\left(s\,2^{\min(i_2,e-i_2+1)}3^{\min(i_3,g-i_3+1)},s\,2^{\min(i_2+3,e-i_2)}3^{\min(i_3,g-i_3)},s\,2^{\min(i_2,e-i_2+2)}3^{\min(i_3+1,g-i_3)}\right)\ \middle|\ \substack{s=\prod_{q\in Q}q^{f_q}\prod_{p\in P_0}p^{\min(i_p,a_p-i_p)}\prod_{p\in P_+}p^{\min(i_p,b_p-i_p)}\prod_{p\in P_-}p^{\min(i_p,c_p-i_p)},\\0\leq i_2\leq e,\quad 0\leq i_3\leq g,\\0\leq i_p\leq a_p\ (p\in P_0),\quad 0\leq i_p\leq b_p\ (p\in P_+),\quad 0\leq i_p\leq c_p\ (p\in P_-),\\2i_2-e+g-2i_3+\sum_{p\in P_+}(2i_p-b_p)+\sum_{p\in P_-}(c_p-2i_p)\equiv0\pmod{3}}\right\}\!\right\}}$

---

## Answer

$\left\{\!\left\{\left(s\,2^{\min(i_2,e-i_2+1)}3^{\min(i_3,g-i_3+1)},s\,2^{\min(i_2+3,e-i_2)}3^{\min(i_3,g-i_3)},s\,2^{\min(i_2,e-i_2+2)}3^{\min(i_3+1,g-i_3)}\right)\ \middle|\ \substack{s=\prod_{q\in Q}q^{f_q}\prod_{p\in P_0}p^{\min(i_p,a_p-i_p)}\prod_{p\in P_+}p^{\min(i_p,b_p-i_p)}\prod_{p\in P_-}p^{\min(i_p,c_p-i_p)},\\0\leq i_2\leq e,\quad 0\leq i_3\leq g,\\0\leq i_p\leq a_p\ (p\in P_0),\quad 0\leq i_p\leq b_p\ (p\in P_+),\quad 0\leq i_p\leq c_p\ (p\in P_-),\\2i_2-e+g-2i_3+\sum_{p\in P_+}(2i_p-b_p)+\sum_{p\in P_-}(c_p-2i_p)\equiv0\pmod{3}}\right\}\!\right\}$

---

## Black-Box Audit

- Step 1 - Level 1: no hidden class-group computation remains; the class contributions are written prime by prime and the principal congruence is derived.
- Step 2 - Level 1: the local count is derived from valuation inequalities and the exact number of residues divisible by a power of $p$.
- Step 3 - Level 1: the valuations of $\alpha$, $1+\alpha$, and $2+\alpha$ are read directly from the factorizations supplied in the problem.
- Step 4 - Level 1: the final multiset is only the multiplication of the local factors already derived.

---

## Verification

- Check 1 (boundary case $n=1$): all products are empty, the congruence is $0\equiv0\pmod{3}$, and the formula gives the single triple $(1,1,1)$.
- Check 2 (excluded case $n=2$): here $e=1$ and all other exponents are $0$. The congruence is $2i_2-1\equiv0\pmod{3}$, which has no solution for $i_2=0,1$. Thus there is no principal ideal of norm $2$, so the multiset is empty.
- Check 3 (included prime-power case $n=4$): here $e=2$. The congruence $2i_2-2\equiv0\pmod{3}$ forces $i_2=1$, and the formula gives $(2,2,2)$.
- Check 4 (mixed local-global case $n=6$): here $e=g=1$. The congruence is $2i_2-2i_3\equiv0\pmod{3}$, so $(i_2,i_3)=(0,0)$ or $(1,1)$. The corresponding triples are $(1,2,3)$ and $(6,1,2)$.
- Counterexample attack: no counterexample found after testing $n=1$, the excluded nonprincipal norm $2$, the included norm $4$, and the mixed norm $6$. These cases test the empty product, a failed principal congruence, a pure ramified split-power case, and an interaction between the two nontrivial class contributions.
- Independent re-derivation: the formula can also be obtained from the additive order of each of $\alpha$, $1+\alpha$, and $2+\alpha$ in $R/I$; this gives the same valuation inequalities as Step 2.
- Accepted-style step certificate: Step 2 contains the local valuation certificate, and Step 1 contains the global class-congruence certificate.

---

## Classification

**Domain/Sub-domain:** Number Theory / Algebraic number theory

**Problem Type:** Transformation between representations

**Answer Type:** Set or multiset of objects

---

## Concepts (1-5)

- Quadratic orders
- Ideal class groups
- Split and inert prime factorization
- Principal ideal congruences
- Local valuation counts

---

## Confidence

High, because the formula is forced by the complete local valuation calculation together with the global principal-ideal congruence, and the verification tests the main local-to-global edge cases.

