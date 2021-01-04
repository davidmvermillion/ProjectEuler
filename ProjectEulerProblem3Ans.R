# Finding the largest prime factor of 600851475143

# Clarified environemtn clearing function from
# https://stackoverflow.com/questions/43336074/how-does-r-clear-all-global-environment-quickly?noredirect=1&lq=1
rm(list=ls())
StartTime <- Sys.time()
N <- 60000    # Max value
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
x1 <- c(1, 2)
PrimeList <- c(1, 2, 3, 5, 7, 11, 13)
for (i in 1:length(PrimeList)) {
  if (IntAns[i]/PrimeList[i] = 1) {
    next
  }
    print(i)
}
x1

# 
# # Find largest value of PrimeAns
# max(PrimeAns)
# 
# 
# EndTime <- Sys.time()
# EndTime - StartTime