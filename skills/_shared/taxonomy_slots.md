# Shared Taxonomy Slot Snapshot

This file is the source of truth for currently usable taxonomy slots. Update it whenever the portal capacity changes. Skills must read this file before choosing or changing a Domain/Sub-domain, Problem Type, or Answer Type.

Last updated from user-provided portal snapshot: 2026-08-03 (118 open rows, all counts set directly from the 2026-08-03 portal). Relative to the 2026-08-01 snapshot, two structural changes: **Differential Equations and Dynamical Systems / Stability theory REOPENED** (was closed, now 7), and **Linear Algebra / Matrix decompositions and canonical forms is no longer listed** in the portal snapshot (was 6; now treated as closed and moved to the bottom, per the same convention that closed Stability theory earlier). Many counts also moved — mostly down as slots were consumed (e.g. Group theory 4→2, Graph theory 9→4, Extremal combinatorics 5→3, Algebraic topology 5→3, Linear transformations 5→4, Differential topology 13→10); a few rose (Real analysis 6→7, Nonlinear optimization 7→8). Every open count below is the current portal value; the single closed row is listed at the bottom.

## Selection Rules

- Treat rows with `Status` equal to `closed`, `full`, or `0` remaining slots as unavailable.
- Among honest mathematical fits, choose from the available rows using the active prompt guidance, not by smallest remaining count.
- If several rows are equally honest fits, use problem quality, originality, and any populated accepted-theme history to break ties.
- If `Remaining slots` is `unknown`, use the row only when no positive-count row honestly fits, or when the user explicitly requests it.
- Never force a taxonomy label only because of slot bookkeeping. Primary mathematical content still decides the label.
- If the user provides a newer portal snapshot in chat, use that snapshot for the current run and remind the user to update this file afterward.

## Domain/Sub-domain Slots

