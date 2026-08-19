```markdown id="zmy91p"
## Steps

Step 1: Recover the projective linear Galois action

Let
$$
G=\operatorname{PGL}_2(\mathbb F_p)
$$
act on $L=\mathbb F_p(x)$ by
$$
g(x)=\frac{ax+b}{cx+d},
$$
where
$$
g=
\begin{bmatrix}
a&b\\
c&d
\end{bmatrix}.
$$

For
$$
\Delta=ad-bc,
$$
direct calculation gives
$$
g(x)^{p^r}-g(x)
=
\frac{\Delta(x^{p^r}-x)}
{(cx+d)^{p^r}(cx+d)}
$$
for $r=1,2$.

Hence
$$
\frac{(g(x)^{p^2}-g(x))^{p+1}}
{(g(x)^p-g(x))^{p^2+1}}
=
\frac{(x^{p^2}-x)^{p+1}}
{(x^p-x)^{p^2+1}},
$$
because the powers of $cx+d$ cancel and
$$
\Delta^{p+1}=\Delta^{p^2+1}
$$
for $\Delta\in\mathbb F_p^\times$.

Thus every element of $G$ fixes $J$, so
$$
K\subseteq L^G.
$$

Put
$$
A=x^p-x.
$$
Since
$$
x^{p^2}-x=A^p+A,
$$
we have
$$
J=
\frac{(A^{p-1}+1)^{p+1}}
{A^{p^2-p}}.
$$
The numerator and denominator are coprime, and as rational functions of $x$ their degrees are respectively
$$
p(p-1)(p+1)=p(p^2-1)
$$
and
$$
p^2(p-1).
$$
Therefore
$$
[L:K]=p(p^2-1).
$$

But
$$
|G|
=
|\operatorname{PGL}_2(\mathbb F_p)|
=
p(p^2-1).
$$
Hence
$$
K=L^G
$$
and
$$
\operatorname{Gal}(L/K)\cong\operatorname{PGL}_2(\mathbb F_p).
$$

Step 2: Identify the subgroup fixing $E$

Again put
$$
A=x^p-x.
$$
For every $a\in\mathbb F_p$,
$$
(x+a)^p-(x+a)=x^p-x=A.
$$
Thus the translation subgroup
$$
U=
\left\{
\begin{bmatrix}
1&a\\
0&1
\end{bmatrix}
:a\in\mathbb F_p
\right\}
$$
fixes $\mathbb F_p(A)$.

The rational function $A=x^p-x$ has degree $p$, so
$$
[L:\mathbb F_p(A)]=p.
$$
Since $|U|=p$,
$$
\mathbb F_p(A)=L^U.
$$

Step 1 shows that $J$ is a rational function of $A$, so
$$
K\subseteq\mathbb F_p(A).
$$
Consequently
$$
E=K(A)=\mathbb F_p(A)=L^U.
$$

Step 3: Identify the subgroup fixing $F$

Put
$$
B=x^{-p}-x^{-1}.
$$
If
$$
y=x^{-1},
$$
then
$$
B=y^p-y.
$$
Therefore $B$ is fixed by translations
$$
y\mapsto y+b,
\qquad
b\in\mathbb F_p.
$$
In terms of $x$, these transformations are
$$
x\mapsto\frac{x}{1+bx}.
$$
They form the opposite unipotent subgroup
$$
U^-=
\left\{
\begin{bmatrix}
1&0\\
b&1
\end{bmatrix}
:b\in\mathbb F_p
\right\}.
$$

Since $B$ has rational-function degree $p$,
$$
[L:\mathbb F_p(B)]=p.
$$
Thus
$$
\mathbb F_p(B)=L^{U^-}.
$$

The transformation $x\mapsto x^{-1}$ lies in $G$, so it fixes $J$. Since $B=A(x^{-1})$, this also shows
$$
J\in\mathbb F_p(B).
$$
Hence
$$
F=K(B)=\mathbb F_p(B)=L^{U^-}.
$$

Step 4: Determine the compositum and intersection

By Galois correspondence,
$$
EF=L^{U\cap U^-}.
$$
The only projective transformation that is simultaneously upper and lower unipotent is the identity, so
$$
U\cap U^-=\{1\}.
$$
Therefore
$$
EF=L.
$$

For the intersection,
$$
E\cap F=L^{\langle U,U^-\rangle}.
$$

Both $U$ and $U^-$ are represented by determinant-one matrices, so
$$
\langle U,U^-\rangle
\subseteq
\operatorname{PSL}_2(\mathbb F_p).
$$

Conversely, the elementary matrices
$$
\begin{bmatrix}
1&a\\
0&1
\end{bmatrix},
\qquad
\begin{bmatrix}
1&0\\
b&1
\end{bmatrix}
$$
generate $\operatorname{SL}_2(\mathbb F_p)$. Indeed, left multiplication by such matrices performs elementary row additions. Given
$$
M=
\begin{bmatrix}
a&b\\
c&d
\end{bmatrix}
\in\operatorname{SL}_2(\mathbb F_p),
$$
if $a\ne0$, a lower elementary matrix kills $c$, and upper elementary matrices together with the identity
$$
\begin{bmatrix}
r&0\\
0&r^{-1}
\end{bmatrix}
=
\begin{bmatrix}
1&r\\
0&1
\end{bmatrix}
\begin{bmatrix}
1&0\\
-r^{-1}&1
\end{bmatrix}
\begin{bmatrix}
1&r\\
0&1
\end{bmatrix}
\begin{bmatrix}
0&-1\\
1&0
\end{bmatrix}
$$
reduce the remaining matrix to the identity; if $a=0$, first interchange the two rows using elementary matrices. Thus the two unipotent subgroups generate $\operatorname{SL}_2$.

Passing to projective classes gives
$$
\langle U,U^-\rangle
=
\operatorname{PSL}_2(\mathbb F_p).
$$
Hence
$$
E\cap F=L^{\operatorname{PSL}_2(\mathbb F_p)}.
$$

Step 5: Compute the requested degree

Since $p$ is odd,
$$
\operatorname{PSL}_2(\mathbb F_p)
$$
has index $2$ in
$$
\operatorname{PGL}_2(\mathbb F_p).
$$
Therefore
$$
[E\cap F:K]=2.
$$

From Step 4,
$$
EF=L.
$$
Thus
$$
[EF:E\cap F]
=
[L:L^{\operatorname{PSL}_2(\mathbb F_p)}]
=
|\operatorname{PSL}_2(\mathbb F_p)|.
$$
Finally,
$$
|\operatorname{PSL}_2(\mathbb F_p)|
=
\frac{|\operatorname{SL}_2(\mathbb F_p)|}{2}
=
\frac{p(p^2-1)}2.
$$

Final Answer: $\boxed{\frac{p(p^2-1)}2}$

---

## Answer

$\frac{p(p^2-1)}2$

---

## Classification

**Problem Type:** Exact computation

**Answer Type:** Exact scalar

---

## Solution Concepts

- rational function fields
- projective linear groups
- fixed fields
- unipotent subgroups
- Galois correspondence
