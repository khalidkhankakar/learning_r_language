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

