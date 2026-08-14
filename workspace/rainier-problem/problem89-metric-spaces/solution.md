## Steps

Step 1: Decode the metric and reduce to zero-fixing isometries
For nonzero $z\in X_n$, the marker contribution to $d_n(0,z)-8192n$ lies in $[0,2046]$, while $2048\operatorname{wt}(z)$ is divisible by $4096$ because every word in $X_n$ has even weight. Thus the distance determines $\operatorname{wt}(z)$ and all ten marker bits. Also every nonzero distance is at least $8192n+4096$ and at most $10240n+2046$, so the triangle inequality is automatic. Since $d_n(x,y)$ depends only on $x+y$, every translation $x\mapsto x+a$ with $a\in X_n$ is an isometry. After composing any isometry with one translation, it fixes $0$ and preserves Hamming weight and every marker family.

Step 2: Recover the coordinate permutation
The weight-$2$ words are $p_{PQ}=e_P+e_Q$. For two distinct such words, $\operatorname{wt}(p_{PQ}+p_{RS})=2$ exactly when the two supports meet. Hence a zero-fixing isometry preserves the intersection graph of the $2$-subsets of $V$. Its cliques of size $n-1$ are exactly the stars $\{p_{PQ}:Q\ne P\}$, so there is a unique permutation $\phi$ of $V$ with $p_{PQ}\mapsto p_{\phi(P)\phi(Q)}$. If $x$ has support $S$, then
$$
|S\cap\{P,Q\}|=\frac{\operatorname{wt}(x)+2-\operatorname{wt}(x+p_{PQ})}{2},
$$
so the support is recovered from the weight-$2$ shell. Therefore every zero-fixing isometry is the coordinate permutation
$$
(P_\phi x)_X=x_{\phi^{-1}(X)}.
$$

Step 3: Use the linear and line markers to obtain semilinearity
Preservation of $\mathcal L$ gives, for each $C\ne0$, a $D$ with
$$
\langle C,\phi^{-1}(X)\rangle=\langle D,X\rangle.
$$
Nondegeneracy of the trace pairing implies $\phi(0)=0$ and $\phi(X+Y)=\phi(X)+\phi(Y)$, so $\phi$ is $\mathbb F_2$-linear. Preservation of $\mathcal P$ means that every one-dimensional $E$-subspace maps to one. For an $E$-basis $E_1,\ldots,E_{25}$, write $\phi(tE_i)=\sigma_i(t)f_i$. Applying $\phi$ to $E(E_i+E_j)$ gives $\sigma_i=\sigma_j=:\sigma$, and applying it to $E(E_i+tE_j)$ gives $\sigma(st)=\sigma(s)\sigma(t)$. Thus $\sigma$ is an $\mathbb F_2$-automorphism of $E$. The primitive element $\tau$ lies in no proper subfield, so it has degree $r$ and its conjugates are $\tau^{2^k}$, $0\le k<r$. Hence uniquely
$$
\phi(X)=T(X^{2^k})
$$
with $T$ $E$-linear.

Step 4: Determine the rank-one preserver
By preservation of $\mathcal R$, $T$ preserves rank-one matrices. A rank-at-most-one subspace is contained in one of
$$
U_{[u]}=\{uv^T:v\in E^5\},\qquad W_{[v]}=\{uv^T:u\in E^5\}.
$$
Indeed, if it contained $uv^T,uy^T,xv^T$ with $x\notin Eu$ and $y\notin Ev$, then $uy^T+xv^T$ would have rank $2$. Thus all nonzero elements share one column direction or one row direction. The marker $\mathcal U$ preserves the first ruling, so both rulings are preserved. Therefore
$$
T(E_{ij})=\lambda_{ij}a_i b_j^T.
$$
Since $(e_i+e_{i'})(e_j+e_{j'})^T$ has rank $1$, its image gives
$$
\lambda_{ij}\lambda_{i'j'}=\lambda_{ij'}\lambda_{i'j}.
$$
Thus $\lambda_{ij}=r_ic_j$, which may be absorbed into $a_i,b_j$, and
$$
T(X)=AXB
$$
for some $A,B\in\operatorname{GL}_5(E)$.

Step 5: Use the trace-zero marker and hyperplane action
Preservation of $\mathcal Z$ gives
$$
\operatorname{tr}(BAY)=0\iff\operatorname{tr}Y=0.
$$
The two nonzero $E$-linear functionals have the same kernel, so $\operatorname{tr}(BAY)=\gamma\operatorname{tr}Y$ for a unique $\gamma\ne0$. Nondegeneracy of $(M,Y)\mapsto\operatorname{tr}(MY)$ yields $BA=\gamma I_5$, hence
$$
\phi(X)=\gamma AX^{2^k}A^{-1}.
$$
For $C\ne0$, substitution in $h_C\circ\phi^{-1}$ followed by the $2^k$-th power of the defining trace equation gives
$$
h_C\mapsto h_{AC^{2^k}A^{-1}}.
$$
Preservation of $\mathcal E$ forces $AE_{ii}A^{-1}=E_{\sigma(i)\sigma(i)}$, so $A=D_0P$ with $D_0$ diagonal and $P$ a permutation matrix.

