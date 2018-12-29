# baffle

Baffle text, htmlwidget for [baffle](https://github.com/camwiegert/baffle).

## Installation

You can install the released version of baffle from [CRAN](https://CRAN.R-project.org) with:

``` r
remotes::install_github("JohnCoene/baffle")
```

## Example

``` r
library(baffle)

b_affle("Baffling") %>% 
  b_start() %>% 
  b_reveal(2000)
```

