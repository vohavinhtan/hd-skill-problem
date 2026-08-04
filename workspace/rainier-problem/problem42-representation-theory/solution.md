## Steps

Step 1: Replace the regular unipotent action by a principal raising operator

The hook product for $\lambda=(4,3,2,1)$ is
$$
7\cdot5^2\cdot3^3=4725,
$$
which is invertible because $p>30n$. The Young symmetrizer therefore gives
$$
W\cong\mathbb{S}_{(4,3,2,1)}(V).
$$
Regard $V$ as the $\mathfrak{sl}_2$ module $L(n-1)$ with raising operator $e$. A regular unipotent is conjugate to $\exp(e)$. Every highest weight occurring in $V^{\otimes10}$ is at most $10(n-1)<p$.

The precise Clebsch-Gordan statement used here is
$$
L(a)\otimes L(b)
\cong
\bigoplus_{j=0}^{\min\{a,b\}}L(a+b-2j)
\qquad(a+b<p).
$$
Apply it successively to the ten factors $L(n-1)$. After $r$ factors, every summand has highest weight at most $r(n-1)$; tensoring with the next factor requires
$$
r(n-1)+(n-1)\leq10(n-1)<p.
$$
Every tensor stage is therefore semisimple. The normalized Young symmetrizer is an $\mathfrak{sl}_2$-equivariant idempotent, so its image $W$ is a direct summand of $V^{\otimes10}$ and is itself a direct sum of modules $L(d)$.

If $e_W$ is the induced raising operator, then
$$
N=\exp(e_W)-I_W=e_Wh(e_W),
\qquad
h(X)=\sum_{r\geq0}\frac{X^r}{(r+1)!},
\qquad
h(0)=1.
$$
The sum truncates before degree $p$, and $h(e_W)$ is invertible and commutes with $e_W$. Therefore
$$
\operatorname{rank}(N^k)=\operatorname{rank}(e_W^k)
$$
for every $k$.

Step 2: Compute the boundary coefficients of the Schur character

Set $x_i=q^{i-1}$ in the Weyl alternant quotient and cancel the two Vandermonde products. The contents of $\lambda$ are
$$
-3,-2,-1,-1,0,0,1,1,2,3,
$$
the hook lengths are $7,5,5,3,3,3,1,1,1,1$, and $n(\lambda)=10$. The resulting principal specialization is
$$
P_n(q):=s_\lambda(1,q,\ldots,q^{n-1})
=q^{10}
\frac{(1-q^{n-3})(1-q^{n-2})(1-q^{n-1})^2(1-q^n)^2
(1-q^{n+1})^2(1-q^{n+2})(1-q^{n+3})}
{(1-q)^4(1-q^3)^3(1-q^5)^2(1-q^7)}.
$$
Writing $P_n(q)=\sum_jp_jq^j$, the unique lowest tableau has weight $a=10$. Homogeneity and symmetry give
$$
P_n(q)=q^{10(n-1)}P_n(q^{-1}),
\qquad
b=10n-20,
\qquad
D=b-a=10n-30.
$$

For the first five coefficients after $q^{10}$, expand
$$
\frac{1}{(1-q)^4(1-q^3)^3}
=1+4q+10q^2+23q^3+47q^4+O(q^5)
$$
and multiply by the numerator factors visible through degree $4$. This gives
$$
\begin{array}{c|ccccc}
n&p_a&p_{a+1}&p_{a+2}&p_{a+3}&p_{a+4}\\
\hline
5&1&4&9&18&31\\
6&1&4&10&22&42\\
7&1&4&10&23&46\\
n\geq8&1&4&10&23&47
\end{array}.
$$
The same values occur in reverse order at the upper endpoint.

Step 3: Convert boundary coefficients into ranks of powers of $N$

