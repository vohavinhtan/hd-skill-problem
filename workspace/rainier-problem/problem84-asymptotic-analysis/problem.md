# Normalized Math Problem

For \(p>1\), set \(q=p-1\), \(a_n=(\log n)/p\),
\[
\phi_p(x)=e^{-1/x-(1-x)^{-q}}|x-\tfrac12|\ (0<x<1),\qquad \phi_p(0)=\phi_p(1)=0,
\]
and \(R_n=n\phi_p^p\). For \(\lambda,\mu\in\mathbb R\), let \(\nu_{n,\lambda,\mu}\) be the probability measure with density proportional to
\[
x^{-\lambda}(1-x)^{-\mu}e^{-1/x-(1-x)^{-q}-R_n(x)}.
\]
For each fixed \(p>1\), prove that for all large \(n\) there is a unique \((\lambda_n,\mu_n)\) satisfying
\[
\int-\log x\,d\nu_n=\tfrac13\log a_n,\qquad
\int-\log(1-x)\,d\nu_n=\frac{\log a_n}{3q},
\]
where \(\nu_n=\nu_{n,\lambda_n,\mu_n}\).

Put \(M_{k,n}=\int x^k\,d\nu_n\) \((0\le k\le14)\),
\[
H_{r,n}=\det[M_{i+j,n}]_{i,j=0}^{r-1}\quad(r=5,6,7,8),
\qquad
T_n=\frac{H_{8,n}H_{6,n}^{3}}{H_{7,n}^{3}H_{5,n}}.
\]
For \(m\ge1\), define
\[
\Xi_{m,p}=\det\!\left[\frac{\Gamma^{(i+j)}(1/p)}{\Gamma(1/p)}\right]_{i,j=0}^{m-1}.
\]
Determine exactly
\[
A_p=\lim\log a_n(\lambda_n-2),\qquad B_p=\lim\log a_n(\mu_n-p),
\]
and the unique \(\gamma_p\in\mathbb R,\ K_p>0\) such that
\[
\lim_{n\to\infty}(\log n)^{\gamma_p}T_n=K_p.
\]
Give \((A_p,B_p,\gamma_p,K_p)\) for every \(p>1\), proving every transition value and summing all tied leading configurations.

**Domain:** Analysis — Asymptotic analysis. **Type:** Parameter identification. **Answer:** ordered tuple.
