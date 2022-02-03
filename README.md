# Read me for package Assignment32RPackage2XAV

This is the readme file for the R package created for Assignment 3.2R.2. It contains function make_art.
The function generates a random artistic plot using geom_point (ggplot2) and viridis colours.
The function takes an optional seed argument, which sets the seed for local variables.

## Installation

Use the package [devtools](https://www.r-project.org/nosvn/pandoc/devtools.html) to install the Assignment32RPackage2XAV package.

```r
install.packages("devtools")
library(devtools)

install_github("Xanthippi-A/Assignment32RPackage2XAV")
library(Assignment32RPackage2XAV)
```

## Usage

```r
make_art(seed)
```

## Arguments

#### seed

Optional number vector defining a seed. The seed is used when sampling for local variables.


## Example

```r
## Generate an image with a user defined seed
make_art(555)

## Generate an image using a random seed
make_art()
```
