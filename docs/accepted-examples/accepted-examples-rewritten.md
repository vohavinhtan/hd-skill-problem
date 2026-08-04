# Accepted Examples — Đề bài & Lời giải (viết lại đầy đủ)

> Nguồn: `docs/[EXTERNAL] Rainier Project Guidelines .pdf`, mục **Accepted Examples** (trang 33–68).
> Trong PDF gốc, phần PROBLEM PROMPT và STEP-BY-STEP SOLUTION được nhúng dưới dạng **ảnh**; tài liệu này phiên âm trung thực toàn bộ 10 bài (đề + lời giải đầy đủ) sang Markdown + LaTeX.
> Quy ước LaTeX: chỉ dùng `$...$` và `$$...$$` (đúng chuẩn Rainier). Mọi đáp án cuối đã được đối chiếu chéo với bản tóm tắt trong `Rainier_Project_Guidelines.md`.

---

## Bảng phân loại nhanh 10 bài

| # | Domain | Sub-Domain | Problem Type | Solution Type |
|---|---|---|---|---|
| 1 | Probability and Statistics | Limit Theorems | Parameter Identification | Numerical Scalar Approximation |
| 2 | Logic and Foundations | Mathematical Logic | Classification by Exhaustive Solution Set | Vector |
| 3 | Optimization and Numerical Mathematics | Approximation Theory | Optimization | Vector |
| 4 | Geometry and Topology | Riemannian Geometry | Exact Computation | Matrix |
| 5 | Number Theory | Elementary Number Theory | Exact Computation | Set or Multiset of Objects |
| 6 | Differential Equations and Dynamical Systems | Bifurcation Theory | Transformation Between Representations | Polynomial or Rational Function |
| 7 | Linear Algebra | Finite-Dimensional Linear Algebra | Optimization | Set or Multiset of Objects |
| 8 | Abstract Algebra | Group Theory | Solve for Unknowns | Canonical Form |
| 9 | Calculus | Single-Variable Calculus | Optimization | Vector |
| 10 | Differential Equations and Dynamical Systems | Partial Differential Equations | Symbolic Derivation | Set or Multiset of Objects |

---

## Example Problem #1
- **Domain:** Probability and Statistics
- **Sub-Domain:** Limit Theorems
- **Problem Type:** Parameter Identification
- **Solution Type:** Numerical Scalar Approximation

### PROBLEM PROMPT

1. Suppose $U_1, \ldots, U_n$ are independent random variables with density $f_{U_i}(u \mid \theta) = \theta u^{-(\theta+1)} I(u \ge 1)$, where $\theta > 0$ and $I(u \ge 1)$ denotes the indicator function, equal to 1 when $u \ge 1$ and 0 otherwise.
2. Define $V_i = U_i^{-2}$, for $i = 1, \ldots, n$.
3. Let $V_{(1)} \le \cdots \le V_{(n)}$ be the order statistics of $V_1, \ldots, V_n$.
4. Define $R_n = \max_{1 \le i \le n} \ln U_i$.
5. Let $\theta = 2$.
6. Let $a > 0$, $b \in \mathbb{R}$ be constants such that $a n^b (V_{(n)} - e^{-2R_n} - 2V_{(n-1)} + V_{\lfloor \ln n \rfloor})$ converges in distribution to a non-degenerate random variable with variance 1 as $n \to \infty$. Here, $\lfloor \ln n \rfloor$ is the flooring of $\ln n$.

What is the value of $a + b$? Give only a decimal rounded to 4 decimal places.

### STEP-BY-STEP SOLUTION & ANSWER

Step 1: Since $U_i$ has density $f_U(u \mid \theta) = \theta u^{-(\theta+1)} I(u \ge 1)$, we have, for $u \ge 1$, $\mathbb{P}(U_i > u) = u^{-\theta}$. When $\theta = 2$, this becomes $\mathbb{P}(U_i > u) = u^{-2}$. Define $V_i = U_i^{-2}$. Then, for $0 < v \le 1$, $\mathbb{P}(V_i \le v) = \mathbb{P}(U_i^{-2} \le v) = \mathbb{P}(U_i \ge v^{-1/2}) = (v^{-1/2})^{-2} = v$. Therefore $V_i \sim \mathrm{Unif}(0, 1)$.

Step 2: By definition, $R_n = \max_{1 \le i \le n} \ln U_i = \ln \max_{1 \le i \le n} U_i$. Hence $e^{-2R_n} = e^{-2\ln \max_i U_i} = (\max_i U_i)^{-2}$. Since $V_i = U_i^{-2}$ is a decreasing transformation of $U_i$, the largest $U_i$ corresponds to the smallest $V_i$. Therefore $e^{-2R_n} = V_{(1)}$. Thus the expression inside the parentheses is $V_{(n)} - e^{-2R_n} - 2V_{(n-1)} + V_{\lfloor \ln n \rfloor} = V_{(n)} - V_{(1)} - 2V_{(n-1)} + V_{\lfloor \ln n \rfloor}$.

Step 3: Since $V_1, \ldots, V_n$ are i.i.d. $\mathrm{Unif}(0,1)$, we have $V_{(n)} \to 1$, $V_{(n-1)} \to 1$, and $V_{(1)} \to 0$ in probability. Therefore $V_{(n)} - V_{(1)} - 2V_{(n-1)} \to 1 - 0 - 2 = -1$ in probability.

Step 4: Notice that the last term in parentheses has no parentheses around the index, so it is not the order statistic $V_{(\lfloor \ln n \rfloor)}$. It is the original observation with index $\lfloor \ln n \rfloor$. Since each $V_i \sim \mathrm{Unif}(0,1)$, we have $V_{\lfloor \ln n \rfloor} \sim \mathrm{Unif}(0,1)$ for every $n$. Hence, by Slutsky's theorem, $V_{(n)} - V_{(1)} - 2V_{(n-1)} + V_{\lfloor \ln n \rfloor} \Rightarrow -1 + V$, where $V \sim \mathrm{Unif}(0,1)$.

Step 5: The quantity inside the parentheses already converges to the non-degenerate random variable $V - 1$. Therefore, no power of $n$ is needed. If $b < 0$, then $n^b \to 0$, and the limit would become degenerate at 0. If $b > 0$, then $n^b \to \infty$, and the sequence would not converge to a proper non-degenerate random variable. Hence, we must have $b = 0$.

Step 6: With $b = 0$, the limiting distribution is $a(V - 1)$, where $V \sim \mathrm{Unif}(0,1)$. Since $\mathrm{Var}(V - 1) = \mathrm{Var}(V) = 1/12$, the condition that the limiting variance equals 1 gives $\mathrm{Var}(a(V-1)) = a^2 \mathrm{Var}(V-1) = a^2/12 = 1$. Therefore $a^2 = 12$, and since $a > 0$, $a = \sqrt{12} = 2\sqrt{3}$.

Step 7: Therefore $a + b = 2\sqrt{3} + 0 = 3.4641016\ldots$. Rounded to four decimal places, the final answer is 3.4641.

Final Answer: $\boxed{a + b = 3.4641}$

---

## Example Problem #2
- **Domain:** Logic and Foundations
- **Sub-Domain:** Mathematical Logic
- **Problem Type:** Classification by Exhaustive Solution Set
- **Solution Type:** Vector

### PROBLEM PROMPT

Let
$$L = \{E, P, Q\},$$
where $E$ is a binary relation symbol and $P, Q$ are unary relation symbols.

For an $L$-structure, define the four color-types
$$00, \quad 10, \quad 01, \quad 11$$
according to the truth values of $P$ and $Q$.

Let $\mathcal{K}$ be the class of finite $L$-structures satisfying:
1. $E$ is an equivalence relation.
2. There are exactly 12 equivalence classes.
3. Every equivalence class has exactly 10 elements.
4. Each equivalence class has one of the following six color-profiles, written in the order $(00, 10, 01, 11)$:
$$\tau_1 = (10,0,0,0), \quad \tau_2 = (6,4,0,0), \quad \tau_3 = (5,5,0,0), \quad \tau_4 = (4,4,2,0), \quad \tau_5 = (4,4,1,1), \quad \tau_6 = (3,3,2,2).$$

For $M \in \mathcal{K}$, define $m(M) = (m_1, m_2, m_3, m_4, m_5, m_6)$, where $m_i$ is the number of $E$-classes in $M$ having profile $\tau_i$.

Fix a structure $M_0 \in \mathcal{K}$ with $m(M_0) = (1, 2, 3, 1, 4, 1)$.

For $M, N \in \mathcal{K}$, write $M \equiv_4 N$ if $M$ and $N$ satisfy the same first-order $L$-sentences of quantifier rank at most 4.

Determine the complete set of vectors $m(N)$ such that $N \in \mathcal{K}$ and $N \equiv_4 M_0$.

### STEP-BY-STEP SOLUTION & ANSWER

Step 1: Write
$$\chi_{00}(x) = \neg P(x) \wedge \neg Q(x), \quad \chi_{10}(x) = P(x) \wedge \neg Q(x), \quad \chi_{01}(x) = \neg P(x) \wedge Q(x), \quad \chi_{11}(x) = P(x) \wedge Q(x).$$
A rank-4 formula can witness at most four elements of one color inside a single $E$-class. Therefore, inside one equivalence class, color counts are visible only after truncation by $n \mapsto \min(n, 4)$. Applying this to the six profiles gives
$$\tau_1 = (10,0,0,0) \rightsquigarrow (4,0,0,0), \quad \tau_2 = (6,4,0,0) \rightsquigarrow (4,4,0,0), \quad \tau_3 = (5,5,0,0) \rightsquigarrow (4,4,0,0),$$
$$\tau_4 = (4,4,2,0) \rightsquigarrow (4,4,2,0), \quad \tau_5 = (4,4,1,1) \rightsquigarrow (4,4,1,1), \quad \tau_6 = (3,3,2,2) \rightsquigarrow (3,3,2,2).$$
Thus $\tau_2$ and $\tau_3$ have the same rank-4 local behavior. The other four profiles remain locally distinguishable.

Step 2: The profiles $\tau_1, \tau_4, \tau_6$ occur exactly once in $M_0$, and rank-4 logic can detect that uniqueness.
For $\tau_1$, use the class property $A(x) := \forall y \, (E(x,y) \to \chi_{00}(y))$. Then the sentence $\exists x \, (A(x) \wedge \forall y \, (A(y) \to E(x,y)))$ has quantifier rank at most 3 and says that there is exactly one $E$-class of type $\tau_1$.
For $\tau_4$, use $C(x) := \exists y \, (E(x,y) \wedge \chi_{01}(y)) \wedge \forall y \, (E(x,y) \to \neg \chi_{11}(y))$. This detects the unique profile with some 01-colored element and no 11-colored element. The analogous sentence $\exists x \, (C(x) \wedge \forall y \, (C(y) \to E(x,y)))$ has quantifier rank at most 3 and forces exactly one $\tau_4$-class.
For $\tau_6$, use $F(x) := \exists y \exists z \, (E(x,y) \wedge E(x,z) \wedge y \ne z \wedge \chi_{11}(y) \wedge \chi_{11}(z))$. This detects classes with at least two 11-colored elements, which among the allowed profiles means $\tau_6$. The sentence $\exists x \, (F(x) \wedge \forall y \, (F(y) \to E(x,y)))$ has quantifier rank at most 4 and forces exactly one $\tau_6$-class.
Therefore any $N \equiv_4 M_0$ must satisfy $n_1 = 1$, $n_4 = 1$, $n_6 = 1$, where $m(N) = (n_1, n_2, n_3, n_4, n_5, n_6)$.

