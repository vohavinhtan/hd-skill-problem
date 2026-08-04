## Steps

Step 1: Condition the chain on upper absorption

Let
$$
h_j=\mathbb P_j(\tau_n<\tau_0)
$$
for $0\leq j\leq n$. The boundary values are
$$
h_0=0,\qquad h_n=1.
$$
For $1\leq j\leq n-1$,
$$
h_j=\frac{j+2}{2j+2}h_{j+1}+\frac{j}{2j+2}h_{j-1}.
$$
Multiplying by $2j+2$ gives
$$
(2j+2)h_j=(j+2)h_{j+1}+jh_{j-1}.
$$
Move the terms with $h_j$ to the two sides:
$$
(j+2)(h_{j+1}-h_j)=j(h_j-h_{j-1}).
$$
Set
$$
d_j=h_j-h_{j-1}.
$$
Then
$$
d_{j+1}=\frac{j}{j+2}d_j.
$$
Iterating from $d_1$ gives
$$
d_j=d_1\prod_{a=1}^{j-1}\frac{a}{a+2}.
$$
The product is
$$
\prod_{a=1}^{j-1}\frac{a}{a+2}
=\frac{1\cdot2\cdots(j-1)}{3\cdot4\cdots(j+1)}.
$$
Since
$$
3\cdot4\cdots(j+1)=\frac{(j+1)!}{2},
$$
we get
$$
\prod_{a=1}^{j-1}\frac{a}{a+2}
=\frac{(j-1)!}{\frac{(j+1)!}{2}}
=\frac{2(j-1)!}{(j+1)!}
=\frac{2}{j(j+1)}.
$$
So
$$
d_j=\frac{2d_1}{j(j+1)}.
$$
Now use $h_n-h_0=1$:
$$
1=\sum_{j=1}^{n}d_j
=d_1\sum_{j=1}^{n}\frac{2}{j(j+1)}.
$$
Because
$$
\frac{2}{j(j+1)}=2\left(\frac{1}{j}-\frac{1}{j+1}\right),
$$
the sum is
$$
\sum_{j=1}^{n}\frac{2}{j(j+1)}
=2\left(1-\frac{1}{n+1}\right)
=\frac{2n}{n+1}.
$$
So
$$
d_1=\frac{n+1}{2n}.
$$
For $1\leq j\leq n$,
$$
h_j=\sum_{a=1}^{j}d_a
=\frac{n+1}{2n}\sum_{a=1}^{j}\frac{2}{a(a+1)}.
$$
The inner sum is
$$
\sum_{a=1}^{j}\frac{2}{a(a+1)}
=2\left(1-\frac{1}{j+1}\right)
=\frac{2j}{j+1}.
$$
So
$$
h_j=\frac{n+1}{2n}\cdot\frac{2j}{j+1}
=\frac{j(n+1)}{n(j+1)}.
$$

The conditioned transition law is
$$
P^*(j,\ell)=P(j,\ell)\frac{h_\ell}{h_j}.
$$
For the upward move,
$$
P^*(j,j+1)
=\frac{j+2}{2j+2}\cdot
\frac{\frac{(j+1)(n+1)}{n(j+2)}}{\frac{j(n+1)}{n(j+1)}}.
$$
Cancel the common factor $\frac{n+1}{n}$:
$$
P^*(j,j+1)
=\frac{j+2}{2(j+1)}\cdot\frac{(j+1)^2}{j(j+2)}
=\frac{j+1}{2j}.
$$
For the downward move, when $j\geq2$,
$$
P^*(j,j-1)
=\frac{j}{2j+2}\cdot
\frac{\frac{(j-1)(n+1)}{nj}}{\frac{j(n+1)}{n(j+1)}}.
$$
Again cancel $\frac{n+1}{n}$:
$$
P^*(j,j-1)
=\frac{j}{2(j+1)}\cdot\frac{(j-1)(j+1)}{j^2}
=\frac{j-1}{2j}.
$$
At $j=1$, the downward probability is $0$ because $h_0=0$.

