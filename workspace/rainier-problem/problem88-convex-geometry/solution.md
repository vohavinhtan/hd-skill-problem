## Steps

Step 1: Convert the area triple into Fourier energies

Put $\theta=\frac{2\pi}{n}$ and $h=\frac{n-1}{2}$. In complex coordinates, $X_j=(1+it_j)e^{ij\theta}$, so
$$
\det(X_j,X_{j+q})=(1+t_jt_{j+q})\sin(q\theta)+(t_{j+q}-t_j)\cos(q\theta).
$$
Summing removes the second term and gives
$$
\mathcal A_q=\frac{\sin(q\theta)}{2}\left(n+\sum_jt_jt_{j+q}\right).
\tag{1}
$$
For $\widehat t_k=\sum_jt_je^{-ikj\theta}$, the mean and centroid constraints give $\widehat t_0=\widehat t_1=\widehat t_{n-1}=0$. For each $1\leq r\leq h$, let $\kappa_r\in\{1,\ldots,h\}$ be the unique index satisfying $s\kappa_r\equiv\pm r\pmod n$, and set
$$
E_r=\frac{2}{n}|\widehat t_{\kappa_r}|^2.
$$
Parseval and cyclic correlation give
$$
E_s=0,\qquad \sum_{r\neq s}E_r=R^2,\qquad
\sum_jt_jt_{j+as}=\sum_{r\neq s}E_r\cos(ar\theta)\quad(a=1,2,4).
\tag{2}
$$
Define
$$
P_r=\left(
\frac{\sin(s\theta)}{2}(n+R^2\cos(r\theta)),
\frac{\sin(2s\theta)}{2}(n+R^2\cos(2r\theta)),
\frac{\sin(4s\theta)}{2}(n+R^2\cos(4r\theta))
\right).
\tag{3}
$$
Equations (1) and (2) show that
$$
(\mathcal A_s,\mathcal A_{2s},\mathcal A_{4s})
=\sum_{r\neq s}\frac{E_r}{R^2}P_r.
\tag{4}
$$
Every nonnegative energy vector in (2) is realized by arbitrary Fourier phases. Therefore
$$
\mathscr R_{n,s,R}=\operatorname{conv}\{P_r:1\leq r\leq h,\ r\neq s\}.
\tag{5}
$$

Step 2: Classify the facets before deleting the forbidden vertex

Write $c_r=\cos(r\theta)$. Since $0<4s\theta<\pi$, an invertible affine map sends $P_r$ to
$$
\Gamma(c_r)=(c_r,c_r^2,c_r^4),
$$
using $\cos(2x)=2\cos^2x-1$ and $\cos(4x)=8\cos^4x-8\cos^2x+1$. The functional $y-2c_rx$ has value $(c_k-c_r)^2-c_r^2$ at $\Gamma(c_k)$, so every $P_r$ is a vertex.

A plane through $\Gamma(a),\Gamma(b),\Gamma(c)$ is $z=p(x)$ with $\deg p\leq2$, and
$$
x^4-p(x)=(x-a)(x-b)(x-c)(x+a+b+c).
\tag{6}
$$
A selected triple is a facet exactly when this product has one sign at every node. Put $\delta=\frac{\pi}{n}$. The gap signs are controlled by
$$
\begin{aligned}
S(p,q)&=c_p+c_{p+1}+c_q+c_{q+1}\\
&=4\cos\delta\cos((p+q+1)\delta)\cos((p-q)\delta),\\
T_i&=c_1+c_h+c_i+c_{i+1}\\
&=\cos(2\delta)-\cos\delta+2\cos\delta\cos((2i+1)\delta).
\end{aligned}
\tag{7}
$$
The formula gives $S(p,q)>0$ for $p+q\leq h-1$ and $S(p,q)<0$ for $p+q\geq h$. Also $T_i$ decreases strictly and changes sign between $\lfloor(h-1)/2\rfloor$ and $\lceil h/2\rceil$. For $h=2m$, its two middle values are
$$
2\sin\frac{3\delta}{2}\left(\cos\delta-\sin\frac{\delta}{2}\right)>0,\qquad
-2\sin\frac{\delta}{2}\left(\sin\frac{3\delta}{2}+\cos\delta\right)<0.
$$
For $h=2m+1$, they are
$$
2\sin\frac{\delta}{2}\left(\cos\delta-\sin\frac{3\delta}{2}\right)>0,\qquad
-2\sin\frac{3\delta}{2}\left(\sin\frac{\delta}{2}+\cos\delta\right)<0.
$$
The alternating signs in (6) force every wrong-sign interval to be empty. For a nonnegative product, one selected pair is adjacent and $d=-(a+b+c)$ occupies the empty gap beside the third root; the two orientations give the first two families below. For a nonpositive product, an endpoint and an adjacent pair are selected, or both endpoints and the middle root are selected. The complete list has $2h-4$ triangular facets:
$$
\begin{aligned}
\mathcal F_0&=
\bigl\{\{i,i+1,h-i\}:1\leq i\leq\lfloor h/2\rfloor-1\bigr\}\\
&\cup\bigl\{\{i,h-i,h-i+1\}:1\leq i\leq\lfloor(h-1)/2\rfloor\bigr\}\\
&\cup\bigl\{\{1,i,i+1\}:2\leq i\leq\lfloor(h-1)/2\rfloor\bigr\}\\
&\cup\bigl\{\{i,i+1,h\}:\lceil h/2\rceil\leq i\leq h-2\bigr\}\\
&\cup\bigl\{\{1,\lceil h/2\rceil,h\}\bigr\}.
\end{aligned}
\tag{8}
$$
The inequalities in (7) are strict, so no fourth node lies on a supporting plane.

