## Steps

Step 1: Convert the determinant to a four-point integral

Put
$$
\phi(x)=x\left(x-\frac13\right)(1-x)
$$
and
$$
Z_N=\int_0^1e^{-N\phi(x)^2}\,dx.
$$
The moment determinant identity gives
$$
H_N
=
\frac{1}{24Z_N^4}
\int_{[0,1]^4}
\prod_{1\leq i<j\leq4}(x_i-x_j)^2
\exp\!\left(-N\sum_{i=1}^4\phi(x_i)^2\right)
\,dx_1\cdots dx_4.
$$

Write
$$
\varepsilon=N^{-1/2}.
$$
The zeros of $\phi$ are
$$
r_0=0,\qquad r_1=\frac13,\qquad r_2=1.
$$
Each integration variable is exponentially concentrated within $O(\varepsilon)$ of one of these three points.

With four variables and three wells, the smallest possible number of small pairwise differences occurs for an occupancy pattern $2+1+1$. It contributes one squared difference of order $\varepsilon^2$. The patterns $2+2$, $3+1$, and $4$ contain at least two small squared differences and contribute only $O(\varepsilon^4)$ to $H_N$. Therefore terms through order $\varepsilon^3$ come only from the three $2+1+1$ patterns.

Step 2: Obtain the local branch expansions

Near a root $r$, write a branch as
$$
x=r+ez,
\qquad
z\geq0,
$$
where $e=\pm1$ points into the interval. On that branch write
$$
|\phi(r+ez)|
=
az+bz^2+O(z^3).
$$
The four branches give
$$
(r,e,a,b)
=
\left(0,1,\frac13,-\frac43\right),
$$
$$
(r,e,a,b)
=
\left(\frac13,1,\frac29,\frac13\right),
\qquad
\left(\frac13,-1,\frac29,-\frac13\right),
$$
and
$$
(r,e,a,b)
=
\left(1,-1,\frac23,-\frac53\right).
$$

Set
$$
u=\frac{|\phi(x)|}{\varepsilon}.
$$
Inverting the local expansion gives
$$
z=
\frac{\varepsilon u}{a}
-
\frac{b\varepsilon^2u^2}{a^3}
+
O(\varepsilon^3),
$$
and
$$
|dx|
=
\frac{\varepsilon}{a}
\left(
1-\frac{2b}{a^2}\varepsilon u+O(\varepsilon^2)
\right)du.
$$

Let
$$
I_m=\int_0^\infty u^me^{-u^2}\,du
=
\frac12\Gamma\!\left(\frac{m+1}{2}\right).
$$
If
$$
R_{j,m}
=
\int_{\text{near }r_j}
(x-r_j)^m e^{-\phi(x)^2/\varepsilon^2}\,dx,
$$
then summing the branches at $r_j$ gives
$$
R_{j,m}
=
\varepsilon^{m+1}
\left(c_{j,m}+\varepsilon d_{j,m}+O(\varepsilon^2)\right),
$$
where
$$
c_{j,m}
=
I_m\sum\frac{e^m}{a^{m+1}},
$$
$$
d_{j,m}
=
-(m+2)I_{m+1}
\sum\frac{e^mb}{a^{m+3}}.
$$

For $m\leq3$, the needed coefficients are
$$
\begin{array}{c|cccc}
r_j
&
c_{j,0}
&
d_{j,0}
&
c_{j,1}
&
d_{j,1}
\\ \hline
0
&
\frac{3\sqrt\pi}{2}
&
36
&
\frac92
&
81\sqrt\pi
\\
\frac13
&
\frac{9\sqrt\pi}{2}
&
0
&
0
&
-\frac{6561\sqrt\pi}{32}
\\
1
&
\frac{3\sqrt\pi}{4}
&
\frac{45}{8}
&
-\frac98
&
-\frac{405\sqrt\pi}{64}
\end{array}
$$
and
$$
\begin{array}{c|cccc}
r_j
&
c_{j,2}
&
d_{j,2}
&
c_{j,3}
\\ \hline
0
&
\frac{27\sqrt\pi}{4}
&
648
&
\frac{81}{2}
\\
\frac13
&
\frac{729\sqrt\pi}{16}
&
0
&
0
\\
1
&
\frac{27\sqrt\pi}{32}
&
\frac{405}{16}
&
-\frac{81}{32}
\end{array}.
$$

In particular,
$$
Z_N
=
\varepsilon
\left(
Z_0+\varepsilon Z_1+O(\varepsilon^2)
\right),
$$
with
$$
Z_0=\frac{27\sqrt\pi}{4},
\qquad
Z_1=\frac{333}{8}.
$$

Step 3: Compute the repeated-pair local integrals

For the well $r_j$, put
$$
W_j=R_{j,0},
\qquad
M_j=R_{j,1},
\qquad
S_j=R_{j,2},
\qquad
T_j=R_{j,3}.
$$
For two independent local variables around the same root, define
$$
P_j
=
\iint(\xi_1-\xi_2)^2\,d\nu_j(\xi_1)d\nu_j(\xi_2),
$$
and
$$
Q_j
=
\iint(\xi_1-\xi_2)^2(\xi_1+\xi_2)
\,d\nu_j(\xi_1)d\nu_j(\xi_2),
$$
where $d\nu_j=e^{-\phi(x)^2/\varepsilon^2}dx$ on the corresponding neighborhood.

