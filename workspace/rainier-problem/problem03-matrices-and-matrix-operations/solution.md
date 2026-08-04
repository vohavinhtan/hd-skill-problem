## Steps

Step 1:
Reduce the constraints to two diagonal-block problems. Let $J$ be the $m\times m$ reversal matrix, and write
$$
X=\begin{bmatrix}A&B\\ C&E\end{bmatrix}.
$$
Then
$$
D=\begin{bmatrix}I_m&0\\0&-I_m\end{bmatrix},\qquad
R=\begin{bmatrix}0&J\\J&0\end{bmatrix},\qquad
DR=\begin{bmatrix}0&J\\-J&0\end{bmatrix}.
$$
So
$$
DX-XD=\begin{bmatrix}0&2B\\-2C&0\end{bmatrix}
$$
and
$$
10R+6DR=\begin{bmatrix}0&16J\\4J&0\end{bmatrix}.
$$
This gives
$$
B=8J,\qquad C=-2J.
$$
Since $p=\begin{bmatrix}\mathbf 1_m\\ \mathbf 1_m\end{bmatrix}$, $q=\begin{bmatrix}\mathbf 1_m\\-\mathbf 1_m\end{bmatrix}$, and $s=\begin{bmatrix}t\\t\end{bmatrix}$, the condition $Xp=4p+3q+s$ gives
$$
A\mathbf 1_m+8\mathbf 1_m=7\mathbf 1_m+t,\qquad
-2\mathbf 1_m+E\mathbf 1_m=\mathbf 1_m+t.
$$
This gives
$$
A\mathbf 1_m=t-\mathbf 1_m,\qquad E\mathbf 1_m=t+3\mathbf 1_m.
$$
The condition $p^{T}X=4p^{T}-7q^{T}+s^{T}$ gives the matching column conditions
$$
\mathbf 1_m^{T}A=t^{T}-\mathbf 1_m^{T},\qquad
\mathbf 1_m^{T}E=t^{T}+3\mathbf 1_m^{T}.
$$
Also, $Jt=-t$. Since
$$
Xp=\begin{bmatrix}t+7\mathbf 1_m\\ t+\mathbf 1_m\end{bmatrix},
$$
we get
$$
X^2 p=
\begin{bmatrix}
A(t+7\mathbf 1_m)+8J(t+\mathbf 1_m)\\
-2J(t+7\mathbf 1_m)+E(t+\mathbf 1_m)
\end{bmatrix}
=
\begin{bmatrix}
At+\mathbf 1_m-t\\
Et-11\mathbf 1_m+3t
\end{bmatrix}.
$$
Comparing with the given value of $X^2 p$ yields
$$
At=u,\qquad Et=v.
$$
The same calculation on the left gives
$$
t^{T}A=u^{T},\qquad t^{T}E=v^{T}.
$$
The off-diagonal blocks are fixed, and the norm minimization splits into two independent minimum-norm problems for $A$ and $E$ with the same zero pattern.

Step 2:
Solve the general block projection. Put
$$
\alpha=\frac{1}{m-2},\qquad
g_i=\frac{t_i(T-2t_i^2)}{m^2-1}+ma_i-2t_i.
$$
Define the scalar
$$
L=
\frac{\displaystyle\sum_{r=1}^{m}\frac{t_rg_r}{T-4t_r^2}}
{\displaystyle 1+\sum_{r=1}^{m}\frac{t_r^2}{T-4t_r^2}},
$$
and then define
$$
y_i=\frac{g_i-Lt_i}{T-4t_i^2}\qquad (1\leq i\leq m).
$$
The formula defining $L$ is legitimate. First, the denominators $T-4t_i^2$ are nonzero. Since $|t_i|\leq m-1$,
$$
T-4t_i^2\geq T-4(m-1)^2
=\frac{m(m^2-1)}{3}-4(m-1)^2
=\frac{(m-1)(m^2-11m+12)}{3}.
$$
For $m\geq10$ this is positive. The only remaining even cases with $m\geq6$ are $m=6$ and $m=8$. For $m=6$, $T=70$ and $t_i^2$ takes the values $25,9,1$, giving denominators $-30,34,66$. For $m=8$, $T=168$ and $t_i^2$ takes the values $49,25,9,1$, giving denominators $-28,68,132,164$. Thus no denominator $T-4t_i^2$ vanishes.

