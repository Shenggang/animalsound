
<!-- README.md is generated from README.Rmd. Please edit that file -->

# animalsound

<!-- badges: start -->

[![R-CMD-check](https://github.com/Shenggang/animalsound/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/Shenggang/animalsound/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

Animalsound is an example package developped during the R package
Workshop June 2025 in Warwick.

## Installation

You can install the development version of animalsound from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("Shenggang/animalsound")
```

## Example

This is a basic use case of the function.

``` r
library(animalsound)
## basic example code
animal_sounds("dog", "woof")
#> [1] "The dog goes woof!"
animal_sounds("giraffe")
#> [1] "The giraffe makes no sound."
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this.

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub and CRAN.
