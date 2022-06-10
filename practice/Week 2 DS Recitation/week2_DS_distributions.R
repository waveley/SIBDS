####################
#
# PGM: week2_DS_distributions.R
#
# Description: SIBDS practice with distributions in R
#
# Author: Waveley Qiu
#
# Date: 2022-06-10
#
####################

library(tidyverse)

######### Problem 2 ##########

# Question 5

## Part B

n <- 15
pi <- 0.2

partb_res <- dbinom(4, n, pi)
partb_res

## Part C

partc_res <- pbinom(4, n, pi)
partc_res

## Part D

partd_res <- partc_res - partb_res 
partd_res

## Part E

parte_res <- 1 - partd_res
parte_res_alt <- pbinom(3, n, pi, lower.tail = FALSE)

## Part F

expected_value <- n*pi
expected_value

variance <- n*pi*(1 - pi)
variance_alt <- expected_value * (1 - pi)

set.seed(20220610)
samp <- rbinom(100, 15, 0.2)
samp_large <- rbinom(10000, 15, 0.2)

empirical_ev <- mean(samp)
empirical_var <- var(samp)

hist(samp)
hist(samp_large)

# Question 6

mu <- 172.2
sigma <- 29.8

## Part A

pnorm(150, 172.2, 29.8)

q6parta_res <- pnorm(150, mu, sigma)
q6parta_res

## Part B

q6partb_res <- 1 - pnorm(200, mu, sigma)
pnorm(200, mu, sigma, lower.tail = FALSE)

## Part C

q6partc_res <- pnorm(190, mu, sigma) - pnorm(140, mu, sigma)

## Part D

q6partd_res <- q6parta_res + (1 - pnorm(190, mu, sigma))











