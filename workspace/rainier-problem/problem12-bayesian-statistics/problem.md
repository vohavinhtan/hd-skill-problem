# Problem

A hidden parameter $\theta$ takes values in $\{0,1,2\}$ with prior probabilities proportional to $1,2,3$, respectively. Given $\theta$, two Bernoulli random variables $X$ and $Y$ are conditionally independent and satisfy

$$
\Pr(X=1\mid \theta)=\frac{\theta+1}{4}.
$$

and

$$
\Pr(Y=1\mid \theta)=\frac{3-\theta}{4}.
$$

After observing that exactly one of $X$ and $Y$ equals $1$, determine the posterior probability vector

$$
\begin{bmatrix}
\Pr(\theta=0\mid X+Y=1)\\
\Pr(\theta=1\mid X+Y=1)\\
\Pr(\theta=2\mid X+Y=1)
\end{bmatrix}.
$$

**Domain:** Probability and Statistics

**Sub-domain:** Bayesian statistics

**Problem Type:** Exact computation

**Answer Type:** Vector

**Difficulty:** Hard

**Domain Explanation:** This problem asks for a posterior distribution after observing a compound event in a finite Bayesian model. The calculation uses conditional independence, Bayes' rule, and exact normalization of likelihood-weighted prior probabilities. It is a Bayesian statistics problem because the requested answer is the conditional distribution of an unknown parameter after evidence is observed.
