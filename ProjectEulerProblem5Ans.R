# Find the smallest number divisible by all integers from 1 to 20 with no remainder

rm(list=ls())

StartTime <- Sys.time()

TestLim <- 1000000
N <- 1
Targ <- 20

for (i in 1:TestLim){
  for (a in 2:Targ) { # Ignoring 1 since all integers divide by 1
    if (a %% i == 0) {
      N <- a
      next
    }
    else{
      next
    }
  }
  print(N)
}