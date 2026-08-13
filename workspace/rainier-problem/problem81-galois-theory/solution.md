## Steps

Step 1: Determine the cubic radical kernel
Put $g_i=a+y_i$ and $M=K(\omega)$. The discriminant square root changes sign under odd permutations, so the unique quadratic subfield of $K$ is $\mathbb Q(\sqrt{\Delta})$. Since $-3\Delta$ is not a rational square, $K\cap\mathbb Q(\omega)=\mathbb Q$, and therefore $\operatorname{Gal}(M/\mathbb Q(\omega))\cong S_n$.

Let $\mathcal R$ be the set of vectors $e=(e_1,\ldots,e_n)\in\mathbb F_3^n$ for which $\prod_i g_i^{e_i}$ is a cube in $M$. Since $\prod_i g_i=c^3$, the all-ones vector lies in $\mathcal R$. We show that there is no nonconstant relation. Because $p\nmid\Delta$, the reductions of the roots are distinct at every prime above $p$, so inertia fixes every root and is trivial. Frobenius on the residue field acts by $z\mapsto z^p$; its orbits on the reduced roots are exactly the irreducible factors of $f$ modulo $p$. Hence a prime of $M$ above $p$ has residue field $\mathbb F_{p^{n-2}}$, with two roots reducing to $u$ and $v$.

If $z\in\mathbb F_p^\times$ is a noncube, then $z^{(p-1)/3}$ is a nontrivial cube root of unity. Since $p\equiv1\pmod3$ and $n-2\equiv1\pmod3$,
$$
z^{(p^{n-2}-1)/3}
=
\left(z^{(p-1)/3}\right)^{1+p+\cdots+p^{n-3}}
\neq1.
$$
Thus a noncube in $\mathbb F_p^\times$ remains a noncube in $\mathbb F_{p^{n-2}}^\times$. The root reducing to $u$ therefore gives a noncube $g_i$, while the root reducing to $v$ gives a cube residue.

The space $\mathcal R$ is $S_n$-stable. If it contained a nonconstant vector, subtracting its image under a transposition of two unequal coordinates would put a nonzero multiple of $e_i-e_j$ in $\mathcal R$; conjugating gives every difference $e_r-e_s$. In particular, the quotient of the two $g$'s reducing to $a+u$ and $a+v$ would be a cube in $M$, but its residue is a noncube divided by a cube, a contradiction. Hence
$$
\mathcal R=\langle(1,\ldots,1)\rangle.
$$

Choose $\alpha_i^3=g_i$ with $\prod_i\alpha_i=c$, put $\beta_{ij}=\alpha_i\alpha_j$, and choose $\eta^3=p$. The pair classes span $\mathbb F_3^n/\langle(1,\ldots,1)\rangle$, since for distinct $i,j,k$,
$$
2e_i=(e_i+e_j)+(e_i+e_k)-(e_j+e_k).
$$
Also $p$ is independent of those classes: every $g_i$ is a $p$-adic unit because their nonnegative valuations sum to $v(c^3)=0$, whereas $v(p)=1$, which is not divisible by $3$.

For completeness, if a field contains $\omega$ and $m$ cube classes are independent, adjoining their cube roots has degree $3^m$ and each root may be multiplied independently by a power of $\omega$. Induct on $m$: if the last class became a cube in the previous radical field, a cube root would be a common eigenvector for all previous phase automorphisms; the monomial basis shows it equals a base-field element times a monomial in the previous radicals, contradicting independence. Thus the last cubic is irreducible and triples the degree.

The roots of $P_0$ contain all $\beta_{ij}$, and
$$
\alpha_i=\frac{(\beta_{ij}\beta_{ik}/\beta_{jk})^2}{g_i},
$$
so they generate all $\alpha_i$. The roots of $P_1$ then recover $\eta$ by division by a corresponding root of $P_0$; $P_2$ adds nothing further. Consequently every automorphism fixing $M$ is uniquely given by $\xi_1,\ldots,\xi_n,s\in\mathbb F_3$ with
$$
\sum_i\xi_i=0,
$$
through
$$
\alpha_i\mapsto\omega^{\xi_i}\alpha_i,\qquad
\eta\mapsto\omega^s\eta.
$$
The $S_n$-action on $M$ permutes the $g_i$ and fixes $p$, so every $\pi\in S_n$ extends by $\alpha_i\mapsto\alpha_{\pi(i)}$ and $\eta\mapsto\eta$. Composing with the phase kernel gives all lifts fixing $\omega$.

