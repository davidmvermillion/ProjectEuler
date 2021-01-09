# Find the largest palindrome made from the product of two 3-digit numbers.

rm(list=ls())


# Test Cases --------------------------------------------------------------

# https://stackoverflow.com/questions/26508519/how-to-add-elements-to-a-list-in-r-loop
n <- 100    # Lower bound
N <- 999    # Upper bound
i <- 1    # Initialization counter value
l <- vector("list", N)    # Initialization list
# Create list of test cases
for (i in n:N) {
  l[[i]] <- i^2
  i <- i + 1
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


