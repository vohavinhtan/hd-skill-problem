## Steps

Step 1: Force the zero rows

The first two identities give
$$
\sum_{i,j}(m_{ij}^{2}-m_{ij})=0.
$$
Since the entries are nonnegative integers, every entry is either $0$ or $1$. So $M$ is a $0$-$1$ matrix with exactly $60$ ones.

Let $r_i$ be the row sums. The row identities give
$$
\sum_i r_i(r_i-4)^2
=\sum_i r_i^3-8\sum_i r_i^2+16\sum_i r_i
=960-8\cdot240+16\cdot60=0.
$$
Every row has size $0$ or $4$. Since the total number of ones is $60$, there are exactly $15$ nonzero rows and $45$ zero rows. So the maximum possible number of zero rows is at most $45$, and every admissible matrix already attains it.

Similarly, for the column sums,
$$
\sum_j(c_j-3)^2=\sum_jc_j^2-6\sum_jc_j+9\cdot20=180-360+180=0,
$$
so every column has size $3$.

Step 2: Determine the pair structure

For distinct columns, $g_{jk}$ is the number of rows containing both columns. Since every column has size $3$, $g_{jk}\leq 3$. Also
$$
\sum_{\{j,k\}}g_{jk}=15\binom42=90.
$$
Using the ordered sums in the hypotheses and subtracting the diagonal terms $g_{jj}=3$, we get
$$
\sum_{\{j,k\}}g_{jk}^{2}=120,\qquad
\sum_{\{j,k\}}g_{jk}^{3}=210.
$$
If $p_a$ denotes the number of unordered column pairs with $g_{jk}=a$, then
$$
p_1+2p_2+3p_3=90,\quad
p_1+4p_2+9p_3=120,\quad
p_1+8p_2+27p_3=210.
$$
Solving gives
$$
p_1=75,\qquad p_2=0,\qquad p_3=5.
$$
There are exactly five pairs of identical columns, called twin pairs, and no pair of columns occurs together in exactly two rows. The triple condition gives
$$
\sum h_{jkl}^{2}=\sum h_{jkl}=360
$$
over ordered triples of distinct columns, so no three columns occur together in two different rows. In particular, the five twin pairs are disjoint, leaving $10$ unpaired columns.

Step 3: The unpaired columns form the Petersen graph

Treat the $15$ nonzero rows as $4$-subsets of the $20$ columns. Since twin columns are identical, a row containing one member of a twin pair contains the other member as well.

Let $b_0,b_1,b_2$ be the number of rows containing respectively $0,1,2$ twin pairs. Counting rows and twin-pair incidences gives
$$
b_0+b_1+b_2=15,\qquad b_1+2b_2=15,
$$
so $b_0=b_2$.

On the $10$ unpaired columns, join two columns when they occur together in a row. A row of type $b_0$ contributes $6$ such edges, a row of type $b_1$ contributes $1$, and a row of type $b_2$ contributes none. The graph on the unpaired columns has
$$
6b_0+b_1=15+4b_0
$$
edges. The two cycle identities in the problem say that this graph has no triangles and no $4$-cycles. The needed edge bound and equality case follow from the next count.

For any vertex $v$, the sets $N(u)\setminus\{v\}$ with $u\in N(v)$ are disjoint and lie outside $\{v\}\cup N(v)$; otherwise there would be a triangle or a $4$-cycle. This gives
$$
\sum_{u\in N(v)}(d(u)-1)\leq9-d(v),
$$
or $\sum_{u\in N(v)}d(u)\leq9$. Summing over $v$ and applying Cauchy gives
$$
\sum_vd(v)^2\leq90,
\qquad
(2|E|)^2\leq10\sum_vd(v)^2\leq900,
$$
so $|E|\leq15$. Equality forces every vertex to have degree $3$. Choose a vertex $v$ with neighbors $a,b,c$, and write the other neighbors of $a,b,c$ as three disjoint pairs $A,B,C$. No edge lies within one pair, since that would make a triangle. Each vertex needs two further neighbors and cannot meet both vertices of another pair, since that would make a $4$-cycle. It therefore has one neighbor in each of the other two pairs, giving a perfect matching between every pair among $A,B,C$. Relabel so that the matchings from $A$ to $B$ and from $A$ to $C$ pair equal indices. The matching from $B$ to $C$ must cross the indices, since the parallel matching would create triangles. This determines the Petersen graph up to relabeling. Since $15+4b_0\leq15$, we have $b_0=0$; every row consists of one twin pair and one Petersen edge.

