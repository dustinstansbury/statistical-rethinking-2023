---
Title: Probability and Plausibility
Date: 2020-05-28 08:28
Modified: 2020-05-28 08:28
Category: teaching
Tags: rethinking
Authors: Steve Harris
Status: draft
---

Components of a model
- prior
- likelihood
- posterior

Science proceeds by asking a question. We can arrive at the answer in one of two ways. By directly observing, or by some insight that allows us to predict. Take the 'all swans are white' example. We want to know the colour of the next swan. We can either go and find the that swan, and have a certain answer. Or we can rely on our rule, and claim that the next swan must be white. While the latter is uncertain it is also powerful. At the very least, it saves us the effort of finding not just the next swan, but the one after that, and so on.

The 'all swans are white rule' is deterministic, but most insights are less simple. Most swans are white is a more useful rule because it will not have to be discarded after finding the first black swan. But its implementation requires some notion of greyness (pun intended), belief, plausibility, or probability. 

The two broad frameworks that are used are known as 'frequentist' or 'Bayesian'. The frequentist approach imagines the observed world as a sample of the observed and unobserved world. There is a true proportion of black swans. Our observed data provides a clue to that through the idea of sampling. Our specific sample could conceptually be regenerated many times. The sample would vary, but the underlying proportion of black swans would never change.

The Bayesian approach does not see the observed data as a sample. There may, in fact, be no more data to be observed. In that way, there is no true proportion of black swans, but instead we conjecture a range of plausible values (a prior).


For the frequentist, the data is a sample of an uncertain whole but there is a true but unobserved proportion of black swans. For the Bayesian, the proportion of black swans is uncertain, but the data is true. Both of these implementations connect the data and the proportion, our target parameter of interest, through a model. The model is simply a counting machine: it counts the ways a sample could be generated (frequentist) or a parameter could arise (Bayesian) from the data we have observed. Both approaches add value because the estimated proportion 

Let me say that again

Frequentists
: count the ways a sample could be generated

Bayesian
: count the ways a parameter could arise

The Frequentist approach seems intuitive for the swan example because there _is_ a true proportion of black swans in the world at any particular instant. Measuring that directly is hard work, but we and other colleagues could takes samples, know that the proportion in the sample is _not_ the true proportion, but use a likelihood via a model to say something about the true proportion.

The distinction with the Bayesian approach feels only philosophical in this example. Instead of seeing the sample proportion as derived from a single true proportion with random error, we never pretend that the true proportion is a single value. The true population proportion is to a greater or lesser extent uncertain but the sample proportion is a single true fact. Knowing the sample proportion, our uncertainty about the distribution of the true proportion is reduced.


... 

the true proportion allow us to conjecture what future data (samples) would look like. The Bayesian approach 


Data that is known, and some variables that are byproducts of the data that are also known; then there are unknown variables. But what do we mean by 'unknown'. We are acknowledging that it exists but we don't know its value. But its existence implies some constraints even if it's nothing more than its either true or false, a positive integer (e.g. a count) or a real number.

Start with black swan / white swan


Move on to most swans
But need to quantify this to check by counting
Let's say 4/5 swans are white (only to make the maths simple)
Next leap is the idea that when you check this the swans you see are randomly sampled from the population
Allowing for that then if you see

5 black swans - seems very unlikely that your hypothesis is true
4 black swans ...
3 black swans ...
