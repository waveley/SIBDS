####
## Variables and example dataframes
##
## 2021-09-14
## Waveley Qiu
##
####



library(tidyverse)

## numbers and math
x = 2 + 3
x
x = (2 + 5)^3/17

set.seed(1234)

x = runif(20)
x

mean(x)
var(x)

?mean
?runif

## data frames
example_df =
    tibble(
      vec_numeric = 1:4,
      vec_char = c("My","name","is","Jeff"),
      vec_factor = factor(c("male","male","female","female"))
    )
example_df


































