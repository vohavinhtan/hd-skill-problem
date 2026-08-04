## Steps

Step 1: Introduce the parameter-dependent integral

For parameters $u,v,w,z$, set
$$
G_{u,v,w,z}(x)=(x-u)^3(x-v)^2(x-w)(x-z)
$$
and
$$
\Phi_n(u,v,w,z)=
\int_{[0,1]^n}
\left(\prod_{r=1}^{n}G_{u,v,w,z}(x_r)\right)
\left(\prod_{r=1}^{n}x_r^{-1/3}(1-x_r)^{-2/3}\,dx_r\right)
\left(\prod_{1\le r<s\le n}(x_r-x_s)^2\right).
$$
At $(u,v,w,z)=(-1,-2,-3,-4)$, $G_{u,v,w,z}(x)=(1+x)^3(2+x)^2(3+x)(4+x)$.

Moreover,
$$
\left(-\frac{\partial}{\partial u}
+\frac{\partial}{\partial v}
-\frac{\partial}{\partial w}
+\frac{\partial}{\partial z}\right)
\prod_{r=1}^{n}G_{u,v,w,z}(x_r)
$$
equals
$$
\left(\prod_{r=1}^{n}G_{u,v,w,z}(x_r)\right)
\sum_{r=1}^{n}
\left(\frac{3}{x_r-u}-\frac{2}{x_r-v}+\frac{1}{x_r-w}-\frac{1}{x_r-z}\right).
$$
Therefore
$$
I_n=\left.
\mathcal L\Phi_n(u,v,w,z)
\right|_{(u,v,w,z)=(-1,-2,-3,-4)}.
$$

Step 2: Apply the characteristic-polynomial formula

Let
$$
Z_n=
\int_{[0,1]^n}
\left(\prod_{r=1}^{n}x_r^{-1/3}(1-x_r)^{-2/3}\,dx_r\right)
\left(\prod_{1\le r<s\le n}(x_r-x_s)^2\right).
$$
For distinct parameters $a_1,\ldots,a_7$, the Heine formula for monic orthogonal polynomials gives
$$
\int
\prod_{r=1}^{n}\prod_{\ell=1}^{7}(a_\ell-x_r)
\prod_{r=1}^{n}x_r^{-1/3}(1-x_r)^{-2/3}\,dx_r
\prod_{r<s}(x_r-x_s)^2
$$
$$
=
Z_n\,
\frac{\det\!\left[Q_{n+j-1}(a_i)\right]_{1\le i,j\le7}}
{\prod_{1\le i<j\le7}(a_j-a_i)}.
$$
Since $\prod_{\ell=1}^{7}(x-a_\ell)=(-1)^7\prod_{\ell=1}^{7}(a_\ell-x)$, the insertion $\prod_rG_{u,v,w,z}(x_r)$ contributes the extra sign $(-1)^{7n}=(-1)^n$.

Step 3: Take the confluent limit

Let three of the $a_\ell$ tend to $u$, two tend to $v$, one to $w$, and one to $z$, in that order. The confluent limit of the determinant divided by the Vandermonde is
$$
\frac{H_n(u,v,w,z)}
{2\,(v-u)^6(w-u)^3(z-u)^3(w-v)^2(z-v)^2(z-w)}.
$$
The factor $2$ is $0!\,1!\,2!$ from the triple node at $u$. With
$$
\Delta(u,v,w,z)
=(u-v)^6(u-w)^3(u-z)^3(v-w)^2(v-z)^2(w-z),
$$
we have
$$
(v-u)^6(w-u)^3(z-u)^3(w-v)^2(z-v)^2(z-w)=-\Delta(u,v,w,z).
$$
Hence
$$
\Phi_n(u,v,w,z)
=
\frac{(-1)^{n+1}}{2}\,
Z_n\,\frac{H_n(u,v,w,z)}{\Delta(u,v,w,z)}.
$$

Step 4: Evaluate the Selberg constant

Selberg's integral with $\alpha=\frac23$, $\beta=\frac13$, and $\gamma=1$ gives
$$
Z_n=
\prod_{j=0}^{n-1}
\frac{\Gamma\!\left(j+\frac13\right)\Gamma\!\left(j+\frac23\right)\Gamma(j+2)}
{\Gamma(n+j)}.
$$

Step 5: Differentiate

Since $Z_n$ is independent of $u,v,w,z$,
$$
I_n=
\frac{(-1)^{n+1}}{2}
\left(
\prod_{j=0}^{n-1}
\frac{\Gamma\!\left(j+\frac13\right)\Gamma\!\left(j+\frac23\right)\Gamma(j+2)}
{\Gamma(n+j)}
\right)
\left.
\mathcal L\!\left(\frac{H_n(u,v,w,z)}{\Delta(u,v,w,z)}\right)
\right|_{(u,v,w,z)=(-1,-2,-3,-4)}.
$$
This also fixes the sign: the minus sign from the confluent Vandermonde and the $(-1)^{7n}$ sign from changing $(a_\ell-x_r)$ to $(x_r-a_\ell)$ combine to $(-1)^{n+1}$.

Final Answer: $\boxed{\frac{(-1)^{n+1}}{2}\left(\prod_{j=0}^{n-1}\frac{\Gamma\!\left(j+\frac13\right)\Gamma\!\left(j+\frac23\right)\Gamma(j+2)}{\Gamma(n+j)}\right)\left.\mathcal L\!\left(\frac{H_n(u,v,w,z)}{\Delta(u,v,w,z)}\right)\right|_{(u,v,w,z)=(-1,-2,-3,-4)}}$

---

## Answer

$\frac{(-1)^{n+1}}{2}\left(\prod_{j=0}^{n-1}\frac{\Gamma\!\left(j+\frac13\right)\Gamma\!\left(j+\frac23\right)\Gamma(j+2)}{\Gamma(n+j)}\right)\left.\mathcal L\!\left(\frac{H_n(u,v,w,z)}{\Delta(u,v,w,z)}\right)\right|_{(u,v,w,z)=(-1,-2,-3,-4)}$

---

## Classification

**Problem Type:** Exact computation

**Answer Type:** Exact symbolic expression

---

## Concepts (1-5)

- Selberg integrals
- Jacobi orthogonal polynomials
- Heine characteristic-polynomial formula
- Confluent Vandermonde determinants
- Logarithmic derivative insertions

---

## Black-Box Audit

- Step 2: no Level 2 or Level 3 issue. The characteristic-polynomial formula is stated with all index ranges and with the sign convention explicitly tracked.
- Step 3: no Level 2 or Level 3 issue. The confluent limit includes the factorial factor $0!\,1!\,2!=2$ and the sign comparison with $\Delta$.

---

## Verification

- Sign check: changing $\prod(a_\ell-x_r)$ to $\prod(x_r-a_\ell)$ gives $(-1)^{7n}=(-1)^n$, and the confluent Vandermonde denominator equals $-\Delta$, giving the prefactor $(-1)^{n+1}/2$.
- Differential check: $\mathcal L$ produces exactly $\frac{3}{1+x_r}-\frac{2}{2+x_r}+\frac{1}{3+x_r}-\frac{1}{4+x_r}$ at $(u,v,w,z)=(-1,-2,-3,-4)$.
- Boundary check: all singularities are integrable because the weight is $x^{-1/3}(1-x)^{-2/3}$ and the Vandermonde factor is polynomial.