Step 2: Compute the Green kernel of the conditioned chain

Let $\Gamma_{kr}$ be the expected number of visits to $r$ before hitting $n$ for the conditioned chain started at $k$.

The transition probabilities
$$
\frac{j+1}{2j},\qquad \frac{j-1}{2j}
$$
are exactly the Doob transform of the simple symmetric walk on $\{0,1,\ldots,n\}$ killed at $0$ and $n$, using the harmonic function
$$
\eta_j=\frac{j}{n}.
$$
Indeed,
$$
\frac{1}{2}\frac{\eta_{j+1}}{\eta_j}
=\frac{1}{2}\frac{\frac{j+1}{n}}{\frac{j}{n}}
=\frac{j+1}{2j},
$$
and
$$
\frac{1}{2}\frac{\eta_{j-1}}{\eta_j}
=\frac{1}{2}\frac{\frac{j-1}{n}}{\frac{j}{n}}
=\frac{j-1}{2j}.
$$

Let $K_{ir}$ be the Green kernel for the unconditioned simple symmetric walk killed at $0$ and $n$. For fixed $r$, the function $i\mapsto K_{ir}$ satisfies
$$
K_{0r}=K_{nr}=0,
$$
and
$$
K_{ir}=\mathbf 1_{\{i=r\}}+\frac{1}{2}K_{i-1,r}+\frac{1}{2}K_{i+1,r}.
$$
Away from $i=r$, this says
$$
K_{i+1,r}-K_{ir}=K_{ir}-K_{i-1,r},
$$
so the graph is linear on each side of $r$. Write
$$
K_{ir}=Ai\qquad (0\leq i\leq r)
$$
and
$$
K_{ir}=B(n-i)\qquad (r\leq i\leq n).
$$
Continuity at $i=r$ gives
$$
Ar=B(n-r).
$$
The equation at $i=r$ is
$$
Ar=1+\frac{1}{2}A(r-1)+\frac{1}{2}B(n-r-1).
$$
Using $B=Ar/(n-r)$, this becomes
$$
Ar=1+\frac{1}{2}A(r-1)+\frac{1}{2}\frac{Ar}{n-r}(n-r-1).
$$
Multiply by $2$:
$$
2Ar=2+A(r-1)+\frac{Ar(n-r-1)}{n-r}.
$$
Move the two $A$ terms to the left:
$$
A\left(2r-(r-1)-\frac{r(n-r-1)}{n-r}\right)=2.
$$
The bracket is
$$
2r-(r-1)-\frac{r(n-r-1)}{n-r}
=r+1-\frac{r(n-r-1)}{n-r}.
$$
Put it over denominator $n-r$:
$$
r+1-\frac{r(n-r-1)}{n-r}
=\frac{(r+1)(n-r)-r(n-r-1)}{n-r}.
$$
Expand the numerator:
$$
(r+1)(n-r)-r(n-r-1)
=rn+n-r^2-r-rn+r^2+r
=n.
$$
So
$$
A\frac{n}{n-r}=2,
$$
so
$$
A=\frac{2(n-r)}{n}.
$$
Then
$$
B=\frac{Ar}{n-r}=\frac{2r}{n}.
$$
This gives
$$
K_{ir}=
\begin{cases}
\dfrac{2i(n-r)}{n},& i\leq r,\\
\dfrac{2r(n-i)}{n},& i\geq r.
\end{cases}
$$

Under a Doob transform, a path from $k$ to $r$ before absorption has its probability multiplied by $\eta_r/\eta_k=\frac{r}{k}$. Summing over all possible visit times gives
$$
\Gamma_{kr}=\frac{r}{k}K_{kr}.
$$
So
$$
\Gamma_{kr}=
\begin{cases}
\dfrac{2r(n-r)}{n},& k\leq r,\\
\dfrac{2r^2(n-k)}{kn},& r<k.
\end{cases}
$$

Step 3: Compute the conditional mean of $A$

