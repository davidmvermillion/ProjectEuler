# Find the largest palindrome made from the product of two 3-digit numbers.

rm(list=ls())

StartTime <- Sys.time()
N <- 3

# Modifying Existing Solution ---------------------------------------------
# From:
# https://www.geeksforgeeks.org/largest-palindrome-product-two-n-digit-numbers/
palindromeNum <- function(N){
  upperLim <- 0
  for (i in 1:N+1) {
    upperLim <- (upperLim*10) + 9
  }
  lowerLim <- 1 + floor(upperLim/10)    # Floor returns result rounded down to the nearest whole integer
  maxProd <- 0
  for (i in seq(upperLim, lowerLim-1, -1)){
    for (j in seq(i, lowerLim-1, -1)){
      prod <- i*j
      if (prod < maxProd) next
      num <- prod
      rev <- 0
      while (num != 0){
        rev <- rev*10 + num%%10
        num <- floor(num/10) 
      }
      if (prod == rev && prod > maxProd)
        maxProd <- prod
    }
  }
  print(maxProd)
}

palindromeNum(3)
EndTime <- Sys.time()
EndTime - StartTime


# Time Each Set from 1 to 4 -----------------------------------------------

StartTime <- Sys.time()
palindromeNum(1)
EndTime <- Sys.time()
EndTime - StartTime

StartTime <- Sys.time()
palindromeNum(2)
EndTime <- Sys.time()
EndTime - StartTime

StartTime <- Sys.time()
palindromeNum(3)
EndTime <- Sys.time()
EndTime - StartTime

StartTime <- Sys.time()
palindromeNum(4)
EndTime <- Sys.time()
EndTime - StartTime

timediff <- c(0.01795006, 0.01794982, 0.09075689, 3.044116)

# Plot Palindromes from N = 1 to 10 ---------------------------------------
PalList <- c(palindromeNum(1), palindromeNum(2),palindromeNum(3),palindromeNum(4))
PalList1 <- as_tibble(PalList)
Index <- c(1,2,3,4)
PalPlotList <- cbind(Index, PalList)
PPL <- as_tibble(PalPlotList)
PalList2 <- log(PalList, 10)
PalPlotList2 <- cbind(Index, PalList2)
PPLL <- as_tibble(PalPlotList2)


# Load date-matched packages
library(groundhog)
library(tidyverse)
library(ggpubr)
groundhog.day <- "2021-01-07"
groundhog.library("tidyverse", groundhog.day)

# Plot points ----


linval <- PPL %>%
  ggplot(aes(x=Index, y=PalList)) +
  geom_point(color="steelblue", size=5, shape=17) +
  # geom_segment(aes(x=Index, xend=Index, y=0, yend=PalList), size=3, color="steelblue") +
  theme_classic() +
  # labs(title = "Product Value of Two Factors of Digits 1–4") +
  theme(axis.title.y = element_blank(),
        axis.title.x = element_blank(),
        plot.title = element_text(hjust = 0.5, color = "grey55", size = 30),
        axis.line = element_line(color = "grey80"),
        axis.ticks = element_line(color = "grey80"),
        axis.text = element_text(color = "grey55"))

logval <- PPLL %>%
  ggplot(aes(x=Index, y=PalList)) +
  geom_point(color="steelblue", size=5, shape=17) +
  # scale_y_continuous(trans='log2') +
  geom_smooth(method = lm) +
  # geom_segment(aes(x=Index, xend=Index, y=0, yend=PalList), size=3, color="steelblue") +
  theme_classic() +
  # labs(title = "Product Value of Two Factors of Digits 1–4") +
  theme(axis.title.y = element_blank(),
        axis.title.x = element_blank(),
        plot.title = element_text(hjust = 0.5, color = "grey55", size = 30),
        axis.line = element_line(color = "grey80"),
        axis.ticks = element_line(color = "grey80"),
        axis.text = element_text(color = "grey55"))

values <- ggarrange(linval, logval,
          labels = c("Linear Scale", "    Log Scale"), hjust = -1.8,
          font.label = list(size = 14, color = "grey55", face = "plain", family = NULL))
  
annotate_figure(values,
                text_grob("Product Values of Two Factors of Digits of Length N", size = 18, face = "plain"))


# Plot Time ---------------------------------------------------------------

TimeDiffList <- cbind(Index, timediff)
TDL <- as_tibble(TimeDiffList)
timediff2 <- log(timediff, 10)
TimeDiffList2 <- cbind(Index, timediff2)
TDLL <- as_tibble(TimeDiffList2)

TDL %>%
  ggplot(aes(x=Index, y=timediff)) +
  geom_point(color="steelblue", size=5, shape=17) +
  # geom_segment(aes(x=Index, xend=Index, y=0, yend=PalList), size=3, color="steelblue") +
  theme_classic() +
  # labs(title = "Product Value of Two Factors of Digits 1–4") +
  theme(axis.title.y = element_blank(),
        axis.title.x = element_blank(),
        plot.title = element_text(hjust = 0.5, color = "grey55", size = 30),
        axis.line = element_line(color = "grey80"),
        axis.ticks = element_line(color = "grey80"),
        axis.text = element_text(color = "grey55"))

TDL %>%
  ggplot(aes(x=Index, y=PalList)) +
  geom_point(color="steelblue", size=5, shape=17) +
  scale_y_continuous(trans='log2') +
  geom_smooth(method = lm) +
  # geom_segment(aes(x=Index, xend=Index, y=0, yend=PalList), size=3, color="steelblue") +
  theme_classic() +
  # labs(title = "Product Value of Two Factors of Digits 1–4") +
  theme(axis.title.y = element_blank(),
        axis.title.x = element_blank(),
        plot.title = element_text(hjust = 0.5, color = "grey55", size = 30),
        axis.line = element_line(color = "grey80"),
        axis.ticks = element_line(color = "grey80"),
        axis.text = element_text(color = "grey55"))

values <- ggarrange(linval, logval,
                    labels = c("Linear Scale", "    Log Scale"), hjust = -1.8,
                    font.label = list(size = 14, color = "grey55", face = "plain", family = NULL))

annotate_figure(values,
                text_grob("Product Values of Two Factors of Digits of Length N", size = 18, face = "plain"),
                text_grob("Near linearity implies almost \n             exponential growth", hjust =-.8))


# Plot Fights -------------------------------------------------------------

# Fight with ggplot creating blank graphs later
PPL %>%
  ggplot(aes(x=PalList)) +
  geom_bar()

ggplot(PalList1, aes(value)) +
  geom_bar() +
  theme_classic()

# Correction from akrun on stackoverflow
# https://stackoverflow.com/questions/65659177/why-is-my-ggplot2-bar-graph-not-displaying
ggplot(PPL, aes(x = Index, y = PalList)) +  font.label = list(size = 14, color = "black", face = "bold", family = NULL)
  geom_bar(stat = 'identity') + 
  scale_x_continuous(breaks = Index, labels = PalList)

qplot(y=value, data = PalList1, geom = "bar")

barplot(PalList)
plot
