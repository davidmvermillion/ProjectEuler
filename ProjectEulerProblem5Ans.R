# Find the smallest number divisible by all integers from 1 to 20 with no remainder

rm(list=ls())

StartTime <- Sys.time()

TestLim <- 10000

# Generate sequence of numbers divisible by specific numbers
List2 <- seq(2,TestLim,2)
List3 <- seq(3,TestLim,3)
List4 <- seq(4,TestLim,4)
List5 <- seq(5,TestLim,5)
List6 <- seq(6,TestLim,6)
List7 <- seq(7,TestLim,7)
List8 <- seq(8,TestLim,8)
List9 <- seq(9,TestLim,9)
List10 <- seq(10,TestLim,10)
List11 <- seq(11,TestLim,11)
List12 <- seq(12,TestLim,12)
List13 <- seq(13,TestLim,13)
List14 <- seq(14,TestLim,14)
List15 <- seq(15,TestLim,15)
List16 <- seq(16,TestLim,16)
List17 <- seq(17,TestLim,17)
List18 <- seq(18,TestLim,18)
List19 <- seq(19,TestLim,19)
List20 <- seq(20,TestLim,20)


# Manually intersecting lists, round 1

T1.1 <- intersect(List2, List3)
T1.2 <- intersect(T1.1, List4)
T1.3 <- intersect(T1.2, List5)
T1.4 <- intersect(T1.3, List6)
T1.5 <- intersect(T1.4, List7)
T1.6 <- intersect(T1.5, List8)
T1.7 <- intersect(T1.6, List9)
T1.8 <- intersect(T1.7, List10)
T1.9 <- intersect(T1.8, List11)
T1.10 <- intersect(T1.9, List12)
T1.11 <- intersect(T1.10, List13)
T1.12 <- intersect(T1.11, List14)
T1.13 <- intersect(T1.12, List15)
T1.14 <- intersect(T1.13, List16)
T1.15 <- intersect(T1.14, List17)
T1.16 <- intersect(T1.15, List18)
T1.17 <- intersect(T1.16, List19)
T1.18 <- intersect(T1.17, List20)



# Manually intersecting lists, round 2

T2.1 <- intersect(T1.1, T1.2)
T2.2 <- intersect(T1.3, T1.4)
T2.3 <- intersect(T1.5, T1.6)
T2.4 <- intersect(T1.7, T1.8)
T2.5 <- intersect(T1.9, List20)

# Convert to dataframe

d2 <- as.data.frame(List2)
d3 <- as.data.frame(List3)
d4 <- as.data.frame(List4)
d5 <- as.data.frame(List5)
d6 <- as.data.frame(List6)
d7 <- as.data.frame(List7)
d8 <- as.data.frame(List8)
d9 <- as.data.frame(List9)
d10 <- as.data.frame(List10)
d11 <- as.data.frame(List11)
d12 <- as.data.frame(List12)
d13 <- as.data.frame(List13)
d14 <- as.data.frame(List14)
d15 <- as.data.frame(List15)
d16 <- as.data.frame(List16)
d17 <- as.data.frame(List17)
d18 <- as.data.frame(List18)
d19 <- as.data.frame(List19)
d20 <- as.data.frame(List20)



# Next up:
# Make data frames and perform an inner join or

# Combine lists into array
# Call array for interative intersections
# Lowest resultant intersection should be answer

for (j in 2:20){
  l1 <- 
  intersect(List)
}


EndTime <- Sys.time()
EndTime - StartTime