## Steps

Step 1: Recover the hidden symmetric coordinates

Let
$$
C_Q:\quad X^n+Y^n+Z^n=0,
\qquad
n=Q-1=18M.
$$
Since $Q\equiv19\pmod{36}$, the integer $M$ is odd. The characteristic is not $2$ or $3$. It is not $5$ either, because $Q\equiv3\pmod4$, whereas every power of $5$ is $1\pmod4$.

Set
$$
S=X^{18}+Y^{18}+Z^{18},
$$
and define
$$
\alpha=\frac{X^{18}}S,
\qquad
\beta=\frac{Y^{18}}S,
\qquad
\gamma=\frac{Z^{18}}S.
$$
Then
$$
\alpha+\beta+\gamma=1.
$$
Write
$$
e_2=\alpha\beta+\beta\gamma+\gamma\alpha,
\qquad
e_3=\alpha\beta\gamma.
$$
The given generators are
$$
u=\alpha^2+\beta^2+\gamma^2,
\qquad
v=\alpha^5+\beta^5+\gamma^5.
$$
Newton's identities give
$$
u=1-2e_2
$$
and
$$
v=1-5e_2+5e_2^2+5(1-e_2)e_3.
$$
Hence
$$
e_2=\frac{1-u}{2},
\qquad
e_3=
\frac{v-1+5e_2-5e_2^2}{5(1-e_2)}.
$$
Here $1-e_2$ is nonzero in the function field. Otherwise $u=-1$ identically, so the nonzero homogeneous polynomial
$$
X^{36}+Y^{36}+Z^{36}+(X^{18}+Y^{18}+Z^{18})^2
$$
would vanish on the irreducible degree-$n$ Fermat curve, impossible because its degree is $36<n$.

Thus $K_Q$ contains $e_2,e_3$, and $\alpha,\beta,\gamma$ are the roots of
$$
T^3-T^2+e_2T-e_3.
$$

Step 2: Identify the fixed field

Choose a primitive eighteenth root $\xi\in\mathbb F_Q$. Let $E$ be the projective diagonal group
$$
d_{r,s}[X:Y:Z]=[\xi^rX:\xi^sY:Z],
\qquad
r,s\in\mathbb Z/18\mathbb Z.
$$
Then
$$
|E|=18^2=324.
$$
Coordinate permutations normalize $E$, so
$$
G=E\rtimes S_3
$$
has order
$$
|G|=1944.
$$
The functions $u,v$ are symmetric in $\alpha,\beta,\gamma$, hence are fixed by $G$, and therefore
$$
K_Q\subseteq L_Q^G.
$$

Conversely, $e_2,e_3$ determine the unordered triple $\{\alpha,\beta,\gamma\}$, so there are at most six orderings. On $Z=1$,
$$
x^{18}=\frac{\alpha}{\gamma},
\qquad
y^{18}=\frac{\beta}{\gamma},
$$
giving at most $18^2$ choices after an ordering is chosen. Thus
$$
[L_Q:K_Q]\leq6\cdot18^2=1944.
$$
The group $G$ supplies $1944$ distinct $K_Q$-automorphisms of $L_Q$, so equality holds:
$$
K_Q=L_Q^G.
$$

Step 3: Count diagonal and transposition fixed points

The Fermat curve is smooth because the characteristic does not divide $n$, and
$$
2g(C_Q)-2=n(n-3).
$$
The action is tame because the characteristic does not divide $1944$.

A nonidentity $d_{r,s}$ can fix a point of $C_Q$ only if two of
$$
\xi^r,\qquad\xi^s,\qquad1
$$
are equal, since no coordinate point lies on $C_Q$. Thus one of
$$
r=0,\qquad s=0,\qquad r=s
$$
must hold. Excluding the identity gives $17$ elements of each type, and each fixes a coordinate line meeting $C_Q$ in exactly $n$ points. Hence
$$
R_E=51n.
$$

Let $\tau$ exchange $X$ and $Y$. An element of $E\tau$ has the form
$$
g_{r,s}[X:Y:Z]=[\xi^rY:\xi^sX:Z].
$$
Put
$$
k\equiv r+s\pmod{18}.
$$
Each $k$ occurs for exactly $18$ pairs $(r,s)$. The two eigenvalues on the $X,Y$ block satisfy
$$
\lambda^2=\xi^k.
$$
For $k=0$, the $1$-eigenspace is a projective line meeting $C_Q$ in $n$ points, while the isolated $-1$ eigenline is not on $C_Q$. These elements contribute $18n$.

For $k\neq0$, only the two eigenlines in $Z=0$ can contribute. On either,
$$
\left(\frac YX\right)^n
=
\lambda^n
=
\xi^{9Mk}
=
(-1)^k,
$$
because $M$ is odd. Hence both eigenlines lie on $C_Q$ exactly for odd $k$. There are nine odd residues, so one transposition coset contributes
$$
18n+9\cdot18\cdot2=18n+324.
$$
All three transposition cosets contribute
$$
R_T=54n+972.
$$

