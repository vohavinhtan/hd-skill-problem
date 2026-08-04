## Steps

Step 1: Reduce to a cokernel

$X_N$ fibres over $S^1$ with fibre $\mathbb T^6$ and monodromy $f_A^N$, which acts on $H_k(\mathbb T^6;\mathbb Z)=\Lambda^k\mathbb Z^6$ by $\Lambda^k(A^N)$. The Wang sequence of this fibration contains
$$H_3(\mathbb T^6;\mathbb Z)\xrightarrow{\ \Lambda^3(A^N)-I\ }H_3(\mathbb T^6;\mathbb Z)\longrightarrow H_3(X_N;\mathbb Z)\longrightarrow H_2(\mathbb T^6;\mathbb Z)\xrightarrow{\ \Lambda^2(A^N)-I\ }H_2(\mathbb T^6;\mathbb Z),$$
so there is a short exact sequence
$$0\longrightarrow\operatorname{coker}\bigl(\Lambda^3(A^N)-I\bigr)\longrightarrow H_3(X_N;\mathbb Z)\longrightarrow\ker\bigl(\Lambda^2(A^N)-I\bigr)\longrightarrow0.$$
The right-hand group is a subgroup of a free abelian group, hence free, so the torsion of $H_3(X_N;\mathbb Z)$ is the torsion of the cokernel. Put $M=\Lambda^3A$, a $20\times20$ integer matrix; then $\Lambda^3(A^N)=M^N$ and the task is the $3$-primary part of $\operatorname{coker}(M^N-I)$.

Step 2: The characteristic polynomial and its reciprocal reduction

The last column of $A$ is $(-1,0,1,1,1,0)^{\mathsf T}$ and the subdiagonal is all $1$, so $A$ is the companion matrix of
$$p(x)=x^6-x^4-x^3-x^2+1 .$$
Then $x^6p(1/x)=p(x)$, so $p$ is reciprocal, and $p(1)=-1$, $p(-1)=1$, so neither $1$ nor $-1$ is a root. The six roots therefore fall into three reciprocal pairs $\{\alpha_i,\alpha_i^{-1}\}$. With $y_i=\alpha_i+\alpha_i^{-1}$ and $x^3+x^{-3}=y^3-3y$,
$$x^{-3}p(x)=(x^3+x^{-3})-(x+x^{-1})-1=y^3-4y-1=:g(y).$$
Hence $e_1(y)=0$, $e_2(y)=-4$, $e_3(y)=1$, and $\sum_iy_i^2=e_1^2-2e_2=8$.

Step 3: Modulo $3$ the matrix $A$ has order $13$

Reducing, $g\equiv y^3-y-1\pmod 3$, which has no root in $\mathbb F_3$ (values $-1,-1,2$ at $0,1,2$), hence is irreducible. Let $\beta$ be a root in $\mathbb F_{27}$, so $\beta^3=\beta+1$, and let $\alpha$ be a root of $p$ modulo $3$ with $\alpha+\alpha^{-1}=\beta$. The quantities $D_k=\alpha^k+\alpha^{-k}$ satisfy $D_0=2$, $D_1=\beta$ and $D_{k+1}=\beta D_k-D_{k-1}$, which gives in $\mathbb F_{27}$
$$D_2=\beta^2+1,\quad D_3=\beta+1,\quad D_4=\beta-1,\quad D_5=\beta^2-2\beta-1,\quad D_6=\beta^2-\beta+2,\quad D_7=\beta^2-\beta+2 .$$
So $D_7=D_6$. Multiplying $\alpha^7+\alpha^{-7}-\alpha^6-\alpha^{-6}=0$ by $\alpha^7$ gives $\alpha^{14}-\alpha^{13}-\alpha+1=(\alpha-1)(\alpha^{13}-1)=0$, and $\alpha\neq1$ because $p(1)=-1\not\equiv0$. Therefore $\alpha^{13}=1$. Every root of $p$ modulo $3$ is a $13$-th root of unity; since $x^{13}-1$ is separable modulo $3$, the reduction of $p$ has six distinct roots and $\bar A$ is semisimple with $\bar A^{13}=I$.

Step 4: The exponent set, and exactly two zero-sum triples

As $p(1)\not\equiv0$, the reduction of $p$ divides $\Phi_{13}$ over $\mathbb F_3$. The order of $3$ modulo $13$ is $3$, so $\Phi_{13}$ splits over $\mathbb F_3$ into four irreducible cubics whose root sets are the $\langle3\rangle$-orbits on $(\mathbb Z/13)^\times$, namely $\{1,3,9\}$, $\{2,5,6\}$, $\{4,10,12\}$, $\{7,8,11\}$. Fix a primitive $13$-th root of unity $\zeta\in\mathbb F_{27}$ and let $E\subset(\mathbb Z/13)^\times$ be the set of exponents of the eigenvalues of $\bar A$, a union of two orbits. Reciprocity of $p$ gives $E=-E$, and $-1\notin\{1,3,9\}$, so negation interchanges the orbits in pairs; hence $E=O\sqcup(-O)$ with $O=\{a,3a,9a\}$ for some $a$.

