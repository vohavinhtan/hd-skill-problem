## Steps

Step 1: Parametrize the ideals of norm $n$

Every ideal of norm $n$ is obtained by distributing each split prime power between the two conjugate prime ideals. Thus it has the form
$$
\begin{aligned}
I(\mathbf u)=&
\mathfrak p_2^{u_2}\overline{\mathfrak p}_2^{\,a-u_2}
\mathfrak p_3^{u_3}\overline{\mathfrak p}_3^{\,b-u_3}
\mathfrak p_5^{u_5}\overline{\mathfrak p}_5^{\,c-u_5}
\mathfrak p_{11}^{u_{11}}\overline{\mathfrak p}_{11}^{\,d-u_{11}}\\
&\cdot
\prod_{\ell\in P}\mathfrak q_\ell^{u_\ell}\overline{\mathfrak q}_\ell^{\,e_\ell-u_\ell}
\prod_{q\in Q}(q)^{f_q},
\end{aligned}
$$
where
$$
0\le u_2\le a,\quad 0\le u_3\le b,\quad 0\le u_5\le c,\quad
0\le u_{11}\le d,\quad 0\le u_\ell\le e_\ell.
$$
The inert primes contribute only the forced factor $(q)^{f_q}$.

Step 2: Impose principality

Since $[\overline{\mathfrak p}]=-[\mathfrak p]$, the class of $I(\mathbf u)$ is
$$
(2u_2-a)C+2(2u_3-b)C+2(2u_5-c)C+
\sum_{\ell\in P}c_\ell(2u_\ell-e_\ell)C.
$$
The prime $11$ contributes nothing because $[\mathfrak p_{11}]=0$, and inert primes also contribute nothing. Hence $I(\mathbf u)$ is principal exactly when
$$
(2u_2-a)+2(2u_3-b)+2(2u_5-c)
\sum_{\ell\in P}c_\ell(2u_\ell-e_\ell)\equiv0\pmod5.
$$
Let $\mathcal A$ be the set of all exponent tuples satisfying these inequalities and this congruence.

Step 3: Compute the local intersection factors

For a split prime $p$, suppose the local part of $I$ is
$$
\mathfrak p^\alpha\overline{\mathfrak p}^{\,\beta},
\qquad \alpha+\beta=k,
$$
and suppose $v_{\mathfrak p}(\gamma)=s$, $v_{\overline{\mathfrak p}}(\gamma)=t$. An integer multiplier $m$ has the same $p$-adic valuation at both prime ideals, so the exponent of $p$ in
$$
\#\{r\in\mathbb Z/p^k\mathbb Z:r\gamma\in I\}
$$
is
$$
\min(k,\beta+s,\alpha+t).
$$
This is the only local rule needed below.

For primes $\ell\in P$, all $\gamma_j$ are units locally, so each $D_j$ gets the same factor
$$
\ell^{\min(u_\ell,e_\ell-u_\ell)}.
$$
For inert $q\in Q$, each $D_j$ gets the factor $q^{f_q}$. Put
$$
\Lambda(\mathbf u)=
\left(\prod_{q\in Q}q^{f_q}\right)
\left(\prod_{\ell\in P}\ell^{\min(u_\ell,e_\ell-u_\ell)}\right).
$$

Step 4: Apply the four probe factorizations

Using
$$
(\gamma_1)=\mathfrak p_2^2\overline{\mathfrak p}_3,\quad
(\gamma_2)=\overline{\mathfrak p}_2\mathfrak p_5^3,\quad
(\gamma_3)=\mathfrak p_3\overline{\mathfrak p}_5\mathfrak p_{11},\quad
(\gamma_4)=\overline{\mathfrak p}_{11}^{\,2},
$$
the four coordinates are
$$
\begin{aligned}
D_1(\mathbf u)=&\Lambda(\mathbf u)\,
2^{\min(u_2,a-u_2+2)}
3^{\min(b-u_3,u_3+1)}
5^{\min(u_5,c-u_5)}
11^{\min(u_{11},d-u_{11})},\\
D_2(\mathbf u)=&\Lambda(\mathbf u)\,
2^{\min(a-u_2,u_2+1)}
3^{\min(u_3,b-u_3)}
5^{\min(u_5,c-u_5+3)}
11^{\min(u_{11},d-u_{11})},\\
D_3(\mathbf u)=&\Lambda(\mathbf u)\,
2^{\min(u_2,a-u_2)}
3^{\min(u_3,b-u_3+1)}
5^{\min(u_5+1,c-u_5)}
11^{\min(u_{11},d-u_{11}+1)},\\
D_4(\mathbf u)=&\Lambda(\mathbf u)\,
2^{\min(u_2,a-u_2)}
3^{\min(u_3,b-u_3)}
5^{\min(u_5,c-u_5)}
11^{\min(d-u_{11},u_{11}+2)}.
\end{aligned}
$$

Step 5: Assemble the multiset

Each tuple $\mathbf u\in\mathcal A$ gives exactly one principal ideal of norm $n$, and different exponent tuples are counted separately. Therefore the desired multiset is
$$
\mathcal M_n=\{\mathbf D(\mathbf u):\mathbf u\in\mathcal A\},
$$
with multiplicity, where
$$
\mathbf D(\mathbf u)=(D_1(\mathbf u),D_2(\mathbf u),D_3(\mathbf u),D_4(\mathbf u)).
$$

Final Answer: $\boxed{\mathcal M_n=\{\mathbf D(\mathbf u):\mathbf u\in\mathcal A\}\text{ with multiplicity}}$

---

## Answer

$\mathcal M_n=\{\mathbf D(\mathbf u):\mathbf u\in\mathcal A\}\text{ with multiplicity}$

---

## Classification

**Problem Type:** Exact computation

**Answer Type:** Set or multiset of objects

---

## Concepts (1-5)

- Ideal factorization in quadratic fields
- Ideal class groups
- Principal ideal congruences
- Split and inert prime decomposition
- Local valuation counting

---

## Black-Box Audit

- Step 2 states the principality congruence explicitly in $\operatorname{Cl}(\mathcal O)\cong\mathbb Z/5\mathbb Z$.
- Step 3 gives the local counting rule used for every $D_j$.
- Step 4 applies that rule separately to all four given principal factorizations.
- The prime $11$ is checked separately because it is split but class-trivial; it affects $D_3$ and $D_4$ but not principality.

---

## Verification

- If $P=Q=\varnothing$ and $n=1$, then $\mathcal A$ has one tuple and all $D_j=1$, as expected.
- The congruence has no $u_{11}$ term, matching $[\mathfrak p_{11}]=0$.
- For $\gamma_4$, the only nontrivial local valuation is $v_{\overline{\mathfrak p}_{11}}(\gamma_4)=2$, giving the factor $11^{\min(d-u_{11},u_{11}+2)}$; this is the common place where the two conjugate exponents can be accidentally swapped.
