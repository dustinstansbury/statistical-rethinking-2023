Title: Learning statistics in a pandemic
Date: 2020-05-24 23:30
Modified: 2020-05-24 23:30
Category: teaching
Tags: rethinking
Authors: Steve Harris
Status: draft

# Learning statistics in a pandemic

So there’s a global pandemic. Your first task is to report the mortality rate. The government will only be convinced to act if the mortality is greater than that for seasonal flu (approximately 1%).

You have a colleague in Wuhan. She struggles to send you data because she’s worried about censorship so you communicate with a simple code using Twitter. If the last character of the tweet is a punctuation mark or emoji that means a case of COVID-19 admitted to her hospital has died. If the last character is not a punctuation mark or emoji, then the patient has been discharged alive.
 
Here are the  first 3 tweets from her.

> Hi. How are you?

> It’s cold. Say hi to your family!

> Better day today, warmer

So we read this as 

* Died
* Died
* Survived

From now on, we’re going to represent this as a string of characters `DDS`. You receive 7 more tweets over the next couple of days: `DDSDSSDDDS` . That is 6 deaths and 4 survivors, or a 60% mortality rate.

Let’s recap.
1. We have some measurements or observations (our *data*).
2. We want to know the ‘true’ mortality rate, and are nervous about causing unnecessary alarm.

Point (2) is crucial because in framing the question, we are acknowledging that we have uncertainty. From our perspective, the true mortality rate should not be reported as a single number (in this case 6/10 or 60%). That might be true, but it excludes our uncertainty. It would be an incomplete description rather like saying the latitude and longitude of London is (0º,0º). That is not even the latitude and longitude of the Greenwich Observatory because both the Observatory and London are not single points in space. They have a spread from north to south and east to west.

To capture uncertainty, we must treat the true mortality rate as a range, or distribution, of values. Not all values in the range are equally plausible even before we observe any data. The mortality cannot be less than 0% or greater than 100% so our **prior** belief (p) lies in the range 0 ≤ *p* ≤ 1.  

Let’s recap again. We now have two useful tools.
1. Data
2. A prior (belief) about the mortality rate.

We will use the data to update our prior, and you will not be surprised to learn that we will call the result the **posterior** (probability distribution). The more data we have, the more we can pin down our prior. Let’s take the outcomes for the first three patients as an example.

1. Our initial prior says the risk of death is anywhere from 0 ≤ *p* ≤ 1.
2. The first and second patients both died. It’s not a lot of information but we can at least say the risk of death cannot be zero. We now believe *p* lies in the range 0 < *p* ≤ 1.
3. The third patient survived so similarly we *p* must now lie in the range 0 < *p* < 1.

This discrete logic, ruling in and ruling out certain values based on observations gets us so far. But there is more information still in just these first  three cases `DDS`. We need a tool that connects the count of deaths to our *prior.* The more data we see, the more important this will become. Three cases becomes ten cases with six deaths  (`DDSDSSDDDS`). But the tweets don’t stop there. When our final sample becomes 1000 cases with 600 deaths, the proportion does not change. But we will be much, much more worried because we have an intuition that the proportion from the bigger sample is a more certain estimate. 

So how do we connect the observed data to our beliefs. We need to describe a mechanic m for generating the data. The mechanism must only be based on things that we can verify, or are happy to assume. So one mechanism might be that a divine being ordered there six deaths in this specific sequence. Could be true but it doesn't really help move us forwards.. A better mechanism is to imagine a series of coin flips with a special coin that is weighted to show tails in the same proportion that deaths occur.
(see "county deaths")
This model creates a connection between the data and the mortality rate, and it does so with the minimum of prior assumptions (see maximum information entropy). for example, imagine that we knew the mortality rate was 50 % . The model tells us how that data would have to come about.
(show 10th level of forking paths, and highlight the set of paths that arrive at 6 deaths). More importantly, the model also shows all the other data that could have been generated from that same assumed mortality rate. We see that many more paths arrive at 6 than 1 or 2 or 3 death, for example. But we
also note that 5 deaths is the commonest finding. Our intuition tells us that our data (our observation) provide quite good evidence for-a mortality rate of 50%. but very weak evidence for mortality rates of 10,20 or so, 90" I..
If we now vary our assumed mortality rate across the range of our prior belief then we can repeat this exercise and build up a picture of how the data has updated our prior as sumptions: the posterior.
(need to int drei the term like Ii hood same wher above)

>>>
With just three cases, both very low and very high risks of death are plausible. 

[^sn-a]
[^sn-a]: Discuss discrete versus continuous logic, black swans and counting in  a side note here.



For example, 

We could just report the proportion of deaths in the sample we have observed. We’d want to also report the number of observations (i.e. the ‘sample size’ ). We’d be a lot more  worried if this was a sample of 1000 cases a not just 10. But why? We have an intuition that the proportion from the bigger sample (600 deaths in 1000 cases) is a more certain estimate. 

But again why? 

To answer this, we need to connect our *data* with the ‘*answer to our question*’ (read target of inference) with a story (read model). The model is a data generating mechanism that in some way depends on the true proportion of deaths among patients with COVID-19.

> You ... motivate your **data story** by trying to explain how each piece of data is born.

Let’s go back to the first 3 patients (`DDS`), and invoke a unfair but divine coin labelled with `D` on one side, and `S` on the other. It is flipped for each victim,  and for now, we are going  to assume that the same coin is used for everyone.   The ‘chance’ of the coin landing `D` side up will be called `p`. This is our target of inference. It is an unseen *variable*. The data is summarised as two ‘observed’ variables: the count of `D` and the count of `S`, or equivalent the count of `D` and the total number (`N`) of patients (since the coin has only 2 sides these representations are equivalent.).

 The data story is a probability model. It counts the number of ways a particular observation can come about based on the parameters of the model. In doing so, it links the parameter with the data. 

Concretely, here, we have a probability model based on a coin-toss. The parameter is the ‘fairness’ of the coin. And we want to learn from the observed data how ‘fair’ the coin is. 



2020-05-24t231317 @resume
Garden of forking paths
We need a ‘story’ to link our data to our measure
 show how as sample size grows even though the proportion remains the same our ?plausible ‘confidence interval’ narrows