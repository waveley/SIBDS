####
## example plots
##
## 2021-09-14
## Waveley Qiu
##
####

library(tidyverse)
set.seed(1234)

## make a plot

plot_df = 
  tibble(
    x = rnorm(1000, sd = 0.5),
    y = 1 + 2*x + rnorm(1000),
    y_quad = 1 + 2 * x^2 + rnorm(1000)
  )
plot_df

ggplot(plot_df, aes(x = x)) + geom_histogram()

ggplot(plot_df,aes(x = x, y = y)) + geom_point()

ggsave("output/scatterplot.pdf", height = 4, width = 6)
