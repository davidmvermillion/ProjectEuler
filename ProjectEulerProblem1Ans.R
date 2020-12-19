# Solving Project Euler Problem 1

# Problem asks to find sum of all integer multiples of 3 and 5 below 1000

# Create integer sequences starting at 0 to increment correctly
a <- seq.int(0, 1000, by = 3)
b <- seq.int(0, 999, by = 5)

# Append vector b onto vector a for calculation
c <- append(a, b, length(a))

# Find the non-overlapping results
d <- unique(c)

# Find answer
sum(d)
