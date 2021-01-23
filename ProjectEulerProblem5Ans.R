# Find the smallest number divisible by all integers from 1 to 20 with no remainder

rm(list=ls())

StartTime <- Sys.time()

TestLim <- 10000000
i <- 1

TestLim1 <- 10000
x <- c(1, 2)
i <- 2

while (x[i] < TestLim1) {
  if (x[i]%%2!=0) break
  x <- c(x, i)
  i <- i+1
}


while (i < TestLim){
  if (i%%2==0 & i%%3==0 & i%%4==0 & i%%5==0 & i%%6==0 & i%%7==0 &
      i%%8==0 & i%%9==0 & i%%10==0 & i%%11==0 & i%%12==0 & i%%13==0 &
      i%%14==0 & i%%15==0 & i%%16==0 & i%%17==0 & i%%18==0 & i%%19==0 & i%%20==0
      ){
    print(i)
    break
  }
  else{
    i <- i + 1
  }
}


EndTime <- Sys.time()
EndTime - StartTime