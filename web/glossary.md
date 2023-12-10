# Glossary

Generative model
: A generative model tries to emulate the underlying process behind the observed data. To do this, you typically provide a mechanism to connect the data observed to something unknown quantity (the estimand) you wish to estimate. That mechanism might be as simple as an imaginary dice roll.

: In the context of Bayesian Statistics, a generative model is a probabilistic model from which a dataset can be generated. It specifies a joint probability distribution over observation and label sequences. The foremost characteristic feature of a generative model is that it attempts to model how the data is produced — by modeling the process that generates the data, it implicitly or explicitly defines the joint probability distribution over all variables.

Estimand
: An estimand is a parameter, or a set of parameters, which we wish to estimate. It refers to the quantity of interest in a statistical analysis. This could be a population mean, standard deviation, the difference between two means, etc.

Estimator
: An estimator is the statistical technique, or the mathematical rule, used to calculate an estimate of the estimand based on observed data. In a Bayesian context, the estimator often incorporates prior information in the form of a probability distribution about the unknown parameters, and uses the observed data to update this prior and obtain the posterior distribution of the estimand.

Estimate
: An estimate is the actual numerical value calculated from the observed data using the estimator. For instance, the posterior mean, the posterior median, or a MAP (maximum a posteriori) estimate, etc. The estimate will differ as a function of the observed data, and the specifics of the estimator used.

Parameter
: A conjectured value. A way of indexing possible explanations. In the running example of a die (dice) with a certain number of sides painted blue for water  (representing the globe) then the proportion of blue sides is a parameter and might range from 0 to 6 for a 6-sided die. More recently, McElreath uses the term _estimand_ to specify the parameters of interest.

Likelihood
: The relative number of ways that a particular parameter value can produce the observed data. A likelihood requires a model to connect the parameter and the data, and ideally we choose a model with the minimum number of external assumptions and constraints.

: _But(!)_ in conventional statistical conversation, the _likelihood_ has a specific and different meaning: a function of the parameters that is conditional on the data $\mathcal{L}(\theta|y)$. That is the probability (density) of the data given the parameters.

: A Bayesian likelihood function works in two directions. Given a realised observation (a data point) then it will say how plausible that observation is _given_ the model. Given the model’s parameters, the likelihood function defines a distribution of possible observations. We can sample from that distribution to simulate a new observation. In this way, the Bayesian likelihood function is generative. Those simulated data are _dummy data_.

Prior (probability)
: The probability distribution for a parameter before we learn anything from the observed data.

Posterior (probability)
: The probability distribution for a parameter updated by the likelihood after we have inspected the data.

Model
: Bayesian data analysis requires a story that explains how the data came to be. That story may or may not be causal. It is a theory of the world, and this is why science is crucially important. The story must be complete in that it specifies an algorithm to generate new data: that is, in Bayesian statistics, the model must be _generative_.

Variable
: A quantity that can be measured or counted but varies for some reason. For example, height is a variable because it differs from person to person. $\pi$ is not a variable because it is constant. Observable variables (i.e. one that has been measured) are data. Unobservable variables are parameters. The heights of the people in your school are data once measured $h_1, h_2, h_3 ... h_i$. The average height of people in your school is a parameter.

: Variables are either defined in terms of other variables, or probability distributions. For example, the average height of people in your school is defined by adding all the data together and dividing by the number of students. But the average height of all school students is a probability distribution $H$ is normally distributed with mean $\mu$ and variance $\sigma^2$: $H \sim \mathcal{N}(\mu, \sigma^2)$.

Stochastic
: "Stochastic" refers to a mathematical concept where systems or processes have an element of randomness or unpredictability. It's often contrasted with deterministic systems, where outcomes can be precisely predicted given knowledge about initial circumstances.

: A stochastic relationship is a mapping of a variable (or parameter) onto a distribution.

Entropy
: Events that can happen vastly more ways are more likely.

> First, the distribution with the biggest entropy is the widest and least informative distribution. Choosing the distribution with the largest entropy means spreading probability as evenly as possible, while still remaining consistent with anything we think we know about a process. In the context of choosing a prior, it means choosing the least informative distribution consistent with any partial scientific knowledge we have about a parameter. In the context of choosing a likelihood, it means selecting the distribution we’d get by counting up all the ways outcomes could arise, consistent with the constraints on the outcome variable. In both cases, the resulting distribution embodies the least information while remaining true to the information we’ve provided.
  