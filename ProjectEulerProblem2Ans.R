# Utilizing hints on loops from:
# https://eeecon.uibk.ac.at/~discdown/rprogramming/loops.html

# Initialize variables
N <- 10 #4e6    # Max value
x <- c(1, 2)   # Starting vector
i <- 2      # Starting iteration counter

while (x[i] < N) {
  x <- c(x, x[i]+x[i-1])
  i <- i+1
}

x
