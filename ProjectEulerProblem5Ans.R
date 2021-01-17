# Find the smallest number divisible by all integers from 1 to 20 with no remainder

rm(list=ls())

StartTime <- Sys.time()

TestLim <- 10000
N <- 1
Targ <- 20
poss <- c(1,2)

for (i in 1:TestLim){
  # if (i %% 2 == 0) {
  #   
  # }
  for (a in 2:Targ) { # Ignoring 1 since all integers divide by 1
    if (i %% a == 0) {
      N <- i
      a <- a + 1
      i <- i + 1
      next
    }
    else{
      a <- a + 1
      i <- i + 1
      break
    }
  }
  poss <- c(poss, N)
}

EndTime <- Sys.time()
EndTime - StartTime