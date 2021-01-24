# Find the smallest number divisible by all integers from 1 to 20 with no remainder

rm(list=ls())

StartTime <- Sys.time()

TestLim <- 1000000000

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


# Manually intersecting lists

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


cat("The final answer is:", T1.18[1])


EndTime <- Sys.time()
EndTime - StartTime