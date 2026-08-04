# Solution

## Step 1: Normalize the prior

The prior weights for $\theta=0,1,2$ are $1,2,3$. Their sum is

$$
1+2+3=6.
$$

So

$$
\Pr(\theta=0)=\frac16,
$$

$$
\Pr(\theta=1)=\frac26=\frac13,
$$

and

$$
\Pr(\theta=2)=\frac36=\frac12.
$$

## Step 2: Write the likelihood of the observed event

Let

$$
E=\{X+Y=1\}.
$$

For a fixed value of $\theta$, exactly one of $X$ and $Y$ equals $1$ in two disjoint ways:

$$
X=1,\ Y=0
$$

or

$$
X=0,\ Y=1.
$$

Given $\theta$, the variables are independent. If

$$
p_\theta=\Pr(X=1\mid \theta)
$$

and

$$
q_\theta=\Pr(Y=1\mid \theta),
$$

then

$$
\Pr(E\mid \theta)=p_\theta(1-q_\theta)+(1-p_\theta)q_\theta.
$$

## Step 3: Compute the likelihood for $\theta=0$

For $\theta=0$,

$$
p_0=\frac{0+1}{4}=\frac14
$$

and

$$
q_0=\frac{3-0}{4}=\frac34.
$$

Then

$$
1-q_0=1-\frac34=\frac14
$$

and

$$
1-p_0=1-\frac14=\frac34.
$$

So

$$
\Pr(E\mid \theta=0)
=\frac14\cdot\frac14+\frac34\cdot\frac34.
$$

Compute the products:

$$
\frac14\cdot\frac14=\frac{1}{16}
$$

and

$$
\frac34\cdot\frac34=\frac{9}{16}.
$$

So

$$
\Pr(E\mid \theta=0)=\frac{1}{16}+\frac{9}{16}=\frac{10}{16}=\frac58.
$$

## Step 4: Compute the likelihood for $\theta=1$

For $\theta=1$,

$$
p_1=\frac{1+1}{4}=\frac12
$$

and

$$
q_1=\frac{3-1}{4}=\frac12.
$$

Then

$$
1-q_1=\frac12
$$

and

$$
1-p_1=\frac12.
$$

So

$$
\Pr(E\mid \theta=1)
=\frac12\cdot\frac12+\frac12\cdot\frac12.
$$

Each product is

$$
\frac12\cdot\frac12=\frac14.
$$

This gives

$$
\Pr(E\mid \theta=1)=\frac14+\frac14=\frac12.
$$

## Step 5: Compute the likelihood for $\theta=2$

For $\theta=2$,

$$
p_2=\frac{2+1}{4}=\frac34
$$

and

$$
q_2=\frac{3-2}{4}=\frac14.
$$

Then

$$
1-q_2=1-\frac14=\frac34
$$

and

$$
1-p_2=1-\frac34=\frac14.
$$

So

$$
\Pr(E\mid \theta=2)
=\frac34\cdot\frac34+\frac14\cdot\frac14.
$$

Compute the products:

$$
\frac34\cdot\frac34=\frac{9}{16}
$$

and

$$
\frac14\cdot\frac14=\frac{1}{16}.
$$

So

$$
\Pr(E\mid \theta=2)=\frac{9}{16}+\frac{1}{16}=\frac{10}{16}=\frac58.
$$

## Step 6: Multiply prior by likelihood

The unnormalized posterior weights are:

$$
\theta=0:\quad \frac16\cdot\frac58=\frac{5}{48},
$$

$$
\theta=1:\quad \frac13\cdot\frac12=\frac{1}{6},
$$

and

$$
\theta=2:\quad \frac12\cdot\frac58=\frac{5}{16}.
$$

Use denominator $48$:

$$
\frac{5}{48}=\frac{5}{48},
$$

$$
\frac16=\frac{8}{48},
$$

and

$$
\frac{5}{16}=\frac{15}{48}.
$$

Their sum is

$$
\frac{5+8+15}{48}=\frac{28}{48}=\frac{7}{12}.
$$

## Step 7: Normalize

For $\theta=0$,

$$
\frac{\frac{5}{48}}{\frac{7}{12}}
=\frac{5}{48}\cdot\frac{12}{7}
=\frac{60}{336}
=\frac{5}{28}.
$$

For $\theta=1$,

$$
\frac{\frac{1}{6}}{\frac{7}{12}}
=\frac{1}{6}\cdot\frac{12}{7}
=\frac{12}{42}
=\frac{2}{7}.
$$

For $\theta=2$,

$$
\frac{\frac{5}{16}}{\frac{7}{12}}
=\frac{5}{16}\cdot\frac{12}{7}
=\frac{60}{112}
=\frac{15}{28}.
$$

Check the three posterior probabilities sum to $1$:

$$
\frac{5}{28}+\frac{2}{7}+\frac{15}{28}
=\frac{5}{28}+\frac{8}{28}+\frac{15}{28}
=\frac{28}{28}
=1.
$$

Final Answer: $\boxed{\begin{bmatrix}\frac{5}{28}\\ \frac{2}{7}\\ \frac{15}{28}\end{bmatrix}}$

## Answer

$\begin{bmatrix}\frac{5}{28}\\ \frac{2}{7}\\ \frac{15}{28}\end{bmatrix}$

**Classification**

**Domain:** Probability and Statistics

**Sub-domain:** Bayesian statistics

**Problem Type:** Exact computation

**Answer Type:** Vector

**Concepts:** Bayes' rule, conditional independence, posterior distribution, likelihood normalization

## Black-Box Audit

The solution computes the likelihood of the observed event separately for every value of $\theta$, including both disjoint cases that form the event $X+Y=1$. Each prior-likelihood product, common denominator, normalization division, and final sum check is shown explicitly, so the solution is fully by hand with no external computational tools.
