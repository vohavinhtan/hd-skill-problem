## Steps

Step 1: Convert the two powers of linear forms into boundary relations

In characteristic $p$,
$$
(x+y)^{p+1}=x^{p+1}+x^py+xy^p+y^{p+1},
$$
while
$$
(x+2y)^{p+1}=x^{p+1}+2x^py+2xy^p+4y^{p+1}.
$$
Define
$$
h_1=x^{p+1}-2y^{p+1},
\qquad
h_2=x^py+xy^p+3y^{p+1}.
$$
Then
$$
h_1=2(x+y)^{p+1}-(x+2y)^{p+1},
$$
$$
h_2=(x+2y)^{p+1}-(x+y)^{p+1},
$$
and conversely the two original degree-$p+1$ generators are $h_1+h_2$ and $h_1+2h_2$. Hence
$$
I_p=(x^{p+2},y^{p+2},h_1,h_2).
$$

Multiplying $h_1$ by $x$ and $y$ and using $x^{p+2},y^{p+2}\in I_p$ gives
$$
xy^{p+1}\in I_p,
\qquad
x^{p+1}y\in I_p.
$$
Substituting these relations into $xh_2$ and $yh_2$ gives
$$
x^2y^p\in I_p,
\qquad
x^py^2\in I_p.
$$
Therefore the monomial ideal
$$
M=(x^{p+2},y^{p+2},xy^{p+1},x^{p+1}y,x^2y^p,x^py^2)
$$
satisfies $M\subseteq I_p$.

Step 2: Determine the homogeneous pieces after the exceptional degree

The products $xh_i$ and $yh_i$ belong to $M$ for $i=1,2$. Hence every positive-degree monomial multiple of either $h_i$ lies in $M$: if $x^ay^b$ has $a+b>0$, use $xh_i$ when $a>0$ and $yh_i$ when $b>0$. Since the remaining generators $x^{p+2}$ and $y^{p+2}$ already lie in $M$, this proves
$$
(I_p)_d=M_d
\qquad(d\geq p+2).
$$
Also
$$
(I_p)_d=0\quad(d\leq p),
\qquad
(I_p)_{p+1}=\langle h_1,h_2\rangle_{\mathbb F_p},
$$
and $h_1,h_2$ are linearly independent.

Fix $d\geq p+2$. A monomial $x^iy^j$ with $i+j=d$ survives modulo $M$ exactly when
$$
3\leq i\leq p-1,
\qquad
3\leq j\leq p-1.
$$
Indeed, if $i=0,1,2$, then $j\geq p+2,p+1,p$, respectively, so one of $y^{p+2},xy^{p+1},x^2y^p$ divides the monomial. The same argument with $x$ and $y$ interchanged handles $j=0,1,2$. Conversely, the displayed range avoids all six generators of $M$. Thus these surviving monomials form a basis of $(A_p)_d$ for every $d\geq p+2$.

Step 3: Exclude socle elements in degrees at most $p$

If $d\leq p-1$, then $(I_p)_{d+1}=0$, so multiplication by $x$ cannot annihilate a nonzero class in $(A_p)_d$.

Now let $f\in S_p$ and suppose both $xf$ and $yf$ lie in $(I_p)_{p+1}=\langle h_1,h_2\rangle$. Since $xf$ is divisible by $x$, the coefficient of $y^{p+1}$ in its expression as a linear combination of $h_1,h_2$ must vanish. Thus
$$
xf=t(3h_1+2h_2)
=t x\left(3x^p+2x^{p-1}y+2y^p\right)
$$
for some $t\in\mathbb F_p$, so
$$
f=t\left(3x^p+2x^{p-1}y+2y^p\right).
$$
Similarly, $yf$ is divisible by $y$, so its $x^{p+1}$ coefficient vanishes and therefore
$$
yf=s h_2
=s y\left(x^p+xy^{p-1}+3y^p\right)
$$
for some $s\in\mathbb F_p$. Hence
$$
f=s\left(x^p+xy^{p-1}+3y^p\right).
$$
Because $p\geq5$, the monomials $x^{p-1}y$ and $xy^{p-1}$ are distinct. Comparing the coefficient of $x^{p-1}y$ gives $2t=0$, hence $t=0$ and $f=0$. Therefore
$$
\operatorname{Soc}(A_p)_d=0
\qquad(d\leq p).
$$

Step 4: Compute the exceptional socle component in degree $p+1$

Write
$$
m_i=x^iy^{p+1-i},
\qquad
0\leq i\leq p+1.
$$
The only relations in degree $p+1$ are $h_1,h_2$, and both lie in
$$
U=\langle m_0,m_1,m_p,m_{p+1}\rangle.
$$
By Step 2, $(A_p)_{p+2}$ has basis
$$
x^jy^{p+2-j},
\qquad
3\leq j\leq p-1.
$$
Consequently $xm_i$ is a nonzero basis monomial exactly when $2\leq i\leq p-2$, while $ym_i$ is a nonzero basis monomial exactly when $3\leq i\leq p-1$. These surviving images are pairwise distinct.

Therefore, if a class in $(A_p)_{p+1}$ is killed by both $x$ and $y$, every coefficient of $m_i$ outside $U$ must vanish. Conversely, each of $m_0,m_1,m_p,m_{p+1}$ is killed by both variables because its products are among the six monomial generators of $M$. Hence
$$
\operatorname{Soc}(A_p)_{p+1}=U/\langle h_1,h_2\rangle.
$$
Since $\dim U=4$ and $h_1,h_2$ are independent,
$$
\dim_{\mathbb F_p}\operatorname{Soc}(A_p)_{p+1}=2.
$$

Step 5: Determine the tail socle and assemble the graded polynomial

For $d\geq p+2$, Step 2 gives a basis of $(A_p)_d$ consisting of the monomials $x^iy^j$ with
$$
3\leq i,j\leq p-1.
$$
Multiplication by $x$ kills such a basis monomial exactly when $i=p-1$; otherwise its image is another surviving basis monomial. Since distinct basis monomials have distinct surviving $x$-images, a linear combination killed by $x$ can involve only terms with $i=p-1$. The analogous argument for multiplication by $y$ shows that a socle class can involve only terms with $j=p-1$.

Thus the only socle class in degrees at least $p+2$ is
$$
x^{p-1}y^{p-1},
$$
which has degree $2p-2$. Combining this one-dimensional component with the two-dimensional component from Step 4 gives
$$
\Sigma_p(t)=t^{2p-2}+2t^{p+1}.
$$

Final Answer: $\boxed{t^{2p-2}+2t^{p+1}}$

---

## Answer

$t^{2p-2}+2t^{p+1}$

---

## Classification

**Problem Type:** Exact computation

**Answer Type:** Polynomial or rational function

---

## Solution Concepts

- graded socle
- Frobenius identities
- homogeneous ideal filtration
- monomial normal forms
- Artinian graded algebras
