```markdown id="ifnfcq"
## Steps

Step 1: Find the coalescing scale and the reference moments

Put
$$
\varepsilon=n^{-1/6},
\qquad
x=\varepsilon u,
\qquad
\lambda=\varepsilon^2a.
$$
Then
$$
n x^2(x^2-\lambda)^2(1+x^2)
=
u^2(u^2-a)^2(1+\varepsilon^2u^2).
$$
After removing the positive common factor from the bracket and the Jacobian, the equation for $\lambda_n$ becomes
$$
F(a,\varepsilon)=0,
$$
where
$$
F(a,\varepsilon)
=
\int_{-\infty}^{\infty}
H(u)
e^{-u^2(u^2-a)^2(1+\varepsilon^2u^2)}\,du
$$
and
$$
H(u)=
u^8
-\frac{7-36R^3}{6(1-12R^3)}u^2
+\frac{2R}{3(1-12R^3)}.
$$

Let $\langle\cdot\rangle$ denote expectation under the probability density proportional to $e^{-u^6}$ on $\mathbb R$. For even $j$,
$$
m_j:=\langle u^j\rangle
=
\frac{\Gamma(\frac{j+1}{6})}{\Gamma(\frac16)}.
$$
Hence
$$
m_2=R.
$$
The reflection identity
$$
\Gamma\!\left(\frac16\right)
\Gamma\!\left(\frac56\right)=2\pi
$$
gives
$$
m_4=2R^2.
$$
Integration by parts yields
$$
m_{j+6}=\frac{j+1}{6}m_j.
$$
In particular,
$$
m_6=\frac16,
\qquad
m_8=\frac R2,
\qquad
m_{10}=\frac{5R^2}{3},
$$
$$
m_{12}=\frac7{36},
\qquad
m_{14}=\frac{3R}{4},
\qquad
m_{16}=\frac{55R^2}{18},
\qquad
m_{20}=\frac{15R}{8}.
$$

Strict Cauchy-Schwarz applied to $u^2$ and $u^4$ gives
$$
m_4^2<m_2m_6.
$$
Therefore
$$
4R^4<\frac R6,
$$
so
$$
24R^3<1.
$$
All denominators occurring below are consequently nonzero.

Step 2: Identify the hidden double cancellation

Write
$$
c=\frac{7-36R^3}{6(1-12R^3)},
\qquad
d=\frac{2R}{3(1-12R^3)}.
$$
Then
$$
H(u)=u^8-cu^2+d.
$$
Using the moments from Step 1,
$$
\langle H\rangle
=
m_8-cm_2+d
=0.
$$
Also
$$
\langle Hu^4\rangle
=
m_{12}-cm_6+dm_4
=0.
$$

The second identity is the extra degeneracy: the usual linear response of the implicit equation with respect to $a$ vanishes.

Indeed,
$$
\left.
\frac{\partial}{\partial a}
e^{-u^2(u^2-a)^2}
\right|_{a=0}
=
2u^4e^{-u^6},
$$
so both the constant term and the first derivative of $F$ with respect to $a$ vanish at $(0,0)$.

Step 3: Expand the degenerate implicit equation

Relative to $e^{-u^6}$, the exponent correction is
$$
P=
2au^4-a^2u^2-\varepsilon^2u^8
+2a\varepsilon^2u^6
+O(a^2\varepsilon^2).
$$
Keeping terms of total degree at most three in $a,\varepsilon$,
$$
e^P=
1+2au^4
+a^2(2u^8-u^2)
-\varepsilon^2u^8
$$
$$
\qquad
+a^3\left(\frac43u^{12}-2u^6\right)
+2a\varepsilon^2(u^6-u^{12})
+O_4,
$$
where $O_4$ contains only terms of total degree at least four.

The two cancellations from Step 2 remove the first two terms after integration. Therefore
$$
F(a,\varepsilon)
=
A a^2+B\varepsilon^2
+C a^3+D a\varepsilon^2
+O(a^4+a^2\varepsilon^2+\varepsilon^4),
$$
apart from the fixed positive factor $\int_{\mathbb R}e^{-u^6}\,du$.

The four coefficients are
$$
A=
\left\langle
H(2u^8-u^2)
\right\rangle,
$$
$$
B=-\langle Hu^8\rangle,
$$
$$
C=
\left\langle
H\left(\frac43u^{12}-2u^6\right)
\right\rangle,
$$
and
$$
D=
2\langle H(u^6-u^{12})\rangle.
$$
Substitution of the moment list from Step 1 gives
$$
A=
\frac{2R^2(13-204R^3)}
{9(1-12R^3)},
$$
$$
B=
-\frac{R^2(13-240R^3)}
{9(1-12R^3)},
$$
$$
C=
\frac{R(77-972R^3)}
{81(1-12R^3)},
$$
and
$$
D=
-\frac{2R(23-324R^3)}
{27(1-12R^3)}.
$$

Because $24R^3<1$,
$$
A>0,
\qquad
B<0.
$$

Step 4: Resolve the fractional implicit branch

Since the linear term in $a$ vanished, the scale is not $a=O(\varepsilon^2)$. Put
$$
a=\varepsilon b.
$$
Then Step 3 gives
$$
\frac{F(\varepsilon b,\varepsilon)}{\varepsilon^2}
=
Ab^2+B
+\varepsilon(Cb^3+Db)
+O(\varepsilon^2).
$$
At $\varepsilon=0$ the two roots are
$$
b=\pm\kappa,
$$
where
$$
\kappa^2=-\frac BA
=
\frac{13-240R^3}{2(13-204R^3)}.
$$
Both roots are simple because $A\kappa\neq0$. The implicit-function theorem therefore gives one positive root
$$
b(\varepsilon)=\kappa+\ell\varepsilon+O(\varepsilon^2).
$$
Since $F(0,\varepsilon)=B\varepsilon^2+O(\varepsilon^4)<0$ and the first positive local zero is the branch above, it corresponds to the smallest positive solution in the statement.

Substitute
$$
b=\kappa+\ell\varepsilon+O(\varepsilon^2)
$$
into the divided equation. The coefficient of $\varepsilon$ is
$$
2A\kappa\ell+C\kappa^3+D\kappa.
$$
Hence
$$
\ell=-\frac{C\kappa^2+D}{2A}.
$$
Using the displayed expressions for $A,C,D$ and $\kappa^2$ gives
$$
\ell=
\frac{
559872R^6-75732R^3+2587
}
{
72R(13-204R^3)^2
}.
$$

Step 5: Return to $\lambda_n$ and evaluate the limit

Recall that
$$
\lambda_n=\varepsilon^2a
$$
and
$$
a=\varepsilon b(\varepsilon).
$$
Therefore
$$
\lambda_n
=
\kappa\varepsilon^3
+\ell\varepsilon^4
+O(\varepsilon^5).
$$
Since
$$
\varepsilon^3=n^{-1/2},
\qquad
\varepsilon^4=n^{-2/3},
$$
we have
$$
\lambda_n
=
\sqrt{
\frac{13-240R^3}{2(13-204R^3)}
}\,n^{-1/2}
+
\frac{
559872R^6-75732R^3+2587
}{
72R(13-204R^3)^2
}
n^{-2/3}
+O(n^{-5/6}).
$$
The requested normalization isolates the second coefficient.

Final Answer: $\boxed{\frac{559872R^6-75732R^3+2587}{72R(13-204R^3)^2}}$

---

## Answer

$\frac{559872R^6-75732R^3+2587}{72R(13-204R^3)^2}$

---

## Classification

**Domain:** Calculus

**Sub-domain:** Limits and continuity

**Problem Type:** Exact computation

**Answer Type:** Exact scalar

---

## Solution Concepts

- degenerate implicit limits
- coalescing scales
- gamma-function moments
- moment cancellation
- fractional asymptotic branches
