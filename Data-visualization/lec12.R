library(ggplot2)
library(dplyr)
library(hrbrthemes)

attach(mtcars)
par(mfrow=c(1,2))
hist(mtcars$mpg)
hist(mtcars$mpg,prob=T)

hist(mtcars$mpg,prob=T, ylim = c(0, 0.07))

lines(density(mtcars$mpg, na.rm=T), col='cyan', lwd=3)

curve(dnorm(x, mean=mean(mtcars$mpg, na.rm = T),
            sd=sd(mtcars$mpg,na.rm=T)),
      add=T, col='purple', lwd=1)


library(rcompanion)
x = c(rnorm(1000))
x

plotNormalHistogram(x,
                    prob=F,
                    main='normal distribution',
                    length = 1000)

x = c(rnorm(10000, 2000, 45))
x

plotNormalHistogram(x,
                    prob=F,
                    col = 'cyan',
                    border='purple',
                    linecol = 'red',
                    lwd=2,
                    main='Again customize Normal distribution',
                    length = 10000)

curve(expr = sin, from=0,to=6 * pi)
curve(x^2-10 *x, from=1, to =10)

data2 = c(2,3,5,6,3,5,5,3,3)
plot(data2)
hist(data2)
plot(density(data2))
hist(data2, prob=T)
lines(density(data2))
hist(rnorm(100), prob=T)
curve(dnorm(x), add=T)
lines(density(rnorm(100)), lty=1)

m = seq(0,60,10)
u = seq(10, 70, 10)
mid = (m+u)/2
f =c(4,8,10,13,9,3,5)
X = rep(mid, f)
hist(X)
