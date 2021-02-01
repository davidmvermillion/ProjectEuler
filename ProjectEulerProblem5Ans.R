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


# Plotting ----------------------------------------------------------------

library(tidyverse)

# Create data to measure central tendency of unions
a <- mean(T1.1)
b <- mean(T1.2)
c <- mean(T1.3)
d <- mean(T1.4)
e <- mean(T1.5)
f <- mean(T1.6)
g <- mean(T1.7)
h <- mean(T1.8)
i <- mean(T1.9)
j <- mean(T1.10)
k <- mean(T1.11)
l <- mean(T1.12)
m <- mean(T1.13)
n <- mean(T1.14)
o <- mean(T1.15)
p <- mean(T1.16)
q <- mean(T1.17)
r <- mean(T1.18)
unions <- c(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r)
UT <- as_tibble(unions)

# Plot UT

# New tips from: https://ggplot2-book.org/annotations.html

datamap <- UT %>% 
  ggplot(aes(x = seq_along(value), y = value)) +
  geom_rect(aes(xmin = 0.75, xmax = 16.25),
            ymin = 4.9e8, ymax = 5.07e8, alpha = 0.008, show.legend = FALSE, fill = "grey68") +
  geom_rect(aes(xmin = 16.75, xmax = 18.25),
            ymin = 5.79e8, ymax = 5.85e8, alpha = 0.05, show.legend = FALSE, fill = "orangered2") +
  geom_rect(aes(xmin = 4.35, xmax = 13.6),
            ymin = 5.45e8, ymax = 5.625e8, alpha = 0.05, show.legend = FALSE, fill = "grey95") +
  geom_point(color = "steelblue", shape = 18, size = 5) +
  theme_classic() +
  annotate(
    geom = "text", x = 0.75, y = 5.15e8,
    label = "500,000,001 \nunion of 2s and 3s", hjust = 0, vjust = 1, size = 4, color = "grey20"
  ) +
  annotate(
    geom = "curve", x = 0.75, y = 5.12e8, xend = 0.9, yend = 5.01e8,
    curvature = .3, color = "grey40", arrow = arrow(length = unit(2, "mm"))
  ) +
  annotate(
    geom = "text", x = 15.75, y = 5.15e8,
    label = "502,341,840 \nintersection of #s \u2264 18", hjust = 0, vjust = 1, size = 4, color = "grey20"
  ) +
  annotate(
    geom = "curve", x = 15.75, y = 5.12e8, xend = 15.87, yend = 5.031e8,
    curvature = .3, color = "grey40", arrow = arrow(length = unit(2, "mm"))
  ) +
  annotate(
    geom = "text", x = 15.75, y = 5.75e8,
    label = "581,981,400 \nintersection of #s \u2264 19", hjust = 0, vjust = 1, size = 4, color = "grey20"
  ) +
  annotate(
    geom = "curve", x = 17.75, y = 5.73e8, xend = 17.2, yend = 5.82e8,
    curvature = .5, color = "grey40", arrow = arrow(length = unit(2, "mm"))
  ) +
  annotate(
    geom = "text", x = 4.5, y = 5.6e8,
    label = "The mean intersection value is mostly stable below n = 18", hjust = 0, vjust = 1, size = 4, color = "grey20"
  ) +
  annotate(
    geom = "text", x = 4.5, y = 5.548e8,
    label = "but jumps by", hjust = 0, vjust = 1, size = 4, color = "grey20"
  ) +
  annotate(
    geom = "text", x = 6.8, y = 5.56e8,
    label = "13.7%", hjust = 0, vjust = 1, size = 8, color = "steelblue"
  ) +
  annotate(
    geom = "text", x = 4.5, y = 5.5e8,
    label = "when including n = 19", hjust = 0, vjust = 1, size = 4, color = "grey20"
  ) +
  labs(y = "Value") +
  labs(x = "Intersections 1–18") +
  labs(title = "Mean Value of Iterated Intersections") +
  theme(axis.title.y = element_text(angle = 0, vjust = 0, color = "grey55"),
        axis.title.x = element_text(color = "grey55", hjust = 0),
        plot.title = element_text(hjust = 0.5, color = "grey55", size = 30),
        axis.line = element_line(color = "grey80"),
        axis.ticks = element_blank(),
        axis.text = element_blank())
datamap