Step 3: Now consider the combined type formed by $\tau_2$ and $\tau_3$. These two profiles both look locally like $(4,4,0,0)$ to rank-4 formulas. A representative property for this visible type is $B(x) := \exists y \, (E(x,y) \wedge \chi_{10}(y)) \wedge \forall y \, (E(x,y) \to (\neg \chi_{01}(y) \wedge \neg \chi_{11}(y)))$. This says that the $E$-class contains a 10-colored element but no 01- or 11-colored element. Among the allowed profiles, this is exactly the common visible type of $\tau_2$ and $\tau_3$.
Rank 4 can force the existence of three such classes by the sentence
$$\exists x_1 \exists x_2 \exists x_3 \left( \bigwedge_{1 \le i < j \le 3} \neg E(x_i, x_j) \wedge \bigwedge_{i=1}^{3} B(x_i) \right).$$
The three representatives use three quantifier levels, and the local test $B(x_i)$ uses one more level, so this fits within quantifier rank 4. However, forcing four such classes would require four inequivalent representatives and still one additional quantifier level to verify the relevant local type. That exceeds rank 4. Equivalently, in the 4-round Ehrenfeucht–Fraïssé game, Spoiler cannot both mark four separate classes and also force a local verification of the combined $\tau_2/\tau_3$ profile in each of them.
Since $M_0$ has $2 + 3 = 5$ classes of type $\tau_2$ or $\tau_3$, rank-4 logic only forces $n_2 + n_3 \ge 3$. It does not distinguish the split between $n_2$ and $n_3$, and it does not force the combined number to be 4 or 5.

Step 4: Next consider $\tau_5 = (4,4,1,1)$. It is locally distinguishable from $\tau_6 = (3,3,2,2)$ because a $\tau_5$-class has exactly one 11-colored element, while a $\tau_6$-class has two. A useful representative property for $\tau_5$ is $D(x) := \chi_{11}(x) \wedge \exists y \, (E(x,y) \wedge \chi_{01}(y)) \wedge \forall z \, ((E(x,z) \wedge \chi_{11}(z)) \to z = x)$. This says that $x$ is the unique 11-colored element in its $E$-class and that the class also contains a 01-colored element. Among the allowed profiles, this detects $\tau_5$.
Rank 4 can force three $\tau_5$-classes using $\exists x_1 \exists x_2 \exists x_3 \left( \bigwedge_{1 \le i < j \le 3} \neg E(x_i, x_j) \wedge \bigwedge_{i=1}^{3} D(x_i) \right)$. Again, the three class representatives use three quantifier levels, and the local test uses one more level. But rank 4 cannot force four distinct $\tau_5$-classes, because that would require four inequivalent representatives together with a local check that those classes really have the $\tau_5$ profile. Thus, since $M_0$ has four $\tau_5$-classes, the rank-4 consequence is exactly $n_5 \ge 3$.

Step 5: Now use the fact that every structure in $\mathcal{K}$ has exactly 12 equivalence classes. From Step 2, $n_1 = 1$, $n_4 = 1$, $n_6 = 1$. Therefore $n_2 + n_3 + n_5 = 9$. From Steps 3 and 4, $n_2 + n_3 \ge 3$ and $n_5 \ge 3$. Hence $3 \le n_2 + n_3 \le 6$, and $n_5 = 9 - n_2 - n_3$. So every possible vector must have the form $(1, n_2, n_3, 1, 9 - n_2 - n_3, 1)$, where $n_2, n_3 \in \mathbb{Z}_{\ge 0}$ and $3 \le n_2 + n_3 \le 6$.

Step 6: It remains to justify that every vector satisfying these conditions really gives a structure rank-4 equivalent to $M_0$. The duplicator strategy in the 4-round Ehrenfeucht–Fraïssé game is this: preserve equality, preserve the $E$-relation between pebbled elements, and preserve the color-type of every pebbled element. If Spoiler plays inside an already pebbled $E$-class, Duplicator responds inside the corresponding $E$-class, using the matching truncated local color profile from Step 1. If Spoiler plays in a fresh $E$-class, Duplicator chooses a fresh class with the same visible role. For the singleton visible types $\tau_1, \tau_4, \tau_6$, Step 2 shows that both structures have exactly one such class. For the combined $\tau_2/\tau_3$ visible type and for $\tau_5$, both structures have at least three relevant classes. In four rounds, any attempt to force the identity of a fresh class of one of these latter types must spend at least one additional move checking its local color pattern. Therefore Spoiler cannot force four independently verified classes of either type within rank 4. Thus the above strategy preserves all atomic facts among the pebbled elements through four rounds, so $N \equiv_4 M_0$.

Step 7: Combining the necessary conditions from Steps 2 through 5 with the sufficiency argument in Step 6 gives the complete set
$$\{(1, n_2, n_3, 1, 9 - n_2 - n_3, 1) : n_2, n_3 \in \mathbb{Z}_{\ge 0}, \ 3 \le n_2 + n_3 \le 6\}.$$

Final Answer: $$\boxed{\{(1, n_2, n_3, 1, 9 - n_2 - n_3, 1) : n_2, n_3 \in \mathbb{Z}_{\ge 0}, \ 3 \le n_2 + n_3 \le 6\}}$$

---

## Example Problem #3
- **Domain:** Optimization and Numerical Mathematics
- **Sub-Domain:** Approximation Theory
- **Problem Type:** Optimization
- **Solution Type:** Vector

### PROBLEM PROMPT

Let $\mathcal{P}_5$ be the real vector space of polynomials of degree at most 5. For $p \in \mathcal{P}_5$, define
$$\Lambda(p) = \max_{x \in X} w(x) \, |p(x) - y(x)|,$$
where $X = \{-5, -4, -2, -1, 0, 1, 3, 4, 6, 7, 9, 10\}$. The values of $w(x)$ and $y(x)$ are given by

| $x$ | $-5$ | $-4$ | $-2$ | $-1$ | $0$ | $1$ | $3$ | $4$ | $6$ | $7$ | $9$ | $10$ |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| $w(x)$ | $3$ | $8$ | $5$ | $7$ | $4$ | $9$ | $6$ | $5$ | $11$ | $7$ | $10$ | $6$ |
| $y(x)$ | $-\frac{722}{7}$ | $-\frac{69613}{1344}$ | $-\frac{373}{42}$ | $-\frac{302}{105}$ | $-\frac{69}{112}$ | $\frac{37}{63}$ | $\frac{6763}{1260}$ | $\frac{1307}{105}$ | $\frac{2883}{56}$ | $\frac{10064}{105}$ | $\frac{48044}{175}$ | $\frac{9200}{21}$ |

Among all polynomials $p(x) = a_0 + a_1 x + a_2 x^2 + a_3 x^3 + a_4 x^4 + a_5 x^5$ that minimize $\Lambda(p)$, determine the coefficient vector
$$\begin{bmatrix} a_0 \\ a_1 \\ a_2 \\ a_3 \\ a_4 \\ a_5 \end{bmatrix}.$$

### STEP-BY-STEP SOLUTION & ANSWER

Step 1: Let
$$p_0(x) = -\frac{3}{7} + \frac{5}{4} x - \frac{2}{3} x^2 + \frac{7}{20} x^3 - \frac{1}{30} x^4 + \frac{1}{210} x^5.$$
We will show that this polynomial is the unique minimizer of $\Lambda(p)$. Define the weighted error $e_p(x) = w(x) \bigl(p(x) - y(x)\bigr)$. Substituting $p_0$ into the data table gives the following weighted errors:

| $x$ | $-5$ | $-4$ | $-2$ | $-1$ | $0$ | $1$ | $3$ | $4$ | $6$ | $7$ | $9$ | $10$ |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| $e_{p_0}(x)$ | $1$ | $-\frac{7}{8}$ | $-1$ | $1$ | $\frac{3}{4}$ | $-1$ | $-\frac{5}{6}$ | $1$ | $\frac{9}{10}$ | $-1$ | $-\frac{4}{5}$ | $1$ |

Therefore $\Lambda(p_0) = 1$.

Step 2: The seven points $-5, -2, -1, 4, 7, 10$ have weighted errors $1, -1, 1, 1, -1, 1$. At the remaining points $-4, 0, 3, 6, 9$, the absolute weighted errors are
$$\frac{7}{8}, \quad \frac{3}{4}, \quad \frac{5}{6}, \quad \frac{9}{10}, \quad \frac{4}{5},$$
all of which are strictly less than 1. Hence $p_0$ is feasible with maximum weighted error exactly 1.

Step 3: Let $q \in \mathcal{P}_5$ be any polynomial. Suppose first that $\Lambda(q) < 1$. At each point above, the weighted error of $q$ satisfies $-1 < e_q(x) < 1$. Let $h(x) = q(x) - p_0(x)$. Since all weights are positive, $h(x)$ has the same sign as $e_q(x) - e_{p_0}(x)$. Using the equioscillation points and their signs, we get
$$h(-5) < 0, \quad h(-2) > 0, \quad h(-1) < 0, \quad h(1) > 0, \quad h(4) < 0, \quad h(7) > 0, \quad h(10) < 0.$$
Thus $h$ changes sign on each of the six intervals $(-5, -2)$, $(-2, -1)$, $(-1, 1)$, $(1, 4)$, $(4, 7)$, $(7, 10)$. By the intermediate value theorem, $h$ has at least one real root in each of those six disjoint intervals. Therefore $h$ has at least six distinct real roots. But $h \in \mathcal{P}_5$, so this is impossible unless $h$ is the zero polynomial. If $h \equiv 0$, then $q = p_0$, contradicting $\Lambda(q) < 1$ because $\Lambda(p_0) = 1$. Therefore no polynomial $q \in \mathcal{P}_5$ can satisfy $\Lambda(q) < 1$.

Step 4: Now suppose that $q \in \mathcal{P}_5$ is also a minimizer. Since Step 3 proves that no polynomial has maximum weighted error below 1, every minimizer must satisfy $\Lambda(q) = 1$. Again set $h = q - p_0$. At the seven points above, the bound $\Lambda(q) = 1$ gives $-1 \le e_q(x) \le 1$. Combining with the signs of $e_{p_0}$, we obtain
$$h(-5) \le 0, \quad h(-2) \ge 0, \quad h(-1) \le 0, \quad h(1) \ge 0, \quad h(4) \le 0, \quad h(7) \ge 0, \quad h(10) \le 0.$$
If one of these inequalities is strict, then either $h$ changes sign across enough consecutive intervals to force six distinct roots, or else $h$ vanishes at one of the listed points and still has roots in the adjacent sign-changing intervals. In every case, a nonzero $h \in \mathcal{P}_5$ would have at least six distinct real roots, which is impossible. Therefore all inequalities must be equalities, so
$$h(-5) = h(-2) = h(-1) = h(1) = h(4) = h(7) = h(10) = 0.$$
A polynomial of degree at most 5 with seven distinct roots must be the zero polynomial. Hence $h \equiv 0$, so $q = p_0$. Thus $p_0$ is the unique minimizer.

Step 5: From Step 1, the coefficients of the unique minimizing polynomial are
$$a_0 = -\frac{3}{7}, \quad a_1 = \frac{5}{4}, \quad a_2 = -\frac{2}{3}, \quad a_3 = \frac{7}{20}, \quad a_4 = -\frac{1}{30}, \quad a_5 = \frac{1}{210}.$$

Final Answer:
$$\boxed{\begin{bmatrix} -\dfrac{3}{7} \\[4pt] \dfrac{5}{4} \\[4pt] -\dfrac{2}{3} \\[4pt] \dfrac{7}{20} \\[4pt] -\dfrac{1}{30} \\[4pt] \dfrac{1}{210} \end{bmatrix}}$$

