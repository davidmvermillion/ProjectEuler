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

# Trying next inspiration from 
# https://pastebin.com/M0qk0Kn8
# https://math.stackexchange.com/questions/389675/largest-prime-factor-of-600851475143

# Python code was converted here from 2.7 to 3.6:
# https://www.pythonconverter.com/

library('groundhog')
groundhog.day = "2021-01-03"
# groundhog.library('primes', groundhog.day)
groundhog.library('reticulate', groundhog.day)
library('reticulate')

# ```{python}
# def lpf(x):
#   lpf = 2;
# while (x > lpf):
#   if (x%lpf==0):
#   x = x/lpf
# lpf = 2
# else:
#   lpf+=1;
# print(("Largest Prime Factor: %d" % (lpf)));
# 
# def main():
#   x = int(input("Input long int:"))
# lpf(x);
# return 0;
# 
# if __name__ == '__main__':
#   main()
# ````


x <- 600851475143

lpf <- lpf(x) {
  lpf = 2
  while (x > lpf)
    if (x%%lpf == 0){
      x <- x/lpf
      lpf = 2
    }
      else {
        lpf <- lpf + 1
      }
      
  print(lpf)
}



# Next method inspired by C++ and Python code from:
# https://www.geeksforgeeks.org/find-largest-prime-factor-number/

maxPrimeFactors <- function(N) {
  # Smallest Prime (initialization value)
  maxPrime = -1
  
  # 2s dividing N
  while (N %% 2 == 0){
    maxPrime = 2
    N >= 1
  }
  
  # Odd integers only
  for (i in seq(from = 3, to = sqrt(N)+1, by = 2)) {
    while (N %% i == 0)
    maxPrime = i
    N = N/i
  }

  # Answer for primes > 2
  if (N > 2){
    maxPrime = n
  }

print(maxPrime)
}

N <- 12
maxPrimeFactors(N)


# library(primes)
StartTime <- Sys.time()
N <- 90000000    # Max value
x <- c(1, 1)   # Starting vector
Primes <- generate_primes(min = 90000000, 900000000)

for (val in Primes) {
  if (N%%val!=0) next
  x <- c(x, N/val)
  i <- i + 1
}

EndTime <- Sys.time()
EndTime - StartTime

x <- c(1, 1)   # Starting vector
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