Step 6: Use the Singer marker to determine the permutation part
Let $C_5=\{1,2,4,8,16\}\subset\mathbb Z/31\mathbb Z$. Its cyclic gaps are $1,2,4,8,16$, all distinct, so no nonzero translation preserves $C_5$. Since $h_D$ is fixed and $D_0$ commutes with $D$,
$$
PD^{2^k}P^{-1}=\lambda D.
$$
All diagonal entries are powers of $\eta$, so $\lambda=\eta^h$ and
$$
2^kC_5=C_5+h.
$$
Multiplication by $2^k$ already permutes $C_5$, hence $h=0$. The entries of $D$ are distinct, so if $s\equiv k\pmod5$ then uniquely
$$
P=P_s,\qquad P_se_i=e_{i+s}.
$$

Step 7: Use the weighted cycle to determine the diagonal part
Write $A=D_0P_s$ with $D_0=\operatorname{diag}(d_0,\ldots,d_4)$. Since $h_K$ is fixed,
$$
AK^{2^k}A^{-1}=\lambda K.
$$
Both sides have trace $1$, so $\lambda=1$. Comparing the $E_{j,j+1}$ coefficients gives
$$
\frac{d_j}{d_{j+1}}\eta^{2^kb_{j-s}}=\eta^{b_j}.
$$
Normalize $d_0=1$ and write $d_j=\eta^{c_j}$. Since $2^k\equiv2^s\pmod{31}$,
$$
c_{j+1}\equiv c_j+2^sb_{j-s}-b_j\pmod{31}.
$$
The five equations are consistent because $\sum_{j=0}^4b_j=31\equiv0\pmod{31}$, and the recurrence determines $c_1,\ldots,c_4$ uniquely from $c_0=0$. Thus for each $s$ there is exactly one normalized diagonal matrix $D_s$, and the projective class of $A$ is uniquely $A_s=D_sP_s$.

Step 8: Restrict the Frobenius exponent
Let $R_0=\operatorname{diag}(\rho,1,1,1,1)$. Since $D_s$ is diagonal,
$$
A_sR_0^{2^k}A_s^{-1}=P_sR_0^{2^k}P_s^{-1}.
$$
For this to define a member of $\mathcal B$, it must be proportional to some $P_tR_0P_t^{-1}$. Comparing the at least three diagonal entries equal to $1$ forces the proportionality factor to be $1$, hence $\rho^{2^k}=\rho$. Since $\rho$ has order $7$ and $2$ has order $3$ modulo $7$,
$$
3\mid k.
$$
Conversely, $3\mid k$ gives $R_0^{2^k}=R_0$, so $\mathcal B$ is preserved. Thus $k=0,3,\ldots,r-3$.

Step 9: Determine the remaining scalar
For $s\in E$, set $\mathcal C_s=\{\mathbf c_s+\ell_C:C\in V\}$. These families are distinct: for $X=xE_{00}$ and $Y=E_{11}$, the polar form of $c_2$ takes the value $x$, so nondegeneracy of $\operatorname{Tr}$ distinguishes $s$. Also
$$
c_2(\gamma X)=\gamma^2c_2(X),\qquad c_2(X^{2^k})=c_2(X)^{2^k},
$$
and $c_2$ is conjugation-invariant. Hence
$$
P_\phi(\mathcal C_s)=\mathcal C_{s^{2^k}\gamma^{-2}}.
$$
Fixing $\mathcal C_\tau$ gives $\gamma^2=\tau^{2^k-1}$. Since $|E^\times|=2^r-1$ is odd, squaring is bijective, so uniquely
$$
\gamma_k=\left(\tau^{2^k-1}\right)^{2^{r-1}}.
$$

Step 10: Construct every admissible zero-fixing map
For each $k$ with $0\le k<r$ and $3\mid k$, let $s\equiv k\pmod5$, take $A_s$ from Step 7, and define
$$
\Phi_k(X)=\gamma_kA_sX^{2^k}A_s^{-1}.
$$
This map is $\mathbb F_2$-linear and preserves $E$-lines, rank, the chosen ruling and trace zero. Step 6 gives preservation of $h_D$, Step 7 gives preservation of $h_K$, Step 8 gives preservation of $\mathcal B$, and Step 9 gives preservation of $\mathcal C_\tau$. Thus its coordinate permutation preserves every marker and is a zero-fixing isometry.

Step 11: Prove completeness and uniqueness of the zero stabilizer
Conversely, Steps 2 through 9 force any zero-fixing isometry to have exactly the form induced by $\Phi_k$ with $3\mid k$. The coordinate permutation is unique by Step 2; its field automorphism determines $k$ uniquely in $0\le k<r$; Step 6 fixes $P_s$, Step 7 fixes the normalized diagonal part of $A_s$, and Step 9 fixes $\gamma_k$. Hence there is exactly one zero-fixing isometry for each $k=0,3,\ldots,r-3$, so the zero stabilizer has $r/3$ elements.

Step 12: Restore translations and count
Every isometry is uniquely a translation by $a=F(0)\in X_n$ followed by one of the $r/3$ zero-fixing maps from Step 11. Since $X_n$ is the even-weight subspace of $\mathbb F_2^V$ and $|V|=n=2^{25r}$,
$$
|X_n|=2^{n-1}=2^{2^{25r}-1}.
$$
Therefore
$$
|\operatorname{Iso}(X_n,d_n)|=2^{2^{25r}-1}\frac{r}{3}.
$$
Final Answer: $\boxed{2^{2^{25r}-1}\frac{r}{3}}$

---

## Answer

$2^{2^{25r}-1}\frac{r}{3}$

---

## Classification

**Problem Type:** Exhaustive enumeration

**Answer Type:** Exact scalar

---

## Solution Concepts

- finite metric isometry reconstruction
- semilinear finite geometry
- rank one matrix preservers
- cyclic finite field arithmetic
- characteristic polynomial invariants
