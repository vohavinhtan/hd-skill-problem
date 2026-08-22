## Steps

Step 1: Recover a dual Gaussian representation

Define the $1$-periodic function
$$
G_n(a)=
\sqrt n
\sum_{m\in\mathbb Z}
e^{-\pi n(m-a)^2}.
$$
Its $k$th Fourier coefficient is
$$
\int_0^1G_n(a)e^{-2\pi ika}\,da.
$$
After translating each interval by $m$ and combining them into $\mathbb R$, this becomes
$$
\sqrt n
\int_{\mathbb R}
e^{-\pi nt^2}e^{2\pi ikt}\,dt.
$$
The Gaussian integral
$$
\int_{\mathbb R}e^{-\pi nt^2}e^{2\pi ikt}\,dt
=
n^{-1/2}e^{-\pi k^2/n}
$$
therefore gives the Fourier coefficient $e^{-\pi k^2/n}$. Hence
$$
\Theta_n(a)
=
\sqrt n
\sum_{m\in\mathbb Z}
e^{-\pi n(m-a)^2}.
$$

Differentiating twice,
$$
\Theta_n''(a)+2\pi n\Theta_n(a)
=
4\pi^2n^{5/2}
\sum_{m\in\mathbb Z}
(m-a)^2e^{-\pi n(m-a)^2}.
$$

Step 2: Convert the root equation to a lattice competition

Put
$$
N=\sqrt{\pi n},
\qquad
s=Na.
$$
Since
$$
\pi n(m-a)^2=(Nm-s)^2,
$$
the equation defining $a_n$ becomes
$$
\sum_{m\in\mathbb Z}
(Nm-s_n)^2e^{-(Nm-s_n)^2}
=
e^{-1},
$$
where
$$
s_n=Na_n.
$$

Let
$$
h(t)=t^2e^{-t^2}.
$$
Then
$$
h(1)=e^{-1},
\qquad
h'(1)=0,
\qquad
h''(1)=-4e^{-1}.
$$
The root equation is
$$
h(s_n)
+
\sum_{m\ne0}h(Nm-s_n)
=
e^{-1}.
$$

For every fixed $\eta\in(0,1)$,
$$
\max_{0\leq s\leq1-\eta}h(s)<e^{-1}.
$$
Uniformly on this interval,
$$
\sum_{m\ne0}h(Nm-s)\to0.
$$
Hence there is no root with $s\leq1-\eta$ for large $n$.

At $s=1$,
$$
h(1)+h(N-1)>e^{-1}.
$$
By continuity, a root lies below $1$. Since $a_n$ is the smallest positive root,
$$
s_n\to1,
\qquad
s_n<1
$$
for large $n$.

Step 3: Identify the exponentially small forcing term

Set
$$
d_n=1-s_n>0.
$$
Then $d_n\to0$. The nonzero lattice terms satisfy
$$
\sum_{m\ne0}h(Nm-s_n)
=
h(N-s_n)+o(h(N-1)).
$$
Indeed,
$$
\frac{h(N+s_n)}{h(N-1)}
=
O(e^{-4N}),
$$
while all terms with $|m|\geq2$ have still larger exponential decay.

Since $s_n=1-d_n$,
$$
N-s_n=N-1+d_n.
$$
Once $d_n\to0$,
$$
\frac{h(N-1+d_n)}{h(N-1)}
=
\left(
1+\frac{d_n}{N-1}
\right)^2
e^{-2(N-1)d_n-d_n^2}.
$$
The root equation itself will imply
$$
d_n=O\!\left(\sqrt{h(N-1)}\right),
$$
and therefore
$$
Nd_n\to0.
$$
Consequently
$$
h(N-s_n)
=
h(N-1)(1+o(1)).
$$
Thus
$$
\sum_{m\ne0}h(Nm-s_n)
=
(N-1)^2e^{-(N-1)^2}(1+o(1)).
$$

Step 4: Resolve the double-root splitting

Taylor expansion of $h$ at its maximum $1$ gives
$$
h(1-d)
=
e^{-1}-2e^{-1}d^2+O(d^3).
$$
Using the root equation and Step 3,
$$
e^{-1}-h(1-d_n)
=
(N-1)^2e^{-(N-1)^2}(1+o(1)).
$$
Therefore
$$
2e^{-1}d_n^2
=
(N-1)^2e^{-(N-1)^2}(1+o(1)).
$$
Since $d_n>0$,
$$
d_n
=
\sqrt{\frac e2}\,
(N-1)e^{-(N-1)^2/2}(1+o(1)).
$$

Step 5: Evaluate the requested limit

Recall
$$
N=\sqrt{\pi n},
\qquad
d_n=1-\sqrt{\pi n}\,a_n.
$$
Step 4 yields
$$
\frac{
e^{(N-1)^2/2}
}{N-1}
d_n
\to
\sqrt{\frac e2}.
$$
Replacing $N$ by $\sqrt{\pi n}$ gives the required limit.

Final Answer: $\boxed{\sqrt{\frac e2}}$

---

## Answer

$\sqrt{\frac e2}$

---

## Classification

**Domain:** Calculus

**Sub-domain:** Limits and continuity

**Problem Type:** Exact computation

**Answer Type:** Exact scalar

---

## Solution Concepts

- Gaussian lattice duality
- Fourier coefficients
- exponentially small asymptotics
- implicit root splitting
- double-root perturbation