---

## Example Problem #4
- **Domain:** Geometry and Topology
- **Sub-Domain:** Riemannian Geometry
- **Problem Type:** Exact Computation
- **Solution Type:** Matrix

### PROBLEM PROMPT

Let $M = \mathbb{R}^3$ have Riemannian metric $g = dx^2 + e^{2x}dy^2 + e^{2x+2y}dz^2$. Using the convention $\mathrm{Ric}_{jk} = R^i{}_{ijk}$ for
$$R^i{}_{ijk} = \partial_i \Gamma^i_{jk} - \partial_j \Gamma^i_{ik} + \Gamma^i_{jk}\Gamma^m_{im} - \Gamma^m_{ik}\Gamma^i_{jm},$$
compute the $3\times 3$ matrix of $\mathrm{Ric}^\sharp : T_pM \to T_pM$ at $p = (0,0,0)$ in the coordinate basis $(\partial_x, \partial_y, \partial_z)$.

### STEP-BY-STEP SOLUTION & ANSWER

Step 1: The metric components are $g_{xx} = 1$, $g_{yy} = e^{2x}$, $g_{zz} = e^{2x+2y}$, with all mixed components equal to 0. The inverse metric components are $g^{xx} = 1$, $g^{yy} = e^{-2x}$, $g^{zz} = e^{-2x-2y}$. The needed derivatives are $\partial_x g_{yy} = 2e^{2x}$, $\partial_x g_{zz} = 2e^{2x+2y}$, and $\partial_y g_{zz} = 2e^{2x+2y}$.

Step 2: Using $\Gamma^i_{jk} = \tfrac{1}{2}g^{im}(\partial_j g_{mk} + \partial_k g_{mj} - \partial_m g_{jk})$, the nonzero Christoffel symbols are $\Gamma^x_{yy} = \tfrac{1}{2}g^{xx}(-\partial_x g_{yy}) = -e^{2x}$, $\Gamma^x_{zz} = \tfrac{1}{2}g^{xx}(-\partial_x g_{zz}) = -e^{2x+2y}$, $\Gamma^y_{xy} = \tfrac{1}{2}g^{yy}\partial_x g_{yy} = 1$, $\Gamma^y_{zz} = \tfrac{1}{2}g^{yy}(-\partial_y g_{zz}) = -e^{2y}$, $\Gamma^z_{xz} = \tfrac{1}{2}g^{zz}\partial_x g_{zz} = 1$, and $\Gamma^z_{yz} = \Gamma^z_{zy} = \tfrac{1}{2}g^{zz}\partial_y g_{zz} = 1$. All remaining Christoffel symbols are 0.

Step 3: The convention gives $\mathrm{Ric}_{jk} = R^i{}_{ijk} = \sum_i(\partial_i \Gamma^i_{jk} - \partial_j \Gamma^i_{ik} + \Gamma^i_{jk}\Gamma^m_{im} - \Gamma^m_{ik}\Gamma^i_{jm})$. For $\mathrm{Ric}_{xx}$: the first sum is $\partial_x \Gamma^x_{xx} + \partial_x \Gamma^y_{yx} + \partial_x \Gamma^z_{zx} = 0$; the second sum is 0; the third sum is $\Gamma^y_{xy}\Gamma^y_{xy} + \Gamma^z_{xz}\Gamma^z_{xz} = 1 + 1 = 2$; the last sum is 0. This gives $\mathrm{Ric}_{xx} = 2$.

Step 4: For $\mathrm{Ric}_{yy}$: the first sum is 0; the second sum is $-\partial_y \Gamma^x_{xy} - \partial_y \Gamma^y_{yy} - \partial_y \Gamma^z_{zy} = -\partial_y(-e^{2x}) = 2e^{2x}$; the third sum is $\Gamma^x_{yy}\Gamma^y_{xy} + \Gamma^x_{yy}\Gamma^z_{xz} = (-e^{2x})(1) + (-e^{2x})(1) = -2e^{2x}$; the last sum is $-\Gamma^y_{yy}(\Gamma^x_{yx} + \Gamma^y_{yy} + \Gamma^z_{yz}) = 2e^{2x}$... collecting, $\mathrm{Ric}_{yy} = 2e^{2x} + 1$.

Step 5: For $\mathrm{Ric}_{zz}$: the first sum is 0; the second sum is 0; the third sum is $\Gamma^x_{zz}\Gamma^z_{xz} + \Gamma^x_{zz}\Gamma^y_{xy} + \Gamma^y_{zz}\Gamma^z_{yz} + \Gamma^y_{zz}\Gamma^x_{yx} = -2e^{2x+2y} - 2e^{2y}$; the last sum is $2e^{2x+2y} + e^{2y}$. Therefore $\mathrm{Ric}_{zz} = 2e^{2x+2y} + e^{2y} = (2e^{2x} + 1)e^{2y}$.

Step 6: For the off-diagonal entries, substitution shows the derivative and product contributions cancel in each case, so $\mathrm{Ric}_{xy} = \mathrm{Ric}_{yz} = \mathrm{Ric}_{xz} = 0$ (and symmetrically). Thus the Ricci tensor is
$$\mathrm{Ric} = \begin{pmatrix} 2 & 0 & 0 \\ 0 & 2e^{2x} + 1 & 0 \\ 0 & 0 & (2e^{2x} + 1)e^{2y} \end{pmatrix}.$$

Step 7: At $p = (0,0,0)$, the metric matrix is the identity because $e^0 = 1$. Raising one index uses $(\mathrm{Ric}^\sharp)^i{}_j = g^{ik}\mathrm{Ric}_{kj}$. Since $g^{ik}(p) = \delta^{ik}$, the Ricci endomorphism has the same matrix as the Ricci tensor at $p$. Using $\mathrm{Ric}_{xx}(p) = 2$, $\mathrm{Ric}_{yy}(p) = 2e^0 + 1 = 3$, and $\mathrm{Ric}_{zz}(p) = (2e^0 + 1)e^0 = 3$:

Final Answer:
$$\boxed{\begin{pmatrix} 2 & 0 & 0 \\ 0 & 3 & 0 \\ 0 & 0 & 3 \end{pmatrix}}$$

---

## Example Problem #5
- **Domain:** Number Theory
- **Sub-Domain:** Elementary Number Theory
- **Problem Type:** Exact Computation
- **Solution Type:** Set or Multiset of Objects

### PROBLEM PROMPT

Let
$$g_k(x) = \frac{x^2 + 4x + k}{x^2 - 2x - 8}.$$
An integer $x$ is called admissible if $-75 \le x \le 75$, $x$ is not divisible by 3, $x \not\equiv 2 \pmod 5$, and $x \ne -2, 4$.

We say that an integer $k$ is balanced if there are exactly four admissible integers $x$ for which $g_k(x)$ is an integer $n$ satisfying $1 < g_k(x) < 14$, and among those four admissible values of $x$, the corresponding four integer outputs $g_k(x)$ contain exactly three distinct values.

Determine the complete set of balanced integers $k$.

### STEP-BY-STEP SOLUTION & ANSWER

Step 1: Since $g_k(x)$ must be an integer satisfying $1 < g_k(x) < 14$, the possible integer outputs are $n \in \{2,3,4,5,6,7,8,9,10,11,12,13\}$.

Step 2: Set $g_k(x) = n$. Then $\frac{x^2 + 4x + k}{x^2 - 2x - 8} = n$. Solving for $k$ gives $k = (n-1)x^2 - 2(n+2)x - 8n$.

Step 3: For each admissible integer $x$ and each value $n \in \{2,\ldots,13\}$, evaluate $k = (n-1)x^2 - 2(n+2)x - 8n$. The values of $k$ that occur exactly four times are $868, 1264, 3244, 15844$. The corresponding $(x,n)$ pairs are: for $868$, $(-26,2), (-11,7), (14,7), (34,2)$; for $1264$, $(-32,2), (13,11), (28,3), (40,2)$; for $3244$, $(-22,7), (-17,11), (25,7), (43,3)$; and for $15844$, $(-50,7), (46,9), (53,7), (58,6)$.

Step 4: A balanced value of $k$ must occur exactly four times and produce exactly three distinct output values. The value $868$ is excluded because its outputs are $\{2,7,7,2\}$, which contain only two distinct values. The values $1264, 3244, 15844$ each produce exactly three distinct output values.

Step 5: Therefore, the complete set of balanced integers is $\{1264, 3244, 15844\}$.

Final Answer:
$$\boxed{\{1264, 3244, 15844\}}$$

---

## Example Problem #6
- **Domain:** Differential Equations and Dynamical Systems
- **Sub-Domain:** Bifurcation Theory
- **Problem Type:** Transformation Between Representations
- **Solution Type:** Polynomial or Rational Function

> **Lưu ý về tính chính xác:** Lời giải này chứa các hệ số hữu tỉ rất lớn (numerator/denominator hàng chục chữ số). Một vài hệ số nằm ở mép trang bị cắt trong PDF gốc và được phiên âm với độ chắc chắn không tuyệt đối (đã đánh dấu bên dưới). Khi cần dùng chính xác, hãy đối chiếu lại trang 43–46 của PDF.

### PROBLEM PROMPT

For real parameters $\nu, \lambda, \mu$, consider the autonomous system on $\mathbb{R}^4$ with coordinates $(x, y, u, v)$:
$$\dot{x} = y + u + xu,$$
$$\dot{y} = v + \mu + \lambda x + \left(\nu - \frac{2}{3}\right)x^2 + xy + 2y^2 + uv,$$
$$\dot{u} = -2u + x^2 + 3xy - y^2 + xu + yv,$$
$$\dot{v} = -3v + 2x^2 - xy + 4y^2 + xv - yu.$$
For each sufficiently small real $x$, there is a unique formal solution $y(x), u(x), v(x)$ of the first, third, and fourth equilibrium equations with $y(x) = O(x^2)$, $u(x) = O(x^2)$, $v(x) = O(x^2)$. Let $J(x, \nu, \lambda, \mu)$ be the Jacobian of the full vector field with respect to $(x, y, u, v)$, evaluated at $(x, y(x), u(x), v(x))$. For sufficiently small real $\nu$, there is a unique formal branch $x(\nu), \lambda(\nu), \mu(\nu)$ satisfying $x(\nu) = O(\nu)$, $\lambda(\nu) = O(\nu^2)$, $\mu(\nu) = O(\nu^3)$, such that the full system has an equilibrium at $(x(\nu), y(x(\nu)), u(x(\nu)), v(x(\nu)))$ and
$$\det J(x(\nu), \nu, \lambda(\nu), \mu(\nu)) = 0, \qquad \frac{d}{dx}\det J(x, \nu, \lambda(\nu), \mu(\nu))\Big|_{x=x(\nu)} = 0.$$
Instead of observing the unfolding in the coordinates $(\lambda, \mu)$, introduce the nonlinear parameter chart
$$L = \lambda - \frac{5}{2}\lambda^2 + 3\mu + \frac{11}{4}\lambda\mu, \qquad M = \mu + \frac{7}{3}\lambda^2 - 4\lambda\mu - 2\lambda^3 + \frac{5}{6}\mu^2.$$
Evaluate these expressions on the formal curve above, giving a formal curve $(L(\nu), M(\nu))$ in the observed parameter plane. Assign weighted degrees $\deg L = 2$, $\deg M = 3$. The defining ideal of this projected formal curve is generated by a unique monic Weierstrass series $Q(L,M) = M^2 + \tilde{A}(L)M + \tilde{B}(L)$, where every monomial of $Q$ has weighted degree at least 6. Determine the exact weighted Taylor polynomial $Q_{\le 14}(L,M)$ formed by all terms of weighted degree at most 14 in $Q(L,M)$.