For a $3$-element subset $T\subseteq E$ write $s(T)$ for the sum of its elements. Multiplication by $a^{-1}$ is a bijection of $E$ onto $\{\pm1,\pm3,\pm9\}$ preserving vanishing of $s$, so the count may be made there. The $20$ triples are: $\{1,3,9\}$ and $\{-1,-3,-9\}$, with $s=\pm13\equiv0$; the $12$ triples containing a reciprocal pair $\{e,-e\}$, with $s\in\{\pm1,\pm3,\pm9\}$; and the $6$ remaining triples $\epsilon_0+3\epsilon_1+9\epsilon_2$ with signs not all equal, with $s\in\{\pm5,\pm7,\pm11\}$. So exactly two triples satisfy $s(T)\equiv0\pmod{13}$.

Step 5: Diagonalise over the unramified cubic extension

Let $W$ be the ring of integers of the unramified cubic extension of $\mathbb Q_3$: a discrete valuation ring with uniformiser $3$, residue field $\mathbb F_{27}$ and normalised valuation $v$. By Step 3 the reduction of $p$ has six distinct roots in $\mathbb F_{27}$, so Hensel's lemma splits $p$ into six distinct linear factors over $W$; write the roots as $\lambda_e\in W^\times$ with $\lambda_e\equiv\zeta^e$, so that $\lambda_{-e}=\lambda_e^{-1}$ by reciprocity. Thus $A$ is diagonalisable over $W$, and in the induced basis of $\Lambda^3W^6$ the matrix $M$ is diagonal with entries $\lambda_T=\prod_{e\in T}\lambda_e$. Hence $M^N-I$ is diagonal with entries $\lambda_T^N-1$ and
$$\operatorname{coker}_W(M^N-I)\cong\bigoplus_T W/3^{\,v(\lambda_T^N-1)} .$$
Since $W$ is free over $\mathbb Z_3$ with $(\mathbb Z_3/3^k)\otimes_{\mathbb Z_3}W=W/3^kW$, the multiset of exponents of the $3$-primary elementary divisors of $M^N-I$ over $\mathbb Z$ is exactly the multiset of the finite values $v(\lambda_T^N-1)$.

Step 6: The determinant pins one valuation

Consider $\det(M-I)=\prod_T(\lambda_T-1)=\prod_T(1-\lambda_T)$, the two products agreeing because there are $20$ factors. A triple containing a reciprocal pair has the form $T=\{e,-e,x\}$ and $\lambda_T=\lambda_x$; each $x$ arises from exactly two such triples, so these $12$ factors contribute $\prod_e(1-\lambda_e)^2=p(1)^2=1$. The remaining $8$ triples pick one element from each pair, giving the products $u=\alpha_1^{\epsilon_1}\alpha_2^{\epsilon_2}\alpha_3^{\epsilon_3}$. Pairing the two choices of $\epsilon_3$, and writing $A=\alpha_1^{\epsilon_1}\alpha_2^{\epsilon_2}$,
$$(1-A\alpha_3)(1-A\alpha_3^{-1})=A^2-y_3A+1 .$$
Pairing next the two choices of $\epsilon_2$ and writing $B=\alpha_1^{\epsilon_1}$, so that $A_\pm=B\alpha_2^{\pm1}$ satisfy $A_+A_-=B^2$ and $A_++A_-=By_2$, expansion gives
$$(A_+^2-y_3A_++1)(A_-^2-y_3A_-+1)=B^4-y_2y_3B^3+(y_2^2+y_3^2-2)B^2-y_2y_3B+1=:F(B).$$
$F$ is reciprocal, so $F(B)=B^2\bigl[(B^2+B^{-2})-y_2y_3(B+B^{-1})+y_2^2+y_3^2-2\bigr]$. Taking $B=\alpha_1$ and $B=\alpha_1^{-1}$, where $B+B^{-1}=y_1$ and $B^2+B^{-2}=y_1^2-2$, the two bracket values coincide and the prefactors $\alpha_1^{2}$, $\alpha_1^{-2}$ cancel, so
$$\prod_{8\ \text{triples}}(1-\lambda_T)=F(\alpha_1)F(\alpha_1^{-1})=\bigl[y_1^2+y_2^2+y_3^2-y_1y_2y_3-4\bigr]^2=(8-1-4)^2=9 .$$
Therefore $\det(M-I)=9$. By Steps 4 and 5, $\lambda_T\equiv1\pmod 3$ holds exactly for the two triples $O$ and $-O$, whose $\lambda$-values are $\lambda_O$ and $\lambda_O^{-1}$; all other factors are units. Hence
$$2=v\bigl(\det(M-I)\bigr)=v(\lambda_O-1)+v(\lambda_O^{-1}-1)=2\,v(\lambda_O-1),\qquad v(\lambda_O-1)=1 .$$

