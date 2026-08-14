# Normalized Math Problem

## LaTeX (Normalized)

Fix a positive integer $a$. A label is an ordered pair $(c,e)\in\mathbb{Z}_{\geq 0}^2$. A label $(d,f)$ is a junior of $(c,e)$ if either $d<c$, or $d=c$ and $f<e$.

A position is a finite set $S$ of labels. One move chooses $(a,b)\in S$, removes it, and inserts a set of at most two distinct juniors of $(a,b)$; the inserted set may be empty. If an inserted junior already belongs to $S\setminus\{(a,b)\}$, only one copy is retained. Write $S\to T$ when $T$ is obtained from $S$ by one move.

For each position $S$, define its ordinal height by
$$
h(S)=\sup\{h(T)+1:S\to T\},
$$
with the supremum of the empty set equal to $0$. The move relation is well-founded, so this recursion is well-defined.

Determine the sequence $\bigl(h(\{(a,b)\})\bigr)_{b\geq0}$ in closed form, with each term written in Cantor normal form.

---

## Domain Classification

| Field | Value |
|---|---|
| **Domain** | Logic, Set Theory, and Foundations |
| **Sub-domain** | Proof theory |
| **Problem Type** | Symbolic derivation |
| **Answer Type** | Sequence or series representation |

---

## Domain Explanation

This problem asks for the exact ordinal rank sequence of a parameterized well-founded rewrite system, using termination measures and Cantor normal form, so its primary classification is Logic, Set Theory, and Foundations and Proof theory. Set theory is the strongest competing domain because transfinite recursion and ordinal arithmetic are needed supporting tools, but the central task is to calibrate a rewrite process by a proof-theoretic ordinal measure rather than to study ordinals as standalone set-theoretic objects.
