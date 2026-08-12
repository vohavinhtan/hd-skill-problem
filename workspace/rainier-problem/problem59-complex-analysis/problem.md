# Normalized Math Problem

## LaTeX (Normalized)

Let
$$
\mathbb D=\{z\in\mathbb C:|z|<1\}.
$$
Let $\mathcal P$ be the class of holomorphic functions $p:\mathbb D\to\mathbb C$ satisfying
$$
\operatorname{Re}p(z)>0\qquad(z\in\mathbb D),
$$
$$
p(0)=1,
$$
and, as $z\to0$,
$$
p(z)=1+\left(-\frac13-\frac{2i}{15}\right)z
+\left(-\frac15-\frac{i}{15}\right)z^2
+\left(-\frac{17}{15}+\frac{i}{25}\right)z^3
+O(z^4).
$$
Assume also that
$$
\operatorname{Re}p\left(-\frac12\right)=\frac{77}{57}.
$$

Determine exactly the unique function $p_*\in\mathcal P$ minimizing
$$
\operatorname{Re}p\left(\frac12\right).
$$

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Analysis |
| **Sub-domain** | Complex analysis |
| **Problem Type** | Optimization |
| **Answer Type** | Function or mapping |

---

## Domain Explanation

This problem involves extremal holomorphic functions with positive real part on the unit disk. The prescribed Taylor coefficients and one interior real-part value become moment constraints for a representing boundary measure. The sharp minimizer is determined by a dual rational inequality together with rigidity in its equality set.