Expanding the products gives
$$
P_j=2(W_jS_j-M_j^2),
$$
$$
Q_j=2(W_jT_j-M_jS_j).
$$
Using Step 2,
$$
P_j
=
\varepsilon^4
\left(p_j+\varepsilon p'_j+O(\varepsilon^2)\right),
$$
$$
Q_j
=
\varepsilon^5
\left(q_j+O(\varepsilon)\right),
$$
with
$$
(p_0,p'_0,q_0)
=
\left(
\frac{81(\pi-2)}4,
972\sqrt\pi,
\frac{243\sqrt\pi}{4}
\right),
$$
$$
(p_1,p'_1,q_1)
=
\left(
\frac{6561\pi}{16},
0,
0
\right),
$$
and
$$
(p_2,p'_2,q_2)
=
\left(
\frac{81(\pi-2)}{64},
\frac{1215\sqrt\pi}{64},
-\frac{243\sqrt\pi}{128}
\right).
$$

Step 4: Assemble the three two-one-one configurations

Suppose the repeated well is $r$, while the other two roots are $s,t$. Write
$$
A=r-s,
\qquad
B=r-t,
\qquad
C=s-t.
$$
For local displacements $\xi_1,\xi_2,\eta,\theta$, the five cross-well squared differences satisfy
$$
\prod_{\text{cross pairs}}(x_i-x_j)^2
=
A^4B^4C^2
\left[
1+c_r(\xi_1+\xi_2)+c_s\eta+c_t\theta+O(\varepsilon^2)
\right],
$$
where
$$
c_r=\frac2A+\frac2B,
$$
$$
c_s=-\frac4A+\frac2C,
\qquad
c_t=-\frac4B-\frac2C.
$$

There are $12$ labelled assignments for each choice of repeated well, while the determinant formula contributes the factor $1/24$. The contribution of one repeated root is therefore one half of
$$
A^4B^4C^2
\left[
P_rW_sW_t
+
c_rQ_rW_sW_t
+
c_sP_rM_sW_t
+
c_tP_rW_sM_t
\right]
$$
through order $\varepsilon^7$.

Substitution of the coefficients from Steps 2 and 3 gives the following contributions to the coefficients of $\varepsilon^6$ and $\varepsilon^7$ in the unnormalized determinant integral:
$$
\begin{array}{c|cc}
\text{repeated root}
&
U_0
&
U_1
\\ \hline
0
&
\frac{3\pi(\pi-2)}{16}
&
\frac{9\sqrt\pi(2+7\pi)}{16}
\\
\frac13
&
\frac{9\pi^2}{16}
&
-\frac{405\pi^{3/2}}{32}
\\
1
&
\frac{3\pi(\pi-2)}{32}
&
\frac{9\sqrt\pi(\pi+8)}{64}
\end{array}.
$$
Therefore
$$
U_0=\frac{9\pi(3\pi-2)}{32},
$$
$$
U_1=\frac{9\sqrt\pi(16-61\pi)}{64}.
$$

Step 5: Extract the first two terms of $H_N$

Steps 1 and 4 give
$$
H_N
=
\frac{
\varepsilon^6U_0+\varepsilon^7U_1+O(\varepsilon^8)
}{
\varepsilon^4
\left(Z_0+\varepsilon Z_1+O(\varepsilon^2)\right)^4
}.
$$
Therefore
$$
H_N
=
c\varepsilon^2+d\varepsilon^3+O(\varepsilon^4),
$$
where
$$
c=\frac{U_0}{Z_0^4}
=
\frac{8(3\pi-2)}{59049\pi},
$$
and
$$
d
=
\frac{U_1}{Z_0^4}
-
4\frac{Z_1U_0}{Z_0^5}
=
\frac{4(344-627\pi)}{177147\pi^{3/2}}.
$$
Since $\varepsilon=N^{-1/2}$,
$$
NH_N
=
c+dN^{-1/2}+O(N^{-1}).
$$

Step 6: Evaluate the scale difference

Replacing $N$ by $4N$ in Step 5 gives
$$
(4N)H_{4N}
=
c+\frac d2N^{-1/2}+O(N^{-1}).
$$
Therefore
$$
NH_N-(4N)H_{4N}
=
\frac d2N^{-1/2}+O(N^{-1}).
$$
Multiplication by $\sqrt N$ leaves $d/2$.

Final Answer: $\boxed{\frac{2(344-627\pi)}{177147\pi^{3/2}}}$

---

## Answer

$\frac{2(344-627\pi)}{177147\pi^{3/2}}$

---

## Classification

**Problem Type:** Exact computation

**Answer Type:** Exact scalar

---

## Solution Concepts

- Laplace asymptotics
- Hankel moment determinants
- Vandermonde determinant identity
- multiple concentration points
- asymptotic cancellation
