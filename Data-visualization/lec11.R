summary(mtcars)

x = mtcars$mpg

h = hist(mtcars$mpg,col = 'purple')
xfit = seq(min(x), max(x), length= 40)
xfit
yfit = dnorm(xfit, mean= mean(x), sd= sd(xfit))
yfit

yfit= yfit * diff(h$mids[1:2]) * length(x)

lines(xfit, yfit, col='yellow', lwd=3)


d = density(mtcars$mpg)
plot(d, main='kernel density')

polygon(d, col='blue', border='yellow')


library(ggplot2)
library(dplyr)
library(hrbrthemes)

data = data.frame(
  type=c(rep('variable1', 1000), rep('variable2', 1000)),
  values = c(rnorm(1000), rnorm(1000,mean=4))
)
data
data[1700:2000, ]

n = data %>% 
  ggplot(aes(x=values, fill = type)) +
  geom_histogram(color='gray', alpha=0.6, position='identity')+
  scale_fill_manual(values = c('green', 'blue')) +
  theme_classic()+
  labs(fill='')
n  
  
attach(mtcars)
par(mfrow=c(1,2))
hist(mtcars$mpg)
hist(mtcars$mpg,prob=1)

hist(mtcars$mpg,prob=T, ylim = c(0, 0.07))
lines(density(mtcars$mpg, na.rm=T), col='red', lwd=3)
curve(dnorm(x, mean=mean(mtcars$mpg, na.rm = T),
            sd=sd(mtcars$mpg,na.rm=T)),
          add=T, col='blue', lwd=1)