Step 4: Count the residue-sensitive three-cycle contribution

Let
$$
c[X:Y:Z]=[Y:Z:X].
$$
An element of $Ec$ can be written
$$
g[X:Y:Z]=[\xi^rY:\xi^sZ:X].
$$
At an eigenline with eigenvalue $\lambda$,
$$
\lambda^3=\xi^{r+s}.
$$
All coordinates are nonzero. With
$$
t=\lambda^n,
$$
the Fermat equation on that eigenline is
$$
t+t^{-1}+1=0.
$$
Since $t^3=1$, this holds exactly when $t\neq1$. Moreover
$$
t=\xi^{6M(r+s)}.
$$

If $3\mid M$, then $t=1$ for every $r,s$, so $Ec$ contributes nothing. If $3\nmid M$, then $t\neq1$ exactly when $3\nmid r+s$. There are
$$
18\cdot12=216
$$
such elements, and each has three fixed eigenlines on $C_Q$. Thus $Ec$ contributes $648$, and the same is true for $Ec^2$.

Let $\delta_Q=1$ if $3\nmid M$ and $\delta_Q=0$ if $3\mid M$. The total fixed-point contribution is
$$
R=105n+972+1296\delta_Q.
$$

Step 5: Obtain the genus at the three linked scales

Tame Riemann-Hurwitz gives
$$
n(n-3)
=
1944\bigl(2g(K_Q)-2\bigr)
+
105n+972+1296\delta_Q.
$$
Therefore
$$
3888g(K_Q)
=
(Q-55)^2-1296\delta_Q.
$$

Now impose the limit condition $Q\equiv19\pmod{108}$. Then
$$
M=\frac{Q-1}{18}\equiv1\pmod6,
$$
so $\delta_Q=1$ and
$$
3888g(K_Q)=(Q-55)^2-1296.
$$

For $Q^3$,
$$
\frac{Q^3-1}{18}
=
\frac{Q-1}{18}(Q^2+Q+1).
$$
Because $Q\equiv1\pmod3$, the second factor is divisible by $3$, so
$$
\delta_{Q^3}=0.
$$
The same argument applies to $Q^9=(Q^3)^3$, giving $\delta_{Q^9}=0$. Hence
$$
3888g(K_{Q^3})=(Q^3-55)^2,
$$
$$
3888g(K_{Q^9})=(Q^9-55)^2.
$$

Step 6: Evaluate the second-order scale comparison

Set
$$
A_Q=\sqrt{(Q-55)^2-1296}.
$$
Then
$$
\sqrt{g(K_Q)}=\frac{A_Q}{\sqrt{3888}},
$$
$$
\sqrt{g(K_{Q^3})}=\frac{Q^3-55}{\sqrt{3888}},
\qquad
\sqrt{g(K_{Q^9})}=\frac{Q^9-55}{\sqrt{3888}}.
$$

Since
$$
A_Q
=
Q\sqrt{1-\frac{110}{Q}+\frac{1729}{Q^2}},
$$
the expansion
$$
\sqrt{1+z}=1+\frac z2-\frac{z^2}{8}+O(z^3)
$$
gives
$$
\frac{A_Q}{Q}
=
1-\frac{55}{Q}-\frac{648}{Q^2}+O(Q^{-3}).
$$
Therefore
$$
\frac{Q}{A_Q}
=
1+\frac{55}{Q}+\frac{3673}{Q^2}+O(Q^{-3}).
$$
It follows that
$$
\frac{\sqrt{g(K_{Q^3})}}
{Q^2\sqrt{g(K_Q)}}
=
\left(1-\frac{55}{Q^3}\right)\frac{Q}{A_Q}
=
1+\frac{55}{Q}+\frac{3673}{Q^2}+O(Q^{-3}).
$$

Also
$$
\frac{\sqrt{g(K_{Q^9})}}
{Q^6\sqrt{g(K_{Q^3})}}
=
\frac{1-\frac{55}{Q^9}}
{1-\frac{55}{Q^3}}
=
1+\frac{55}{Q^3}+O(Q^{-6}).
$$
Hence
$$
Q^2\left[
\frac{\sqrt{g(K_{Q^3})}}
{Q^2\sqrt{g(K_Q)}}-1
-
Q^2\left(
\frac{\sqrt{g(K_{Q^9})}}
{Q^6\sqrt{g(K_{Q^3})}}-1
\right)
\right]
=
3673+O(Q^{-1}).
$$
The required limit is therefore $3673$.

Final Answer: $\boxed{3673}$

---

## Answer

$3673$

---

## Classification

**Problem Type:** Exact computation

**Answer Type:** Exact scalar

---

## Solution Concepts

- invariant subfields
- symmetric power sums
- semidirect product actions
- projective fixed points
- Riemann-Hurwitz formula
