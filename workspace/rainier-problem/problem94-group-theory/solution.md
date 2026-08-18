## Steps

Step 1: Convert the automorphism conditions into two alternating-form identities

For $u=(x,y)$ and $v=(x',y')$, write
$$
\Delta(u,v)=xy'-yx',\qquad \omega_0(u,v)=\operatorname{Tr}(\Delta(u,v)),\qquad \omega_1(u,v)=\operatorname{Tr}(\theta\Delta(u,v)).
$$
The group law gives
$$
[(u,0,0),(v,0,0)]=(0,\omega_0(u,v),\omega_1(u,v)).
$$

Repeated Frobenius gives $\theta^{p^j}=\theta+j$ for $0\leq j<p$. Therefore
$$
\operatorname{Tr}(\theta^{p-1})=\sum_{j\in\mathbb{F}_p}(\theta+j)^{p-1}=-1.
$$
If $u\neq0$, one can choose $v$ with $\Delta(u,v)=\theta^{p-1}$, so $\omega_0(u,v)\neq0$. Hence $\omega_0$ is nondegenerate.

Let $L=\bar\alpha$. Since $G/Z$ is elementary abelian, $L$ is $\mathbb{F}_p$-linear. The conditions on $Z_1\subset Z$ force the restriction of $\alpha$ to $Z$ to have the form
$$
(a,b)\longmapsto(a,ca+db)
$$
with $c\in\mathbb{F}_p$ and $d\in\mathbb{F}_p^\times$. Preservation of commutators yields
$$
\omega_0(Lu,Lv)=\omega_0(u,v),\qquad \omega_1(Lu,Lv)=c\omega_0(u,v)+d\omega_1(u,v).
$$

Step 2: Recover multiplication by $\theta$ from the commutator forms

Let $T:K^2\to K^2$ be multiplication by $\theta$ in both coordinates. Then
$$
\omega_1(u,v)=\omega_0(Tu,v).
$$
Using the identities from Step 1 gives
$$
\omega_0(TLu,Lv)=\omega_0(L(cI+dT)u,Lv)
$$
for every $u,v$. Nondegeneracy of $\omega_0$ and invertibility of $L$ give
$$
TL=L(cI+dT).
$$
Equivalently,
$$
L^{-1}TL=cI+dT.
$$

Step 3: Use the Artin-Schreier relation to force a Frobenius twist

The relation $\theta^p=\theta+1$ gives
$$
T^p=T+I.
$$
Since $cI+dT$ is similar to $T$, it satisfies the same relation. In characteristic $p$,
$$
0=(cI+dT)^p-(cI+dT)-I=(d-1)I.
$$
Therefore $d=1$.

Introduce the coordinatewise Frobenius map
$$
\sigma(x,y)=(x^p,y^p).
$$
It satisfies
$$
\sigma^jT=(T+jI)\sigma^j.
$$
Choose $i$ with $0\leq i<p$ and $i\equiv-c\pmod p$. Put
$$
A=L\sigma^{-i}.
$$
Since $c=-i$ in $\mathbb{F}_p$, Step 2 and the Frobenius relation give
$$
AT=TA.
$$
Now $K=\mathbb{F}_p(\theta)$, so commuting with multiplication by $\theta$ implies that $A$ commutes with multiplication by every element of $K$. Hence $A$ is $K$-linear and
$$
L=A\circ\sigma^i
$$
for some $A\in\operatorname{GL}_2(K)$.

Step 4: Determine the determinant of the linear factor

Let $\delta=\det_K A$. Since
$$
\Delta(Lu,Lv)=\delta\,\sigma^i(\Delta(u,v)),
$$
the first identity in Step 1 implies
$$
\operatorname{Tr}(\delta\,\sigma^i(z))=\operatorname{Tr}(z)
$$
for every $z\in K$. Since trace is invariant under Frobenius,
$$
\operatorname{Tr}((\sigma^{-i}(\delta)-1)z)=0
$$
for every $z\in K$.

Set $q=\sigma^{-i}(\delta)-1$. If $q\neq0$, choose
$$
z=q^{-1}\theta^{p-1}.
$$
Then Step 1 gives
$$
\operatorname{Tr}(qz)=\operatorname{Tr}(\theta^{p-1})=-1,
$$
a contradiction. Therefore $\delta=1$. Every allowed induced map has the form
$$
(x,y)\longmapsto A(x^{p^i},y^{p^i})
$$
with $A\in\operatorname{SL}_2(K)$ and $0\leq i<p$.

Step 5: Lift every map in the candidate family

Take $A\in\operatorname{SL}_2(K)$ and $0\leq i<p$, and define
$$
L(x,y)=A(x^{p^i},y^{p^i}).
$$
For $z=\Delta(u,v)$,
$$
\omega_0(Lu,Lv)=\operatorname{Tr}(z)=\omega_0(u,v).
$$
Also,
$$
\omega_1(Lu,Lv)=\operatorname{Tr}(\theta\sigma^i(z))=\operatorname{Tr}((\theta-i)z)=\omega_1(u,v)-i\omega_0(u,v).
$$
Define
$$
\alpha(u,a,b)=(Lu,a,b-ia).
$$
The last two identities show directly that $\alpha$ respects the multiplication in $G$. It is bijective, preserves $Z_1$, and acts identically on $Z/Z_1$. Its induced map on $G/Z$ is $L$, so every map in the candidate family occurs.

Final Answer: $\boxed{\{(x,y)\mapsto A(x^{p^i},y^{p^i}):A\in\operatorname{SL}_2(K),0\leq i<p\}}$

## Answer

$\{(x,y)\mapsto A(x^{p^i},y^{p^i}):A\in\operatorname{SL}_2(K),0\leq i<p\}$

## Classification

| Field | Value |
|---|---|
| **Domain** | Abstract Algebra |
| **Sub-domain** | Group theory |
| **Problem Type** | Exhaustive enumeration |
| **Answer Type** | Set or multiset of objects |

## Solution Concepts

- class two p-groups
- commutator bilinear forms
- trace pairing over finite fields
- Artin-Schreier extensions
- semilinear transformations