| Domain | Sub-domain | Remaining slots | Status | Notes |
|---|---|---:|---|---|
| Abstract Algebra | Group theory | 2 | open | 2026-08-03 user-provided snapshot. |
| Abstract Algebra | Commutative algebra | 3 | open | 2026-08-03 user-provided snapshot. |
| Abstract Algebra | Representation theory | 4 | open | 2026-08-03 user-provided snapshot. |
| Abstract Algebra | Homological Algebra | 5 | open | 2026-08-03 user-provided snapshot. |
| Abstract Algebra | Ring theory | 5 | open | 2026-08-03 user-provided snapshot. |
| Abstract Algebra | Galois theory | 7 | open | 2026-08-03 user-provided snapshot. |
| Abstract Algebra | Module theory | 7 | open | 2026-08-03 user-provided snapshot. |
| Abstract Algebra | Field theory | 8 | open | 2026-08-03 user-provided snapshot. |
| Abstract Algebra | Universal algebra and algebraic structures | 10 | open | 2026-08-03 user-provided snapshot. |
| Abstract Algebra | Computational algebra | 12 | open | 2026-08-03 user-provided snapshot. |
| Algebra, Functions, and Trigonometry | Polynomial and rational functions | 11 | open | 2026-08-03 user-provided snapshot. |
| Algebra, Functions, and Trigonometry | Sequences and elementary recurrence relations | 12 | open | 2026-08-03 user-provided snapshot. |
| Algebra, Functions, and Trigonometry | Trigonometry | 12 | open | 2026-08-03 user-provided snapshot. |
| Algebra, Functions, and Trigonometry | Algebraic expressions and manipulation | 13 | open | 2026-08-03 user-provided snapshot. |
| Algebra, Functions, and Trigonometry | Elementary mathematical modeling | 13 | open | 2026-08-03 user-provided snapshot. |
| Algebra, Functions, and Trigonometry | Equations and inequalities | 13 | open | 2026-08-03 user-provided snapshot. |
| Algebra, Functions, and Trigonometry | Exponential and logarithmic functions | 13 | open | 2026-08-03 user-provided snapshot. |
| Algebra, Functions, and Trigonometry | Functions and graphs | 13 | open | 2026-08-03 user-provided snapshot. |
| Algebra, Functions, and Trigonometry | Systems of equations | 13 | open | 2026-08-03 user-provided snapshot. |
| Analysis | Asymptotic analysis | 5 | open | 2026-08-03 user-provided snapshot. |
| Analysis | Functional analysis | 6 | open | 2026-08-03 user-provided snapshot. |
| Analysis | Measure theory | 7 | open | 2026-08-03 user-provided snapshot. |
| Analysis | Real analysis | 7 | open | 2026-08-03 user-provided snapshot. |
| Analysis | Fourier analysis | 8 | open | 2026-08-03 user-provided snapshot. |
| Analysis | Complex analysis | 9 | open | 2026-08-03 user-provided snapshot. |
| Analysis | Harmonic analysis | 9 | open | 2026-08-03 user-provided snapshot. |
| Analysis | Calculus of variations | 11 | open | 2026-08-03 user-provided snapshot. |
| Analysis | Metric spaces | 11 | open | 2026-08-03 user-provided snapshot. |
| Calculus | Integration | 11 | open | 2026-08-03 user-provided snapshot. |
| Calculus | Single-variable calculus | 11 | open | 2026-08-03 user-provided snapshot. |
| Calculus | Applications of derivatives | 12 | open | 2026-08-03 user-provided snapshot. |
| Calculus | Multivariable calculus | 12 | open | 2026-08-03 user-provided snapshot. |
| Calculus | Applications of integration | 13 | open | 2026-08-03 user-provided snapshot. |
| Calculus | Differentiation | 13 | open | 2026-08-03 user-provided snapshot. |
| Calculus | Infinite sequences and series | 13 | open | 2026-08-03 user-provided snapshot. |
| Calculus | Vector calculus | 13 | open | 2026-08-03 user-provided snapshot. |
| Calculus | Limits and continuity | 18 | open | 2026-08-03 user-provided snapshot. |
| Differential Equations and Dynamical Systems | Dynamical systems | 7 | open | 2026-08-03 user-provided snapshot. |
| Differential Equations and Dynamical Systems | Stability theory | 7 | open | 2026-08-03 user-provided snapshot. Reopened (was closed since 2026-07-31). |
| Differential Equations and Dynamical Systems | Partial differential equations | 8 | open | 2026-08-03 user-provided snapshot. |
| Differential Equations and Dynamical Systems | Boundary value problems | 10 | open | 2026-08-03 user-provided snapshot. |
| Differential Equations and Dynamical Systems | First-order ordinary differential equations | 11 | open | 2026-08-03 user-provided snapshot. |
| Differential Equations and Dynamical Systems | Systems of differential equations | 11 | open | 2026-08-03 user-provided snapshot. |
| Differential Equations and Dynamical Systems | Bifurcation theory | 12 | open | 2026-08-03 user-provided snapshot. |
| Differential Equations and Dynamical Systems | Higher-order ordinary differential equations | 12 | open | 2026-08-03 user-provided snapshot. |
| Differential Equations and Dynamical Systems | Initial value problems | 12 | open | 2026-08-03 user-provided snapshot. |
| Differential Equations and Dynamical Systems | Numerical differential equations | 12 | open | 2026-08-03 user-provided snapshot. |
| Discrete Mathematics and Combinatorics | Extremal combinatorics | 3 | open | 2026-08-03 user-provided snapshot. |
| Discrete Mathematics and Combinatorics | Graph theory | 4 | open | 2026-08-03 user-provided snapshot. |
| Discrete Mathematics and Combinatorics | Basic counting principles | 5 | open | 2026-08-03 user-provided snapshot. |
| Discrete Mathematics and Combinatorics | Discrete structures | 5 | open | 2026-08-03 user-provided snapshot. |
| Discrete Mathematics and Combinatorics | Enumerative combinatorics | 5 | open | 2026-08-03 user-provided snapshot. |
| Discrete Mathematics and Combinatorics | Generating functions | 5 | open | 2026-08-03 user-provided snapshot. |
| Discrete Mathematics and Combinatorics | Probabilistic combinatorics | 7 | open | 2026-08-03 user-provided snapshot. |
| Discrete Mathematics and Combinatorics | Design theory and finite geometry | 9 | open | 2026-08-03 user-provided snapshot. |
| Discrete Mathematics and Combinatorics | Matroid theory | 9 | open | 2026-08-03 user-provided snapshot. |
| Euclidean, Coordinate, and Transformational Geometry | Coordinate and analytic geometry | 7 | open | 2026-08-03 user-provided snapshot. |
| Euclidean, Coordinate, and Transformational Geometry | Euclidean geometry | 7 | open | 2026-08-03 user-provided snapshot. |
| Euclidean, Coordinate, and Transformational Geometry | Trigonometric geometry | 7 | open | 2026-08-03 user-provided snapshot. |
| Euclidean, Coordinate, and Transformational Geometry | Solid geometry | 10 | open | 2026-08-03 user-provided snapshot. |
| Euclidean, Coordinate, and Transformational Geometry | Transformational geometry | 10 | open | 2026-08-03 user-provided snapshot. |
| Euclidean, Coordinate, and Transformational Geometry | Computational geometry | 13 | open | 2026-08-03 user-provided snapshot. |
| Euclidean, Coordinate, and Transformational Geometry | Analytic geometry | 14 | open | 2026-08-03 user-provided snapshot. |
| Linear Algebra | Linear transformations | 4 | open | 2026-08-03 user-provided snapshot. |
| Linear Algebra | Eigenvalues and eigenvectors | 5 | open | 2026-08-03 user-provided snapshot. |
| Linear Algebra | Matrices and matrix operations | 9 | open | 2026-08-03 user-provided snapshot. |
| Linear Algebra | Vectors and vector spaces | 9 | open | 2026-08-03 user-provided snapshot. |
| Linear Algebra | Inner product spaces | 10 | open | 2026-08-03 user-provided snapshot. |
| Linear Algebra | Tensor and multilinear algebra | 10 | open | 2026-08-03 user-provided snapshot. |
| Linear Algebra | Determinants | 11 | open | 2026-08-03 user-provided snapshot. |
| Linear Algebra | Systems of linear equations | 11 | open | 2026-08-03 user-provided snapshot. |
| Linear Algebra | Numerical linear algebra | 15 | open | 2026-08-03 user-provided snapshot. |
| Logic, Set Theory, and Foundations | Model theory | 9 | open | 2026-08-03 user-provided snapshot. |
| Logic, Set Theory, and Foundations | Mathematical logic | 10 | open | 2026-08-03 user-provided snapshot. |
| Logic, Set Theory, and Foundations | Set theory | 12 | open | 2026-08-03 user-provided snapshot. |
| Logic, Set Theory, and Foundations | Category theory | 13 | open | 2026-08-03 user-provided snapshot. |
| Logic, Set Theory, and Foundations | Computability theory | 14 | open | 2026-08-03 user-provided snapshot. |
| Logic, Set Theory, and Foundations | Proof theory | 14 | open | 2026-08-03 user-provided snapshot. |
| Logic, Set Theory, and Foundations | Type theory and formal systems | 14 | open | 2026-08-03 user-provided snapshot. |
| Logic, Set Theory, and Foundations | Complexity theory | 15 | open | 2026-08-03 user-provided snapshot. |
| Number Theory | Algebraic number theory | 10 | open | 2026-08-03 user-provided snapshot. |
| Number Theory | Diophantine equations | 11 | open | 2026-08-03 user-provided snapshot. |
| Number Theory | Modular arithmetic and congruences | 11 | open | 2026-08-03 user-provided snapshot. |
| Number Theory | Elementary number theory | 12 | open | 2026-08-03 user-provided snapshot. |
| Number Theory | Multiplicative functions | 12 | open | 2026-08-03 user-provided snapshot. |
| Number Theory | Quadratic residues and reciprocity | 12 | open | 2026-08-03 user-provided snapshot. |
| Number Theory | Analytic number theory | 15 | open | 2026-08-03 user-provided snapshot. |
| Number Theory | Computational number theory | 15 | open | 2026-08-03 user-provided snapshot. |
| Optimization and Numerical Mathematics | Linear programming | 7 | open | 2026-08-03 user-provided snapshot. |
| Optimization and Numerical Mathematics | Discrete and integer optimization | 8 | open | 2026-08-03 user-provided snapshot. |
| Optimization and Numerical Mathematics | Nonlinear optimization | 8 | open | 2026-08-03 user-provided snapshot. |
| Optimization and Numerical Mathematics | Numerical optimization | 8 | open | 2026-08-03 user-provided snapshot. |
| Optimization and Numerical Mathematics | Approximation theory | 9 | open | 2026-08-03 user-provided snapshot. |
| Optimization and Numerical Mathematics | Convex optimization | 9 | open | 2026-08-03 user-provided snapshot. |
| Optimization and Numerical Mathematics | Dynamic programming and optimal control | 10 | open | 2026-08-03 user-provided snapshot. |
| Optimization and Numerical Mathematics | Error analysis and stability | 10 | open | 2026-08-03 user-provided snapshot. |
| Optimization and Numerical Mathematics | Numerical analysis | 10 | open | 2026-08-03 user-provided snapshot. |
| Optimization and Numerical Mathematics | Scientific computing | 11 | open | 2026-08-03 user-provided snapshot. |
| Probability and Statistics | Stochastic processes | 6 | open | 2026-08-03 user-provided snapshot. |
| Probability and Statistics | Joint distributions and dependence | 7 | open | 2026-08-03 user-provided snapshot. |
| Probability and Statistics | Probability foundations | 8 | open | 2026-08-03 user-provided snapshot. |
| Probability and Statistics | Statistical inference | 8 | open | 2026-08-03 user-provided snapshot. |
| Probability and Statistics | Expectation and variance | 10 | open | 2026-08-03 user-provided snapshot. |
| Probability and Statistics | Limit theorems | 10 | open | 2026-08-03 user-provided snapshot. |
| Probability and Statistics | Random variables and distributions | 10 | open | 2026-08-03 user-provided snapshot. |
| Probability and Statistics | Regression and statistical modeling | 10 | open | 2026-08-03 user-provided snapshot. |
| Probability and Statistics | Statistical computing and simulation | 10 | open | 2026-08-03 user-provided snapshot. |
| Probability and Statistics | Bayesian statistics | 11 | open | 2026-08-03 user-provided snapshot. |
| Probability and Statistics | Experimental design and causal inference | 11 | open | 2026-08-03 user-provided snapshot. |
| Topology and Geometry | Algebraic geometry | 3 | open | 2026-08-03 user-provided snapshot. |
| Topology and Geometry | Algebraic topology | 3 | open | 2026-08-03 user-provided snapshot. |
| Topology and Geometry | Geometric topology | 7 | open | 2026-08-03 user-provided snapshot. |
| Topology and Geometry | Point-set topology | 8 | open | 2026-08-03 user-provided snapshot. |
| Topology and Geometry | Riemannian geometry | 8 | open | 2026-08-03 user-provided snapshot. |
| Topology and Geometry | Convex geometry | 9 | open | 2026-08-03 user-provided snapshot. |
| Topology and Geometry | Symplectic and contact geometry | 9 | open | 2026-08-03 user-provided snapshot. |
| Topology and Geometry | Differential topology | 10 | open | 2026-08-03 user-provided snapshot. |
| Topology and Geometry | Differential geometry | 12 | open | 2026-08-03 user-provided snapshot. |
| Linear Algebra | Matrix decompositions and canonical forms | 0 | closed | Open (6) in the 2026-08-01 snapshot; not listed in the 2026-08-03 snapshot, so treated as closed. |

