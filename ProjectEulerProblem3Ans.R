# Finding the largest prime factor of 600851475143

rm()
StartTime <- Sys.time()
N <- 60    # Max value
x <- c(N,N-1)   # Starting vector
i <- 2      # Starting iteration counter

# Calculate all factors
while (x[i] > 1) {
  #if (x[i]+x[i-1] > N) break
  x <- c(x, N/i)
  i <- i+1
}

# Find Integer Answers
# Inspiration from https://stackoverflow.com/questions/3476782/check-if-the-number-is-integer
IntTest <- x%%1 == 0
IntAns <- x[IntTest]
IntAns    # Use for testing code at low values of N

# Find Prime Answers
PrimeTest <- IntAns%%2 != 0
PrimeAns <- IntAns[PrimeTest]
PrimeAns    # Use for testing code at low values of N

# Find largest value of PrimeAns
max(PrimeAns)


EndTime <- Sys.time()
EndTime - StartTime