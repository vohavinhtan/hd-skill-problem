## Steps

Step 1: Reduce the first optimization stage to a residual martingale problem

Let $T=\{0,3,8,11\}$. Since $\mu_a(\{t\})=\frac18$ for every $t\in T$,
$$
\pi(\{(t,t)\})\leq\frac18,
$$
and therefore $\mathcal D(\pi)\leq\frac12$. If equality holds, then all four inequalities are equalities, so
$$
\pi_t=\delta_t\qquad(t\in T).
$$
After removing these four diagonal masses and multiplying the remainder by $8$, the first and second marginals become
$$
\rho_a=\sum_{i=1}^4U_{I_i(a)},\qquad
\lambda=\delta_0+\delta_3+\delta_8+\delta_{11}.
$$
Thus every target atom has residual capacity $1$. The diagonal rows contribute $0$ to $\mathcal C_h$, so among couplings with $\mathcal D=\frac12$ the secondary problem is equivalent to maximizing
$$
J_h(Q)=\int h(x)(y-x)^2\,dQ(x,y)
$$
over martingale couplings of $\rho_a$ and $\lambda$.

Step 2: Derive the no-crossing rule and binary fibres directly from the cost

Write $q_t(x)=Q_x(\{t\})$. Take $y^-<y'<y^+$ and put
$$
\alpha=\frac{y^+-y'}{y^+-y^-},\qquad
\beta=\frac{y'-y^-}{y^+-y^-}.
$$
Then $\alpha+\beta=1$ and $\alpha y^-+\beta y^+=y'$. Suppose that on an earlier positive-measure set $E$ both $q_{y^-}$ and $q_{y^+}$ are bounded below by a positive number, while on a later positive-measure set $F$, with $\sup E<\inf F$, the function $q_{y'}$ is bounded below by a positive number. Choose nonnegative densities $r_E,r_F$ of equal integral, small enough to stay below these masses. On $E$ replace
$$
\alpha\delta_{y^-}+\beta\delta_{y^+}
\quad\text{by}\quad \delta_{y'},
$$
and on $F$ make the reverse replacement. Row masses, row barycentres, and all target totals are preserved. The quadratic interpolation gap is
$$
\alpha(y^--x)^2+\beta(y^+-x)^2-(y'-x)^2
=(y'-y^-)(y^+-y'),
$$
so the gain is
$$
(y'-y^-)(y^+-y')
\left(\int_Fh\,r_F\,d\rho_a-\int_Eh\,r_E\,d\rho_a\right)>0,
$$
because $h$ is strictly increasing. Hence no optimizer permits an earlier fibre containing $y^-,y^+$ and a later fibre containing an interior target $y'$.

For each target $t$ and integer $n\geq1$, take the density points of the level set $\{q_t\geq1/n\}$. Their union supports all mass carried by target $t$. If this full-measure support contained a forbidden triple at $x<x'$, small disjoint neighbourhoods of $x,x'$ would supply sets $E,F$ of the preceding kind, a contradiction. If fibres had at least three target atoms on a positive-measure set, one fixed triple $y^-<y'<y^+$ would occur on a positive-measure subset; choosing two ordered density points of that subset would again give a forbidden triple. Therefore every residual optimal fibre has exactly two atoms almost everywhere, and the martingale condition fixes the weights on a pair $u<x<v$ as
$$
\frac{v-x}{v-u}\delta_u+\frac{x-u}{v-u}\delta_v.
$$

Step 3: Determine the fibres on the first two intervals

For $x\in I_1(a)\subset(0,2)$, the pair is $\{0,3\}$, $\{0,8\}$, or $\{0,11\}$. Even using $\{0,3\}$ on all of $I_1(a)$ sends only
$$
\int_{I_1(a)}\frac{x}{3}\,dU_{I_1(a)}=\frac13
$$
to target $3$, so target $3$ must also be used later. A wider pair would enclose $3$ and forbid that later use. Thus
$$
K_a^*(x)=\left(1-\frac{x}{3},\frac{x}{3},0,0\right)
\qquad(x\in I_1(a)),
$$
using capacities $\frac23$ at $0$ and $\frac13$ at $3$.

On $I_2(a)$, target $8$ cannot be exhausted there because even the pair $\{0,8\}$ on the whole interval sends only $\frac12$ to $8$. Hence no pair involving $11$ is allowed. The pair must be $\{3,8\}$ until the remaining capacity $\frac23$ at $3$ is exhausted, then $\{0,8\}$. If the switch is $s_2$, then
$$
\int_{4-a}^{s_2}\frac{8-x}{5}\frac{dx}{2a}=\frac23,
$$
so
$$
s_2=8-\sqrt{a^2-\frac{16}{3}a+16}.
$$
The full integral over $I_2(a)$ is $\frac45>\frac23$, so $s_2$ is the unique interior root. Therefore
$$
K_a^*(x)=
\begin{cases}
\left(0,\frac{8-x}{5},\frac{x-3}{5},0\right),&4-a\leq x\leq s_2,\\
\left(\frac{8-x}{8},0,\frac{x}{8},0\right),&s_2<x\leq4+a.
\end{cases}
$$
Since this interval has mass $1$, mean $4$, and sends $\frac23$ to $3$, it sends $\frac14$ to $8$ and $\frac1{12}$ to $0$.

Step 4: Determine the remaining fibres and verify the complete kernel

After $I_2(a)$, the remaining capacities are $\frac14$ at $0$, $\frac34$ at $8$, and $1$ at $11$. On $I_3(a)$ the pair is $\{0,8\}$ until $8$ is exhausted, then $\{0,11\}$. If the switch is $s_3$, then
$$
\int_{7-a}^{s_3}\frac{x}{8}\frac{dx}{2a}=\frac34,
$$
and hence
$$
s_3=\sqrt{a^2+10a+49}.
$$
The full integral over $I_3(a)$ is $\frac78>\frac34$, so $s_3$ is the unique interior root. This interval sends $\frac34$ to $8$; its mean $7$ then forces masses $\frac1{11}$ at $11$ and $\frac7{44}$ at $0$. Only $0$ and $11$ remain on $I_4(a)$.

With either convention at the two null switching points, the complete kernel is
$$
K_a^*(x)=
\begin{cases}
(1,0,0,0),&x=0,\\
\left(1-\frac{x}{3},\frac{x}{3},0,0\right),&x\in[1-a,1+a],\\
(0,1,0,0),&x=3,\\
\left(0,\frac{8-x}{5},\frac{x-3}{5},0\right),&x\in[4-a,s_2],\\
\left(\frac{8-x}{8},0,\frac{x}{8},0\right),&x\in(s_2,4+a],\\
\left(\frac{8-x}{8},0,\frac{x}{8},0\right),&x\in[7-a,s_3],\\
\left(\frac{11-x}{11},0,0,\frac{x}{11}\right),&x\in(s_3,7+a],\\
(0,0,1,0),&x=8,\\
\left(\frac{11-x}{11},0,0,\frac{x}{11}\right),&x\in[10-a,10+a],\\
(0,0,0,1),&x=11.
\end{cases}
$$
Every row has barycentre $x$, and the residual target totals are
$$
\begin{aligned}
0:&\quad \frac23+\frac1{12}+\frac7{44}+\frac1{11}=1,\\
3:&\quad \frac13+\frac23=1,\\
8:&\quad \frac14+\frac34=1,\\
11:&\quad \frac1{11}+\frac{10}{11}=1.
\end{aligned}
$$
Thus this is feasible and attains $\mathcal D=\frac12$. The residual feasible set is nonempty by this kernel and is compact because it consists of measures on a compact set with closed marginal and martingale constraints. Since $J_h$ is continuous, an optimizer exists. Step 2 applies to every optimizer, while the capacity arguments in Steps 3 and 4 force every pair and both switches. Hence this residual optimizer is unique for every admissible $h$, and it is independent of $h$.

Step 5: Prove convergence of all perturbed maximizers

The set $\mathcal M_a$ is compact: all measures are supported on the compact set $[0,11]\times T$, the marginal constraints are closed, and the martingale condition is the closed family
$$
\int f(x)(y-x)\,d\pi=0
$$
for continuous $f$. Let $B=\sup_{\pi\in\mathcal M_a}|\mathcal C_h(\pi)|<\infty$. Comparing $\pi_{\varepsilon,h}$ with $\pi_a^*$ gives
$$
0\leq\frac12-\mathcal D(\pi_{\varepsilon,h})
\leq\varepsilon\left(\mathcal C_h(\pi_{\varepsilon,h})-\mathcal C_h(\pi_a^*)\right)
\leq2B\varepsilon.
$$
Hence $\mathcal D(\pi_{\varepsilon,h})\to\frac12$. For any weakly convergent subsequence with limit $\bar\pi$, the diagonal set is closed, so
$$
\mathcal D(\bar\pi)\geq\limsup\mathcal D(\pi_{\varepsilon,h})=\frac12;
$$
therefore $\mathcal D(\bar\pi)=\frac12$.

For every $\sigma\in\mathcal M_a$ with $\mathcal D(\sigma)=\frac12$, optimality gives
$$
\mathcal C_h(\pi_{\varepsilon,h})
\geq\mathcal C_h(\sigma)
+\frac{\frac12-\mathcal D(\pi_{\varepsilon,h})}{\varepsilon}
\geq\mathcal C_h(\sigma).
$$
Passing to the subsequential limit shows that $\bar\pi$ maximizes $\mathcal C_h$ among all maximizers of $\mathcal D$. Step 4 makes that maximizer uniquely $\pi_a^*$. Every subsequential limit is therefore $\pi_a^*$, proving weak convergence for every choice of maximizers and every admissible $h$. The support pair changes only at $s_2$ and $s_3$.

Final Answer: $\boxed{\left(8-\sqrt{a^2-\frac{16}{3}a+16},\sqrt{a^2+10a+49}\right)}$

---

## Answer

$\left(8-\sqrt{a^2-\frac{16}{3}a+16},\sqrt{a^2+10a+49}\right)$

---

## Classification

**Problem Type:** Optimization

**Answer Type:** Tuple or ordered list

---

## Solution Concepts

- martingale transport
- lexicographic optimization
- local exchange argument
- weak convergence
- conditional barycentric splitting