Write $W=\bigoplus_\gamma L(d_\gamma)$. In exponent coordinates, the weights of $L(d_\gamma)$ occupy an interval $I_\gamma$ of $d_\gamma+1$ consecutive integers centered at $5(n-1)$. On this string,
$$
\operatorname{rank}(e_W^k|_{L(d_\gamma)})
=\#\{j:j,j+k\in I_\gamma\}
=\max\{d_\gamma+1-k,0\}.
$$
Summing first over strings and then over exponents gives
$$
r_k:=\operatorname{rank}(N^k)
=\sum_j\#\{\gamma:j,j+k\in I_\gamma\}.
$$
For fixed $j$, let $A_j=\{\gamma:j\in I_\gamma\}$. All $I_\gamma$ have the same center, so ordering them by length makes every $A_j$ a terminal segment. Therefore
$$
\#(A_j\cap A_{j+k})
=\min\{\#A_j,\#A_{j+k}\}
=\min\{p_j,p_{j+k}\},
$$
which proves
$$
r_k=\sum_j\min\{p_j,p_{j+k}\}.
$$

For $k=D-j$, only the first $j+1$ boundary pairs contribute. The coefficient table gives
$$
\begin{array}{c|ccccc}
j&0&1&2&3\\
\hline
r_{D-j}&1&2&6&10
\end{array},
\qquad
r_{D+1}=0.
$$
The remaining boundary rank is
$$
r_{D-4}=
\begin{cases}
19,&n=5,\\
20,&n\geq6.
\end{cases}
$$
because
$$
r_{D-4}=1+4+p_{a+2}+4+1=p_{a+2}+10.
$$

Step 4: Recover the leading Jordan layers of $C$

The group algebra element
$$
z=1+(12)-(13)-(12)(13)
$$
satisfies $z^2=3z$ by direct multiplication in $\mathbb F_p[S_3]$. Since $p\neq3$, the operator $e=z/3$ satisfies $e^2=e$. An idempotent has eigenvalues $0$ and $1$, so its trace is its rank and equals the dimension of its image. Also $\operatorname{im}e=\operatorname{im}z$. On an $r$ dimensional space $E$, the identity, a transposition, and a $3$ cycle have traces $r^3,r^2,r$, respectively, on $E^{\otimes3}$. Accordingly,
$$
\operatorname{tr}_{E^{\otimes3}}(z)=r^3+r^2-r^2-r=r^3-r.
$$
It follows that
$$
\dim z(E^{\otimes3})=F(r),
\qquad
F(r)=\frac{r^3-r}{3}.
$$
Also,
$$
C^k=\left.(N^k)^{\otimes3}\right|_Z,
\qquad
\rho_k:=\operatorname{rank}(C^k)=F(r_k).
$$
Therefore
$$
(\rho_D,\rho_{D-1},\rho_{D-2},\rho_{D-3})
=(0,2,70,330),
$$
and $\rho_{D-4}=2280$ for $n=5$, while $\rho_{D-4}=2660$ for $n\geq6$.

The number of blocks of size $s$ is
$$
\rho_{s-1}-2\rho_s+\rho_{s+1}.
$$
Therefore
$$
m_D=2,\qquad
m_{D-1}=66,\qquad
m_{D-2}=192,
$$
and
$$
m_{D-3}=
\begin{cases}
1690,&n=5,\\
2070,&n\geq6.
\end{cases}
$$

Step 5: Determine the leading blocks after replacing $C$ by $C^3$

Expansion along the first row gives
$$
B=E_1(E_1^2-E_2)-(2E_2E_1-3E_3)
=E_1^3-3E_1E_2+3E_3.
$$
Substitute
$$
E_1=C_1+C_2+C_3,
\qquad
E_2=C_1C_2+C_1C_3+C_2C_3,
\qquad
E_3=C_1C_2C_3.
$$
Since the $C_i$ commute, direct expansion gives
$$
(C_1+C_2+C_3)^3
-3(C_1+C_2+C_3)(C_1C_2+C_1C_3+C_2C_3)
+3C_1C_2C_3
=C_1^3+C_2^3+C_3^3.
$$
The operator $B$ is the exterior derivation induced by $T=C^3$. If $s=3q+r$ with $0\leq r<3$, then
$$
J_s(0)^3\cong
J_{q+1}(0)^{\oplus r}\oplus J_q(0)^{\oplus(3-r)},
$$
with zero sized blocks omitted. The leading $T$ blocks are
$$
\begin{array}{c|c|c|c|c}
D\bmod3&\text{largest size}&\text{number}&\text{next size}&\text{number}\\
\hline
0&D/3&3m_D+2m_{D-1}+m_{D-2}=330&-&-\\
1&(D+2)/3&m_D=2&(D-1)/3&
2m_D+3m_{D-1}+2m_{D-2}+m_{D-3}=2656\\
2&(D+1)/3&2m_D+m_{D-1}=70&-&-
\end{array}.
$$
The middle row has $n\equiv1\pmod3$, so $n\geq7$ and $m_{D-3}=2070$.

Step 6: Read the maximal strings on the exterior cube

Identify each Jordan block $J_s(0)$ of $T$ with the raising operator on $L(s-1)$. The largest such $s$ is at most $\lceil D/3\rceil$, so every block has highest weight less than $D/3+1<p$. The largest weight occurring in the required exterior cube is at most
$$
3\left(\left\lceil\frac D3\right\rceil-1\right)\leq D<10n<p.
$$
The Clebsch-Gordan condition therefore remains valid when three of these blockwise modules are tensored. Since $p>3$, the alternating projector
$$
\frac16\sum_{\sigma\in S_3}\operatorname{sgn}(\sigma)\sigma
$$
is an idempotent, so $\Lambda^3Z$ is a semisimple direct summand. Its raising operator is $B$. A summand $L(w)$ contributes one Jordan block of size $w+1$, and the dimension of the maximal weight space is exactly the multiplicity of the blocks of maximal size.

If $D=3q$, choose three of the $330$ highest vectors of weight $q-1$. This gives
$$
L_n=3q-2=D-2,
\qquad
\mu_n=\binom{330}{3}=5\,935\,160.
$$
If $D=3q+1$, the two size $q+1$ blocks must both be used, together with one of the $2656$ size $q$ blocks. Therefore
$$
L_n=3q=D-1,
\qquad
\mu_n=2656.
$$
If $D=3q+2$, choose three of the $70$ size $q+1$ blocks:
$$
L_n=3q+1=D-1,
\qquad
\mu_n=\binom{70}{3}=54\,740.
$$
Since $D=10n-30\equiv n\pmod3$, the indicator notation from the problem gives the compact result.

Final Answer: $\boxed{(10n-31-\delta_0(n),\,5\,935\,160\delta_0(n)+2656\delta_1(n)+54\,740\delta_2(n))}$

---

## Answer

$(10n-31-\delta_0(n),\,5\,935\,160\delta_0(n)+2656\delta_1(n)+54\,740\delta_2(n))$

---

## Classification

**Problem Type:** Parameter identification

**Answer Type:** Tuple or ordered list

---

## Concepts (1-5)

- Young symmetrizers and Schur modules
- Principal $\mathfrak{sl}_2$ weight strings
- Principal specialization of Schur characters
- Jordan multiplicities from boundary ranks
- Exterior derivations induced by nilpotent powers
