summary(mtcars)



x = mtcars$mpg

h = hist(mtcars$mpg,col = 'red')
xfit = seq(min(x), max(x), length= 40)
xfit
yfit = dnorm(xfit, mean= mean(x), sd= sd(xfit))
yfit

yfit= yfit * diff(h$mids[1:2]) * length(x)
yfit
lines(xfit, yfit, col='yellow', lwd=3)


d = density(mtcars$mpg)
d
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
  geom_histogram(color='gray', alpha=0.6, position='identity') +
  scale_fill_manual(values = c('green', 'blue')) +
  theme_classic()+
  labs(fill='')
n


