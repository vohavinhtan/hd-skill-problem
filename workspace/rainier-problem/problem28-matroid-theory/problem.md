# Normalized Math Problem

## LaTeX (Normalized)

Let $q$ be an odd prime power, and let $\eta:\mathbb F_q\to\{0,1,-1\}$ be the quadratic character, with $\eta(0)=0$. In the projective plane $\mathbb P^2(\mathbb F_q)$, consider the quadratic form
$$
Q(X,Y,Z)=XZ-Y^2.
$$
Let $E_q$ be the set of projective points
$$
E_q=\{[x:y:z]:\eta(xz-y^2)=1\}.
$$
Define a simple rank-three matroid $M_q$ on the ground set $E_q$ by declaring a subset of $E_q$ to be independent exactly when the corresponding projective points are linearly independent in $\mathbb F_q^3$.

Determine the characteristic polynomial $\chi_{M_q}(t)$ of this matroid as an explicit polynomial in $t$ and $q$. Your answer may use the single sign $\eta(-1)$, but no other undefined auxiliary quantities.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Discrete Mathematics and Combinatorics |
| **Sub-domain** | Matroid theory |
| **Problem Type** | Transformation between representations |
| **Answer Type** | Polynomial or rational function |

---

## Domain Explanation

This problem is classified under Discrete Mathematics and Combinatorics / Matroid theory because the central object is a rank-three matroid represented by points in a finite projective plane, and the requested output is its characteristic polynomial. Finite-field quadratic forms and conics are needed to count the rank-two flats, but they serve the matroid computation rather than replacing it. The next-best classification would be finite geometry, yet the final object and comparison target are matroidal.
