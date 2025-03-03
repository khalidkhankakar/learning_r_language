library(tidyverse)
# view(chickwts) # display the chickwts data
data(chickwts)
str(chickwts)
qplot(data=chickwts, x=feed, y=weight,geom = 'boxplot' , fill= feed)

data(airquality)
str(airquality)
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