### STEP-BY-STEP SOLUTION & ANSWER

Step 1: Reduce the equilibrium and degeneracy conditions to one scalar equation. Let $F = (F_1, F_2, F_3, F_4)$ be the four right-hand sides, and put $G = (F_1, F_3, F_4)$, $z = (y, u, v)$. At the origin, $\det \frac{\partial G}{\partial z}(0) = 6 \ne 0$. The formal implicit function theorem gives a unique formal graph $z = z(x) = (y(x), u(x), v(x))$ solving $G = 0$ and tangent to $z = 0$. Define $h(x, \nu, \lambda, \mu) = F_2(x, y(x), u(x), v(x))$. On this graph, the Schur complement gives $\det \frac{\partial F}{\partial (x, y, u, v)} = U(x)(F_{2,x} - F_{2,z}G_z^{-1}G_x) = U(x)h_x$, where $U(x) \ne 0$ is a formal unit. Since multiplication by a unit does not change the zero order, the requested branch is determined by $h = 0$, $h_x = 0$, $h_{xx} = 0$.

Step 2: Compute the reduced scalar series. Write $h(x, \nu, \lambda, \mu) = \mu + \lambda x + \nu x^2 + \sum_{k \ge 3} r_k x^k$. The first equilibrium equation gives $y = -(1+x)u$. With $u = \sum_{m \ge 2} u_m x^m$, $v = \sum_{m \ge 2} v_m x^m$, the coefficient equations $[x^m]F_3 = 0$ and $[x^m]F_4 = 0$ determine $u_m$ and $v_m$ recursively, because the new linear terms are $-2u_m$ and $-3v_m$. The coefficients needed through the requested weight are

| $k$ | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| $r_k$ | $-\dfrac{1}{9}$ | $\dfrac{149}{108}$ | $\dfrac{53}{81}$ | $-\dfrac{8819}{1944}$ | $\dfrac{3821}{2916}$ | $\dfrac{1505969}{139968}$ | $-\dfrac{1028167}{104976}$ | $-\dfrac{48496223}{2510424}$ | $\dfrac{129322781}{90699264}$ | $\dfrac{1950514525}{68024448}$ | $-\dfrac{6163573997}{1632586752}$ | $\dfrac{30741316913}{1632586752}$ |

*(Hệ số $r_{14}$ có mẫu số nằm ở mép trang bị cắt; đọc tốt nhất là $1632586752$ — cần đối chiếu lại nếu dùng chính xác.)*

Step 3: Parametrize the cusp branch and pass to the observed coordinates. The equation $h_{xx} = 0$ has the form $2\nu + \sum_{k \ge 3}k(k-1)r_k x^{k-2} = 0$. Since the coefficient of $x$ is $6r_3 = -\frac{2}{3}$, this equation has a unique formal solution $x = x(\nu) = O(\nu)$. Then $h_x = 0$ and $h = 0$ give
$$\lambda = -2\nu x - \sum_{k \ge 3}k r_k x^{k-1}, \qquad \mu = -\lambda x - \nu x^2 - \sum_{k \ge 3}r_k x^k.$$
Substitution into the formulas for $L$ and $M$ gives the formal series $L(\nu) = -3\nu^2 - 140\nu^3 - \frac{31865}{2}\nu^4 - \cdots + O(\nu^{15})$ and $M(\nu) = 3\nu^3 + \frac{1425}{4}\nu^4 + \frac{210841}{4}\nu^5 + \cdots + O(\nu^{15})$ (các hệ số bậc cao rất lớn — xem trang 45 của PDF gốc để biết đầy đủ).

Step 4: Determine the monic Weierstrass relation. The weight bound and the monic condition force
$$Q_{\le 14}(L,M) = M^2 + a_2 L^2 M + a_3 L^3 M + a_4 L^4 M + a_5 L^5 M + b_3 L^3 + b_4 L^4 + b_5 L^5 + b_6 L^6 + b_7 L^7.$$
Requiring $Q_{\le 14}(L(\nu), M(\nu)) = O(\nu^{15})$ gives a triangular linear system. Solving order by order yields $b_3 = \tfrac{1}{3}$, $a_2 = -\tfrac{65}{2}$, $b_4 = -\tfrac{292693}{432}$, $a_3 = \tfrac{30582145}{243}$, $b_5 = \tfrac{5036939317}{972}$, $a_4 = -\tfrac{39465015209789}{972}$, $b_6 = \tfrac{10562001443523345}{1889568}$, $a_5 = \tfrac{16682667515579699389}{1259712}$, $b_7 = \tfrac{24590093267001262845433}{34012224}$. The leading cancellation $M(\nu)^2 + \frac{1}{3}L(\nu)^3 = 9\nu^6 + \frac{1}{3}(-27\nu^6) + O(\nu^7) = O(\nu^7)$ checks the cusp normalization at the first nonzero weight.

Final Answer:
$$\boxed{\begin{aligned} Q_{\le 14}(L,M) = &\,\frac{24590093267001262845433}{34012224}L^7 - \frac{10562001443523345}{1889568}L^6 \\ &+ \frac{16682667515579699389}{1259712}L^5 M + \frac{5036939317}{972}L^5 \\ &- \frac{39465015209789}{34992}L^4 M - \frac{292693}{432}L^4 + \frac{30582145}{243}L^3 M \\ &+ \frac{1}{3}L^3 - \frac{65}{2}L^2 M + M^2 \end{aligned}}$$

---

## Example Problem #7
- **Domain:** Linear Algebra
- **Sub-Domain:** Finite-Dimensional Linear Algebra
- **Problem Type:** Optimization
- **Solution Type:** Set or Multiset of Objects

### PROBLEM PROMPT

Let $\mathcal{M}$ be the set of all triples $(A,B,C)$ consisting of $3\times3$ complex matrices such that $[A,B]=C$, $[B,C]=A$ and $[C,A]=B$, where $[X,Y]=XY-2YX$. Let
$$p := \inf_{(A,B,C)\in\mathcal{M}} \mathrm{Re}\left(\mathrm{tr}\left(e^A+e^B+e^C\right)\right) \in \mathbb{R}\cup\{\pm\infty\}$$
and
$$q := \sup_{(A,B,C)\in\mathcal{M}} \mathrm{Re}\left(\mathrm{tr}\left(e^A+e^B+e^C\right)\right) \in \mathbb{R}\cup\{\pm\infty\}.$$
What is the multiset $\{p,q\}$?

### STEP-BY-STEP SOLUTION & ANSWER

Step 1: Reduction to irreducible blocks. Let $V=\mathbb{C}^3$. A subspace $W\subseteq V$ is invariant if $AW\subseteq W$, $BW\subseteq W$, and $CW\subseteq W$. Because $V$ is finite-dimensional, repeatedly choosing a nonzero invariant subspace of least possible dimension gives a chain $0=V_0\subset V_1\subset\cdots\subset V_r=V$ whose successive quotients are irreducible for the three operators $A,B,C$. In a basis adapted to this chain, $A,B,C$ are simultaneously block upper triangular. The diagonal blocks again satisfy $AB-2BA=C$, $BC-2CB=A$, $CA-2AC=B$, because the diagonal block of a product of block upper triangular matrices is the product of the corresponding diagonal blocks. If $X$ is block upper triangular with diagonal blocks $X_1,\ldots,X_r$, then $X^n$ has diagonal blocks $X_1^n,\ldots,X_r^n$. Therefore $e^X$ has diagonal blocks $e^{X_1},\ldots,e^{X_r}$, and $\mathrm{tr}(e^X)=\sum_{j=1}^{r}\mathrm{tr}(e^{X_j})$. Thus the required expression is the sum of the corresponding expressions for irreducible blocks of dimensions $1,2,3$. We shall also use the following elementary fact. Over $\mathbb{C}$, every matrix can be triangularized. If the eigenvalues of $X$ are $\lambda_1,\ldots,\lambda_d$ with algebraic multiplicity, then triangularizing $X$ shows that $e^X$ is triangular with diagonal entries $e^{\lambda_1},\ldots,e^{\lambda_d}$. Hence $\mathrm{tr}(e^X)=e^{\lambda_1}+\cdots+e^{\lambda_d}$.

Step 2: The support rule. From $C=AB-2BA$, $B=CA-2AC$, substitution gives $B=(AB-2BA)A-2A(AB-2BA)=5ABA-2BA^2-2A^2B$. Similarly, $C=5ACA-2CA^2-2A^2C$. So, for $X=B$ and also for $X=C$, $X=5AXA-2XA^2-2A^2X$. Define $F(s,t):=5st-2s^2-2t^2=(s-2t)(t-2s)$. If $A=\mathrm{diag}(a_1,\ldots,a_d)$, then the $i,j$ entry of this identity is $(F(a_i,a_j)-1)X_{ij}=0$. Thus $B_{ij}$ and $C_{ij}$ can be nonzero only when $F(a_i,a_j)=1$. Also, from $C=AB-2BA$, $C_{ij}=(a_i-2a_j)B_{ij}$. The same support conclusion holds between generalized eigenspaces. If $V_s$ and $V_t$ are generalized eigenspaces of $A$, then on the block $V_t\to V_s$ the operator $X\mapsto 5AXA-2XA^2-2A^2X$ is multiplication by $F(s,t)-1$ plus a nilpotent operator. Therefore, if $F(s,t)\neq1$, the block must be zero. Consequently, in an irreducible block, the graph whose vertices are the eigenvalues of $A$ and whose edges join $s$ and $t$ when $F(s,t)=1$ must be connected. Otherwise the direct sum of the generalized eigenspaces in one connected component would be a nonzero proper invariant subspace. Finally, an entry inside an eigenspace with eigenvalue $s$ can occur only when $F(s,s)=s^2=1$.

