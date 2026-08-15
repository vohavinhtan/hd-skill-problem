## Steps

Step 1: Reduce the conductor to residue-class valuation gaps
Put $u=t^n$ and $s=t$, so $s^n=u$, and write
$$
x=u^4,\qquad y=u^6+u^7+u^7s,\qquad
z=u^9+\left(\lambda^2u^9+(\lambda-1)u^{11}\right)s.
$$
Let
$$
S_{n,\lambda}=\{v(f):0\neq f\in A_{n,\lambda}\}.
$$
Because $x=t^{4n}$, the ring $A_{n,\lambda}$ is a complete finite $\mathbb C[[x]]$-module. If every integer at least $c$ occurs in $S_{n,\lambda}$, choose in each residue class modulo $4n$ an element whose first term has the least such valuation. Successive subtraction of its $\mathbb C[[x]]$-multiples removes the leading term of $t^k$ for every $k\geq c$ and converges $t$-adically inside $A_{n,\lambda}$. Therefore
$$
\kappa_{n,\lambda}
=
1+\max\left(\mathbb Z_{\geq0}\setminus S_{n,\lambda}\right).
$$

For $0\leq r<n$, set
$$
Q_r(\lambda)=\{q\geq0:qn+r\in S_{n,\lambda}\}.
$$
Also put
$$
H=\langle4,6,9\rangle,\qquad
K=H\cup(5+H),\qquad
L=K\cup(7+H).
$$
Their gaps are
$$
\mathbb Z_{\geq0}\setminus H=\{1,2,3,5,7,11\},
$$
$$
\mathbb Z_{\geq0}\setminus K=\{1,2,3,7\},
\qquad
\mathbb Z_{\geq0}\setminus L=\{1,2,3\}.
$$
Hence their largest gaps are $11,7,3$, respectively.

Step 2: Determine all residue layers from one semigroup-ideal certificate
Let
$$
B=\mathbb C[[u^4,u^6,u^9]],\qquad I=B+u^5B.
$$
The value sets of $B$ and $I$ are $H$ and $K$. The identity
$$
H\cap(5+H)=(9+H)\cup(14+H)
$$
shows that every cancellation between the two generators $1,u^5$ of $I$ is generated over $B$ by
$$
(u^9,-u^4),\qquad(-u^{14},u^9).
$$
This gives the complete primitive-overlap certificate for every translate of $I$.

Set
$$
U=y^2-x^3-2xz-x^2y,\qquad G=z^2-x^3y.
$$
Their terms through $s^2$ are
$$
U=-u^{15}
+\left(2(1-\lambda^2)u^{13}+2u^{14}+(1-2\lambda)u^{15}\right)s
+u^{14}s^2
$$
and
$$
\begin{aligned}
G&=-u^{19}
+\left(2\lambda^2u^{18}-u^{19}+2(\lambda-1)u^{20}\right)s\\
&+\left(\lambda^4u^{18}
+2\lambda^2(\lambda-1)u^{20}
+(\lambda-1)^2u^{22}\right)s^2.
\end{aligned}
$$
If $\lambda^2\neq1$, the first positive layer is $13+K$. If $\lambda=-1$, the pair $U,G-xU$ gives $14+K$. If $\lambda=1$, the exact identity $G=xU$ leaves the principal layer $14+H$.

For $\lambda\neq1$, identify each positive layer with $I$ by scaling its two least generators to coefficient $1$. The two displayed syzygies give the next layer, and the next cancellation is forced by the product of the first positive layer with the current one. For an odd index $r$, one full two-layer cycle has the following determinant. Writing $D=\lambda^2$, for $D\neq1$ it is
$$
\left(\frac{Dr}{r+1}\frac{D(r+2)}{r+1}\right)
\left(
\frac{r(r+3)}{2(r+1)(r+2)(D-1)}
\frac{1}{2(D-1)}
\right)
=
\frac{D^2r^2(r+3)}{4(r+1)^3(D-1)^2},
$$
which is nonzero. For $\lambda=-1$, using $U,G-xU$ gives
$$
\left(\frac{r}{r+1}\frac{r+2}{r+1}\right)
\left(
\frac{r+3}{2(r+1)}
\frac{r}{2(r+2)}
\right)
=
\frac{r^2(r+3)}{4(r+1)^3},
$$
also nonzero. The four factors in each product are the surviving coefficients attached to the two primitive syzygies in the two successive layers. Every other leading cancellation is an $H$-multiple of those syzygies by the intersection identity above. An invertible cycle therefore produces both generators of the next copy of $I$, while the same intersection identity excludes any additional primitive generator. The two successive $u$-degree shifts are $9$ and $5$, so a full cycle shifts the layer by $14$.

