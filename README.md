
<!-- README.md is generated from README.Rmd. Please edit that file -->
digroot
=======

The goal of digroot is to calculate digital roots. A digital root is a single digit that is obtained through a recursive sum of digits.

This package was inspired by a [Tweet from Thomas Morill](https://twitter.com/tsmorrill/status/1028108510746226688)

For example, the digital root of 77 is 5:

``` r
7 + 7 # 14
#> [1] 14
1 + 4 #  5
#> [1] 5
```

The *digroot* package automates this with the `dig_root()` function:

``` r
digroot::dig_root(77)
#> [1] 5
```

You can find the immediate digital sum of a number by using the `dig_sum()` function:

``` r
digroot::dig_sum(77)
#> [1] 14
digroot::dig_sum(14)
#> [1] 5
```

Installation
------------

You can install digroot from github with:

``` r
# install.packages("remotes")
remotes::install_github("zkamvar/digroot")
```
