# Find the largest palindrome made from the product of two 3-digit numbers.

rm(list=ls())

StartTime <- Sys.time()
N <- 3

# Modifying Existing Solution ---------------------------------------------
# From:
# https://www.geeksforgeeks.org/largest-palindrome-product-two-n-digit-numbers/
palindromeNum <- function(N){
  upperLim <- 0
  for (i in 1:N+1) {
    upperLim <- (upperLim*10) + 9
  }
  lowerLim <- 1 + floor(upperLim/10)    # Floor returns result rounded down to the nearest whole integer
  maxProd <- 0
  for (i in seq(upperLim, lowerLim-1, -1)){
    for (j in seq(i, lowerLim-1, -1)){
      prod <- i*j
      if (prod < maxProd) next
      num <- prod
      rev <- 0
      while (num != 0){
        rev <- rev*10 + num%%10
        num <- floor(num/10) 
      }
      if (prod == rev && prod > maxProd)
        maxProd <- prod
    }
  }
  print(maxProd)
}

palindromeNum(3)
EndTime <- Sys.time()
EndTime - StartTime


# Time Each Set from 1 to 4 -----------------------------------------------

StartTime <- Sys.time()
palindromeNum(1)
EndTime <- Sys.time()
EndTime - StartTime

StartTime <- Sys.time()
palindromeNum(2)
EndTime <- Sys.time()
EndTime - StartTime

StartTime <- Sys.time()
palindromeNum(3)
EndTime <- Sys.time()
EndTime - StartTime

StartTime <- Sys.time()
palindromeNum(4)
EndTime <- Sys.time()
EndTime - StartTime

timediff <- c(0.01795006, 0.01794982, 0.09075689, 3.044116)

# Plot Palindromes from N = 1 to 10 ---------------------------------------
PalList <- c(palindromeNum(1), palindromeNum(2),palindromeNum(3),palindromeNum(4))
PalList1 <- as_tibble(PalList)
Index <- c(1,2,3,4)
PalPlotList <- cbind(Index, PalList)
PPL <- as_tibble(PalPlotList)

# Load date-matched packages
library(groundhog)
library(tidyverse)
groundhog.day <- "2021-01-07"
groundhog.library("tidyverse", groundhog.day)

# Plot points
# Fight with ggplot creating blank graphs later
PPL %>%
  ggplot(aes(x=PalList)) +
  geom_bar()

PPL %>%
  ggplot(aes(x=Index, y=PalList)) +
  geom_point() +
  theme_classic()

ggplot(PalList1, aes(value)) +
  geom_bar() +
  theme_classic()

qplot(y=value, data = PalList1, geom = "bar")

barplot(PalList)
plot
