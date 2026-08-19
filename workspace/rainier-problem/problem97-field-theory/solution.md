## Steps

Step 1: Recover the cubic splitting field and diagonalize the three right-hand sides

Since $z^3=1$ and $z\neq1$, the extension
$$
E=\mathbb F_p(t),\qquad t^3=s,
$$
is cyclic of degree $3$ over $K$, with
$$
\sigma(t)=zt.
$$

Put
$$
b_i=R(z^it).
$$
The automorphism $\sigma$ cyclically permutes $b_0,b_1,b_2$, so $Q\in K[Y]$.

The element $b_0$ is not fixed by $\sigma$, because in the basis $1,t,t^2$ of $E/K$ its coefficient of $t$ is $1/(s-1)\neq0$. Since $E/K$ has prime degree,
$$
K(b_0)=E.
$$
Therefore $Q$ is irreducible and $E$ is its splitting field.

Use the Fourier combinations
$$
h_0=\frac{b_0+b_1+b_2}{3},
$$
$$
h_1=\frac{b_0+z^2b_1+zb_2}{3},
$$
and
$$
h_2=\frac{b_0+zb_1+z^2b_2}{3}.
$$
The identities $1+z+z^2=0$ and $z^3=1$ give
$$
h_0=\frac{1}{s}=t^{-3},
$$
$$
h_1=\frac{t}{s-1}=\frac{t}{t^3-1},
$$
and
$$
h_2=\frac{s^{2m}-z}{3}t^2.
$$

Step 2: Expose the one-step defect in the third Fourier component

Let
$$
D(x)=x^p-zx.
$$
Since $z^3=1$,
$$
P=D^3.
$$

Because $p=3m+1$,
$$
(t^2)^p=t^{2p}=s^{2m}t^2.
$$
Therefore
$$
D\left(\frac{t^2}{3}\right)=\frac{s^{2m}-z}{3}t^2=h_2.
$$
Put
$$
g=\frac{t^2}{3}.
$$
The first two Fourier components require three successive $D$-preimages, while the third already has its first preimage in the base field:
$$
D^3(X)=h_0,\qquad D^3(X)=h_1,\qquad D^3(X)=D(g).
$$

The Fourier matrix over $\mathbb F_p$ is invertible. Therefore, over any field containing $\ker P$, adjoining one solution of each of these three equations gives the same splitting field as adjoining one solution of each equation $P(X)=b_i$.

Step 3: Determine the constant field containing the kernel of $P$

Let
$$
V=\ker D^3.
$$
Since the derivative of $P$ is $-1$, the polynomial is separable of degree $p^3$, so
$$
\dim_{\mathbb F_p}V=3.
$$

Choose $\beta_0,\beta_1,\beta_2$ satisfying
$$
D(\beta_0)=0,\qquad D(\beta_1)=\beta_0,\qquad D(\beta_2)=\beta_1.
$$
Frobenius acts on this basis by
$$
J=zI+N,
$$
where
$$
N^3=0,\qquad N^2\neq0.
$$
For $n\geq1$,
$$
J^n=z^nI+nz^{n-1}N+\binom{n}{2}z^{n-2}N^2.
$$
If $J^n=I$, the coefficient of $N$ gives $p\mid n$, while the scalar term gives $3\mid n$. Conversely, $J^{3p}=I$. Frobenius therefore has order $3p$ on $V$.

The smallest finite field containing $V$ is
$$
C=\mathbb F_{p^{3p}},
$$
so
$$
[C:\mathbb F_p]=3p.
$$

Since $E=\mathbb F_p(t)$ has constant field $\mathbb F_p$,
$$
E\cap C=\mathbb F_p.
$$
Put
$$
B=C(t).
$$
Then
$$
[B:K]=3p\cdot3=9p.
$$

Step 4: Build the first layer of $D$-preimages

Choose $\gamma_0,\gamma_1$ with
$$
D(\gamma_0)=h_0=t^{-3},
$$
and
$$
D(\gamma_1)=h_1=\frac{t}{t^3-1}.
$$

At the place $t=0$, the first right-hand side has pole order $3$, which is not divisible by $p$. If $w$ is a valuation above this place and $e$ is its ramification index, then
$$
pw(\gamma_0)=-3e.
$$
This gives $p\mid e$, and since $\gamma_0$ has degree at most $p$,
$$
[B(\gamma_0):B]=p.
$$