Step 3: Remove $P_s$ and identify all replacement facets

Every facet in $\mathcal F_0$ avoiding $s$ remains. The new triples are
$$
\mathcal N_2=\bigl\{\{1,3,h-2\},\{1,h-2,h-1\}\bigr\}
\tag{9}
$$
when $s=2$, and
$$
\mathcal N_s=\bigl\{\{1,s-1,s+1\},\{s-1,s+1,h-s\},
\{s-1,h-s,h-s+1\}\bigr\}
\tag{10}
$$
when $s\geq3$. Every facet is $\operatorname{conv}\{P_r:r\in F\}$ for
$$
\mathcal F_s=\{F\in\mathcal F_0:s\notin F\}\cup\mathcal N_s.
\tag{11}
$$

Here is a sign certificate. For $F=\{a,b,c\}$ let $d_F=-(c_a+c_b+c_c)$. The new supporting planes have
$$
\begin{array}{c|c|c}
s&F&\text{location of }d_F\\ \hline
2&\{1,3,h-2\}&c_{h-2}>d_F>c_{h-1}\\
2&\{1,h-2,h-1\}&c_2>d_F>c_3\\
s\geq3&\{1,s-1,s+1\}&d_F<c_h\\
s\geq3&\{s-1,s+1,h-s\}&c_{h-s}>d_F>c_{h-s+1}\\
s\geq3&\{s-1,h-s,h-s+1\}&c_s>d_F>c_{s+1}
\end{array}
\tag{12}
$$
The needed endpoint signs follow from
$$
\begin{aligned}
L_s&=c_{s-1}+c_{s+1}+2c_{h-s}\\
&=4\sin\frac{\delta}{2}\left(\sin(2s\delta)\cos\frac{\delta}{2}
-\cos(2s\delta)\sin\frac{3\delta}{2}\right)>0,\\
M_s&=c_{s-1}+c_{s+1}+c_{h-s}+c_{h-s+1}\\
&=2\cos(2s\delta)(\cos(2\delta)-\cos\delta)<0.
\end{aligned}
\tag{13}
$$
Indeed, $\tan(2s\delta)>2s\delta\geq4\delta>\frac{\sin(3\delta/2)}{\cos(\delta/2)}$ proves $L_s>0$; the last inequality uses $\sin x<x$ and $\cos(\delta/2)>\frac{1}{2}$. For the third row of (12),
$$
c_1+c_{s-1}+c_{s+1}+c_h
=\cos(2\delta)(1+2\cos(2s\delta))-\cos\delta>0,
$$
because $\cos(2\delta)>\frac{1}{2}$ and $\cos(2s\delta)>\frac{\sqrt{2}}{2}$. The two remaining comparisons use $S(1,h-2)>0$ and $S(s-1,h-s)>0$.

If a new supporting product from (6) changed sign anywhere else, an opposite-sign interval would contain a retained node. If it changes sign only at $c_s$, the adjacent roots are forced to be exactly those in (9) or (10). This proves exhaustion. Four old facets are replaced by two for $s=2$; five are replaced by three for $s\geq3$. The count is $|\mathcal F_s|=2h-6$, and every facet is triangular.

Step 4: Describe every sequence mapping to the boundary

Fourier inversion gives every feasible sequence as
$$
t_j=\sum_{r\neq s}\sqrt{\frac{2E_r}{n}}
\cos(\kappa_rj\theta+\phi_r),\qquad
E_r\geq0,\qquad \sum_{r\neq s}E_r=R^2,
\tag{14}
$$
where $s\kappa_r\equiv\pm r\pmod n$ and the phases are arbitrary. Its area triple is the convex combination (4). A supporting functional reaches equality only when all positive weights lie on its facet. Therefore (14) maps to the boundary exactly when
$$
\{r:E_r>0\}\subseteq F\qquad\text{for some }F\in\mathcal F_s.
\tag{15}
$$
This includes edges and vertices by allowing zero energies. In particular, $P_r$ is attained by $t_j=R\sqrt{\frac{2}{n}}\cos(\kappa_rj\theta+\phi)$.

Step 5: Check the extremal and smallest cases

For $n=19,s=2$, the formula gives eight vertices and twelve triangular facets; the two replacement facets are $\{1,3,7\}$ and $\{1,7,8\}$. Their eighteen edges satisfy $8-18+12=2$. The included vertex $P_1$ is attained with $\kappa_1=9$, whereas $P_s$ would require the forbidden mode $\kappa_s=1$. Positive energies on one listed facet give a boundary point, while positive energies on every retained mode make every facet inequality strict. These tests verify inclusion, exclusion, boundary, and interior cases.

Final Answer: $\boxed{\operatorname{conv}\{P_r:1\leq r\leq h,\ r\neq s\}}$

---

## Answer

$\operatorname{conv}\{P_r:1\leq r\leq h,\ r\neq s\}$

---

## Classification

**Problem Type:** Exhaustive enumeration

**Answer Type:** Interval or region description

---

## Solution Concepts

- discrete Fourier decomposition
- trigonometric moment curve
- supporting-plane sign analysis
- vertex deletion in simplicial polytopes
