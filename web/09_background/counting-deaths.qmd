---
Title: Counting deaths
Date: 2020-05-25 10:57
Modified: 2020-05-25 10:57
Category: teaching
Tags: rethinking
Authors: Steve Harris
Status: draft
---

This is an explanation of how to count the ways that one of two things can be chosen $k$ times fron $n$ events. That is how many ways can you get 6 heads from tossing a coin 10 times. 

There's a nice visual explanation [here](https://charleslow.github.io/binomial_coefficient/). 

We observe the outcomes of a series of binary choices: dead or alive, left of right, male or female, or healthy or diseased. We can imagine a series of these choices as a garden of forking paths. Let’s work with counts of deaths (mortality) and label them as died (`D`) or survived (`S`).

1. The first fork: there are just two possible outcomes: `D` or `S`.
2. The second fork is identical but replicated for each of the outcomes leading from the first fork: `DD` , or `DS`, or `SD`, or `SS`. You can read these as case 1 and case 2 died (`DD`), or case 1 died but case 2 survived (`DS`) etc. 
3. The third fork produces eight possible series: `DDD`, `DDS`, `DSD`, `DSS`, `SDD`, `SDS`, `SSD`, and `SSS`.

And so on.

But we are interested in the count of deaths not the sequence so at the second fork `DS` is equivalent to  `SD`: one death, one survivor each. So if the order doesn’t matter then there is one path to 2 deaths, two paths to 1 death, and one path to 2 survivors (0 deaths).  At the third fork, there is also one path to 3 deaths, three paths to 2 deaths, three paths to 1 death, and one path to zero deaths.

If we want to go beyond counting by hand, we need to see if we can find a mathematical trick to make the counting easier. Pascal found one in his triangle.

![](https://upload.wikimedia.org/wikipedia/commons/0/0d/PascalTriangleAnimated2.gif)

But even writing out such a triangle is not going to be sustainable.

Let’s rephrase the problem, and start from the sequences we generate at the ends of the paths. For any particular number of deaths (*i*), split the problem into two parts. First count how many ways you can choose *i* deaths from a group of *n* subjects. Concretely, choose 2 deaths among 3 patients: you have 3 choices for the first death, and then 2 choices for the second death: $3\times2$. Second, count how many ways you can order those *i* deaths: there are 2 choices for the *first* death, and just 1 choice for the *second* death: $2\times1$. Since you only care about the count not the ordering then you divide the count of choices by the count of orderings. 

1. 3 deaths in 3 subjects. 
	- There are 3 choices for the first death, 2 choices for the second death, and 1 choice for the last death: $3\times2\times1$
	- There are 3 orderings of deaths: $3\times2\times1$
	- So there is just 1 way $\left(\frac{3\times2\times1}{3\times2\times1}\right($ of choosing 3 deaths from 3 subjects
2. 2 deaths in 3 subjects
	- There are 3 choices for the first death, and 2 choices for the second death: $3\times2$
	- There are 2 orderings of deaths: $2\times1$
	- So there is are 3 ways $\left(\frac{3\times2}{2\times1}\right)$ way of choosing 2 deaths from 3 subjects
3. 1 deaths in 3 subjects
	- There are 3 choices for the first death: $3$
	- There is only 1 ordering of deaths: $1$
	- So there is are 3 ways $\left(\frac{3}{1}\right)$ way of choosing 1 death from 3 subjects
4. 0 deaths in 3 subjects
	- By symmetry, this is the same as choosing 3 survivors in 3 subjects as per (1) above: there is only 1 way
	- By the definition of a factorial $0!=1$ then we can say that zero choices divided by zero orderings is $\left(\frac{0!}{0!}\right)$ is also 1.

---

The example is trivial but the principle of dividing the count of choices by the count of orderings allow us to work with deeper layers Pascal’s triangle, and to count the number of ways that forking paths can produce any particular count.

Consider our problem of counting the ways 6 deaths can arise among 10 patients. This can now be calculated as

$$\begin{aligned}
	count &= \frac{\text{count of choices}}{\text{count of orderings}} \\ 
	&= \frac{10\times9\times8\times7\times6\times5}
					{6\times5\times4\times3\times2\times1} \\
 	&= \frac{5040}{24} \\
	&= 210
\end{aligned}$$



 

  