It follows that, for $\lambda\neq1$,
$$
Q_r(\lambda)=7r+7+\varepsilon+(-1)^r+K
\qquad(1\leq r<n),
$$
where $\varepsilon=1$ for $\lambda=-1$ and $\varepsilon=0$ otherwise. If $n$ is odd, the last row $r=n-1$ is even and the final primitive overlap reaches $s^n$; replacing $s^n$ by $u$ adds the translate $7+H$, so $K$ is replaced there by $L$. If $n$ is even, no extra translate occurs.

For $\lambda=1$, the positive layer is principal. Every cancellation with fixed $s$-degree factors out the same power of its generator and reduces to a relation in $B$, so
$$
Q_r(1)=14r+H
\qquad(0\leq r<n).
$$

Step 3: Compute the three conductor levels
For a row $Q_r$, let $g_r$ be its largest missing $q$-value. The largest missing valuation in that row is
$$
m_r=r+ng_r.
$$
For $\lambda\neq1$, away from the odd-$n$ boundary row, Step 2 gives
$$
g_r=7r+14+\varepsilon+(-1)^r
\qquad(r\geq1).
$$
The difference $m_{r+1}-m_r$ is alternately $1+9n$ and $1+5n$, so it is positive. When $n$ is odd, replacing $K$ by $L$ lowers the last $g_r$ by $4$, changing the final increment to $1+5n$, still positive. The last row always contains the largest gap.

If $n$ is even, the last row is odd and
$$
g_{n-1}=7n+6+\varepsilon.
$$
If $n$ is odd, the boundary row uses $L$ and
$$
g_{n-1}=7n+4+\varepsilon.
$$
Both parities give
$$
\kappa_{n,\lambda}
=
7n^2+\left(6+\varepsilon+(-1)^n\right)n
\qquad(\lambda\neq1).
$$
In particular,
$$
\kappa_{n,-1}
=
7n^2+\left(7+(-1)^n\right)n,
$$
while for $\lambda^2\neq1$,
$$
\kappa_{n,\lambda}
=
7n^2+\left(6+(-1)^n\right)n.
$$

For $\lambda=1$, Step 2 gives $g_r=14r+11$. Since $m_{r+1}-m_r=1+14n>0$, the last row again controls the conductor:
$$
\kappa_{n,1}
=
1+(n-1)+n\left(14(n-1)+11\right)
=
14n^2-2n.
$$

Step 4: Identify the second-largest value
For every $n\geq2$,
$$
\kappa_{n,1}-\kappa_{n,-1}
=
n\left(7n-9-(-1)^n\right)>0,
$$
and
$$
\kappa_{n,-1}-\kappa_{n,\lambda}=n>0
\qquad(\lambda^2\neq1).
$$
The equation $\lambda^2=1$ has exactly the two solutions $1$ and $-1$ in $\mathbb C^\times$. Therefore $\lambda=1$ gives the unique largest conductor, while $\lambda=-1$ gives the unique second-largest conductor. Hence
$$
\beta_n=7n^2+\left(7+(-1)^n\right)n,
\qquad
E_n=\{-1\}.
$$
Final Answer: $\boxed{\left(7n^2+\left(7+(-1)^n\right)n,\{-1\}\right)}$

---

## Answer

$\left(7n^2+\left(7+(-1)^n\right)n,\{-1\}\right)$

---

## Classification

**Problem Type:** Optimization

**Answer Type:** Tuple or ordered list

---

## Solution Concepts

- value semigroup of a local ring
- conductor exponent
- semigroup ideals
- syzygies of monomial curves
- residue-class filtration