Step 7: Every $\lambda_T^{13}$ lies in $1+3W$ but not in $1+9W$

For $e\in E$ let $\omega_e\in W$ be the Teichmüller lift of $\zeta^e$, so $\omega_e^{13}=1$, and set $u_e=\lambda_e\omega_e^{-1}=1+3t_e$ with $t_e\in W$. For a triple $T$ put $\omega_T=\prod_{e\in T}\omega_e$ and $u_T=\prod_{e\in T}u_e$, so $\lambda_T=\omega_Tu_T$ and $\omega_T^{13}=1$, whence $\lambda_T^{13}=u_T^{13}$. As $13$ is a unit of $\mathbb Z_3$ and $u_T\in1+3W$, lifting the exponent gives $v(u_T^{13}-1)=v(u_T-1)$. Expanding $u_T=\prod_{e\in T}(1+3t_e)$ modulo $9$,
$$u_T\equiv1+3\sum_{e\in T}t_e\pmod 9,\qquad\text{so}\qquad v(\lambda_T^{13}-1)=1\iff\sum_{e\in T}\bar t_e\neq0\ \text{in }\mathbb F_{27}.$$
The Frobenius of $W$ sends $\lambda_e\mapsto\lambda_{3e}$ and $\omega_e\mapsto\omega_{3e}$, hence $\bar t_{3e}=\bar t_e^{\,3}$; and $\lambda_{-e}=\lambda_e^{-1}$ forces $u_{-e}=u_e^{-1}$, hence $\bar t_{-e}=-\bar t_e$. Write $\tau=\bar t_a$ and $c=\tau+\tau^3+\tau^9=\operatorname{Tr}_{\mathbb F_{27}/\mathbb F_3}(\tau)\in\mathbb F_3$. Using the classification of triples from Step 4, the $20$ sums $\sum_{e\in T}\bar t_e$ are $\pm c$ for $O$ and $-O$; $\pm\tau^{3^j}$ for the $12$ triples containing a reciprocal pair; and, since $-2=1$ in $\mathbb F_3$, $\pm(c+\tau^{3^j})$ for the $6$ mixed triples.

For $T=O$ we have $s(O)\equiv0$, so $\omega_O=1$ and $u_O=\lambda_O$; Step 6 gives $v(u_O-1)=1$, that is $c\neq0$. Consequently $\tau\notin\mathbb F_3$, for otherwise $c=3\tau=0$; in particular $\tau\neq0$, and $\tau^{3^j}\neq-c$ because $-c$ lies in $\mathbb F_3$ while $\tau^{3^j}$ does not. All $20$ sums are nonzero, so $v(\lambda_T^{13}-1)=1$ for every triple $T$.

Step 8: The elementary divisors

Fix $N$ and a triple $T$. Reduction modulo $3$ gives $\bar\lambda_T^{\,N}=\zeta^{Ns(T)}$, so $v(\lambda_T^N-1)>0$ if and only if $Ns(T)\equiv0\pmod{13}$.

If $13\nmid N$, this says $s(T)\equiv0$, which by Step 4 holds only for $O$ and $-O$. For those, $\lambda_T\equiv1\pmod3$ with $v(\lambda_T-1)=1$ by Step 6, so lifting the exponent at the odd prime $3$ gives $v(\lambda_T^N-1)=v(\lambda_T-1)+v_3(N)=1+v_3(N)$.

If $13\mid N$, the condition holds for all $20$ triples. Writing $\lambda_T^N=(\lambda_T^{13})^{N/13}$ and using Step 7 together with $v_3(N/13)=v_3(N)$, we get $v(\lambda_T^N-1)=1+v_3(N/13)=1+v_3(N)$.

Every positive exponent therefore equals $1+v_3(N)$, and each is finite, so no $\lambda_T^N$ equals $1$ and the cokernel is finite. The number of contributing triples is $2$ when $13\nmid N$ and $20$ when $13\mid N$; as $\gcd(N,13)$ is $1$ or $13$ in these two cases, that number is $\tfrac12(3\gcd(N,13)+1)$.

Step 9: Conclusion

By Step 1 the elements of $3$-power order in $H_3(X_N;\mathbb Z)$ form the $3$-primary part of $\operatorname{coker}(M^N-I)$, which by Steps 5 and 8 is a sum of $\tfrac12(3\gcd(N,13)+1)$ copies of $\mathbb Z/3^{\,v_3(N)+1}\mathbb Z$.