Step 3: In an irreducible block of dimension greater than 1, $A$ is diagonalizable with distinct eigenvalues. First suppose $A=\lambda I$ on a block of dimension $d$. Then $C=AB-2BA=-\lambda B$, $B=CA-2AC=-\lambda C=\lambda^2 B$. If $\lambda^2\neq1$, then $B=0$, hence $C=0$, and then $A=BC-2CB=0$. Every subspace is invariant, so irreducibility forces $d=1$. If $\lambda^2=1$, then $C=-\lambda B$, and $A=BC-2CB=B(-\lambda B)-2(-\lambda B)B=\lambda B^2$. Since $A=\lambda I$, this gives $B^2=I$. Thus $B$ is diagonalizable with eigenspaces invariant under $A,B,C$; if $B$ is scalar, every subspace is invariant. Again irreducibility forces $d=1$.
Now suppose $A$ has exactly one eigenvalue but is not scalar. Write $A=\lambda I+N$, where $N\neq0$ is nilpotent. If $\lambda^2\neq1$, the generalized support statement in Step 2 gives $B=C=0$, impossible because then $A=BC-2CB=0$. Hence $\lambda^2=1$. For $X=B$ and $X=C$, expanding the identity from Step 2 with $A=\lambda I+N$ gives $\lambda(NX+XN)+5NXN-2XN^2-2N^2X=0$. If $v\in\ker N$, applying this to $v$ gives $N(\lambda I-2N)Xv=0$. Since $\lambda I-2N$ is invertible and commutes with $N$, its inverse preserves $\ker N$. Thus $Xv\in\ker N$. Therefore $\ker N$ is invariant under $A,B,C$. Since $N\neq0$ is nilpotent, $\ker N$ is nonzero and proper. This contradicts irreducibility.
Next suppose $A$ has a $2\times2$ Jordan block with eigenvalue $\lambda$ and one further eigenvalue $\mu\neq\lambda$. Put $A=\begin{pmatrix}\lambda&1&0\\0&\lambda&0\\0&0&\mu\end{pmatrix}$. Let $X=(x_{ij})$ be either $B$ or $C$. Expanding the identity from Step 2 gives, among other entries, $(F(\lambda,\mu)-1)x_{23}=0$, $(F(\lambda,\mu)-1)x_{31}=0$, $(F(\lambda,\mu)-1)x_{13}+(5\mu-4\lambda)x_{23}=0$, $(F(\lambda,\mu)-1)x_{32}+(5\mu-4\lambda)x_{31}=0$, and $(\lambda^2-1)x_{21}=0$, $\lambda x_{11}+\lambda x_{21}=0$. If $F(\lambda,\mu)\neq1$, then the four displayed equations kill all entries connecting the generalized $\lambda$-eigenspace and the $\mu$-eigenspace, giving a proper invariant subspace. Hence irreducibility forces $F(\lambda,\mu)=1$. The equations involving $x_{21}$ give $x_{21}=0$ whether or not $\lambda^2=1$. If $5\mu-4\lambda\neq0$, then $x_{31}=0$, so both $B$ and $C$ send the line $\mathbb{C}e_1$ into itself, contradiction. Thus an irreducible case would have to satisfy $5\mu=4\lambda$. Combining gives $\mu=\frac{4\lambda}{5}$, $\lambda^2=\frac{25}{18}$. Then $\lambda^2\neq1$ and $\mu^2\neq1$. The entries inside the $\lambda$-generalized block and inside the $\mu$-eigenspace force $x_{11}=x_{12}=x_{21}=x_{22}=x_{33}=0$. Thus every such $X$ has the form $X=\begin{pmatrix}0&0&r\\0&0&s\\t&u&0\end{pmatrix}$. So write $B=\begin{pmatrix}0&0&a\\0&0&b\\c&d&0\end{pmatrix}$. Using $C=AB-2BA$ and then $BC-2CB=A$ gives $bc=-\frac{\lambda}{2}$, $ac+bd=-\frac{1}{2}$, $9\lambda(ac+bd)-4\lambda+25bc=0$. Substituting gives $9\lambda(-\frac{1}{2})-4\lambda+25(-\frac{\lambda}{2})=-21\lambda=0$, contradicting $\lambda^2=\frac{25}{18}$. Hence this Jordan-block case is impossible.
It remains to exclude the case where $A$ is diagonalizable with exactly two eigenvalues, one of multiplicity 2. Write $V=U\oplus W$, where $A|_U=\lambda I_U$, $A|_W=\mu I_W$, $\dim U=2$, $\dim W=1$, $\lambda\neq\mu$. Irreducibility forces $F(\lambda,\mu)=1$. If $\lambda^2\neq1$, the support rule gives no $U\to U$ block for $B$ or $C$. Let $r:U\to W$ be the row block of $B$. By $C=AB-2BA$, the corresponding row block of $C$ is a scalar multiple of $r$. Choose $0\neq u_0\in\ker r$. Then $\mathbb{C}u_0$ is invariant under $A,B,C$, contradiction. Let $\lambda=\varepsilon$, where $\varepsilon\in\{1,-1\}$. Since $F(\varepsilon,\mu)=1$ and $\mu\neq\varepsilon$, we get $\mu=\frac{3\varepsilon}{2}$. Write $B=\begin{pmatrix}P&u\\r&0\end{pmatrix}$ relative to $U\oplus W$, where $P$ is $2\times2$, $u$ a column, $r$ a row. Then $C=AB-2BA=\begin{pmatrix}-\varepsilon P&-2\varepsilon u\\-\frac{\varepsilon}{2}r&0\end{pmatrix}$. The equation $BC-2CB=A$ gives $P^2+\frac{7}{2}ur=I_2$, $ru=-\frac{3}{2}$. Thus $u\neq0$ and $r\neq0$. For $s\in U$, $P^2s=s$ if and only if $r(s)=0$. Hence $\ker r=\ker(P^2-I_2)$. Since $P$ commutes with $P^2$, the line $\ker r$ is $P$-invariant. It is therefore invariant under $A,B,C$, contradiction. Thus every irreducible block of dimension 2 or 3 has $A$ diagonalizable with distinct eigenvalues.

Step 4: The one-dimensional irreducible blocks. In dimension 1, write the scalars as $a,b,c$. The equations become $-ab=c$, $-bc=a$, $-ca=b$. If one of $a,b,c$ is zero, then all three are zero. If none is zero, then $a^2=b^2=c^2=1$ and $c=-ab$. Therefore the scalar solutions are $(0,0,0)$, and $(1,1,-1)$, $(-1,1,1)$, $(1,-1,1)$, $(-1,-1,-1)$. The corresponding contributions are $3$, $2e+e^{-1}$, $3e^{-1}$.

Step 5: The two-dimensional irreducible blocks. Let the irreducible block have dimension 2. By Step 3, $A=\begin{pmatrix}x&0\\0&y\end{pmatrix}$, $x\neq y$. Irreducibility forces $F(x,y)=1$. Since $A$ has distinct eigenvalues, any $A$-invariant subspace is spanned by eigenvectors of $A$; hence both off-diagonal directions must occur. Write $B=\begin{pmatrix}u&\alpha\\\beta&v\end{pmatrix}$, $\alpha\beta\neq0$, where $u=0$ unless $x^2=1$, and $v=0$ unless $y^2=1$. From $C=AB-2BA=\begin{pmatrix}-xu&(x-2y)\alpha\\(y-2x)\beta&-yv\end{pmatrix}$, the equation $BC-2CB=A$ gives $\alpha\beta(5y-4x)+u^2x=x$, $\alpha\beta(5x-4y)+v^2y=y$, $u(3x-2y)+v(-2x+3y)=0$. First assume neither $x$ nor $y$ is 1 or $-1$. Then $u=v=0$. The first two equations imply $\frac{x}{5y-4x}=\frac{y}{5x-4y}$, so $x^2=y^2$. Since $x\neq y$, $y=-x$. Then $F(x,-x)=-9x^2=1$, so $x^2=-\frac{1}{9}$, $\alpha\beta=-\frac{1}{9}$. The characteristic polynomial of each of $A,B,C$ is $t^2+\frac{1}{9}$. Thus the contribution is $6\cos(\frac{1}{3})$. Now suppose one eigenvalue is 1 or $-1$. After swapping basis vectors if necessary, take $x=\varepsilon$, $\varepsilon\in\{1,-1\}$. Since $F(\varepsilon,y)=1$ and $y\neq\varepsilon$, $y=\frac{3\varepsilon}{2}$. Then $v=0$, and the three equations give $\alpha\beta=-\frac{3}{2}$, $u^2=\frac{25}{4}$. Write $u=\tau\frac{5}{2}$ with $\tau\in\{1,-1\}$. The characteristic polynomials are $\chi_A(t)=(t-\varepsilon)(t-\frac{3\varepsilon}{2})$, $\chi_B(t)=t^2-ut+\frac{3}{2}=(t-\tau)(t-\frac{3\tau}{2})$, $\chi_C(t)=t^2+\varepsilon ut+\frac{3}{2}=(t+\varepsilon\tau)(t+\frac{3\varepsilon\tau}{2})$. The three signs $\varepsilon$, $\tau$, $-\varepsilon\tau$ have product $-1$. Therefore either all three matrices have eigenvalues $-1,-\frac{3}{2}$, or exactly two matrices have eigenvalues $1,\frac{3}{2}$ and the remaining one has eigenvalues $-1,-\frac{3}{2}$. The real two-dimensional contributions are therefore $3(e^{-1}+e^{-\frac{3}{2}})$ and $2(e+e^{\frac{3}{2}})+e^{-1}+e^{-\frac{3}{2}}$.

Step 6: The three-dimensional irreducible blocks. Let the irreducible block have dimension 3. By Step 3, $A=\mathrm{diag}(x,y,z)$, $x,y,z$ distinct. The support graph from Step 2 must be connected. It cannot be a triangle: if $F(x,y)=F(y,z)=F(z,x)=1$, then subtracting pairs gives $5x=2y+2z$, $5y=2z+2x$, $5z=2x+2y$, which forces $x=y=z$. Therefore the graph is a path. Relabel so that the path is $x-y-z$. Thus $F(x,y)=1$, $F(y,z)=1$. For fixed $y$, the equation $F(t,y)=1$ is $2t^2-5yt+2y^2+1=0$. Its two roots are $x$ and $z$, so $x+z=\frac{5y}{2}$. Irreducibility forces both directions on both edges. Write $B=\begin{pmatrix}u&\alpha&0\\\beta&v&\gamma\\0&\delta&w\end{pmatrix}$, $\alpha\beta\gamma\delta\neq0$, where $u=0$ unless $x^2=1$, $v=0$ unless $y^2=1$, $w=0$ unless $z^2=1$. Multiplying out $C=AB-2BA$ and $BC-2CB=A$ gives
$$\begin{cases}\alpha\beta(5y-4x)+u^2x=x,\\\alpha\beta(5x-4y)+\gamma\delta(5z-4y)+v^2y=y,\\\gamma\delta(5y-4z)+w^2z=z,\\u(3x-2y)+v(-2x+3y)=0,\\v(3y-2z)+w(-2y+3z)=0.\end{cases}$$
First assume none of $x,y,z$ is 1 or $-1$. Then $u=v=w=0$. The first and third equations give $\alpha\beta=\frac{x}{5y-4x}$, $\gamma\delta=\frac{z}{5y-4z}$. Substituting into the middle equation: $\frac{x(5y-4x)}{5y-4x}+\frac{z(5z-4y)}{5y-4z}-y=0$. Using $z=\frac{5y}{2}-x$, the left side simplifies to $-\frac{21y}{2}$. Hence $y=0$. Then $z=-x$, and $F(x,0)=1$ gives $x^2=-\frac{1}{2}$. Also $\alpha\beta=\gamma\delta=-\frac{1}{4}$. The characteristic polynomial of each of $A,B,C$ is $t(t^2+\frac{1}{2})$. Thus the contribution is $3+6\cos(\frac{1}{\sqrt2})$. Now suppose one of $x,y,z$ is 1 or $-1$. The middle eigenvalue $y$ cannot be 1 or $-1$, because if $y=\varepsilon\in\{1,-1\}$, then $F(t,\varepsilon)=1$ has roots $\varepsilon$ and $\frac{3\varepsilon}{2}$, so there are not two roots distinct from $y$. After reversing the path if necessary, assume $x=\varepsilon$, $\varepsilon\in\{1,-1\}$. Then $y=\frac{3\varepsilon}{2}$, $z=\frac{11\varepsilon}{4}$. Only $u$ can be nonzero among $u,v,w$. The three diagonal equations give $\alpha\beta=-\frac{425}{56}$, $\gamma\delta=-\frac{11}{14}$, $u^2=\frac{441}{16}$. Write $u=\tau\frac{21}{4}$ with $\tau\in\{1,-1\}$. Then $\chi_A(t)=(t-\varepsilon)(t-\frac{3\varepsilon}{2})(t-\frac{11\varepsilon}{4})$; $\chi_B(t)=t^3-ut^2-(\alpha\beta+\gamma\delta)t+u\gamma\delta=t^3-ut^2+\frac{469}{56}t-\frac{11u}{14}=(t-\tau)(t-\frac{3\tau}{2})(t-\frac{11\tau}{4})$; $\chi_C(t)=(t+\varepsilon\tau)(t+\frac{3\varepsilon\tau}{2})(t+\frac{11\varepsilon\tau}{4})$. The three signs $\varepsilon$, $\tau$, $-\varepsilon\tau$ have product $-1$. Therefore either all three matrices have eigenvalues $-1,-\frac{3}{2},-\frac{11}{4}$, or exactly two matrices have eigenvalues $1,\frac{3}{2},\frac{11}{4}$ and the remaining one has eigenvalues $-1,-\frac{3}{2},-\frac{11}{4}$. The real three-dimensional contributions are therefore $3(e^{-1}+e^{-\frac{3}{2}}+e^{-\frac{11}{4}})$ and $2(e+e^{\frac{3}{2}}+e^{\frac{11}{4}})+e^{-1}+e^{-\frac{3}{2}}+e^{-\frac{11}{4}}$.