## Problem Type Slots

Select **exactly one**. Every skill that classifies or verifies a Problem Type reads this table as the authoritative definition list — do not re-derive or re-copy these sentences elsewhere.

| Problem Type | Definition | Remaining slots | Status | Notes |
|---|---|---:|---|---|
| Exhaustive enumeration | Asks for the complete set of all valid solutions, cases, or objects satisfying the given criteria | unknown | open | Bonus type. |
| Optimization | Asks for an optimal value, an optimizer, or both under a given objective and constraint set | unknown | open | Bonus type. |
| Construction under constraints | Asks for the unique mathematical object that satisfies a stated set of structural or quantitative constraints | unknown | open | Bonus type. |
| Parameter identification | Asks for unknown parameters, coefficients, or latent quantities to be inferred from equations, conditions, or observed structure | unknown | open | Bonus type. |
| Transformation between representations | Asks for conversion of an object from one mathematically equivalent representation to another | unknown | open | Bonus type. |
| Canonicalization or normalization | Asks for an object to be rewritten in a specified standard, reduced, or canonical form | unknown | open | Bonus type. |
| Solve for unknowns | Asks for one or more values or objects that satisfy a given equation, system, or mathematical condition | unknown | open | Bonus type. |
| Symbolic derivation | Asks for a closed-form expression, identity, recurrence, transform, or asymptotic form obtained through symbolic reasoning | unknown | open | Use only when stronger bonus types do not fit. |
| Exact computation | Asks for an exact numerical value or exact mathematical object derived from the given information | unknown | open | Bare scalar answers need a written scalar-depth defense (`skills/_shared/frontier_authoring_guide.md`); prefer a bonus type when one honestly fits. |
| Numerical approximation | Asks for a numerical answer computed to a specified tolerance, precision, or error bound | unknown | open | Use only with explicit tolerance stated in the problem. |
| Other | A task that does not honestly fit any of the listed problem types | unknown | open | Use only when no listed type honestly fits. |

