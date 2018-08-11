
<!-- README.md is generated from README.Rmd. Please edit that file -->
digroot
=======

The goal of digroot is to calculate digital roots. A digital root is a single digit that is obtained through a recursive sum of digits.

This package was inspired by a [Tweet from Thomas Morill](https://twitter.com/tsmorrill/status/1028108510746226688)

For example, the digital root of 77 is 5:

``` r
7 + 7
#> [1] 14
1 + 4
#> [1] 5
```

The *digroot* package automates this with the `dig_root()` function:

``` r
digroot::dig_root(77)
#> [1] 5
```

It's also vectorized, which means that you can get the multiplication table like so:

``` r
sapply(1:9, function(i) digroot::dig_root(i * (1:9)))
#>       [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9]
#>  [1,]    1    2    3    4    5    6    7    8    9
#>  [2,]    2    4    6    8    1    3    5    7    9
#>  [3,]    3    6    9    3    6    9    3    6    9
#>  [4,]    4    8    3    7    2    6    1    5    9
#>  [5,]    5    1    6    2    7    3    8    4    9
#>  [6,]    6    3    9    6    3    9    6    3    9
#>  [7,]    7    5    3    1    8    6    4    2    9
#>  [8,]    8    7    6    5    4    3    2    1    9
#>  [9,]    9    9    9    9    9    9    9    9    9
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
