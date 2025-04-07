library(tidyverse)
view(chickwts) # display the chickwts data
data(chickwts)
str(chickwts)

qplot(data=chickwts, x=feed, y=weight,geom = 'boxplot' , fill= feed)

data(airquality)
str(airquality)
airquality$Ozone
boxplot(airquality$Ozone)

# Horizontal boxplot
boxplot(airquality$Ozone,
        main='Ozone distribution',
        xlab='Ozone',
        ylab='Ozone',
        col='red',
        border='blue',
        horizontal=TRUE,
        notch=TRUE)


# Multiple boxplot
ozone = airquality$Ozone
temp = airquality$Temp

# na.rm: it mean null should be removed
ozone_norm = rnorm(200, mean= mean(ozone, na.rm= TRUE), sd= sd(ozone, na.rm= TRUE))
temp_norm = rnorm(200, mean= mean(temp, na.rm= TRUE), sd= sd(temp, na.rm= TRUE))


ozone_norm
temp_norm
boxplot(ozone,ozone_norm,temp, temp_norm, 
        main= 'Ozone and Temp distribution',
        at= c(1,2,4,5),
        names= c('Ozone', 'Ozone Normal', 'Temp', 'Temp Normal'),
        las = 2,
        col= c('red', 'blue'),
        border= 'green',
        horizontal=TRUE,
        notch=TRUE
)


boxplot(Temp ~ Month,
        data=airquality,
        main='Temp by Month', 
        xlab='Month', 
        ylab='Temp',
        col = c('red', 'blue', 'green', 'yellow','cyan'),
        notch=TRUE,
        border='purple'
        )

