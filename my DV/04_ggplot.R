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




ggplot(data = mpg)


ggplot(mpg, mapping = aes(x = cty, y= hwy))


# ------------------------------------------- basic here
ggplot(data = mtcars, aes(x = hp, y = mpg, color= factor(cyl))) +
  geom_point(size=3) +
  labs(title = "Horsepower vs MPG", x = "Horsepower", y = "Miles per Gallon")


# bar chart
ggplot(data = mtcars , aes(x = factor(cyl), fill = factor(cyl))) +
  geom_bar() +
  labs(title = "Car Count by Cylinders", x = "Cylinders", y = "Count")

# line chart
ggplot(economics, aes(x = date, y = unemploy)) +
  geom_line() +
  labs(title = "Unemployment Over Time")


data(iris)
IrisPlot <- ggplot(iris, aes(Sepal.Length, Petal.Length, colour=Species)) + geom_point()
print(IrisPlot)
