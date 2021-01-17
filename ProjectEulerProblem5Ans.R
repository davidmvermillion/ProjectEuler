# Find the smallest number divisible by all integers from 1 to 20 with no remainder

rm(list=ls())

StartTime <- Sys.time()

TestLim <- 1000000
N <- 1
Targ <- 20
poss <- c(1,2)

for (i in 1:TestLim){
  if (i %% 2 == 0) {
    if (i %% 3 == 0) {
      if (i %% 4 == 0){
        if (i %% 5 == 0) {
          if (i %% 6 == 0){
            if (i %% 7 == 0){
              if (i %% 8 == 0){
                if (i %% 9 == 0){
                  if (i %% 10 == 0){
                    if (i %% 11 == 0){
                      if (i %% 12 == 0){
                        if (i %% 13 == 0){
                          if (i %% 14 == 0){
                            if (i %% 15 == 0){
                              if (i %% 16 == 0){
                                if (i %% 17 == 0){
                                  if (i %% 18 == 0){
                                    if (i %% 19 == 0){
                                      if (i %% 20 == 0){
                                        print(i)
                                      }
                                      else{
                                        i <- i + 1
                                        break
                                      }
                                    }
                                    else{
                                      i <- i + 1
                                      break
                                    }
                                  }
                                  else{
                                    i <- i + 1
                                    break
                                  }
                                }
                                else{
                                  i <- i + 1
                                  break
                                }
                              }
                              else{
                                i <- i + 1
                                break
                              }
                            }
                            else{
                              i <- i + 1
                              break
                            }
                          }
                          else{
                            i <- i + 1
                            break
                          }
                        }
                        else{
                          i <- i + 1
                          break
                        }
                      }
                      else{
                        i <- i + 1
                        break
                      }
                    }
                    else{
                      i <- i + 1
                      break
                    }
                  }
                  else{
                    i <- i + 1
                    break
                  }
                }
                else{
                  i <- i + 1
                  break
                }
              }
              else{
                i <- i + 1
                break
              }
            }
            else{
              i <- i + 1
              break
            }
          }
          else{
            i <- i + 1
            break
          }
        }
        else{
          i <- i + 1
          break
        }
      }
      else{
        i <- i + 1
        break
      }
    }
    else{
      i <- i + 1
      break
    }
  }
  else{
    i <- i + 1
    break
  }
  }
  # for (a in 2:Targ) { # Ignoring 1 since all integers divide by 1
  #   if (i %% a == 0) {
  #     N <- i
  #     a <- a + 1
  #     i <- i + 1
  #     next
  #   }
  #   else{
  #     a <- a + 1
  #     i <- i + 1
  #     break
  #   }
  # }
  # poss <- c(poss, N)
# }
num <- as.integer(4)
range <- 1:num
for(i in range) {
  factorial = factorial * i
}
print(factorial)


for(i in 1:num) {                                        # Head of for-loop
  print(paste("This iteration represents range value", i))  # Code block
}

EndTime <- Sys.time()
EndTime - StartTime