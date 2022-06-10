####################
#
# PGM: week2_DS_screening.R
#
# Description: SIBDS practice with sensitivity, specificity,
#              NPV, PPV
#
# Author: Tucker Morgan
#
# Date: 2022-06-10
#=
####################

############ Problem 3 ##############

## Part A
sens <- 0.627
spec <- 0.823
prev <- 0.1
ppv_1 <- (sens * prev) / (sens * prev + (1 - spec) * (1 - prev))
npv_1 <- (spec * (1 - prev)) / (spec * (1 - prev) + (1 - sens) * prev)

prev <- 0.2

ppv_2<- (sens * prev) / (sens * prev + (1 - spec) * (1 - prev))
npv_2 <- (spec * (1 - prev)) / (spec * (1 - prev) + (1 - sens) * prev)

