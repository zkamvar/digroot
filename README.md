
<!-- README.md is generated from README.Rmd. Please edit that file -->
digroot
=======

[![Travis-CI Build Status](https://travis-ci.org/zkamvar/digroot.svg?branch=master)](https://travis-ci.org/zkamvar/digroot)

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
print(mult <- outer(1:9, 1:9))
#>       [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9]
#>  [1,]    1    2    3    4    5    6    7    8    9
#>  [2,]    2    4    6    8   10   12   14   16   18
#>  [3,]    3    6    9   12   15   18   21   24   27
#>  [4,]    4    8   12   16   20   24   28   32   36
#>  [5,]    5   10   15   20   25   30   35   40   45
#>  [6,]    6   12   18   24   30   36   42   48   54
#>  [7,]    7   14   21   28   35   42   49   56   63
#>  [8,]    8   16   24   32   40   48   56   64   72
#>  [9,]    9   18   27   36   45   54   63   72   81
matrix(digroot::dig_root(mult), ncol = 9, nrow = 9)
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

It can also work on really large numbers:

``` r
set.seed(2018-08-12)
print(bignum <- paste0(sample(1e10, 100), collapse = ""))
#> [1] "36406733457935537093809483712997215391059146642669597372408537275952519996657395624031117679854678910405427796802942978109243517419599956787690497482005116776643588765356073778200057480310418777334405890865332848216965383212591459312257788601236569847558926044513261467281298602240894548880448798217231002562117863633762342250862173194539304853978918732567964707288809972417461794227559636360497854109268871838912903212188006156795786510077311372682928072663759214871658881611133582319767567082040819752841287394228655868080696689363373528050674885936120955221310390864494903872560164169409794649486575849523899818096654056490886235961872922186665191717074367611001754543138162652715316304712848657990893810804395173052990256551623569824186592378517375314995906489054942985498312183996304140024870479189046365868334595870123680950624162593989541149053879659618063399950692470028979874144931799201669565001684754116260384419213748410771362800451897983832124222190059468955581369455150027"
digroot::dig_root(bignum)
#> [1] 6
```

> For reference, that number is 3.64e985

You can find the immediate digital sum of a number by using the `dig_sum()` function:

``` r
print(s   <- digroot::dig_sum(bignum))
#> [1] 4632
print(ss  <- digroot::dig_sum(s))
#> [1] 15
print(sss <- digroot::dig_sum(ss))
#> [1] 6
```

Installation
------------

You can install digroot from github with:

``` r
# install.packages("remotes")
remotes::install_github("zkamvar/digroot")
```