Step 2: Translate equal cycle types into orbit-sum conditions
Fix an admissible permutation $\pi$ of type $5^{3t}7^{3t}$. For an automorphism fixing $\omega$ and inducing $\pi$,
$$
\sigma(\alpha_i)=\omega^{\xi_i}\alpha_{\pi(i)},\qquad
\sigma(\eta)=\omega^s\eta.
$$
The numbers $B_{ij}$ are distinct. Indeed, equality for pairs sharing an index forces two distinct roots to coincide; if $\{i,j\}$ and $\{k,l\}$ are disjoint, applying a transposition that moves $i$ to a fifth index while fixing $j,k,l$ gives a second equality whose quotient again forces two distinct $g$'s to coincide.

A root of $P_k$ has the form $\omega^q\eta^k\alpha_i\alpha_j$. Let an orbit of the unordered pair $\{i,j\}$ under $\pi$ have length $\ell$, and let
$$
T=\sum_{\{r,s\}\text{ in the orbit}}(\xi_r+\xi_s).
$$
After one turn around the pair orbit, the phase coordinate is translated by $T+k\ell s$. Hence this orbit contributes three $\ell$-cycles when $T+k\ell s=0$, and one $3\ell$-cycle otherwise.

Write $x_a$ for the sum of the $\xi$-coordinates on the $a$th $5$-cycle of $\pi$, and $y_b$ for the corresponding sum on the $b$th $7$-cycle. Inside an odd cycle of length $\ell$, each distance class gives one pair orbit and every vertex occurs twice, so its accumulated phase is minus the cycle sum. Between cycles of lengths $r_1,r_2$, there are $\gcd(r_1,r_2)$ pair orbits of length $\operatorname{lcm}(r_1,r_2)$. Therefore the pair orbits are:
- two length-$5$ orbits inside each $5$-cycle, each with phase $-x_a$;
- five length-$5$ orbits between two $5$-cycles, each with phase $x_a+x_{a'}$;
- three length-$7$ orbits inside each $7$-cycle, each with phase $-y_b$;
- seven length-$7$ orbits between two $7$-cycles, each with phase $y_b+y_{b'}$;
- one length-$35$ orbit between a $5$- and a $7$-cycle, with phase $7x_a+5y_b=x_a-y_b$ in $\mathbb F_3$.

If $s=0$, the three actions on $P_0,P_1,P_2$ are identical. Suppose $s\neq0$. Since $5,7,35$ are nonzero modulo $3$, for every fixed pair orbit the three values $T+k\ell s$, $k=0,1,2$, run through all of $\mathbb F_3$. The root-cycle lengths arising from base lengths $5,7,35$ are respectively $5,15$, $7,21$, and $35,105$, all distinct. Thus the three full cycle types are equal exactly when, separately for base lengths $5$, $7$, and $35$, the accumulated phases $T$ are equally distributed among $0,1,2$.

Step 3: Classify the phase sums on the index cycles
Let $m_a$ be the number of $5$-cycles whose sum is $a\in\mathbb F_3$. The numbers of length-$5$ pair orbits with accumulated phases $0,1,2$ are
$$
A_0=2m_0+5\left(\binom{m_0}{2}+m_1m_2\right),
$$
$$
A_1=2m_2+5\left(m_0m_1+\binom{m_2}{2}\right),
\qquad
A_2=2m_1+5\left(m_0m_2+\binom{m_1}{2}\right).
$$
The two differences factor as
$$
A_0-A_1=\frac{m_0-m_2}{2}\left(5m_0-10m_1+5m_2-1\right),
$$
$$
A_1-A_2=\frac{m_1-m_2}{2}\left(10m_0-5m_1-5m_2+1\right).
$$
The second factors are congruent to $-1$ and $1$ modulo $5$, respectively, so neither can vanish. Hence $A_0=A_1=A_2$ forces
$$
m_0=m_1=m_2=t.
$$

Similarly, let $q_a$ count the $7$-cycles of sum $a$. Their phase counts are
$$
C_0=3q_0+7\left(\binom{q_0}{2}+q_1q_2\right),
$$
$$
C_1=3q_2+7\left(q_0q_1+\binom{q_2}{2}\right),
\qquad
C_2=3q_1+7\left(q_0q_2+\binom{q_1}{2}\right).
$$
Now
$$
C_0-C_1=\frac{q_0-q_2}{2}\left(7q_0-14q_1+7q_2-1\right),
$$
$$
C_1-C_2=\frac{q_1-q_2}{2}\left(14q_0-7q_1-7q_2+1\right),
$$
whose second factors are nonzero modulo $7$. Thus equality of the length-$7$ phase counts forces
$$
q_0=q_1=q_2=t.
$$
With these two uniform distributions, the number of length-$35$ pair orbits of any prescribed phase $c$ is
$$
\sum_{a-b=c}m_aq_b=3t^2,
$$
so the length-$35$ condition is automatic. Therefore for $s\neq0$, equal cycle type is equivalent exactly to having $t$ index cycles of each phase in both the $5$-cycle family and the $7$-cycle family.

Step 4: Count the phase vectors for a fixed admissible permutation
For $s=0$, every phase vector satisfying $\sum_i\xi_i=0$ works. This space has dimension $n-1=36t-1$, so there are
$$
3^{36t-1}
$$
choices.

Now fix one of the two nonzero values of $s$. The $3t$ labeled $5$-cycles may receive sums $0,1,2$, each exactly $t$ times, in
$$
\frac{(3t)!}{(t!)^3}
$$
ways, and independently the same number of choices is available for the $7$-cycles. Once every cycle sum is fixed, a cycle of length $\ell$ has $3^{\ell-1}$ assignments of its coordinates. Across all $3t$ five-cycles and $3t$ seven-cycles this gives
$$
3^{4\cdot3t+6\cdot3t}=3^{30t}.
$$
The prescribed uniform cycle sums have total sum $0$ in $\mathbb F_3$, so the global constraint $\sum_i\xi_i=0$ is automatic. Hence the two nonzero values of $s$ contribute
$$
2\cdot3^{30t}\left(\frac{(3t)!}{(t!)^3}\right)^2.
$$
For each fixed admissible $\pi$, the total number of lifts is therefore
$$
3^{36t-1}+2\cdot3^{30t}\left(\frac{(3t)!}{(t!)^3}\right)^2.
$$

Step 5: Count the admissible permutations and combine the factors
A permutation of $36t$ letters with $3t$ cycles of length $5$ and $3t$ cycles of length $7$ can be formed in
$$
\frac{(36t)!}{5^{3t}7^{3t}(3t)!^2}
=
\frac{(36t)!}{35^{3t}(3t)!^2}
$$
ways. Multiplying by the lift count from Step 4 and cancelling $(3t)!^2$ in the second term gives
$$
\frac{(36t)!}{35^{3t}}
\left(
\frac{3^{36t-1}}{(3t)!^2}
+
\frac{2\cdot3^{30t}}{(t!)^6}
\right).
$$
For $t=1$, the nonzero-$s$ condition requires the three $5$-cycle sums and the three $7$-cycle sums each to be a permutation of $0,1,2$, agreeing with the classification in Step 3 and providing the smallest-parameter boundary check.

Final Answer: $\boxed{\frac{(36t)!}{35^{3t}}(\frac{3^{36t-1}}{(3t)!^2}+\frac{2\cdot3^{30t}}{(t!)^6})}$

---

## Answer

$\frac{(36t)!}{35^{3t}}(\frac{3^{36t-1}}{(3t)!^2}+\frac{2\cdot3^{30t}}{(t!)^6})$

---

## Classification

**Problem Type:** Symbolic derivation

**Answer Type:** Exact symbolic expression

---

## Solution Concepts

- cubic Kummer theory
- finite-field Frobenius
- permutation actions on two-subsets
- modular orbit sums
- multinomial counting
