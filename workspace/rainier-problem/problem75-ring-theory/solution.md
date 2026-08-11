## Steps

Step 1: Relate the normalization colength to residue classes modulo eight
Write
$$
x=t^8,\qquad y=t^{12}+t^{14}+t^{15},\qquad z=t^{18}+\lambda t^{19}+t^{23},
$$
and let $v$ denote the $t$-adic valuation. We first record an elementary module bound. Suppose a subring $A\subset\mathbb C[[t]]$ contains $x=t^8$ and contains elements $b_r$ with
$$
v(b_r)=m_r\equiv r\pmod 8,\qquad 0\leq r\leq7.
$$
For
$$
B=\sum_{r=0}^7\mathbb C[[x]]b_r\subset A,
$$
the initial terms of $x^jb_r$ are nonzero multiples of $t^{m_r+8j}$. Different $r$ give different residues modulo $8$, so in the $t$-adic associated graded module the missing monomials in residue class $r$ are exactly
$$
t^r,t^{r+8},\ldots,t^{m_r-8}.
$$
Hence
$$
\dim_{\mathbb C}\frac{\mathbb C[[t]]}{A}
\leq
\dim_{\mathbb C}\frac{\mathbb C[[t]]}{B}
=
\sum_{r=0}^7\frac{m_r-r}{8}.
$$
Finite length is unchanged on passing to the associated graded module, which proves the bound.

Step 2: Bound every nonexceptional parameter by twenty-three
Put
$$
f=y^2-x^3
=t^{30}+2t^{29}+t^{28}+2t^{27}+2t^{26}.
$$
Then
$$
a_{\lambda}=xz-\frac{1}{2}f
=t^{31}-\frac{1}{2}t^{30}-t^{29}-\frac{1}{2}t^{28}+(\lambda-1)t^{27},
$$
so $v(a_{\lambda})=27$ whenever $\lambda\neq1$. Also
$$
\begin{aligned}
g_{\lambda}=y^3-z^2
&=-t^{46}+t^{45}+3t^{44}+3t^{43}+(4-2\lambda)t^{42}+4t^{41}\\
&\quad+3t^{40}+3t^{39}+(3-\lambda^2)t^{38}-2\lambda t^{37}.
\end{aligned}
$$
Because $\lambda\in\mathbb C^{\times}$, $v(g_{\lambda})=37$. For $\lambda\neq1$, the eight elements
$$
1,\ yg_{\lambda},\ z,\ a_{\lambda},\ y,\ g_{\lambda},\ yz,\ ya_{\lambda}
$$
have valuations, in residue order $0,1,\ldots,7$,
$$
(0,49,18,27,12,37,30,39).
$$
Applying Step 1 gives
$$
\delta_{\lambda}
\leq
0+6+2+3+1+4+3+4
=23
\qquad(\lambda\neq1).
$$

Step 3: Determine the exceptional value semigroup at lambda equal to one
Now set $\lambda=1$. Starting with the same $f$, define
$$
s=xz-\frac{1}{2}f,\qquad
h=s+\frac{1}{2}x^2y,\qquad
g=y^3-z^2,
$$
$$
q=g-2xh,\qquad k=q-yf.
$$
Their relevant exact expansions are
$$
\begin{aligned}
s&=t^{31}-\frac{1}{2}t^{30}-t^{29}-\frac{1}{2}t^{28},\\
h&=\frac{3}{2}t^{31}-t^{29},\\
q&=-t^{46}+t^{45}+3t^{44}+3t^{43}+2t^{42}+4t^{41}+3t^{40}+2t^{38},\\
k&=-t^{46}-2t^{42}-2t^{41}-2t^{39}.
\end{aligned}
$$
Thus $v(h)=29$ and $v(k)=39$.

It remains to certify that no cancellation creates a new value below $44$. Among monomials in $x,y,z$, the only primitive equal leading weights below $44$ are $24$, from $y^2$ and $x^3$, and $36$, from $y^3$ and $z^2$; every other equal-weight relation below $44$ is a monomial multiple of one of these. The successive new equal-weight collisions created by reducing those two primitive relations are exactly
$$
24\to26\to28\to29,
\qquad
36\to37\to38\to39,
$$
and the corresponding reductions are
$$
y^2-x^3=f,
\qquad
xz-\frac{1}{2}f=s,
\qquad
s+\frac{1}{2}x^2y=h,
$$
$$
y^3-z^2=g,
\qquad
g-2xh=q,
\qquad
q-yf=k.
$$
For example, the apparent collision at value $38$ with $xyz$ is not new, because $yf-2xyz=y(f-2xz)$ is already reduced by the earlier $26$- and $28$-relations. Likewise, collisions at $32,34,40,42$ are monomial multiples of the relations already displayed. Hence every element of $A_1$ with valuation below $44$ reduces to a monomial whose valuation lies in
$$
S=\langle8,12,18,29,39\rangle.
$$
Conversely all five generators of $S$ occur as valuations of elements of $A_1$.

The semigroup $S$ contains the eight consecutive integers $44,45,\ldots,51$ via
$$
44=4\cdot8+12,
\quad45=29+2\cdot8,
\quad46=18+12+2\cdot8,
\quad47=39+8,
$$
$$
48=6\cdot8,
\quad49=29+12+8,
\quad50=18+2\cdot12+8,
\quad51=39+12.
$$
Adding $8$ shows that every integer at least $44$ is in $S$. Therefore a later cancellation cannot create a value outside $S$, and
$$
v(A_1)=S.
$$

Step 4: Compute the exceptional delta invariant from the Apéry set
For the even subsemigroup $\langle8,12,18\rangle$, the least representatives of residues $0,2,4,6$ modulo $8$ are
$$
0,\ 18,\ 12,\ 30.
$$
Since $29+39>51$ and $2\cdot29>51$, an odd element below $52$ uses at most one odd generator. Comparing $29+\langle8,12,18\rangle$ and $39+\langle8,12,18\rangle$ gives the least representatives of residues $1,3,5,7$ as
$$
41,\ 51,\ 29,\ 39.
$$
Thus the Apéry representatives of $S$ modulo $8$ are
$$
(0,41,18,51,12,29,30,39).
$$
The missing values in residue class $r$ are precisely the integers $r+8j$ below the corresponding representative, so
$$
\begin{aligned}
\delta_1
&=\frac{41-1}{8}+\frac{18-2}{8}+\frac{51-3}{8}+\frac{12-4}{8}\\
&\qquad+\frac{29-5}{8}+\frac{30-6}{8}+\frac{39-7}{8}\\
&=5+2+6+1+3+3+4\\
&=24.
\end{aligned}
$$

Step 5: Prove the maximum and its unique attaining parameter
Step 4 gives the attained value $\delta_1=24$. Step 2 gives the strict bound $\delta_{\lambda}\leq23$ for every allowed $\lambda\neq1$. Hence no nonexceptional parameter can tie the exceptional one, and
$$
\Delta=24,\qquad \Lambda=\{1\}.
$$
This also gives a counterexample check against the tempting generic rule: at $\lambda=1$ the coefficient of $t^{27}$ in $a_{\lambda}$ vanishes, forcing the different cancellation chain that produces the extra gap.

Final Answer: $\boxed{(24,\{1\})}$

---

## Answer

$(24,\{1\})$

---

## Classification

**Problem Type:** Optimization

**Answer Type:** Tuple or ordered list

---

## Solution Concepts

- value semigroup of a curve singularity
- Apéry set
- local standard basis
- t-adic valuation
- normalization colength
