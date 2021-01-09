# Finding the largest prime factor of 600851475143

# Clear environment
rm(list=ls())
# install.packages("primes")

# Next trying an iteration from https://projecteuler.net/overview=003
StartTime <- Sys.time()
N <- 600851475143
if (N %% 2 == 0){
  N <- N/2
  lastFactor <- 2
  while (N %% 2 == 0) {
    N <- N/2
  }
  else {
    lastFactor <- 1
  }
factor <- 3
while (N > 1) {
  if (N %% factor == 0) {
    N <- N/factor
    lastFactor <- factor
    while (N %% factor == 0){
      N <- N/factor
    }
  }
  factor <- factor + 2
}
print(lastFactor)
}
EndTime <- Sys.time()
EndTime - StartTime