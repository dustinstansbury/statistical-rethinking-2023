# Statistical Rethinking 2023
Python implementation of Richard McElreath's outstanding lecture series [Statistical Rethinking 2023](https://www.youtube.com/playlist?list=PLDcUM9US4XdPz-KxHM4XHt7uUVGWWVSus).



## Setup
All notebooks are were developed on a Mac laptop with M1 Pro ARM64 chipset. The python environment is managed using [miniconda](https://docs.conda.io/en/latest/miniconda.html). If you are on a similar hardware setup, you can initialize the environment via the standard conda workflow:

```bash
$ conda env create -f statistical-rethinking-2023.yml
$ conda activate statistical-rethinking-2023
```
Otherwise, the Python version and standard packages that are imported in the notebooks via the `init_notebook.py` script are as follows:

```
Watermark
---------
Python implementation: CPython
Python version       : 3.10.12
IPython version      : 8.14.0

Compiler    : Clang 15.0.7
OS          : Darwin
Release     : 22.2.0
Machine     : arm64
Processor   : arm
CPU cores   : 10
Architecture: 64bit

scipy      : 1.11.2
arviz      : 0.16.1
numpy      : 1.25.2
pymc       : 5.7.2
statsmodels: 0.14.0
xarray     : 2023.8.0
pandas     : 2.0.3
matplotlib : 3.7.1
```