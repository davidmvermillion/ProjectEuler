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
  # Decompose the Palindrome result
  for (i in seq(maxProd, 1)){
    for (j in seq(i, lowerLim-1, -1)){
      if (i%%j == 0){
        factor1 <- i/j
      }
    }
  }
  print(factor1)
}

palindromeNum(3)
EndTime <- Sys.time()
EndTime - StartTime


# Decompose Palindrome ----------------------------------------------------


