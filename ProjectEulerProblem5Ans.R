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


# Next up:
# Combine lists into array
# Call array for interative intersections
# Lowest resultant intersection should be answer

for (j in 2:20){
  l1 <- 
  intersect(List)
}


EndTime <- Sys.time()
EndTime - StartTime