# Normalized Math Problem

## LaTeX (Normalized)

Fix $p\in(0,2)$ and put $q=2-p$. For $\lambda>0$, define
$$
F_{\lambda,p}(y)
=
\left(y-\frac12\right)^2
+
\lambda\left(1-p\left(y-\frac12\right)\right).
$$
For each positive integer $n$, let $\lambda_{n,p}>0$ be the unique number for which the solution $y_{n,p}$ of
$$
y_{n,p}'(x)
=
\frac{
nF_{\lambda_{n,p},p}(y_{n,p}(x))
}{
1+
\displaystyle
\frac{
12pnx\left(y_{n,p}(x)-\frac12\right)^2F_{\lambda_{n,p},p}(y_{n,p}(x))
}{
1-4p\left(y_{n,p}(x)-\frac12\right)^3
}
},
\qquad
y_{n,p}(0)=0,
$$
satisfies
$$
y_{n,p}(1)=1.
$$
The solution is strictly increasing on $[0,1]$. Let $\xi_{n,p}\in(0,1)$ be determined by
$$
y_{n,p}(\xi_{n,p})=\frac12.
$$
Determine the unique ordered triple $(c_p,A_p,B_p)$ such that
$$
\xi_{n,p}
=
c_p+
\frac{A_p\log n+B_p}{n^3}
+
o\left(n^{-3}\right)
$$
as $n\to\infty$.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Differential Equations and Dynamical Systems |
| **Sub-domain** | First-order ordinary differential equations |
| **Problem Type** | Parameter identification |
| **Answer Type** | Tuple or ordered list |

---

## Domain Explanation

The problem is governed by a parameter-dependent nonlinear nonautonomous first-order differential equation with a terminal condition that selects the parameter. Its asymptotic transition location is obtained from the inverse flow near a singular slow region, so First-order ordinary differential equations is the primary sub-domain.