Step 4: The compatibility conditions force the Kneser labeling

Use the standard model of the Petersen graph as the Kneser graph $KG(5,2)$, whose vertices are the $2$-subsets of $\{1,2,3,4,5\}$, with two vertices adjacent when the corresponding $2$-subsets are disjoint.

Each twin pair is used in exactly three rows. Its three Petersen edges cannot share a vertex, since that would make the corresponding twin-column and unpaired-column intersection equal to $2$. They therefore form a matching. The second compatibility condition says that the four Petersen vertices not incident to this matching form an independent set. The maximum independent sets in $KG(5,2)$ are precisely the five stars
$$
S_e=\{\{e,j\}:j\neq e\},\qquad e\in\{1,2,3,4,5\}.
$$
An independent set here is a pairwise-intersecting family of $2$-subsets. If such a family contains $\{1,2\}$ and $\{1,3\}$ but has no common element, it must also contain $\{2,3\}$; no fourth distinct $2$-subset meets all three. A family of size $4$ must have a common element and is one of the stars $S_e$.
The first compatibility condition says that the corresponding independent $4$-sets meet pairwise in exactly one vertex, which is exactly the intersection pattern of the five stars. So the five twin pairs are forced, up to relabeling, to correspond to the five elements $e\in\{1,\dots,5\}$.

