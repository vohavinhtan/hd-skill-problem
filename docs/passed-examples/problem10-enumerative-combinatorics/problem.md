# Normalized Math Problem

## LaTeX (Normalized)

Let $G$ be the directed grid graph with vertices
$$
V=\{(x,y):0\leq x\leq 6,\ 0\leq y\leq 4\}.
$$
For $0\leq x<6$ there is a horizontal edge
$$
E_{x,y}:(x,y)\to (x+1,y),
$$
and for $0\leq y<4$ there is a vertical edge
$$
N_{x,y}:(x,y)\to (x,y+1).
$$
The energy of an edge is
$$
\varepsilon(E_{x,y})=1+2x+3y+xy,
$$
$$
\varepsilon(N_{x,y})=4+x+5y+2xy.
$$

Let
$$
A_1=(0,0),\qquad A_2=(0,1),
$$
and
$$
B_1=(6,3),\qquad B_2=(6,4).
$$
A path family is a pair $(P_1,P_2)$ of vertex-disjoint directed paths such that $P_i$ goes from $A_i$ to $B_i$.

Mark the following directed edges red:
$$
E_{1,0},\qquad N_{2,1},\qquad E_{4,2},\qquad N_{5,3},
$$
and mark the following directed edges blue:
$$
N_{1,0},\qquad E_{2,1},\qquad N_{3,2},\qquad E_{5,3}.
$$
A path family is called balanced if the union of its two paths uses exactly one red edge and at least one blue edge.

For a balanced family $\mathcal P=(P_1,P_2)$, define
$$
E(\mathcal P)=\sum_{e\in P_1\cup P_2}\varepsilon(e).
$$
For $r\in\{0,1,\ldots,6\}$, let $C_r$ be the number of balanced path families with
$$
E(\mathcal P)\equiv r\pmod 7.
$$
Determine the exact vector
$$
(C_0,C_1,\ldots,C_6).
$$

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Discrete Mathematics and Combinatorics |
| **Sub-domain** | Enumerative combinatorics |

---

## Domain Explanation

This problem involves exact enumeration of nonintersecting directed lattice paths with marked edge constraints and residue refined weights, which is part of Discrete Mathematics and Combinatorics and Enumerative combinatorics.
The problem also involves path generating functions and the Lindstrom Gessel Viennot determinant, which are part of algebraic combinatorics.
However, those algebraic tools only support the enumeration and do not change the main combinatorial focus.
