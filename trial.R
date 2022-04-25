library(forecast)
install.packages("TSA")
library(fma)
library(TSA)
t <- 1:128
y <- 2*sinpi(t/4)+rnorm(128,0,1)
plot(t,y)
?plot
y
?sin
?rnorm


sinpi(1/2)
pr8 <- ts(y, start=1, end=128)
plot(pr8)

periodogram(pr8)$freq

periodogram(pr8)$spec

1/periodogram(pr8)$freq[16]

periodogram(pr8)$spec[16]
findfrequency(pr8)


a <- periodogram(elec)

?periodogram
?ts


# (b)
t <- 128
error <-rep(0,t)
a1 <- 1.5
a2 <- -0.75
noise <- rnorm(t, 0, 1)
error <- filter(noise, filter=c(a1, a2), method="recursive")

y2 <- 2*sinpi(t/4)+error
plot(y2)

1/(periodogram(y2)$freq)
findfrequency(y2)

# (c)
t3 <- 1024
error3 <-rep(0,t3)
a1 <- 1.5
a2 <- -0.75
noise3 <- rnorm(t3, 0, 1)
error3 <- filter(noise3, filter=c(a1, a2), method="recursive")

y3 <- 2*sinpi(t/4)+error3
plot(y3)

periodogram(y3)
findfrequency(y3)

# p5

pr9 <- read.table(file=file.choose())

ts.plot(pr9)

# message 