This extension is unramified at $t=1$, because $h_0$ is regular there and the derivative of $X^p-zX-h_0$ is the unit $-z$.

At $t=1$, the function $h_1$ has a simple pole. The same valuation argument after adjoining $\gamma_0$ gives
$$
[B(\gamma_0,\gamma_1):B(\gamma_0)]=p.
$$
Set
$$
B_1=B(\gamma_0,\gamma_1).
$$
Then
$$
[B_1:B]=p^2.
$$

No new first-layer element is needed for $h_2$, because $h_2=D(g)$ with $g\in B$.

Step 5: Show that the second layer has rank three

Choose $\delta_0,\delta_1,\delta_2$ satisfying
$$
D(\delta_0)=\gamma_0,
$$
$$
D(\delta_1)=\gamma_1,
$$
and
$$
D(\delta_2)=g.
$$

At the place above $t=0$, the element $\gamma_0$ has pole order $3$, while the other two right-hand sides are regular there. Adjoining $\delta_0$ therefore contributes degree $p$.

At a place above $t=1$, the element $\gamma_1$ has pole order $1$, while $\gamma_0$ and $g$ are regular. The extension obtained from $\delta_0$ is unramified there, so adjoining $\delta_1$ contributes another factor $p$.

At infinity, both $\gamma_0$ and $\gamma_1$ are integral because $h_0$ and $h_1$ have no poles there. The function
$$
g=\frac{t^2}{3}
$$
has pole order $2$, which is prime to $p$. The previous extensions are unramified there, so adjoining $\delta_2$ contributes a third factor $p$.

With
$$
B_2=B_1(\delta_0,\delta_1,\delta_2),
$$
we obtain
$$
[B_2:B_1]=p^3.
$$

Step 6: Show that the final layer again has rank three

Choose $\alpha_0,\alpha_1,\alpha_2$ with
$$
D(\alpha_j)=\delta_j
$$
for $j\in\{0,1,2\}$.

At the place over $t=0$, the equation $D(\delta_0)=\gamma_0$ and the total ramification from Step 5 show that $\delta_0$ has pole order $3$, while $\delta_1,\delta_2$ are integral there. Adjoining $\alpha_0$ therefore contributes degree $p$.

At the place over $t=1$, the element $\delta_1$ has pole order $1$, while $\delta_0,\delta_2$ are integral. Adjoining $\alpha_1$ contributes another factor $p$.

At infinity, the element $\delta_2$ has pole order $2$, while $\delta_0,\delta_1$ are integral. Adjoining $\alpha_2$ contributes one more factor $p$.

Therefore
$$
[B_2(\alpha_0,\alpha_1,\alpha_2):B_2]=p^3.
$$
Combining the degree factors from Steps 4 and 5 with this one gives
$$
[B_2(\alpha_0,\alpha_1,\alpha_2):B]=p^2\cdot p^3\cdot p^3=p^8.
$$

Also,
$$
D^3(\alpha_0)=h_0,\qquad D^3(\alpha_1)=h_1,
$$
while
$$
D^3(\alpha_2)=D(g)=h_2.
$$
These three elements split all three Fourier-transformed fibers and hence all three original fibers $P(X)=b_i$.

Step 7: Identify the full splitting field and compute its degree

The field $B_2(\alpha_0,\alpha_1,\alpha_2)$ contains $B$, the full kernel $V$, and one root of each equation $P(X)=b_i$. It therefore splits $F$.

Conversely, the splitting field $L$ contains the values $P(x)$ of its roots, so it contains all roots $b_i$ of $Q$ and therefore contains $E$. Differences of two roots in the same additive fiber give every element of $V$, so $L$ contains $C$ and therefore $B$.

Taking Fourier combinations of one chosen root from each fiber gives elements satisfying the three transformed equations from Step 2. Their differences from the chosen $\alpha_j$ lie in $V\subset B$. Therefore
$$
L=B_2(\alpha_0,\alpha_1,\alpha_2).
$$
Using Step 3 and Step 6,
$$
[L:K]=[L:B][B:K]=p^8\cdot9p=9p^9.
$$

Final Answer: $\boxed{9p^9}$

---

## Answer

$9p^9$

---

## Classification

**Problem Type:** Exact computation

**Answer Type:** Exact scalar

---

## Solution Concepts

- splitting fields
- additive polynomials
- finite-field Frobenius
- ramification of function fields
- cyclic field extensions
