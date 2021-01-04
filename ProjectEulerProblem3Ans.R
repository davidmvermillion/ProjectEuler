# Finding the largest prime factor of 600851475143

# Clarified environemtn clearing function from
# https://stackoverflow.com/questions/43336074/how-does-r-clear-all-global-environment-quickly?noredirect=1&lq=1
rm(list=ls())
StartTime <- Sys.time()
N <- 600    # Max value
x <- c(N,N-1)   # Starting vector
i <- 2      # Starting iteration counter

# Calculate all factors
while (x[i] > 1) {
  x <- c(x, N/i)
  i <- i+1
}

# Find Integer Answers
# Inspiration from https://stackoverflow.com/questions/3476782/check-if-the-number-is-integer
# https://statisticsglobe.com/remove-element-from-list-in-r
IntTest <- x%%1 == 0
IntAns1 <- x[IntTest]
IntAns <- IntAns1[-2]   # Removes artifact of calculation
IntAns    # Use for testing code at low values of N

EndTime <- Sys.time()
EndTime - StartTime
# Find Prime Answers
# rm(i)
PrimeList <- c(3, 5, 7, 11, 13)
for (i in 1:length(PrimeList)) {
  if (IntAns[i] !%% PrimeList[i]) {
    next
  }
    print(i)
}
PrimeTest1 <- IntAns%%2 != 0
PrimeAns1 <- IntAns[PrimeTest1]
PrimeTest2 <- PrimeAns1%%3 != 0
PrimeAns2 <- PrimeAns1[PrimeTest2]
PrimeTest3 <- PrimeAns2%%5 != 0
PrimeAns3 <- PrimeAns2[PrimeTest3]
PrimeAns3    # Use for testing code at low values of N

# Find largest value of PrimeAns
max(PrimeAns)


EndTime <- Sys.time()
EndTime - StartTime

IntAns
PrimeAns1
PrimeAns2
PrimeAns3