home_data <- read.csv("https://raw.githubusercontent.com/rashida048/Datasets/master/home_data.csv")[, c('price', 'condition')]
summary(home_data)
hist(home_data$price)
hist(home_data$price, probability = TRUE,breaks='scott')
hist(home_data$price, breaks=20, col='red')
hist(home_data$price, breaks=20, col='red', freq=FALSE)
hist(home_data$price, breaks=20, col='red', freq=FALSE, xlim=c(0, 2000000))
# let's change the shape of the block
hist(home_data$price, breaks=20, col='red', freq=FALSE, xlim=c(0, 2000000), border='blue', xlab='Price', ylab='Frequency')

hist(home_data$condition)

# take mtcars data make the histogram
data(mtcars)  # Load built-in dataset

# Histogram of MPG (Miles Per Gallon)
hist(mtcars$mpg,
     main = 'Miles Per Gallon Distribution',
     xlab = 'MPG',
     col = 'orange',
     border = 'darkblue',
     freq = TRUE)

# Histogram of Horsepower
hist(mtcars$hp,
     main = 'Horsepower Distribution',
     xlab = 'HP',
     col = 'lightgreen',
     border = 'black',
     breaks = 'freedman-diaconis')
h = hist(mtcars$mpg, col='lightblue', main='MPG with Labels')
text(h$mids, h$counts, labels = h$counts, adj = c(0.5, -0.5))

hist(home_data$price, breaks = "Sturges", main = "Sturges Rule")
hist(home_data$price, breaks = "Scott", main = "Scott Rule")
hist(home_data$price, breaks = "FD", main = "Freedman–Diaconis Rule")