It remains to check the scalar denominator
$$
D_m=1+\sum_{r=1}^{m}\frac{t_r^2}{T-4t_r^2}.
$$
For $m\geq10$, each term $\frac{t_r^2}{T-4t_r^2}$ is nonnegative and at least one is positive, so $D_m>1$. For $m=6$,
$$
D_6=1+2\left(\frac{25}{70-100}+\frac{9}{70-36}+\frac{1}{70-4}\right)
=1+2\left(-\frac{5}{6}+\frac{9}{34}+\frac{1}{66}\right)
=-\frac{20}{187}.
$$
For $m=8$,
$$
D_8=1+2\left(\frac{49}{168-196}+\frac{25}{168-100}+\frac{9}{168-36}+\frac{1}{168-4}\right)
$$
$$
=1+2\left(-\frac{7}{4}+\frac{25}{68}+\frac{3}{44}+\frac{1}{164}\right)
=-\frac{12391}{7667}.
$$
So $D_m\neq0$ for every even $m\geq6$.

Now define $A$ and $E$ by setting their diagonal and anti-diagonal entries to $0$, and for all other pairs $1\leq i,j\leq m$ put
$$
A_{ij}=\alpha(t_i+t_j-1)+y_it_j+y_jt_i,
$$
$$
E_{ij}=\alpha(t_i+t_j+3)-y_it_j-y_jt_i.
$$
Because $t_{m+1-i}=-t_i$ and $a_{m+1-i}=-a_i$, the vector $g$ is odd under reversal. The definition of $y_i$ gives $y_{m+1-i}=-y_i$, so
$$
\sum_{j=1}^{m}y_j=0.
$$
Also, by the definition of $L$,
$$
\sum_{j=1}^{m}y_jt_j=L.
$$
For a fixed row $i$, the two forbidden indices are $i$ and $m+1-i$. This gives
$$
\sum_{\substack{1\leq j\leq m\\ j\neq i,m+1-i}}t_j=0
$$
and
$$
\sum_{\substack{1\leq j\leq m\\ j\neq i,m+1-i}}t_j^2=T-2t_i^2.
$$
The row sum of $A$ is therefore
$$
\alpha(m-2)(t_i-1)+t_i\left(\sum_{j=1}^{m}y_j-y_i-y_{m+1-i}\right)=t_i-1.
$$
Similarly, the row sum of $E$ is $t_i+3$.

Step 3:
Check the $t$-moment constraints. For $A$, the $\alpha$-part contributes
$$
\alpha\sum_{\substack{1\leq j\leq m\\ j\neq i,m+1-i}}(t_i+t_j-1)t_j
=\alpha(T-2t_i^2).
$$
The $y$-part contributes
$$
\sum_{\substack{1\leq j\leq m\\ j\neq i,m+1-i}}(y_it_j+y_jt_i)t_j
=y_i(T-2t_i^2)+t_i\left(L-2y_it_i\right).
$$
This equals
$$
y_i(T-4t_i^2)+Lt_i.
$$
By the definition of $y_i$, this is $g_i$. The displayed sum gives
$$
(At)_i=\alpha(T-2t_i^2)+g_i.
$$
Since
$$
\alpha(T-2t_i^2)+g_i
=(T-2t_i^2)\left(\frac{1}{m-2}+\frac{t_i}{m^2-1}\right)+ma_i-2t_i
=u_i,
$$
we have $At=u$. The matrix $A$ is symmetric, so $t^{T}A=u^{T}$.

