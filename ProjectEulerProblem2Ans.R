# Utilizing hints on loops from:
# https://eeecon.uibk.ac.at/~discdown/rprogramming/loops.html
# Timing hints came from here:
# https://www.r-bloggers.com/2017/05/5-ways-to-measure-running-time-of-r-code/

# First Working Iteration -------------------------------------------------

# Initialize variables
rm()
StartTime <- Sys.time()
N <- 4e6    # Max value
x <- c(1, 2)   # Starting vector
i <- 2      # Starting iteration counter

# Calculate Fibonacci sequence to N total value

while (x[i] < N) {
  if (x[i]+x[i-1] > N) break
  x <- c(x, x[i]+x[i-1])
  i <- i+1
}

# Display vector
x

# Calculate and store even answers
# https://www.quora.com/How-can-I-extract-even-odd-numbers-from-a-list-of-numbers-in-R
e <- x%%2 == 0
a <- x[e]

# Calculate and display answer
sum(a)
EndTime <- Sys.time()
EndTime - StartTime

# More Compact Answer Attempt---------------------------------------------------

# Line 48 breaks script

# Initialize variables
rm()
N <- 4e6    # Max value
x <- c(1, 2)   # Starting vector
i <- 2      # Starting iteration counter

# Calculate Fibonacci sequence to N total value
StartTime <- Sys.time()
while (x[i] < N) {
  if (x[i]+x[i-1] > N) break
  if (((x[i]+x[i-1]) %% 2) != 0) next
  x <- c(x, x[i]+x[i-1])
  i <- i+1
}
EndTime <- Sys.time()
EndTime - StartTime

# Display vector
x