After row and column permutations, the unique extremal matrix $M_*$ has columns
$$
a_1,a_1',\ldots,a_5,a_5',
\qquad
x_{ij}\quad(1\leq i<j\leq5),
$$
and its $15$ nonzero rows are the rows
$$
\{a_e,a_e',x_{ij},x_{kl}\},
$$
where $e\in\{1,\dots,5\}$ and $\{ij,kl\}$ runs over the three partitions of $\{1,\dots,5\}\setminus\{e\}$ into two unordered pairs. The remaining $45$ rows are zero.

There are $15$ nonzero rows, each of size $4$, and every column lies in exactly $3$ rows. The total, row-square, row-cube, and column-square identities are
$$
15\cdot4=60,
\qquad
15\cdot4^2=240,
\qquad
15\cdot4^3=960,
\qquad
20\cdot3^2=180.
$$
Exactly the five pairs $\{a_e,a_e'\}$ have intersection size $3$. Among pairs with intersection size $1$, there are the $15$ Petersen edges and
$$
5\cdot2\cdot6=60
$$
twin-column/unpaired-column pairs, because $a_e$ meets $x_{ij}$ precisely when $e\notin\{i,j\}$. This gives $75$ pairs of intersection size $1$, and every other distinct pair has intersection size $0$. Including the $20$ diagonal terms $g_{jj}=3$ gives
$$
\sum_{j,k}g_{jk}^2
=20\cdot3^2+2(5\cdot3^2+75)=420,
$$
$$
\sum_{j,k}g_{jk}^3
=20\cdot3^3+2(5\cdot3^3+75)=960.
$$

Every ordered triple contained in a row occurs in only that row: a triple containing a twin pair determines $e$ and its Petersen edge, while a triple containing only one twin column determines that edge from its two unpaired columns. Each nonzero row therefore contributes $4\cdot3\cdot2=24$ ordered triples, so
$$
\sum_{\substack{1\leq j,k,l\leq20\\j,k,l\text{ pairwise distinct}}}h_{jkl}^2
=15\cdot24=360.
$$
The graph induced on the unpaired columns is the Petersen graph, whose girth is $5$, so both cycle sums vanish.

For distinct twin pairs $A_e,A_f$, the factor $(1-g_{a_eu})(1-g_{a_fu})$ equals $1$ exactly at $u=x_{ef}$, so the first compatibility sum is $1$. If $u=x_{ij}$ and $v=x_{kl}$ are adjacent Petersen vertices, then $\{i,j\}\cap\{k,l\}=\varnothing$. No element $e$ belongs to both pairs, so every term in the second compatibility sum is $0$. This verifies admissibility and completes the uniqueness of the extremal row-column permutation class.

Step 5: Derive the binary row-code enumerator from Petersen edge subsets

Index the Petersen vertices by the $2$-subsets $A\subset\{1,2,3,4,5\}$. A Petersen edge $AB$ has a unique color $e$, the element missing from $A\cup B$. The corresponding row of $M_*$ has ones in the two coordinates $a_e,a_e'$ and in the two coordinates $x_A,x_B$.

Choose a set $F$ of Petersen edges and add its rows modulo $2$. Let $p_e(F)$ be the parity of the selected edges of color $e$, and let $b_A(F)$ be the parity of the degree of the Petersen vertex $A$ in $F$. The resulting codeword is
$$
\left(p_1,p_1,\ldots,p_5,p_5;\ (b_A)_{|A|=2}\right).
$$
This gives a linear map $\Phi:\mathbb F_2^{15}\to\mathcal C(M_*)$.

The kernel of the Petersen boundary map is its cycle space, of dimension
$$
15-10+1=6.
$$
For any edge set $F$, put
$$
q_i=\sum_{A\ni i}b_A,
\qquad
P=\sum_{e=1}^{5}p_e.
$$
An edge of color $e$ has one endpoint containing $i$ when $e\neq i$, and no endpoint containing $i$ when $e=i$. This gives
$$
q_i=\sum_{e\neq i}p_e=P+p_i.
$$
If $F$ is a cycle-space element, then $b_A=0$ for every $A$, so all five $p_i$ are equal. The cycle
$$
12-34-15-23-45-12
$$
has colors $5,2,4,1,3$, each used once. The color-parity image of the cycle space is exactly
$$
\langle(1,1,1,1,1)\rangle,
$$
and
$$
\dim\ker\Phi=6-1=5,
\qquad
\dim\mathcal C(M_*)=15-5=10.
$$

Because the Petersen graph is connected, its boundary map reaches every even subset of its $10$ vertices: pair the vertices in that subset and take the symmetric difference of paths joining the pairs in a fixed spanning tree. For a fixed even boundary vector $b$, the identity $q_i=P+p_i$ gives exactly two color vectors,
$$
p=q
\qquad\text{and}\qquad
p=q+(1,1,1,1,1),
$$
and the displayed $5$-cycle interchanges them without changing $b$.

View the support of $b$ as the edge set of a simple graph $H$ on the five symbols $1,\ldots,5$. Put
$$
e=|E(H)|,
\qquad
o=|\{i:\deg_H(i)\text{ is odd}\}|.
$$
Then $e$ is even, $o=\operatorname{wt}(q)$, and the two codewords over $b$ have weights
$$
e+2o
\qquad\text{and}\qquad
e+2(5-o).
$$

Let $N_{e,o}$ count the labeled graphs $H$ with these parameters. For $e=2$, two adjacent edges give $o=2$ in
$$
5\binom{4}{2}=30
$$
ways, while two disjoint edges give $o=4$ in $5\cdot3=15$ ways. For $e=4$ and $o=0$, the graph is a $4$-cycle, giving $5\cdot3=15$ choices. To count $e=4,o=2$, fix the two odd vertices $u,v$. Toggling $uv$ produces either a triangle not containing $uv$, of which there are $10-3=7$, or an Eulerian graph with $5$ edges containing $uv$. In the latter graph, the even degree sequence has sum $10$. The only possibilities are $(2,2,2,2,2)$ and $(4,2,2,2,0)$; the second is impossible because a degree-$4$ vertex cannot coexist with an isolated vertex. The graph is a $5$-cycle. There are $(5-1)!/2=12$ labeled $5$-cycles, and a fixed edge belongs to
$$
\frac{12\cdot5}{10}=6
$$
of them. There are $13$ graphs for each of the $10$ choices of $\{u,v\}$, giving $130$. The remaining
$$
\binom{10}{4}-15-130=65
$$
graphs have $o=4$. Taking complements in $K_5$ preserves degree parity and replaces $e$ by $10-e$. The full table is
$$
\begin{array}{c|ccc}
e\backslash o&0&2&4\\
\hline
0&1&0&0\\
2&0&30&15\\
4&15&130&65\\
6&15&130&65\\
8&0&30&15\\
10&1&0&0
\end{array}
$$
The entries sum to $1+45+210+210+45+1=512$, the number of even subsets of the $10$ Petersen vertices. Using the two weights attached to each boundary vector,
$$
W_*(y)=\sum_{e,o}N_{e,o}\left(y^{e+2o}+y^{e+2(5-o)}\right).
$$
Every contribution is visible in the following table.
$$
\begin{array}{c|c|c|c}
(e,o)&N_{e,o}&e+2o&e+2(5-o)\\
\hline
(0,0)&1&0&10\\
(2,2)&30&6&8\\
(2,4)&15&10&4\\
(4,0)&15&4&14\\
(4,2)&130&8&10\\
(4,4)&65&12&6\\
(6,0)&15&6&16\\
(6,2)&130&10&12\\
(6,4)&65&14&8\\
(8,2)&30&12&14\\
(8,4)&15&16&10\\
(10,0)&1&10&20
\end{array}
$$
Collecting all terms gives
$$
W_*(y)=1+30y^{4}+110y^{6}+225y^{8}+292y^{10}+225y^{12}+110y^{14}+30y^{16}+y^{20}.
$$

Let $[M_*]$ denote the row-column permutation class of the $60\times20$ matrix with columns $a_1,a_1',\ldots,a_5,a_5'$ and $x_{ij}$ for $1\leq i<j\leq5$, whose nonzero rows are
$$
\{a_e,a_e',x_{ij},x_{kl}\},
$$
where $\{ij,kl\}$ runs over the three partitions of $\{1,\ldots,5\}\setminus\{e\}$ into two unordered pairs, and whose other $45$ rows are zero.

Final Answer: $\boxed{(45,\ [M_*],\ W_*(y)=1+30y^{4}+110y^{6}+225y^{8}+292y^{10}+225y^{12}+110y^{14}+30y^{16}+y^{20})}$

---

## Answer

$(45,\ [M_*],\ W_*(y)=1+30y^{4}+110y^{6}+225y^{8}+292y^{10}+225y^{12}+110y^{14}+30y^{16}+y^{20})$

---

## Classification

**Problem Type:** Canonicalization or normalization

**Answer Type:** Tuple or ordered list

---

## Concepts (1-5)

- Extremal set systems
- Incidence matrices
- Petersen graph
- Kneser graph
- Binary linear codes

---

## Black-Box Audit — no issues found

---

## Verification

- Dimension check: the kernel calculation gives $\dim\mathcal C(M_*)=15-(6-1)=10$.
- Counting check: the $N_{e,o}$ table contains $512$ even boundary vectors, and each has exactly two lifts, so it accounts for all $1024=2^{10}$ codewords. The displayed weight coefficients also sum to $1024$.
- Symmetry check: the weight enumerator is palindromic, as expected because the all-one vector lies in the code.
- Extremal check: the row identities force exactly $15$ nonzero rows of weight $4$, so $45$ zero rows is not merely attainable; it is forced for every admissible matrix.
- Counterexample attack: allowing a different partition of Petersen edges into five matchings fails the two compatibility identities, which force the five star independent sets in $KG(5,2)$.