For $E$, the same computation gives
$$
(Et)_i=\alpha(T-2t_i^2)-g_i.
$$
Since
$$
\alpha(T-2t_i^2)-g_i
=(T-2t_i^2)\left(\frac{1}{m-2}-\frac{t_i}{m^2-1}\right)-ma_i+2t_i
=v_i,
$$
we have $Et=v$ and $t^{T}E=v^{T}$.

Step 4:
Prove minimality and assemble the matrix. Let $Z$ be any perturbation of $A$ that keeps all four homogeneous constraints:
$$
Z\mathbf 1_m=0,\qquad \mathbf 1_m^{T}Z=0,\qquad Zt=0,\qquad t^{T}Z=0,
$$
with $Z_{ij}=0$ on the same diagonal and anti-diagonal positions. Then
$$
\langle Z,A\rangle
=\sum_{i,j}Z_{ij}\left(\alpha(t_i+t_j-1)+y_it_j+y_jt_i\right).
$$
The three terms in the $\alpha$-part vanish because the row sums, column sums, and total sum of $Z$ are zero:
$$
\sum_{i,j}Z_{ij}t_i=0,\qquad
\sum_{i,j}Z_{ij}t_j=0,\qquad
\sum_{i,j}Z_{ij}=0.
$$
The two $y$-terms vanish because $Zt=0$ and $t^{T}Z=0$:
$$
\sum_{i,j}Z_{ij}y_it_j=\sum_i y_i(Zt)_i=0,
$$
$$
\sum_{i,j}Z_{ij}y_jt_i=\sum_j y_j(t^{T}Z)_j=0.
$$
So $A$ is orthogonal to every feasible perturbation. The same argument applies to $E$. The displayed $A$ and $E$ are the unique minimum-norm diagonal blocks. Together with $B=8J$ and $C=-2J$, the required matrix is
$$
X=\begin{bmatrix}A&8J\\-2J&E\end{bmatrix}.
$$
Equivalently, define
$$
\begin{gathered}
J=\text{the }m\times m\text{ reversal matrix},\quad
H=\mathbf 1_m\mathbf 1_m^{T}-I_m-J,\\
P=\operatorname{diag}(T-4t_1^2,\ldots,T-4t_m^2),\quad
g=(g_i)_{i=1}^{m},\quad g_i=\frac{t_i(T-2t_i^2)}{m^2-1}+ma_i-2t_i,\\
y=P^{-1}\left(g-\frac{t^{T}P^{-1}g}{1+t^{T}P^{-1}t}\,t\right).
\end{gathered}
$$
Here $\circ$ denotes entrywise product. Set
$$
A=H\circ\left(\frac{t\mathbf 1_m^{T}+\mathbf 1_m t^{T}-\mathbf 1_m\mathbf 1_m^{T}}{m-2}+yt^{T}+ty^{T}\right),
$$
$$
E=H\circ\left(\frac{t\mathbf 1_m^{T}+\mathbf 1_m t^{T}+3\mathbf 1_m\mathbf 1_m^{T}}{m-2}-yt^{T}-ty^{T}\right).
$$
Then the required matrix is the following block matrix.
Final Answer: $\boxed{\begin{gathered}
X=\begin{bmatrix}A&8J\\-2J&E\end{bmatrix},\qquad
J_{ij}=\mathbf 1_{\{i+j=m+1\}}\quad(1\leq i,j\leq m),\\
I_m=\text{the }m\times m\text{ identity matrix},\qquad
H=\mathbf 1_m\mathbf 1_m^{T}-I_m-J,\qquad
P=\operatorname{diag}(T-4t_1^2,\ldots,T-4t_m^2),\\
g_i=\frac{t_i(T-2t_i^2)}{m^2-1}+ma_i-2t_i,\qquad
g=(g_i)_{i=1}^{m},\\
y=P^{-1}\left(g-\frac{t^{T}P^{-1}g}{1+t^{T}P^{-1}t}\,t\right),\\
\circ\text{ denotes entrywise multiplication},\\
A=H\circ\left(\frac{t\mathbf 1_m^{T}+\mathbf 1_m t^{T}-\mathbf 1_m\mathbf 1_m^{T}}{m-2}+yt^{T}+ty^{T}\right),\\
E=H\circ\left(\frac{t\mathbf 1_m^{T}+\mathbf 1_m t^{T}+3\mathbf 1_m\mathbf 1_m^{T}}{m-2}-yt^{T}-ty^{T}\right).
\end{gathered}}$