Let
$$
u_k=\mathbb E_k[A\mid \tau_n<\tau_0].
$$
Since a visit to $r$ contributes $\frac{1}{r}$ to $A$,
$$
u_k=\sum_{r=1}^{n-1}\frac{\Gamma_{kr}}{r}.
$$
Split the sum at $r=k$:
$$
u_k=\sum_{r=1}^{k-1}\frac{1}{r}\frac{2r^2(n-k)}{kn}
+\sum_{r=k}^{n-1}\frac{1}{r}\frac{2r(n-r)}{n}.
$$
The first sum is
$$
\sum_{r=1}^{k-1}\frac{2r(n-k)}{kn}
=\frac{2(n-k)}{kn}\sum_{r=1}^{k-1}r.
$$
Using
$$
\sum_{r=1}^{k-1}r=\frac{k(k-1)}{2},
$$
this becomes
$$
\frac{2(n-k)}{kn}\cdot\frac{k(k-1)}{2}
=\frac{(n-k)(k-1)}{n}.
$$
The second sum is
$$
\sum_{r=k}^{n-1}\frac{2(n-r)}{n}
=\frac{2}{n}\sum_{r=k}^{n-1}(n-r).
$$
The values $n-r$ are $n-k,n-k-1,\ldots,1$, so
$$
\sum_{r=k}^{n-1}(n-r)=\frac{(n-k)(n-k+1)}{2}.
$$
The second sum is
$$
\frac{2}{n}\cdot\frac{(n-k)(n-k+1)}{2}
=\frac{(n-k)(n-k+1)}{n}.
$$
Adding the two parts gives
$$
u_k=\frac{(n-k)(k-1)}{n}
+\frac{(n-k)(n-k+1)}{n}.
$$
Factor $\frac{n-k}{n}$:
$$
u_k=\frac{n-k}{n}\bigl((k-1)+(n-k+1)\bigr)
=\frac{n-k}{n}\cdot n
=n-k.
$$

Step 4: Convert the second moment to another Green-kernel sum

Let
$$
W_k=\mathbb E_k[A^2\mid \tau_n<\tau_0].
$$
Write
$$
f(j)=\frac{1}{j}.
$$
Starting from state $j$, the functional splits as
$$
A=f(j)+A',
$$
where $A'$ is the remaining contribution after the first step. Squaring gives
$$
A^2=f(j)^2+2f(j)A'+(A')^2.
$$
Taking conditional expectation from state $j$ gives
$$
W_j=f(j)^2+2f(j)\mathbb E_j^*[u_{X_1}]+\mathbb E_j^*[W_{X_1}].
$$
The mean equation is
$$
u_j=f(j)+\mathbb E_j^*[u_{X_1}],
$$
so
$$
\mathbb E_j^*[u_{X_1}]=u_j-f(j).
$$
Substitute this into the equation for $W_j$:
$$
W_j=f(j)^2+2f(j)(u_j-f(j))+\mathbb E_j^*[W_{X_1}].
$$
Combine the first two terms:
$$
f(j)^2+2f(j)(u_j-f(j))
=2f(j)u_j-f(j)^2.
$$
So
$$
W_j-\mathbb E_j^*[W_{X_1}]
=2f(j)u_j-f(j)^2.
$$
Since $u_j=n-j$ and $f(j)=\frac{1}{j}$,
$$
2f(j)u_j-f(j)^2
=2\cdot\frac{1}{j}(n-j)-\frac{1}{j^2}
=\frac{2n}{j}-2-\frac{1}{j^2}.
$$
Using the Green kernel to sum this source term,
$$
W_k=\sum_{r=1}^{n-1}\Gamma_{kr}\left(\frac{2n}{r}-2-\frac{1}{r^2}\right).
$$

Step 5: Evaluate the two finite sums and subtract the square of the mean

Split the sum for $W_k$ at $r=k$:
$$
W_k=S_1+S_2,
$$
where
$$
S_1=\sum_{r=1}^{k-1}\frac{2r^2(n-k)}{kn}\left(\frac{2n}{r}-2-\frac{1}{r^2}\right)
$$
and
$$
S_2=\sum_{r=k}^{n-1}\frac{2r(n-r)}{n}\left(\frac{2n}{r}-2-\frac{1}{r^2}\right).
$$

