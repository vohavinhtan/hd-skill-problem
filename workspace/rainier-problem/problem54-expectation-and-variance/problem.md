# Normalized Math Problem

## LaTeX (Normalized)

For a compact interval $I\subset\mathbb R$, let $U_I$ denote the uniform probability measure on $I$. Fix a parameter
$$
0<a<1
$$
and define
$$
\begin{aligned}
I_1(a)&=[1-a,1+a],&
I_2(a)&=[4-a,4+a],\\
I_3(a)&=[7-a,7+a],&
I_4(a)&=[10-a,10+a].
\end{aligned}
$$
Let
$$
\mu_a=\frac18\left(
\delta_0+\delta_3+\delta_8+\delta_{11}
+U_{I_1(a)}+U_{I_2(a)}+U_{I_3(a)}+U_{I_4(a)}
\right)
$$
and
$$
\nu=\frac14\left(\delta_0+\delta_3+\delta_8+\delta_{11}\right).
$$

Let $\mathcal M_a$ be the set of probability measures $\pi$ on $\mathbb{R}^{2}$ with first marginal $\mu_a$, second marginal $\nu$, and the martingale property
$$
\int_{\mathbb R}y\,\pi_x(dy)=x
$$
for $\mu_a$-almost every $x$, where $(\pi_x)_x$ is a disintegration of $\pi$ with respect to its first marginal.

For $\pi\in\mathcal M_a$, define its diagonal score
$$
\mathcal D(\pi)=
\pi(\{(0,0)\})+\pi(\{(3,3)\})
+\pi(\{(8,8)\})+\pi(\{(11,11)\}).
$$
For every $h\in C^1([0,11])$ satisfying $h'(x)>0$ on $[0,11]$, define
$$
\mathcal C_h(\pi)=
\int_{\mathbb{R}^{2}}h(x)(y-x)^2\,d\pi(x,y).
$$
For $\varepsilon>0$, choose an arbitrary maximizer
$$
\pi_{\varepsilon,h}\in\mathcal M_a
$$
such that
$$
\mathcal D(\pi_{\varepsilon,h})
+\varepsilon\mathcal C_h(\pi_{\varepsilon,h})
=\max_{\pi\in\mathcal M_a}
\left(\mathcal D(\pi)+\varepsilon\mathcal C_h(\pi)\right).
$$

Prove that, as $\varepsilon\downarrow0$, every such choice of maximizers converges weakly to the same coupling $\pi_a^*$, independently of $h$. Determine exactly the Markov kernel
$$
K_a^*(x)=
\left(
\pi_{a,x}^*(\{0\}),
\pi_{a,x}^*(\{3\}),
\pi_{a,x}^*(\{8\}),
\pi_{a,x}^*(\{11\})
\right)
$$
for $\mu_a$-almost every $x$. In particular, all switching points and every piecewise formula in the parameter $a$ must be given explicitly.

After deriving the complete kernel, return only the ordered list of its switching points, from left to right, as the final answer object.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Probability and Statistics |
| **Sub-domain** | Expectation and variance |
| **Problem Type** | Optimization |
| **Answer Type** | Tuple or ordered list |

---

## Domain Explanation

The problem is a lexicographic optimization over martingale couplings with prescribed marginals. Its secondary objective is a weighted conditional squared displacement, and the requested output is the ordered pair of support-switching locations of the limiting optimizer.
