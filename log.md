# Running log
Reverse date order

## 2024-01-02

An insight
Use the word representative to capture the two-way nature of the likelihood
-

## 2024-01-01

Trying to get a working definition of a generative model in code
That doesn't obscure the internal machinery.
That is, use the model, to move back and forth

- data and hypothesised parameter distribution as an input, with a measure of plausibility for each hypothesis as an output (counting paths, or standardised as a probability)
- plausibility (i.e. prior) and as an input and _dummy_ data as an output

In other words, describe the model (likelihood function) as a machine with a ‘knob’ that represents the unknown parameter. You feed in data. You get back an idea of what numbers that knob might be tuned to. Or you tune the machine (adjust the knob), and it returns to you data compatible with that settings.

Set knob (aka hypothesis)
Feed in ‘data point’.
There’s an _uncertainty_ step (tossing the globe, rolling the dice).
Explore the uncertainty.
Get back a quantification of the ways that that hypothesis could produce that data point.
Repeat for all possible hypotheses.

Or

Set knob (aka hypothesis)
Ask for a data point.
Implement the _uncertainty_ step (tossing the globe, rolling the dice).
Get back a data point compatible with that hypothesis.

In both versions, there is a random event which means the model is stochastic not deterministic.

Call the model, a _machine_
Code the machine (i.e. a dice with a lethality setting)
Then there are two ways to use this
Conceptually to count (e.g. paths, or via pre-assigned probabilities `dbinom()`)
Generatively to create (data) (e.g. `rbinom()`)

## 2023-12-20

Back here within a couple of days
That's progress
Started to work through the actual implementation last time

## 2023-12-18

It's been a week.
Top aim is 90m / day
Working through the book
But anything more than 20m will be a win

Jumping back to McElreath's website
<https://xcelab.net/rm/statistical-rethinking/>

## 2023-12-11
2nd day. Trying a little.
Using Quarto in VSCode to work on the outputs.
Considering whether to start converting to a medical example.
For now, let's just work through the lessons.
Then either at the end of the course, or at the end of each lesson. Convert to a medical version.

Nice to try
- use plotly instead of matplotlib
- use polars instead of pandas

## 2023-12-10
Setting up PyCharm
Installed Miniconda via home-brew
Then had to enter the path to the Conda exec into PyCharm manually
`/opt/homebrew/Caskroom/miniconda/base/bin/conda`

> 1 First, open PyCharm, go to the **Settings** window, then go to the **Project Interpreter** section ( please refer to the article [How To Install Python Interpreter In PyCharm](https://www.dev2qa.com/how-to-install-python-interpreter-in-pycharm/) ).
> 2 Click the “**Add..**” button. In the drop-down, select the “**Conda Environment**” option.
> 3 Click on the **Browse** button, and select the conda executable file (**conda.exe**) from the file explorer window.
> 4 Once you have selected the correct file, click **OK**, and the conda executable file will be added to your Python interpreter.
> 5 Click the **Load Environments** button to load the existing virtual environment from anaconda.

Now installing ruff (rather than the usual flake etc)
Then use the ruff plugin

Hit problem with PyCharm
https://stackoverflow.com/questions/77029086/installing-both-jupyter-and-notebook-packages?noredirect=1#comment135830855_77029086
fixed by adding notebook>=7 to the environment

### 2023-12-10 18:48:31
Now setting up for Quarto
https://quarto.org/docs/get-started/hello/text-editor.html
Note that Quarto not currently integrated with PyCharm
so do this from the command line

```sh
quarto preview hello.qmd
```

now set-up a web folder as a scaffold

```sh
quarto create project website web
quarto preview web
```

can swap into vscode to preview and edit
recommend that we keep the `./web` folder for the blog
and copy _static_ notebooks that don't need to be compiled into `./web/notebooks`
but the actual notebooks will live in `./`
