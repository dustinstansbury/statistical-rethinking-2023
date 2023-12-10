# Running log 
Reverse date order

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


