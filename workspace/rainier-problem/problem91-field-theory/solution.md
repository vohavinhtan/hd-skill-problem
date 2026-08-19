## Steps

Step 1: Recover the tame field from differences of roots

The derivative of $F_p$ is
$$
F_p'(X)=-t^2\ne0,
$$
so $F_p$ is separable.

If $\alpha$ and $\alpha'$ are two roots, their difference $d=\alpha-\alpha'$ satisfies
$$
d^p-t^2d=0.
$$
Thus either $d=0$ or
$$
d^{p-1}=t^2.
$$

Choose $\beta$ satisfying
$$
\beta^m=t.
$$
Since $2m=p-1$,
$$
\beta^{p-1}=t^2.
$$
Hence every nonzero difference of two roots is
$$
c\beta,
\qquad
c\in\mathbb F_p^\times.
$$

The polynomial
$$
Y^m-t
$$
is Eisenstein over $K$, so
$$
E=K(\beta)
$$
has degree $m$. Since $m\mid p-1$, all $m$th roots of unity lie in $\mathbb F_p$, and therefore
$$
E/K
$$
is cyclic and totally tamely ramified.

Any splitting field of $F_p$ contains a nonzero difference of two roots, hence contains $E$.

Step 2: Rescale one root over the tame field

Choose a root $\alpha$ and write
$$
\alpha=\beta z.
$$
Because
$$
\beta^p=\beta^{p-1}\beta=t^2\beta,
$$
the equation $F_p(\alpha)=0$ becomes
$$
\beta^p(z^p-z)=t^{-p}-t+t^2.
$$
Therefore
$$
z^p-z
=
\frac{t^{-p}-t+t^2}{\beta^p}.
$$

Using
$$
t=\beta^m,
\qquad
p=2m+1,
$$
the three terms are
$$
\frac{t^{-p}}{\beta^p}
=\beta^{-p(m+1)},
$$
$$
-\frac{t}{\beta^p}
=-\beta^{-(m+1)},
$$
and
$$
\frac{t^2}{\beta^p}
=\beta^{-1}.
$$

Put
$$
w=\beta^{-(m+1)}.
$$
Then
$$
w^p=\beta^{-p(m+1)},
$$
so
$$
z^p-z=w^p-w+\beta^{-1}.
$$

Step 3: Detect the cancellation in the additive equation

Set
$$
y=z-w.
$$
Since the characteristic is $p$,
$$
y^p-y
=(z^p-z)-(w^p-w)
=\beta^{-1}.
$$

Thus
$$
L_p=E(y),
\qquad
y^p-y=\beta^{-1}.
$$
Indeed, $E(y)$ contains
$$
\alpha=\beta(y+w),
$$
and all the roots are
$$
\alpha+c\beta,
\qquad
c\in\mathbb F_p,
$$
so $E(y)$ contains the full root set. Conversely Step 1 shows that the splitting field contains $E$, and then one root recovers $y$.

The equation
$$
y^p-y=\beta^{-1}
$$
is irreducible over $E$. If $\beta^{-1}=a^p-a$ for some $a\in E$, then a pole of $a$ of order $r>0$ would give a pole of $a^p-a$ of order $pr$, while $\beta^{-1}$ has pole order $1$. Hence
$$
[L_p:E]=p.
$$

Step 4: Compute the different of the wild degree-$p$ step

Normalize the valuation of $E$ by
$$
v_E(\beta)=1.
$$
Since $L_p/E$ is totally ramified of degree $p$,
$$
v_{L_p}(\beta)=p.
$$
The equation
$$
y^p-y=\beta^{-1}
$$
then gives
$$
v_{L_p}(y)=-1.
$$
Hence
$$
\pi=y^{-1}
$$
is a uniformizer of $L_p$.

The nontrivial automorphisms of $L_p/E$ are
$$
\tau_c(y)=y+c,
\qquad
c\in\mathbb F_p^\times.
$$
For such $c$,
$$
\tau_c(\pi)-\pi
=
-\frac{c}{y(y+c)}.
$$
Both $y$ and $y+c$ have valuation $-1$, so
$$
v_{L_p}(\tau_c(\pi)-\pi)=2.
$$
Therefore the different exponent of $L_p/E$ is
$$
d(L_p/E)
=
\sum_{c\in\mathbb F_p^\times}
v_{L_p}(\tau_c(\pi)-\pi)
=
2(p-1).
$$

Step 5: Combine the tame and wild differents

Since
$$
E=K(\beta),
\qquad
\beta^m=t,
$$
the Eisenstein polynomial of $\beta$ is
$$
Y^m-t.
$$
Its derivative at $\beta$ is
$$
m\beta^{m-1}.
$$
Because $m$ is a unit in $E$,
$$
d(E/K)=m-1.
$$

For a tower of finite separable local extensions,
$$
d(L_p/K)
=
d(L_p/E)+e(L_p/E)d(E/K).
$$
Using Step 4 and
$$
e(L_p/E)=p,
\qquad
m=\frac{p-1}{2},
$$
we obtain
$$
d_p
=
2(p-1)
+p\left(\frac{p-1}{2}-1\right).
$$
Hence
$$
d_p
=
2p-2+\frac{p(p-3)}2
=
\frac{p^2+p-4}{2}.
$$

Final Answer: $\boxed{\frac{p^2+p-4}{2}}$

---

## Answer

$\frac{p^2+p-4}{2}$

---

## Classification

**Problem Type:** Exact computation

**Answer Type:** Exact scalar

---

## Solution Concepts

- local field extensions
- tame Kummer extensions
- additive polynomials
- different exponents
- ramification towers
