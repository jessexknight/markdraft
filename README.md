# `markdraft` LaTeX package

Adds ``DRAFT'' to all four corners of every page,
and the date bottom centre,
without affecting the real headers or footers.

## Contents

Within this [repo](https://github.com/jessexknight/markdraft):

- `markdraft/`: source code to generate `markdraft.sty` package file
   & `markdraft.pdf` documentation
- `test/`: some example usage of the package, including:
  - `mwe`: a minimal working example
  - `full`: a more complex example
- `tds/`: output for easy installing
- `makefile`: compile stuff

## Installation

Not sure if this will get picked up by any TeX distributions.
To install manually:
- Download the [tds](http://www.texfaq.org/FAQ-tds) version of the package
  from here: `ctan/markdraft.tds.zip`.
- Then, run: `sudo unzip markdraft.tds.zip -d $texmf`
  where `$texmf` is the root of your texmf tree.
  This makes the class available to your whole LaTeX distribution.

## Issues & Requests

... are welcome!
Please file them [here](https://github.com/jessexknight/markdraft) on GitHub.

## Versions

If there are any differences between
the version here on GitHub vs the versions on CTAN or your LaTeX distribution,
the GitHub version is likely more up-to-date.