Step 7: Comparing the finite list of possible sums. The possible irreducible block contributions are:

| dimension | contribution | decimal value |
|---|---|---|
| 1 | $3e^{-1}$ | 1.104 |
| 1 | $3$ | 3.000 |
| 1 | $2e+e^{-1}$ | 5.804 |
| 2 | $3(e^{-1}+e^{-\frac{3}{2}})$ | 1.773 |
| 2 | $6\cos(\frac{1}{3})$ | 5.670 |
| 2 | $2(e+e^{\frac{3}{2}})+e^{-1}+e^{-\frac{3}{2}}$ | 14.991 |
| 3 | $3(e^{-1}+e^{-\frac{3}{2}}+e^{-\frac{11}{4}})$ | 1.965 |
| 3 | $3+6\cos(\frac{1}{\sqrt2})$ | 7.561 |
| 3 | $2(e+e^{\frac{3}{2}}+e^{\frac{11}{4}})+e^{-1}+e^{-\frac{3}{2}}+e^{-\frac{11}{4}}$ | 46.340 |

For total dimension 3, the possible partitions are $1+1+1$, $2+1$, and $3$. For partition $1+1+1$, the least possible sum is $3\cdot3e^{-1}\approx3.311$. For partition $2+1$, the least is $3(e^{-1}+e^{-\frac{3}{2}})+3e^{-1}\approx2.877$. For partition $3$, the least is $3(e^{-1}+e^{-\frac{3}{2}}+e^{-\frac{11}{4}})\approx1.965$. Thus $p=3(e^{-1}+e^{-\frac{3}{2}}+e^{-\frac{11}{4}})$. For partition $1+1+1$, the greatest possible sum is $3(2e+e^{-1})\approx17.413$. For partition $2+1$, the greatest is $2(e+e^{\frac{3}{2}})+e^{-1}+e^{-\frac{3}{2}}+2e+e^{-1}\approx20.795$. For partition $3$, the greatest is $2(e+e^{\frac{3}{2}}+e^{\frac{11}{4}})+e^{-1}+e^{-\frac{3}{2}}+e^{-\frac{11}{4}}\approx46.340$. Thus $q=2(e+e^{\frac{3}{2}}+e^{\frac{11}{4}})+e^{-1}+e^{-\frac{3}{2}}+e^{-\frac{11}{4}}$. The exact comparison with the $2+1$ maximum is $q-[2(e+e^{\frac{3}{2}})+e^{-1}+e^{-\frac{3}{2}}+2e+e^{-1}]=2(e^{\frac{11}{4}}-e)-(e^{-1}-e^{-\frac{11}{4}})>0$.

Step 8: Explicit triples attaining the endpoint values and the final multiset. For the minimum, take
$$A=\begin{pmatrix}-1&0&0\\0&-\frac{3}{2}&0\\0&0&-\frac{11}{4}\end{pmatrix},\quad B=\begin{pmatrix}-\frac{21}{4}&1&0\\-\frac{425}{56}&0&1\\0&-\frac{11}{14}&0\end{pmatrix},\quad C=\begin{pmatrix}-\frac{21}{4}&2&0\\-\frac{425}{112}&0&4\\0&-\frac{11}{56}&0\end{pmatrix}.$$
Direct multiplication verifies $AB-2BA=C$, $BC-2CB=A$, $CA-2AC=B$. Each of $A,B,C$ has characteristic polynomial $(t+1)(t+\frac{3}{2})(t+\frac{11}{4})$, so this triple attains $p$. For the maximum, take
$$A=\begin{pmatrix}1&0&0\\0&\frac{3}{2}&0\\0&0&\frac{11}{4}\end{pmatrix},\quad B=\begin{pmatrix}\frac{21}{4}&1&0\\-\frac{425}{56}&0&1\\0&-\frac{11}{14}&0\end{pmatrix},\quad C=\begin{pmatrix}-\frac{21}{4}&-2&0\\\frac{425}{112}&0&-4\\0&\frac{11}{56}&0\end{pmatrix}.$$
Again, $AB-2BA=C$, $BC-2CB=A$, $CA-2AC=B$. Here $A$ and $B$ have characteristic polynomial $(t-1)(t-\frac{3}{2})(t-\frac{11}{4})$, while $C$ has $(t+1)(t+\frac{3}{2})(t+\frac{11}{4})$, so this triple attains $q$.

Final Answer:
$$\boxed{\left\{3\left(e^{-1}+e^{-\frac{3}{2}}+e^{-\frac{11}{4}}\right),\ 2\left(e+e^{\frac{3}{2}}+e^{\frac{11}{4}}\right)+e^{-1}+e^{-\frac{3}{2}}+e^{-\frac{11}{4}}\right\}}$$

---

## Example Problem #8
- **Domain:** Abstract Algebra
- **Sub-Domain:** Group Theory
- **Problem Type:** Solve for Unknowns
- **Solution Type:** Canonical Form

### PROBLEM PROMPT

Let $\mathbb{F}_2$ denote the field with two elements. Determine the number of matrices $M \in M_6(\mathbb{F}_2)$ (that is, $6 \times 6$ matrices with entries in $\mathbb{F}_2$) whose characteristic polynomial equals
$$\chi_M(x) = x^6 + x^5 + x^3 + x + 1 \ \in\ \mathbb{F}_2[x].$$
Express the answer as a positive integer.

### STEP-BY-STEP SOLUTION & ANSWER

Step 1: Factor the characteristic polynomial over $\mathbb{F}_2$. It has no root since $\chi(0) = 1$ and $\chi(1) = 1$, so no linear factor. Testing the unique irreducible quadratic $p(x) = x^2 + x + 1$: $(x^2 + x + 1)^2 = x^4 + x^2 + 1$ and $(x^4 + x^2 + 1)(x^2 + x + 1) = x^6 + x^5 + x^3 + x + 1$. Hence $\chi(x) = p(x)^3$ with $p$ irreducible of degree 2.

Step 2: Recast as module counting. A matrix $M$ with characteristic polynomial $\chi$ turns $V = \mathbb{F}_2^6$ into an $\mathbb{F}_2[x]$-module via $x \cdot v = Mv$. Matrices are conjugate iff the modules are isomorphic, and the number of matrices in one conjugacy class is $|GL_6(\mathbb{F}_2)| / |\mathrm{Aut}_{\mathbb{F}_2[x]}(V)|$. So the total count is $\sum_\lambda |GL_6(\mathbb{F}_2)| / |\mathrm{Aut}(V_\lambda)|$ over the isomorphism types.

Step 3: Enumerate the types. As $\chi = p^3$ with $p$ irreducible of degree 2, $V$ is a module over the discrete valuation ring $\mathbb{F}_2[x]_{(p)}$ with residue field of size $Q = 2^2 = 4$, determined by a partition $\lambda$ of 3: $V_\lambda = \bigoplus_i \mathbb{F}_2[x]/(p^{\lambda_i})$. The partitions of 3 are $(3), (2,1), (1,1,1)$.

Step 4: The ambient group order is
$$|GL_6(\mathbb{F}_2)| = \prod_{i=0}^{5}(2^6 - 2^i) = 63 \cdot 62 \cdot 60 \cdot 56 \cdot 48 \cdot 32 = 20158709760.$$