For $S_1$,
$$
S_1=\frac{2(n-k)}{kn}\sum_{r=1}^{k-1}(2nr-2r^2-1).
$$
Use
$$
\sum_{r=1}^{k-1}r=\frac{k(k-1)}{2},
$$
$$
\sum_{r=1}^{k-1}r^2=\frac{(k-1)k(2k-1)}{6},
$$
and
$$
\sum_{r=1}^{k-1}1=k-1.
$$
Then
$$
S_1=\frac{2(n-k)}{kn}
\left(2n\cdot\frac{k(k-1)}{2}
-2\cdot\frac{(k-1)k(2k-1)}{6}
-(k-1)\right).
$$
Factor $k-1$ inside the parentheses:
$$
S_1=\frac{2(n-k)(k-1)}{kn}
\left(nk-\frac{k(2k-1)}{3}-1\right).
$$

For $S_2$, first simplify the summand:
$$
\frac{2r(n-r)}{n}\left(\frac{2n}{r}-2-\frac{1}{r^2}\right)
=\frac{4(n-r)^2}{n}-\frac{2(n-r)}{nr}.
$$
So
$$
S_2=\frac{4}{n}\sum_{r=k}^{n-1}(n-r)^2
-\frac{2}{n}\sum_{r=k}^{n-1}\frac{n-r}{r}.
$$
For the square sum, set $s=n-r$. Then $s$ runs from $n-k$ down to $1$, so
$$
\sum_{r=k}^{n-1}(n-r)^2
=\sum_{s=1}^{n-k}s^2
=\frac{(n-k)(n-k+1)(2n-2k+1)}{6}.
$$
For the reciprocal sum,
$$
\sum_{r=k}^{n-1}\frac{n-r}{r}
=\sum_{r=k}^{n-1}\left(\frac{n}{r}-1\right).
$$
This is
$$
n\sum_{r=k}^{n-1}\frac{1}{r}-\sum_{r=k}^{n-1}1
=n(H_{n-1}-H_{k-1})-(n-k).
$$
This gives
$$
S_2=\frac{2(n-k)(n-k+1)(2n-2k+1)}{3n}
-2(H_{n-1}-H_{k-1})
+\frac{2(n-k)}{n}.
$$

Let
$$
M=n-k.
$$
Since $u_k=n-k=M$,
$$
\operatorname{Var}_k(A\mid \tau_n<\tau_0)=W_k-u_k^2=S_1+S_2-M^2.
$$
The non-harmonic part is
$$
M\left[
\frac{2(k-1)}{kn}\left(nk-\frac{k(2k-1)}{3}-1\right)
+\frac{2(M+1)(2M+1)}{3n}
+\frac{2}{n}
-M
\right].
$$
Put the bracket over the common denominator $3kn$. Its numerator is
$$
2(k-1)(3nk-2k^2+k-3)+2k(M+1)(2M+1)+6k-3knM.
$$
Substitute $M=n-k$. The first term expands as
$$
2(k-1)(3nk-2k^2+k-3)
=-4k^3+6(n+1)k^2-6nk-8k+6.
$$
The second term expands as
$$
2k(M+1)(2M+1)
=2k(n-k+1)(2n-2k+1)
$$
$$
=4kn^2-8nk^2+4k^3+6kn-6k^2+2k.
$$
The last two terms give
$$
6k-3knM=6k-3kn(n-k)=6k-3kn^2+3nk^2.
$$
Adding the three displayed lines, the $k^3$, $k^2$, and $nk$ terms cancel, leaving
$$
kn^2+nk^2+6=kn(n+k)+6.
$$
So
$$
S_1+S_2-M^2
=\frac{M(kn(n+k)+6)}{3kn}
-2(H_{n-1}-H_{k-1}).
$$
Finally replace $M$ by $n-k$:
$$
\operatorname{Var}_k(A\mid \tau_n<\tau_0)
=\frac{(n-k)(kn(n+k)+6)}{3kn}
-2(H_{n-1}-H_{k-1}).
$$

