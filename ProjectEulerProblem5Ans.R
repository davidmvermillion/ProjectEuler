# Find the smallest number divisible by all integers from 1 to 20 with no remainder

rm(list=ls())

StartTime <- Sys.time()

TestLim <- 10000
i <- 1

# Generate sequence of numbers divisible by specific numbers
List2 <- seq(2,TestLim,2)
List3 <- seq(3,TestLim,3)
List4 <- seq(4,TestLim,4)
List5 <- seq(5,TestLim,5)
List6 <- seq(6,TestLim,6)
List7 <- seq(7,TestLim,7)
List8 <- seq(8,TestLim,8)


# TestLim1 <- 1000
# x <- c(1, 2)
# i <- 2
# 
# while (x[i] < TestLim1) {
#   x <- c(x, i)
#   i <- i+2
# }


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