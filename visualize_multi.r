# Generate data in r and then
# plot the data in matlab


library(sousmarin)
library(testit)
library(tidyverse)

n <- 100000
m <- 3



gen_data <- function() {
    tbl <- rgoenorm(n, m)

    Sigma <- tbl$sigma
    A <- tbl$matrix

    tbl <- tibble(i = A[,1], j = A[,2], k = A[,3])
    # write.csv(tbl, file = "test.csv")
    # write.csv(tbl, file = "/home/ejovo/Programming/MATLAB/test.csv")
    # write.table(tbl , file = "test.csv", sep=",", row.names=FALSE)
    write.table(tbl , file = "/home/ejovo/Programming/MATLAB/test.csv", sep=",", row.names=FALSE)
    print(Sigma)
}

gen_data2 <- function(n) {

    dt <- rgoenorm(n, 2)

    Sigma <- dt$sigma
    A <- dt$matrix

    tibble(x = A[,1], y = A[,2])

}

## Ok now let's try and visualize this with a 2d hexagonal plot
# library(hexbin)
library(RColorBrewer)
rf <- colorRampPalette(rev(brewer.pal(11,'Spectral')))
r <- rf(32)

## Ggplot looks nasty... let's use the MASS library

library(MASS)

plt.mv2 <- function(n = 1000) {

    dt <- gen_data2(n)

    # k <- kde2d(dt$x, dt$y)
    k <- kde2d(dt$x, dt$y, n=1000)
    image(k, col = r)

    k
}

library(tikzDevice)

# tikz(file = "test.tex", width = 5, height = 3)

# plt.mv2()

# dev.off()