Final Answer: $\boxed{\frac{(n-k)(kn(n+k)+6)}{3kn}-2(H_{n-1}-H_{k-1})}$

---

## Answer

$\frac{(n-k)(kn(n+k)+6)}{3kn}-2(H_{n-1}-H_{k-1})$

---

## Classification

**Problem Type:** Symbolic derivation

**Answer Type:** Exact symbolic expression

**Bonus Pay Category:** Sequence or series representation

---

## Concepts (1-5)

- Doob transform under absorption conditioning.
- Green kernel of a killed simple symmetric walk.
- Reciprocal occupation functional.
- Second-moment source term for additive functionals.
- Harmonic-number evaluation of a finite reciprocal sum.

---

## Black-Box Audit

- Step 1 -- Level 1: the conditioning harmonic function and transformed transition probabilities are derived by displayed algebra.
- Step 2 -- Level 1: the conditioned Green kernel is derived from the killed simple-walk kernel and the Doob-transform factor.
- Step 3 -- Level 1: the mean of the reciprocal occupation functional is computed from two finite sums.
- Step 4 -- Level 1: the second-moment source term is obtained from squaring the additive decomposition.
- Step 5 -- Level 1: every finite sum used in the variance is evaluated explicitly, including the harmonic-number contribution.

---

## Verification

- Small-case check: take $n=3$ and $k=1$. Under the conditioned law, state $1$ moves to $2$ with probability $1$, and state $2$ moves to $3$ with probability $\frac{3}{4}$ or returns to $1$ with probability $\frac{1}{4}$. If $F$ is the number of returns from $2$ to $1$ before the first move from $2$ to $3$, then
$$
A=\frac{3}{2}(F+1).
$$
For a failure count with success probability $\frac{3}{4}$,
$$
\operatorname{Var}(F)=\frac{\frac{1}{4}}{\left(\frac{3}{4}\right)^2}
=\frac{\frac{1}{4}}{\frac{9}{16}}
=\frac{1}{4}\cdot\frac{16}{9}
=\frac{4}{9}.
$$
So
$$
\operatorname{Var}(A)=\frac{9}{4}\cdot\frac{4}{9}=1.
$$
The formula gives
$$
\frac{(3-1)(1\cdot3(3+1)+6)}{3\cdot1\cdot3}
-2(H_2-H_0)
=\frac{2(12+6)}{9}-2\left(1+\frac{1}{2}\right)
=4-3
=1.
$$
- Boundary attack: take $k=n-1$. The answer becomes
$$
\frac{n(n-1)(2n-1)+6}{3n(n-1)}-\frac{2}{n-1}.
$$
Put this over the common denominator $3n(n-1)$:
$$
\frac{n(n-1)(2n-1)+6-6n}{3n(n-1)}
=\frac{(n-1)(n(2n-1)-6)}{3n(n-1)}
=\frac{2n^2-n-6}{3n}.
$$
For $n=3$ this is $1$, and for $n\geq4$ the numerator is larger than $2\cdot16-4-6=22$, so the variance is positive at the upper boundary.
- Counterexample attack: no counterexample found after testing the smallest nontrivial case $n=3,k=1$, the upper-boundary start $k=n-1$, and the positivity requirement for the variance.
- Independent re-derivation: the source term comes from the additive decomposition $A=f(j)+A'$, while the final answer comes from summing that source term against the Green kernel. These two objects meet in the displayed identity
$$
W_k=\sum_{r=1}^{n-1}\Gamma_{kr}\left(\frac{2n}{r}-2-\frac{1}{r^2}\right),
$$
which gives the same small-case value as the direct geometric computation above.
- Accepted-style step certificate: the numbered solution reconstructs the Green kernel from the killed simple-walk kernel and displays every finite sum used to produce the final variance.

---

## Confidence

High, because the answer was derived from a conditioned Green kernel, checked against a direct smallest-case computation, and tested at the boundary case $k=n-1$.
