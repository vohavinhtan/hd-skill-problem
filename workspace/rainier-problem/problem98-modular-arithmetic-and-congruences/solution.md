## Steps

Step 1: Rewrite the recurrence as a polynomial dynamical system

Set
$$
X_k=(a_k,a_{k+1},a_{k+2})
$$
and define
$$
F(x,y,z)=(y,z,yz-x).
$$
The recurrence is exactly
$$
X_{k+1}=F(X_k),
$$
with
$$
X_0=7(1,2,3).
$$
Every coordinate of $F(x,y,z)$ is divisible by $7$ whenever $x,y,z$ are divisible by $7$. Hence every $X_k$ is congruent to $(0,0,0)$ modulo $7$. It follows that
$$
T_1=1.
$$

Step 2: Find the first return modulo $7^2$

For $X=7(x,y,z)$, the product term in the third coordinate of $F(X)$ is divisible by $7^2$. Therefore
$$
F(7x,7y,7z)\equiv7J(x,y,z)\pmod{7^2},
$$
where
$$
J(x,y,z)=(y,z,-x).
$$
Starting from $(1,2,3)$ modulo $7$, successive applications of $J$ give
$$
(1,2,3),
$$
$$
(2,3,-1),
$$
$$
(3,-1,-2),
$$
$$
(-1,-2,-3),
$$
$$
(-2,-3,1),
$$
$$
(-3,1,2),
$$
$$
(1,2,3).
$$
The first six vectors are distinct modulo $7$. Thus the first return of $X_k$ modulo $7^2$ has length $6$, so
$$
T_2=6.
$$
In particular, every return modulo any higher power of $7$ must have index divisible by $6$.

Step 3: Compute the first nonlinear displacement after six iterates

We need the first terms of $F^6$ near $(0,0,0)$. Keeping every monomial of total degree at most $3$ during the six substitutions gives
$$
F(x,y,z)=(y,z,-x+yz),
$$
$$
F^2(x,y,z)=(z,-x+yz,-y-xz+yz^2),
$$
$$
F^3(x,y,z)=(-x+yz,-y-xz+yz^2,-z+xy+x^2z-y^2z),
$$
$$
F^4(x,y,z)=(-y-xz+yz^2,-z+xy+x^2z-y^2z,x+xz^2-xy^2),
$$
$$
F^5(x,y,z)=(-z+xy+x^2z-y^2z,x+xz^2-xy^2,y+x^2y-yz^2),
$$
and
$$
F^6(x,y,z)=(x+xz^2-xy^2,y+x^2y-yz^2,z+y^2z-x^2z)
$$
up to terms of total degree at least $4$.

Put $G=F^6$. Since $G$ is a polynomial map with integer coefficients, there is a polynomial vector $R$ whose monomials all have degree at least $4$ such that
$$
G(x,y,z)-(x,y,z)=Q(x,y,z)+R(x,y,z),
$$
where
$$
Q(x,y,z)=\left(x(z^2-y^2),y(x^2-z^2),z(y^2-x^2)\right).
$$
At $v=(1,2,3)$,
$$
Q(v)=(5,-16,9).
$$
Hence
$$
G(X_0)-X_0=7^3Q(v)+7^4R(v).
$$
Since $(5,-16,9)$ is not divisible coordinatewise by $7$, every coordinate of $G(X_0)-X_0$ is divisible by $7^3$ and at least one is not divisible by $7^4$. Thus
$$
G(X_0)\equiv X_0\pmod{7^3},
$$
but
$$
G(X_0)\not\equiv X_0\pmod{7^4}.
$$
Step 2 rules out a smaller positive return, so
$$
T_3=6.
$$

Step 4: Establish the lifting law for the six-step map

Write
$$
G(U)=U+H(U).
$$
Step 3 shows that every monomial of every coordinate of $H$ has total degree at least $3$.

Suppose $U,V\in7\mathbb{Z}_7^3$ and
$$
U\equiv V\pmod{7^s}.
$$
For a monomial of degree at least $3$, its value at $U$ minus its value at $V$ can be expanded as a sum of terms containing one coordinate difference and at least two further factors divisible by $7$. Therefore
$$
H(U)\equiv H(V)\pmod{7^{s+2}}.
$$
It follows by induction on $m$ that
$$
G^m(U)-G^m(V)\equiv U-V\pmod{7^{s+2}}
$$
whenever $U\equiv V\pmod{7^s}$.

For a vector $W$, let
$$
\nu(W)=\min_i v_7(W_i).
$$
Step 3 gives
$$
\nu(G(X_0)-X_0)=3.
$$
We claim that for every integer $t\geq1$,
$$
\nu(G^t(X_0)-X_0)=3+v_7(t).
$$

To prove the claim, set
$$
\Phi_r=G^{7^r},\qquad D_r=\Phi_r-\operatorname{id}.
$$
Assume
$$
\nu(D_r(X_0))=3+r.
$$
The congruence property for iterates gives, for each $j$,
$$
D_r(\Phi_r^j(X_0))\equiv D_r(X_0)\pmod{7^{5+r}}.
$$
Therefore
$$
D_{r+1}(X_0)
=
\sum_{j=0}^{6}D_r(\Phi_r^j(X_0))
\equiv
7D_r(X_0)\pmod{7^{5+r}}.
$$
The leading term on the right has valuation $4+r$, while the error has valuation at least $5+r$. Hence
$$
\nu(D_{r+1}(X_0))=4+r.
$$
Starting with $r=0$ proves
$$
\nu(G^{7^r}(X_0)-X_0)=3+r.
$$

Now write $t=7^ru$ with $7\nmid u$. Applying the same telescoping sum to $\Phi_r^u$ gives
$$
\Phi_r^u(X_0)-X_0\equiv uD_r(X_0)\pmod{7^{5+r}}.
$$
Since $u$ is a $7$-adic unit,
$$
\nu(G^t(X_0)-X_0)=3+r=3+v_7(t),
$$
which proves the claim.

Step 5: Determine the least return modulo every higher power

For $n\geq3$, any return index is divisible by $6$ by Step 2. Write it as
$$
k=6t.
$$
Then
$$
X_k=G^t(X_0).
$$
By Step 4,
$$
G^t(X_0)\equiv X_0\pmod{7^n}
$$
if and only if
$$
3+v_7(t)\geq n.
$$
For $n\geq3$, the least positive $t$ satisfying this is
$$
t=7^{n-3}.
$$
Thus
$$
T_n=6\cdot7^{n-3}\qquad(n\geq3).
$$
Together with Steps 1 and 2, this gives the full sequence.

Final Answer: $\boxed{T_1=1,\quad T_2=6,\quad T_n=6\cdot7^{n-3}\quad(n\geq3)}$

---

## Answer

$T_1=1,\quad T_2=6,\quad T_n=6\cdot7^{n-3}\quad(n\geq3)$

---

## Classification

**Domain:** Number Theory

**Sub-domain:** Modular arithmetic and congruences

**Problem Type:** Symbolic derivation

**Answer Type:** Sequence or series representation

---

## Solution Concepts

- modular arithmetic
- polynomial iteration
- prime-power lifting
- p-adic valuations
- local linearization
