# Find the largest palindrome made from the product of two 3-digit numbers.

rm(list=ls())



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




# Test Cases --------------------------------------------------------------

# https://stackoverflow.com/questions/26508519/how-to-add-elements-to-a-list-in-r-loop
n1 <- 100000    # Lower bound
N1 <- 999999    # Upper bound
rangeEval <- N1-n1
n2 <- 100
N2 <- 999
i <- 1    # Initialization counter value
j <- 1
l <- vector("list", rangeEval)    # Initialization list
# Create list of test cases
for (i in n1:N1) {
  if (l[[i]]%%2)
  for (j in n:N){
    l[[j]] <- i*j
    j <- j + 1
  }
  # l[[i]] <- i^2
  # i <- i + 1
}

# https://stackoverflow.com/questions/33004238/r-removing-null-elements-from-a-list
l1 <- l[-which(sapply(l, is.null))]    # Remove nulls from list


# Palidromes in Range -----------------------------------------------------
i <- 1
ans <- vector("list", length(l1))
for (i in l1) {
  char <- as.character(l1[i])
  char1 <- substr(char,1,1)
  char2 <- substr(char,2,2)
  char5 <- substr(char,4,4)
  char6 <- substr(char,5,5)
  if (char1 == char6 & char2 == char5) {
    ans[i] <- sqrt(i)
  }
  i <- i + 1
}
ans1 <- ans[-which(sapply(ans, is.null))]