Step 5: Centralizer orders over the residue field $\mathbb{F}_Q$, $Q = 4$, using $|\mathrm{Aut}(V_\lambda)| = Q^{\sum_i (\lambda'_i)^2} \prod_i \prod_{k=1}^{m_i}(1 - Q^{-k})$ ($\lambda'$ the conjugate partition, $m_i$ the number of parts equal to $i$): $\lambda = (3)$ is cyclic with $|\mathrm{Aut}| = Q^3 - Q^2 = 48$; $\lambda = (2,1)$ gives $|\mathrm{Aut}| = 576$; $\lambda = (1,1,1)$ is semisimple with $|\mathrm{Aut}| = |GL_3(\mathbb{F}_4)| = (4^3 - 1)(4^3 - 4)(4^3 - 4^2) = 181440$.

Step 6: Divide and add:
$$\frac{20158709760}{48} + \frac{20158709760}{576} + \frac{20158709760}{181440} = 419973120 + 34997760 + 111104 = 455081984.$$

Final Answer: $$\boxed{455081984}$$

---

## Example Problem #9
- **Domain:** Calculus
- **Sub-Domain:** Single-Variable Calculus
- **Problem Type:** Optimization
- **Solution Type:** Vector

### PROBLEM PROMPT

For real numbers $a, b$ define
$$\Phi(a,b) = \int_0^1 (1+x)\,|x^4 - ax - b|\,dx.$$
Let $(a_0, b_0)$ be the unique minimizer. Compute
$$\left(a_0,\ b_0,\ \Phi(a_0, b_0),\ \int_0^1 x^2(1+x)\,|x^4 - a_0 x - b_0|\,dx\right).$$

### STEP-BY-STEP SOLUTION & ANSWER

Step 1: Set up the residual and the weighted balance equations. Let $R_{a,b}(x) = x^4 - ax - b$. Then $\Phi(a,b) = \int_0^1 (1+x)|R_{a,b}(x)|\,dx$. At a minimizing pair $(a_0, b_0)$, write $R(x) = R_{a_0, b_0}(x) = x^4 - a_0 x - b_0$. Since $R$ is a nonzero polynomial, its zero set has measure 0. Therefore differentiating $\Phi$ with respect to $a$ and $b$ gives
$$\frac{\partial \Phi}{\partial b} = -\int_0^1 (1+x)\,\mathrm{sgn}(R(x))\,dx, \qquad \frac{\partial \Phi}{\partial a} = -\int_0^1 x(1+x)\,\mathrm{sgn}(R(x))\,dx.$$
Thus the minimizing residual must satisfy
$$\int_0^1 (1+x)\,\mathrm{sgn}(R(x))\,dx = 0, \qquad \int_0^1 x(1+x)\,\mathrm{sgn}(R(x))\,dx = 0.$$
These are the two weighted balance equations.

Step 2: Determine the sign pattern of the minimizing residual. The residual is $R(x) = x^4 - a_0 x - b_0$. Its derivative is $R'(x) = 4x^3 - a_0$. Since $4x^3 - a_0$ is strictly increasing on $[0,1]$, the function $R$ can have at most two zeros in $[0,1]$. The residual cannot have no sign change, because then $\int_0^1 (1+x)\,\mathrm{sgn}(R(x))\,dx$ would be nonzero. It also cannot have only one sign change. Indeed, suppose the sign changes once at $c$. Then the first balance equation would force $\int_0^c (1+x)\,dx = \frac{1}{2}\int_0^1 (1+x)\,dx$. Since $\int_0^1 (1+x)\,dx = \frac{3}{2}$, this gives $c + \frac{c^2}{2} = \frac{3}{4}$. If the second balance equation also held, then $\int_0^c x(1+x)\,dx = \frac{1}{2}\int_0^1 x(1+x)\,dx$. Since $\int_0^1 x(1+x)\,dx = \frac{5}{6}$, this gives $\frac{c^2}{2} + \frac{c^3}{3} = \frac{5}{12}$. But from $c + \frac{c^2}{2} = \frac{3}{4}$ we get $c^2 = \frac{3}{2} - 2c$, then $c^3 = c(\frac{3}{2} - 2c) = \frac{11}{2}c - 3$. Hence $\frac{c^2}{2} + \frac{c^3}{3} = \frac{1}{2}(\frac{3}{2} - 2c) + \frac{1}{3}(\frac{11}{2}c - 3) = \frac{5}{6}c - \frac{1}{4}$. Setting this equal to $\frac{5}{12}$ gives $c = \frac{4}{5}$. But $c = \frac{4}{5}$ does not satisfy $c + \frac{c^2}{2} = \frac{3}{4}$. Therefore one sign change is impossible. So the minimizing residual has exactly two zeros $0 < r < s < 1$. Because $R'$ is increasing, the sign pattern must be $R(x) > 0$ on $[0, r) \cup (s, 1]$ and $R(x) < 0$ on $(r, s)$.

Step 3: Convert the balance equations into equations for the two sign-change points. From the sign pattern, the first balance equation says $\int_r^s (1+x)\,dx = \frac{1}{2}\int_0^1 (1+x)\,dx = \frac{3}{4}$. Thus $(s - r) + \frac{s^2 - r^2}{2} = \frac{3}{4}$. The second balance equation gives $\int_r^s x(1+x)\,dx = \frac{1}{2}\int_0^1 x(1+x)\,dx = \frac{5}{12}$. Thus $\frac{s^2 - r^2}{2} + \frac{s^3 - r^3}{3} = \frac{5}{12}$. Now introduce $\alpha = r + s$, $\delta = s - r$. Then $s^2 - r^2 = \delta\alpha$ and $s^3 - r^3 = \delta(s^2 + sr + r^2)$. Because $s^2 + sr + r^2 = \frac{3\alpha^2 + \delta^2}{4}$, the two equations become
$$\delta\left(1 + \frac{\alpha}{2}\right) = \frac{3}{4}, \qquad \delta\left(\frac{\alpha}{2} + \frac{3\alpha^2 + \delta^2}{12}\right) = \frac{5}{12}.$$

Step 4: Solve for the intrinsic parameters $\alpha$ and $\delta$. From $\delta(1 + \frac{\alpha}{2}) = \frac{3}{4}$, we get $\delta = \frac{3}{2(\alpha + 2)}$. Substituting into the second equation and clearing denominators gives
$$36\alpha^4 + 176\alpha^3 + 192\alpha^2 - 192\alpha - 293 = 0.$$
Let $\alpha$ be the unique root of $36t^4 + 176t^3 + 192t^2 - 192t - 293 = 0$ in the interval $1 < t < \frac{6}{5}$. This uniqueness is clear because the derivative $144t^3 + 528t^2 + 384t - 192$ is positive for $t \geq 1$, while the polynomial is negative at $t = 1$ and positive at $t = \frac{6}{5}$. Then $\delta = \frac{3}{2(\alpha + 2)}$. The two sign-change points are $r = \frac{\alpha - \delta}{2}$, $s = \frac{\alpha + \delta}{2}$.

Step 5: Recover the minimizing parameters $a_0$ and $b_0$. Since $R(r) = R(s) = 0$, we have $r^4 - a_0 r - b_0 = 0$ and $s^4 - a_0 s - b_0 = 0$. Subtracting gives $a_0 = \frac{s^4 - r^4}{s - r} = s^3 + s^2 r + s r^2 + r^3$. Using $\alpha = r + s$, $\delta = s - r$, we get $a_0 = \frac{\alpha(\alpha^2 + \delta^2)}{2}$. Next, $b_0 = r^4 - a_0 r = -rs(s^2 + sr + r^2)$. Now $rs = \frac{\alpha^2 - \delta^2}{4}$ and $s^2 + sr + r^2 = \frac{3\alpha^2 + \delta^2}{4}$. Hence $b_0 = -\frac{(\alpha^2 - \delta^2)(3\alpha^2 + \delta^2)}{16}$.

Step 6: Express the needed signed moments. For $n \geq 0$, define $A_n = \int_0^1 x^n\,\mathrm{sgn}(R(x))\,dx$. Using the sign pattern $+, -, +$, we have $A_n = \int_0^r x^n\,dx - \int_r^s x^n\,dx + \int_s^1 x^n\,dx$. Thus $A_n = \frac{1}{n+1} - \frac{2(s^{n+1} - r^{n+1})}{n+1}$. Since $r = \frac{\alpha - \delta}{2}$, $s = \frac{\alpha + \delta}{2}$,
$$A_n = \frac{1}{n+1} - \frac{2}{n+1}\left[\left(\frac{\alpha + \delta}{2}\right)^{n+1} - \left(\frac{\alpha - \delta}{2}\right)^{n+1}\right].$$

Step 7: Compute the minimum value and the weighted residual moment. The minimum value is $\Phi(a_0, b_0) = A_4 + A_5$. The weighted residual moment is
$$\int_0^1 x^2(1+x)\,|x^4 - a_0 x - b_0|\,dx = A_6 + A_7 - a_0(A_3 + A_4) - b_0(A_2 + A_3),$$
which, substituting the formulas for $a_0$ and $b_0$, becomes
$$A_6 + A_7 - \frac{\alpha(\alpha^2 + \delta^2)}{2}(A_3 + A_4) + \frac{(\alpha^2 - \delta^2)(3\alpha^2 + \delta^2)}{16}(A_2 + A_3).$$
Here $\alpha$ is the unique root in $(1, \frac{6}{5})$ of $36t^4 + 176t^3 + 192t^2 - 192t - 293 = 0$, $\delta = \frac{3}{2(\alpha + 2)}$, and $A_n = \frac{1}{n+1} - \frac{2}{n+1}[(\frac{\alpha + \delta}{2})^{n+1} - (\frac{\alpha - \delta}{2})^{n+1}]$.

Final Answer:
$$\boxed{\left(\frac{\alpha(\alpha^2 + \delta^2)}{2},\ -\frac{(\alpha^2 - \delta^2)(3\alpha^2 + \delta^2)}{16},\ A_4 + A_5,\ A_6 + A_7 - \frac{\alpha(\alpha^2 + \delta^2)}{2}(A_3 + A_4) + \frac{(\alpha^2 - \delta^2)(3\alpha^2 + \delta^2)}{16}(A_2 + A_3)\right)}$$

---

## Example Problem #10
- **Domain:** Differential Equations and Dynamical Systems
- **Sub-Domain:** Partial Differential Equations
- **Problem Type:** Symbolic Derivation
- **Solution Type:** Set or Multiset of Objects

### PROBLEM PROMPT

Consider the inviscid Burgers equation on the real line,
$$u_t + \left(\frac{u^2}{2}\right)_x = 0, \qquad x \in \mathbb{R},\ t > 0,$$
and let $u(x,t)$ denote its entropy (vanishing-viscosity) solution, i.e. the unique bounded weak solution obtained as the $\nu \to 0^+$ limit of solutions of $u_t + u u_x = \nu u_{xx}$. Admissible discontinuities are exactly those satisfying the Lax entropy condition $u(x^-, t) > u(x^+, t)$ and propagating at the Rankine–Hugoniot speed $\frac{1}{2}(u(x^-,t) + u(x^+,t))$; everywhere else the solution is determined by the method of characteristics, with rarefaction waves filling any expansive corner.

Fix arbitrary real numbers $w_1, w_2, w_3 > 0$ (no relation among them is assumed). Put $a_1 = 0$ and $a_{k+1} = a_k + w_k$ for $k = 1, 2, 3$. The initial datum is the bounded piecewise-constant profile
$$u(x,0) = \begin{cases} 4, & x < a_1, \\ 3, & a_1 \le x < a_2, \\ 1, & a_2 \le x < a_3, \\ 2, & a_3 \le x < a_4, \\ 0, & x \ge a_4; \end{cases}$$
a descending cascade whose monotonicity is broken exactly once: the levels 2 and 1 appear in transposed order, so the profile steps $4 \to 3 \to 1 \to 2 \to 0$ across the breakpoints $a_1, a_2, a_3, a_4$.

For each $t > 0$ let $n(t)$ be the number of points $x \in \mathbb{R}$ at which the map $x \mapsto u(x,t)$ is discontinuous. The function $t \mapsto n(t)$ is non-increasing and right-continuous, with $n(0^+) = 3$, and $n(t) = 1$ for all sufficiently large $t$. Let $\mathcal{T}$ be the multiset of discontinuity times of $n(\cdot)$, each such time $\tau$ counted with multiplicity $n(\tau^-) - n(\tau)$; thus $\mathcal{T}$ contains exactly 2 elements (with multiplicity), and knowing $\mathcal{T}$ is equivalent to knowing $n(t)$ for every $t > 0$.

Determine the multiset $\mathcal{T}$ as exact closed-form expressions in $w_1, w_2, w_3$, valid for every choice of positive widths; where the form of an element of $\mathcal{T}$ depends on the widths, the case distinctions must be given by explicit inequalities in $w_1, w_2, w_3$ that partition all of $(0, \infty)^3$.

### STEP-BY-STEP SOLUTION & ANSWER

Step 1: Set up the initial wave configuration and reduce the merger schedule to two collision times. Throughout, $a_1 = 0$, $a_2 = w_1$, $a_3 = w_1 + w_2$, $a_4 = w_1 + w_2 + w_3$, and $W = w_1 + 3w_2$. The ambient setting is the classical entropy (Kruzhkov, vanishing-viscosity) solution of $u_t + (\frac{u^2}{2})_x = 0$ on $\mathbb{R} \times (0, \infty)$: bounded, with finitely many piecewise-$C^1$ discontinuity curves. Each initial jump resolves as a Riemann problem. At $a_1$ the drop $4 \to 3$ produces a Lax-admissible shock $S_1$ with Rankine-Hugoniot speed $\frac{4+3}{2} = \frac{7}{2}$, so $x_1(t) = \frac{7}{2}t$. The drop $3 \to 1$ at $a_2$ produces the shock $S_2$ with speed $\frac{3+1}{2} = 2$, so $x_2(t) = w_1 + 2t$. The lone increasing jump $1 \to 2$ at $a_3$ opens a rarefaction fan $u(x,t) = \frac{x - a_3}{t}$ on $a_3 + t \le x \le a_3 + 2t$. That fan is continuous, so it contributes no discontinuity. And at $a_4$ the drop $2 \to 0$ produces the shock $S_3$ with speed $\frac{2+0}{2} = 1$, so $x_3(t) = a_4 + t$. So $n(0^+) = 3$. The final state is a single $4|0$ shock of speed 2, so exactly two mergers occur: either $S_1$ absorbs $S_2$ first and the merged front later absorbs $S_3$, or $S_2$ meets $S_3$ first (through the fan) and $S_1$ later absorbs the result. Until the first merger, $S_1, S_2, S_3$ and the fan evolve without influencing one another. That gives $\tau_1 = \min(t_L, t_R)$, where $t_L$ is the collision time of $S_1$ with the unperturbed $S_2$, and $t_R$ the collision time of the unperturbed $S_2$ with the unperturbed $S_3$ through the fan.

Step 2: Derive the trajectory law for shocks inside the rarefaction fan. If a shock has constant outer state $c$ on one side and fan values on the other, the Rankine-Hugoniot relation gives the ODE $\dot{x} = \frac{1}{2}(c + \frac{x - a_3}{t})$. Substituting $y = x - a_3$ turns this into the linear equation $\dot{y} = \frac{c}{2} + \frac{y}{2t}$. The homogeneous solution is $t^{1/2}$, and $y = ct$ works as a particular solution. So every in-fan shock trajectory has the form $x(t) = a_3 + ct + C\sqrt{t}$, with $C$ fixed by the entry point. The fan value carried at the shock is $v(t) = \frac{x - a_3}{t} = c + Ct^{-1/2}$. Each such shock stays Lax-admissible the whole way.

Step 3: Compute $t_L$, the time for $S_1$ to catch $S_2$. $S_2$ travels at speed 2 and reaches the fan's left edge $x = a_3 + t$ when $w_1 + 2t = a_3 + t$, that is at $t = w_2$, at $x = a_3 + w_2$. Inside the fan its trajectory follows $x(t) = a_3 + 3t + C\sqrt{t}$ (constant left state $c = 3$), and matching the entry point forces $C = -2\sqrt{w_2}$. Its fan value starts at $v_2(w_2) = 1$ and increases; $S_2$ exhausts the fan ($v_2 = 2$) at $t = 4w_2$, at $x = a_3 + 8w_2$; afterwards (if $4w_2 \le w_3$) it proceeds as a straight $3|2$ shock of speed $\frac{5}{2}$: $x_2(t) = a_3 + \frac{5}{2}t - 2w_2$ for $t \ge 4w_2$. $S_1$ remains the straight line $\frac{7}{2}t$ until impact, and setting $\frac{7}{2}t$ equal to each branch of $x_2$ gives three phases. In the straight phase ($t \le w_2$): $\frac{7}{2}t = w_1 + 2t$, so $t = \frac{2w_1}{3}$, valid iff $2w_1 \le 3w_2$. In the in-fan phase ($w_2 \le t \le 4w_2$): $\frac{7}{2}t = a_3 + 3t - 2\sqrt{w_2 t}$ rearranges to $\frac{t}{2} + 2\sqrt{w_2 t} = w_1 + w_2$; with $s = \sqrt{t}$ this reads $s^2 + 4\sqrt{w_2}\, s - 2(w_1 + w_2) = 0$, whose positive root gives
$$t_L = \left(\sqrt{2w_1 + 6w_2} - 2\sqrt{w_2}\right)^2,$$
valid on $w_2 \le t_L \le 4w_2$, i.e. $2w_1 \ge 3w_2$ and $w_1 \le 5w_2$. In the post-fan phase ($t \ge 4w_2$): $\frac{7}{2}t = a_3 + \frac{5}{2}t - 2w_2$, so $t = w_1 - w_2$, valid iff $w_1 \ge 5w_2$.

Step 4: Compute $t_R$, the time for $S_2$ to meet $S_3$ through the fan. $S_3$ travels at speed 1 until the fan's right edge $a_3 + 2t$ overtakes it at $t = w_3$, at $x = a_4 + w_3 = a_3 + 2w_3$. Inside the fan its trajectory follows $x(t) = a_3 + C\sqrt{t}$ (constant right state $c = 0$), with $C = 2\sqrt{w_3}$: $x_3(t) = a_3 + 2\sqrt{w_3 t}$, $v_3(t) = 2\sqrt{w_3/t}$ for $t \ge w_3$, starting at $v_3(w_3) = 2$ and decreasing. $S_3$ exhausts the fan ($v_3 = 1$, possible only if $4w_3 \le w_2$) at $t = 4w_3$; afterwards it proceeds as a straight $1|0$ shock of speed $\frac{1}{2}$: $x_3(t) = a_3 + \frac{t}{2} + 2w_3$ for $t \ge 4w_3$. The collision happens in one of three mutually exclusive modes.
Mode 1, $w_3 \ge 4w_2$: straight $3|2$ against straight $2|0$: $a_3 + \frac{5}{2}t - 2w_2 = a_4 + t$ gives $\frac{3}{2}t = w_3 + 2w_2$, so $t_R = \frac{4w_2 + 2w_3}{3}$.
Mode 2, $\frac{w_2}{4} \le w_3 \le 4w_2$ (both curve inside the fan): $a_3 + 3t - 2\sqrt{w_2 t} = a_3 + 2\sqrt{w_3 t}$ gives $3\sqrt{t} = 2(\sqrt{w_2} + \sqrt{w_3})$, so $t_R = \frac{4(\sqrt{w_2} + \sqrt{w_3})^2}{9}$. The common fan value at impact is $v^* = 3 - 2\sqrt{w_2/t_R} = \frac{3\sqrt{w_3}}{\sqrt{w_2} + \sqrt{w_3}} = 2\sqrt{w_3/t_R}$, and $1 \le v^* \le 2 \iff \frac{w_2}{4} \le w_3 \le 4w_2$.
Mode 3, $w_3 \le \frac{w_2}{4}$: straight $3|1$ against straight $1|0$: $w_1 + 2t = a_3 + \frac{t}{2} + 2w_3$ gives $\frac{3}{2}t = w_2 + 2w_3$, so $t_R = \frac{2w_2 + 4w_3}{3}$.
In every mode the fan is fully consumed at the instant of impact, so the outcome is always a straight $3|0$ shock of speed $\frac{3}{2}$ starting at the impact point $(x^*, t_R)$.

Step 5: Compute the second merger time when the right collision comes first ($t_R \le t_L$). After $S_2$ and $S_3$ merge at $(x^*, t_R)$, exactly two fronts remain: $S_1$ at $\frac{7}{2}t$ (the state between them is identically 3) and the $3|0$ shock $x^* + \frac{3}{2}(t - t_R)$. They meet when $\frac{7}{2}\tau_2 = x^* + \frac{3}{2}(\tau_2 - t_R)$, that is $2\tau_2 = x^* - \frac{3}{2}t_R$. Running through the three collision modes (straight $3|2$ on $2|0$; both curved; straight $3|1$ on $1|0$) all give the same value:
$$\tau_2 = \frac{3w_1 + w_2 + 2w_3}{6} \qquad (t_R \le t_L).$$

Step 6: Compute the second merger time when the left collision comes first ($t_L \le t_R$). After $S_1$ absorbs $S_2$, the merged front $B$ has left state 4. Its trajectory depends on where the merger happened: (a) merger in the straight phase ($2w_1 \le 3w_2$): $B$ is a $4|1$ shock of speed $\frac{5}{2}$; (b) merger inside the fan ($3w_2 \le 2w_1 \le 10w_2$); (c) merger in the post-fan phase ($w_1 \ge 5w_2$): $B$ is a straight $4|2$ shock of speed 3. In cases (a)/(b) the in-fan law $x_B(t) = a_3 + 4t - \sqrt{2W t}$, $v_B(t) = 4 - \sqrt{2W/t}$ applies. Now $B$ must absorb $S_3$, partitioned by $W = w_1 + 3w_2$ against $w_3$:
Regime L-A, $W \le 2w_3$ (impact on the straight $2|0$ shock): $\tau_2 = \frac{W + 2w_3}{4} = \frac{w_1 + 3w_2 + 2w_3}{4}$.
Regime L-B, $2w_3 \le W \le 18w_3$ (impact inside the fan): $a_3 + 4t - \sqrt{2W t} = a_3 + 2\sqrt{w_3 t}$ gives $4\sqrt{t} = \sqrt{2W} + 2\sqrt{w_3}$, so $\tau_2 = \frac{(\sqrt{2W} + 2\sqrt{w_3})^2}{16}$.
Regime L-C, $W \ge 18w_3$ (impact on the $1|0$ remnant): the $4|1$ line meets the $1|0$ line, giving $\tau_2 = \frac{W + 6w_3}{6} = \frac{w_1 + 3w_2 + 6w_3}{6}$.
On every boundary surface the adjacent formulas agree.

Step 7: Resolve $\min(t_L, t_R)$ into explicit width inequalities. Writing $L_1, L_2, L_3$ for the branches of $t_L$ and $R_1, R_2, R_3$ for the modes of $t_R$, comparing the nine cells gives:
$$t_R \le t_L \iff \{w_3 \le \tfrac{w_2}{4},\ w_1 \ge w_2 + 2w_3\} \cup \{\tfrac{w_2}{4} \le w_3 \le 4w_2,\ 9w_1 \ge 5w_2 + 2w_3 + 16\sqrt{w_2 w_3}\} \cup \{w_3 \ge 4w_2,\ 3w_1 \ge 7w_2 + 2w_3\}.$$
The three comparison inequalities are tight exactly on the triple-collision surface, where all three shocks meet at one space-time point, $n$ drops from 3 to 1, and $\mathcal{T} = \{\tau_1, \tau_1\}$ with multiplicity 2.

Step 8: Verify every second merger formula against the conservation line. For large $R > 0$, with flux $f(u) = \frac{u^2}{2}$, $\frac{d}{dt}\int_{-R}^{R} u\, dx = f(u(-R, t)) - f(u(R, t)) = 8$, and $\int_{-R}^{R} u(x, 0)\, dx = 4R + 3w_1 + w_2 + 2w_3$. After the last merger the single $4|0$ shock sits at $x_s(t) = 2t + \frac{3w_1 + w_2 + 2w_3}{4}$. Each of the four second-merger formulas places its merger point on this line, confirmed by direct substitution.

Step 9: Check degenerate width limits and assemble the final multiset. As $w_2 \to 0^+$ the datum becomes the three-level cascade $4,3,2,0$ and $t_L \to w_1$; as $w_3 \to 0^+$ the datum becomes $4,3,1,0$ and $t_R \to \frac{2w_2}{3}$. Collecting everything, with
$$t_L = \begin{cases} \dfrac{2w_1}{3}, & 2w_1 \le 3w_2, \\[2mm] \left(\sqrt{2w_1 + 6w_2} - 2\sqrt{w_2}\right)^2, & 3w_2 \le 2w_1 \le 10w_2, \\[2mm] w_1 - w_2, & w_1 \ge 5w_2, \end{cases}
\qquad
t_R = \begin{cases} \dfrac{4w_2 + 2w_3}{3}, & w_3 \ge 4w_2, \\[2mm] \dfrac{4(\sqrt{w_2} + \sqrt{w_3})^2}{9}, & \dfrac{w_2}{4} \le w_3 \le 4w_2, \\[2mm] \dfrac{2w_2 + 4w_3}{3}, & w_3 \le \dfrac{w_2}{4}. \end{cases}$$

Final Answer:
$$\boxed{\mathcal{T} = \{\tau_1, \tau_2\}, \qquad \tau_1 = \min(t_L, t_R),}$$
$$\boxed{\tau_2 = \begin{cases} \dfrac{w_1 + 3w_2 + 2w_3}{4}, & t_L \le t_R,\ w_1 + 3w_2 \le 2w_3, \\[2mm] \dfrac{\left(\sqrt{2w_1 + 6w_2} + 2\sqrt{w_3}\right)^2}{16}, & t_L \le t_R,\ 2w_3 \le w_1 + 3w_2 \le 18w_3, \\[2mm] \dfrac{w_1 + 3w_2 + 6w_3}{6}, & t_L \le t_R,\ w_1 + 3w_2 \ge 18w_3, \\[2mm] \dfrac{3w_1 + w_2 + 2w_3}{6}, & t_R \le t_L, \end{cases}}$$
with $t_L$ and $t_R$ defined piecewise as above.

---
