# importing and reading the csv file data
getwd() # check the current working directory

library(dplyr)
car_data = read.csv('./my DV/car.csv')
selected_data <- car_data[, c("Brand", "Model", "Price")]

# Print first few rows
head(selected_data)


