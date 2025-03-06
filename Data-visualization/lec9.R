library(tidyverse)
temprature = airquality$Temp
hist(temprature)


hist(temprature, 
     main='Temprature against Frequency',
     xlab = 'Temprature',
     ylab='Frequency',
     col = c('blue'),
     xlim = c(50,100),
     freq = TRUE
     )


hist(temprature, ylim=c(0,35))
text(himids, hicounts, labels=hicounts, adj=c(0.5, -0.5))

hist(temprature, ylim=c(0,35), breaks=20)

hist(temprature, 
     main='Temprature against Frequency',
     xlab = 'Temprature',
     ylab='Frequency',
     col = c('blue'),
     border='red',
     xlim = c(50,100),
     freq = TRUE,
     breaks=c(55,60,70,75,80,300)
     )

