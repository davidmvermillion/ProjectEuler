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

x

EndTime <- Sys.time()
EndTime - StartTime