---

## Answer

$\begin{gathered}
X=\begin{bmatrix}A&8J\\-2J&E\end{bmatrix},\qquad
J_{ij}=\mathbf 1_{\{i+j=m+1\}}\quad(1\leq i,j\leq m),\\
I_m=\text{the }m\times m\text{ identity matrix},\qquad
H=\mathbf 1_m\mathbf 1_m^{T}-I_m-J,\qquad
P=\operatorname{diag}(T-4t_1^2,\ldots,T-4t_m^2),\\
g_i=\frac{t_i(T-2t_i^2)}{m^2-1}+ma_i-2t_i,\qquad
g=(g_i)_{i=1}^{m},\\
y=P^{-1}\left(g-\frac{t^{T}P^{-1}g}{1+t^{T}P^{-1}t}\,t\right),\\
\circ\text{ denotes entrywise multiplication},\\
A=H\circ\left(\frac{t\mathbf 1_m^{T}+\mathbf 1_m t^{T}-\mathbf 1_m\mathbf 1_m^{T}}{m-2}+yt^{T}+ty^{T}\right),\\
E=H\circ\left(\frac{t\mathbf 1_m^{T}+\mathbf 1_m t^{T}+3\mathbf 1_m\mathbf 1_m^{T}}{m-2}-yt^{T}-ty^{T}\right).
\end{gathered}$

---

## Black-Box Audit

- Step 1 -- Level 1: the block reduction and the second-iterate reduction are displayed explicitly.
- Step 2 -- Level 1: the scalar $L$ is derived from the self-consistency condition $\sum y_it_i=L$, and the row sums are checked on the page.
- Step 3 -- Level 1: the $t$-moment constraints are computed term by term.
- Step 4 -- Level 1: the orthogonality gap certificate proves minimality and uniqueness without hidden computation.

---

## Verification

- Feasibility check: Step 1 proves the off-diagonal blocks satisfy the commutator, and Steps 2 and 3 prove all row, column, and second-iterate constraints.
- Lower-bound check: if $Z$ is any feasible perturbation of either diagonal block, Step 4 gives $\langle Z,A\rangle=0$ or $\langle Z,E\rangle=0$, so $\|A+Z\|_F^2=\|A\|_F^2+\|Z\|_F^2$ and similarly for $E$.
- Counterexample attack: the tempting shortcut replaces $y_it_j+y_jt_i$ by $\frac{t_it_j}{m^2-1}+a_ia_j$. It satisfies the displayed moment equations in some small cases but it does not have the required orthogonality form for $m=8$; the missing scalar $L$ is the obstruction.
- Boundary check: the condition $n\geq12$ gives $m\geq6$, avoiding the exceptional $m=4$ degeneracy where the self-consistency denominator for $L$ vanishes.
- Accepted-style step certificate: Step 4 contains the projection gap certificate, which proves both optimality and uniqueness.

---

## Classification

**Domain/Sub-domain:** Linear Algebra / Inner product spaces

**Problem Type:** Optimization

**Answer Type:** Matrix

---

## Concepts (1-5)

- Frobenius inner product
- Block decomposition by a sign matrix
- Reversal-symmetric support restrictions
- Moment-constrained least-norm projection
- Orthogonality gap certificate

---

## Confidence

High because the formula is obtained from the exact constraint reduction and the final norm gap proves uniqueness.
