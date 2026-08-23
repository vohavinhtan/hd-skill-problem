## Steps

Step 1: Move the right fold to the origin

Set
$$
u=x-1,\qquad v=y+\frac23,
$$
and write
$$
\phi(u)=u^2+\frac{u^3}{3}.
$$
Then the system becomes
$$
\varepsilon\dot u=v-\phi(u),
\qquad
\dot v=\lambda-u-\frac v2.
$$
The critical manifold is $v=\phi(u)$. Since
$$
\phi'(u)=2u+u^2,
$$
the point $u=0$ is the right fold; the branch $u>0$ is attracting and the branch $-2<u<0$ is repelling.

Step 2: Expand the Hopf parameter

An equilibrium near the fold satisfies
$$
v=\phi(u),
\qquad
\lambda=u+\frac{\phi(u)}2.
$$
Its Jacobian is
$$
J=
\begin{pmatrix}
-\phi'(u)/\varepsilon & 1/\varepsilon\\
-1 & -1/2
\end{pmatrix}.
$$
Purely imaginary eigenvalues require zero trace, so
$$
\phi'(u_H)=-\frac{\varepsilon}{2}.
$$
The root tending to $0$ is
$$
u_H=-1+\sqrt{1-\frac{\varepsilon}{2}}
=-\frac{\varepsilon}{4}-\frac{\varepsilon^2}{32}+O(\varepsilon^3).
$$
Substituting into $\lambda=u+\phi(u)/2$ gives
$$
\lambda_H(\varepsilon)
=-\frac{\varepsilon}{4}+O(\varepsilon^3).
$$
Also
$$
\det J=\frac{1+\phi'(u_H)/2}{\varepsilon}
=\frac{1-\varepsilon/4}{\varepsilon}>0,
$$
so the eigenvalues are indeed purely imaginary there.

Step 3: Match the attracting and repelling slow manifolds through the fold

The two Fenichel slow manifolds have asymptotic invariant-graph expansions on the two sides of the fold. At the maximal canard these expansions continue through $u=0$ as one regular graph. Write
$$
v=h(u)=\phi(u)+\varepsilon a_0(u)+\varepsilon^2a_1(u)+O(\varepsilon^3),
$$
$$
\lambda_C(\varepsilon)=\ell_1\varepsilon+\ell_2\varepsilon^2+O(\varepsilon^3).
$$
The graph invariance equation is
$$
h'(u)\bigl(h(u)-\phi(u)\bigr)
=\varepsilon\left(\lambda-u-\frac{h(u)}2\right).
$$
At order $\varepsilon$,
$$
\phi'(u)a_0(u)=-u-\frac{\phi(u)}2,
$$
so
$$
a_0(u)=-\frac{u^2+3u+6}{6(u+2)}
=-\frac12-\frac{u^2}{12}+\frac{u^3}{24}+O(u^4).
$$
Thus
$$
a_0(0)=-\frac12,
\qquad
a_0'(0)=0.
$$

At order $\varepsilon^2$,
$$
\phi'(u)a_1(u)+a_0'(u)a_0(u)
=\ell_1-\frac{a_0(u)}2.
$$
Since $\phi'(0)=0$, regularity at the fold forces
$$
0=\ell_1+\frac14,
$$
so
$$
\ell_1=-\frac14.
$$
With this value, the last equation becomes locally
$$
(2u+u^2)a_1(u)
=-\frac{u}{12}+\frac{5u^2}{48}+O(u^3).
$$
Hence
$$
a_1(u)=-\frac1{24}+\frac{7u}{96}+O(u^2),
$$
so
$$
a_1(0)=-\frac1{24},
\qquad
a_1'(0)=\frac7{96}.
$$

At order $\varepsilon^3$,
$$
\phi'(u)a_2(u)+a_0'(u)a_1(u)+a_1'(u)a_0(u)
=\ell_2-\frac{a_1(u)}2.
$$
Evaluating the regularity condition at $u=0$ gives
$$
-\frac7{192}
=\ell_2+\frac1{48},
$$
therefore
$$
\ell_2=-\frac{11}{192}.
$$
Thus
$$
\lambda_C(\varepsilon)
=-\frac{\varepsilon}{4}-\frac{11}{192}\varepsilon^2+O(\varepsilon^3).
$$

Step 4: Compare the two bifurcation curves

From Step 2 and Step 3,
$$
\lambda_C(\varepsilon)-\lambda_H(\varepsilon)
=-\frac{11}{192}\varepsilon^2+O(\varepsilon^3).
$$
Therefore
$$
\lim_{\varepsilon\to0^+}
\frac{\lambda_C(\varepsilon)-\lambda_H(\varepsilon)}{\varepsilon^2}
=-\frac{11}{192}.
$$

Final Answer: $\boxed{-\frac{11}{192}}$

---

## Answer

$-\frac{11}{192}$

---

## Classification

**Problem Type:** Symbolic derivation

**Answer Type:** Exact scalar

---

## Solution Concepts

- slow-fast systems
- fold regularity
- maximal canards
- singular Hopf bifurcation
- invariant-manifold matching
