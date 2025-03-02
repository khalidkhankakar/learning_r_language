library(ggplot2)
library(dplyr)

head(mtcars)

ggplot(data = mtcars) +
  labs(title = "MT cars data plot")

# Aesthetic layer
ggplot(data = mtcars, aes(x = hp, y =mpg, col = disp)) +
  labs(title = "MT cars data plot")

ggplot(data = mtcars, aes(x = hp, y =mpg, col = disp)) +
  geom_point() +
  labs(title = "Miles per Gallon vs Horsepower",
       x = "Horsepower",
       y = "Miles per Gallon")


ggplot(data = mtcars, aes(x = hp, y = mpg, col = factor(cyl),
                          shape = factor(am))) +geom_point() +
  labs(title = "Miles per Gallon vs Horsepower",
       x = "Horsepower",
       y = "Miles per Gallon")

ggplot(data = mtcars, aes(x = hp)) +
  geom_histogram(binwidth = 5) +
  labs(title = "Histogram of Horsepower",
       x = "Horsepower",
       y = "Count")
