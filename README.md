
<!-- README.md is generated from README.Rmd. Please edit that file -->

# libminer

<!-- badges: start -->
<!-- badges: end -->

The goal of libminer is to provide an overview of your R library setup.
It is a toy package created as a part of a workshop and not meant for
serious use.

## Installation

You can install the development version of libminer from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("aclowery/libminer")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(libminer)

lib_summary()
#>                                                                   Library
#> 1                                      C:/Program Files/R/R-4.3.0/library
#> 2                                                            C:/RPackages
#> 3 C:/Users/alowery/AppData/Local/Temp/RtmpyuOjc6/temp_libpath4be81daa4a91
#>   n_packages
#> 1         30
#> 2        238
#> 3          1

# you can also specify sizes
lib_summary(sizes = TRUE)
#>                                                                   Library
#> 1                                      C:/Program Files/R/R-4.3.0/library
#> 2                                                            C:/RPackages
#> 3 C:/Users/alowery/AppData/Local/Temp/RtmpyuOjc6/temp_libpath4be81daa4a91
#>   n_packages  lib_size
#> 1         30  68685145
#> 2        238 675221378
#> 3          1     12768
```