Final Answer: $\boxed{\left(\mathbb{Z}/3^{v_3(N)+1}\mathbb{Z}\right)^{\frac{3\gcd(N,13)+1}{2}}}$

---

## Answer

$\left(\mathbb{Z}/3^{v_3(N)+1}\mathbb{Z}\right)^{\frac{3\gcd(N,13)+1}{2}}$

---

## Solution Concepts

Wang exact sequence for mapping tori; exterior powers of an integer matrix; reciprocal characteristic polynomials and Dickson recursion; unramified 3-adic diagonalisation with Teichmüller decomposition; lifting the exponent

---

## Classification

Domain/Sub-domain: Topology and Geometry / Algebraic topology

Problem Type: Exact computation

Answer Type: Canonical form

---

## Black-Box Audit

Step 1: Level 1. The Wang sequence and the identification of the monodromy action on $\Lambda^k\mathbb Z^6$ are standard named results, and the freeness of the kernel term is argued explicitly.
Step 2: Level 1. The companion form, the reciprocity check, and the substitution $y=x+x^{-1}$ are displayed in full.
Step 3: Level 1. The Dickson recursion is evaluated term by term, and the passage from $D_7=D_6$ to $\alpha^{13}=1$ is an exhibited factorisation, not an assertion.
Step 4: Level 1. The orbit decomposition of $(\mathbb Z/13)^\times$ is listed, and all $20$ triples are classified into three explicit families with their sums.
Step 5: Level 1. Hensel splitting and the base-change statement for elementary divisors are stated with the hypotheses that make them apply.
Step 6: Level 1. The determinant is factored by an exhibited two-stage pairing, and the closing symmetric-function substitution uses only the values computed in Step 2.
Step 7: Level 1. The Teichmüller decomposition, the Frobenius and reciprocity transformation rules, and the reduction of all $20$ conditions to $c\neq0$ are each derived.
Step 8: Level 1. Both parity cases of the divisibility by $13$ are treated, and the exponent-lifting hypotheses are checked.
No Level 2 or Level 3 finding.

---

## Verification

Check 1 (independent global computation): pass. The Smith normal form of $(\Lambda^3A)^N-I$ was computed over $\mathbb Z$ by integer row and column reduction for $N=1,2,3,4,5,6,9,12,13,18,26,27,39$. The $3$-primary elementary divisors are $(3,3)$ for $N=1,2,4,5$; $(9,9)$ for $N=3,6,12$; $(27,27)$ for $N=9,18$; $(81,81)$ for $N=27$; twenty copies of $3$ for $N=13,26$; and twenty copies of $9$ for $N=39$. Every value agrees with $\bigl(\mathbb Z/3^{v_3(N)+1}\bigr)^{(3\gcd(N,13)+1)/2}$.

Check 2 (order of the reduction): pass. The order of $A$ in $\operatorname{GL}_6(\mathbb F_3)$ was computed by repeated multiplication and equals $13$, confirming Step 3 independently of the Dickson recursion. The exponent set of the eigenvalues in $\mathbb F_{27}$ is $\{2,5,6,7,8,11\}$, which is $O\sqcup(-O)$ for $O=\{2,5,6\}$, as Step 4 predicts.

Check 3 (determinant certificate): pass. The four values $u_j+u_j^{-1}$ of Step 6 are the roots of $z^4-z^3+1$, whose value at $z=2$ is $9$, matching the closed-form evaluation $(8-1-4)^2=9$. Newton lifting the root $z\equiv2\pmod3$ of $z^4-z^3+1$ inside $\mathbb Z_3$ gives $v_3(z-2)=2$, hence $v_3(\lambda_O-1)=1$, confirming Step 6 by a second route.

Check 4 (counterexample attack): no counterexample found. Necessity attack: the answer excludes rank $20$ for $13\nmid N$; searching all $N\leq40$ with $13\nmid N$ produced no case with more than two invariant factors divisible by $3$. Sufficiency attack: every listed $N$ was checked to realise the predicted group exactly. Boundary attack: $N=1$ (empty $3$-part exponent), $N=3$ and $N=9$ (increasing $v_3$), $N=13$ (first multiple of $13$), and $N=39$ (both divisibilities simultaneously) were each tested, and the two mechanisms compose as predicted rather than interfering.

Check 5 (answer format): pass. The boxed string and the Answer field agree character for character. Stripped of `$` and whitespace the answer has $72$ characters, under the $100$-character limit. The expression contains no case distinction and no summation sign.

---

## Confidence

High. The mod-$3$ rank and the $3$-adic exponent are established by independent arguments, the single quantitative input $v(\lambda_O-1)=1$ is certified twice (by the determinant identity and by Hensel lifting inside $z^4-z^3+1$), and an exact integer Smith normal form computation reproduces the predicted group for thirteen values of $N$ covering both divisibility regimes.