**Priority order** when more than one bonus type honestly fits: `Exhaustive enumeration`, `Optimization`, `Construction under constraints`, `Parameter identification`, `Transformation between representations`, `Canonicalization or normalization`, `Solve for unknowns` — in that order, ahead of `Symbolic derivation`, `Exact computation`, and `Numerical approximation`. The type must describe the requested final task, not a technique used along the way.

## Answer Type Slots

Select **exactly one**. Every skill that classifies or verifies an Answer Type reads this table as the authoritative definition list — do not re-derive or re-copy these sentences elsewhere.

| Answer Type | Definition | Remaining slots | Status | Notes |
|---|---|---:|---|---|
| Exact scalar | A single exact numerical quantity, such as an integer, rational number, algebraic number, or closed-form constant | unknown | open | Needs a written scalar-depth defense (`skills/_shared/frontier_authoring_guide.md`) for frontier problems; prefer a bonus type when one honestly fits. |
| Numerical scalar approximation | A single numerical quantity expected up to a specified tolerance or precision | unknown | open | Use only with explicit tolerance stated in the problem. |
| Exact symbolic expression | A closed-form symbolic expression representing the correct final answer up to mathematical equivalence | unknown | open | Use only when no bonus answer type honestly fits. |
| Polynomial or rational function | A polynomial, rational function, or closely related algebraic expression returned in symbolic form | unknown | open | Bonus type. |
| Equation or inequality | An equation, system, inequality, or equivalent constraint description returned as the final object | unknown | open | Bonus type. |
| Interval or region description | An interval, locus, region, domain, range, or subset described by inequalities, bounds, or a geometric condition | unknown | open | Bonus type. |
| Vector | A finite-dimensional vector returned as coordinates, components, or an equivalent explicit representation | unknown | open | Bonus type. |
| Matrix | A matrix returned explicitly, typically with entries in exact or numerical form as specified | unknown | open | Bonus type. |
| Tuple or ordered list | A finite ordered collection of values, objects, labels, or coordinates where order matters | unknown | open | Bonus type. |
| Set or multiset of objects | A complete finite collection of valid outputs, where order is irrelevant and multiplicity may or may not matter | unknown | open | Bonus type. |
| Sequence or series representation | A sequence, recurrence, finite truncation rule, or series-form representation of the target object | unknown | open | Bonus type. |
| Function or mapping | A function, transformation, homomorphism, permutation, operator, rule, or mapping specified explicitly by formula, table, images of elements, or action on a basis | unknown | open | Bonus type. |
| Canonical form | A mathematical object expressed in a specified standard or normalized form, such as diagonal form, Jordan form, or reduced row echelon form | unknown | open | Bonus type. |
| Other | A final answer object that does not honestly fit the listed types | unknown | open | Use only when no listed type honestly fits. |

**Priority order** when more than one bonus type honestly fits: `Set or multiset of objects`, `Matrix`, `Vector`, `Tuple or ordered list`, `Polynomial or rational function`, `Function or mapping`, `Canonical form`, `Interval or region description`, `Equation or inequality`, `Sequence or series representation` — in that order, ahead of `Exact symbolic expression` and `Exact scalar`. Classify by the **final requested object**, never by an intermediate object used only inside the derivation (e.g. a solution that uses a matrix along the way is not automatically `Matrix` unless the final answer itself is the matrix).
